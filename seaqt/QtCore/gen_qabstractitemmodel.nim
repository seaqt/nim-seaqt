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
{.compile("gen_qabstractitemmodel.cpp", cflags).}


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
  ./gen_qmetaobject_types,
  ./gen_qmimedata_types,
  ./gen_qobject,
  ./gen_qobjectdefs_types,
  ./gen_qsize_types,
  ./gen_qvariant_types,
  std/tables
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qmimedata_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qsize_types,
  gen_qvariant_types

type cQModelRoleData*{.exportc: "QModelRoleData", incompleteStruct.} = object
type cQModelRoleDataSpan*{.exportc: "QModelRoleDataSpan", incompleteStruct.} = object
type cQModelIndex*{.exportc: "QModelIndex", incompleteStruct.} = object
type cQPersistentModelIndex*{.exportc: "QPersistentModelIndex", incompleteStruct.} = object
type cQAbstractItemModel*{.exportc: "QAbstractItemModel", incompleteStruct.} = object
type cQAbstractTableModel*{.exportc: "QAbstractTableModel", incompleteStruct.} = object
type cQAbstractListModel*{.exportc: "QAbstractListModel", incompleteStruct.} = object

proc fcQModelRoleData_new(role: cint): ptr cQModelRoleData {.importc: "QModelRoleData_new".}
proc fcQModelRoleData_new2(param1: pointer): ptr cQModelRoleData {.importc: "QModelRoleData_new2".}
proc fcQModelRoleData_role(self: pointer, ): cint {.importc: "QModelRoleData_role".}
proc fcQModelRoleData_data(self: pointer, ): pointer {.importc: "QModelRoleData_data".}
proc fcQModelRoleData_data2(self: pointer, ): pointer {.importc: "QModelRoleData_data2".}
proc fcQModelRoleData_clearData(self: pointer, ): void {.importc: "QModelRoleData_clearData".}
proc fcQModelRoleData_operatorAssign(self: pointer, param1: pointer): void {.importc: "QModelRoleData_operatorAssign".}
proc fcQModelRoleData_delete(self: pointer) {.importc: "QModelRoleData_delete".}
proc fcQModelRoleDataSpan_new(): ptr cQModelRoleDataSpan {.importc: "QModelRoleDataSpan_new".}
proc fcQModelRoleDataSpan_new2(modelRoleData: pointer): ptr cQModelRoleDataSpan {.importc: "QModelRoleDataSpan_new2".}
proc fcQModelRoleDataSpan_new3(modelRoleData: pointer, len: int64): ptr cQModelRoleDataSpan {.importc: "QModelRoleDataSpan_new3".}
proc fcQModelRoleDataSpan_new4(param1: pointer): ptr cQModelRoleDataSpan {.importc: "QModelRoleDataSpan_new4".}
proc fcQModelRoleDataSpan_size(self: pointer, ): int64 {.importc: "QModelRoleDataSpan_size".}
proc fcQModelRoleDataSpan_length(self: pointer, ): int64 {.importc: "QModelRoleDataSpan_length".}
proc fcQModelRoleDataSpan_data(self: pointer, ): pointer {.importc: "QModelRoleDataSpan_data".}
proc fcQModelRoleDataSpan_begin(self: pointer, ): pointer {.importc: "QModelRoleDataSpan_begin".}
proc fcQModelRoleDataSpan_endX(self: pointer, ): pointer {.importc: "QModelRoleDataSpan_end".}
proc fcQModelRoleDataSpan_operatorSubscript(self: pointer, index: int64): pointer {.importc: "QModelRoleDataSpan_operatorSubscript".}
proc fcQModelRoleDataSpan_dataForRole(self: pointer, role: cint): pointer {.importc: "QModelRoleDataSpan_dataForRole".}
proc fcQModelRoleDataSpan_delete(self: pointer) {.importc: "QModelRoleDataSpan_delete".}
proc fcQModelIndex_new(): ptr cQModelIndex {.importc: "QModelIndex_new".}
proc fcQModelIndex_new2(param1: pointer): ptr cQModelIndex {.importc: "QModelIndex_new2".}
proc fcQModelIndex_row(self: pointer, ): cint {.importc: "QModelIndex_row".}
proc fcQModelIndex_column(self: pointer, ): cint {.importc: "QModelIndex_column".}
proc fcQModelIndex_internalId(self: pointer, ): uint {.importc: "QModelIndex_internalId".}
proc fcQModelIndex_internalPointer(self: pointer, ): pointer {.importc: "QModelIndex_internalPointer".}
proc fcQModelIndex_constInternalPointer(self: pointer, ): pointer {.importc: "QModelIndex_constInternalPointer".}
proc fcQModelIndex_parent(self: pointer, ): pointer {.importc: "QModelIndex_parent".}
proc fcQModelIndex_sibling(self: pointer, row: cint, column: cint): pointer {.importc: "QModelIndex_sibling".}
proc fcQModelIndex_siblingAtColumn(self: pointer, column: cint): pointer {.importc: "QModelIndex_siblingAtColumn".}
proc fcQModelIndex_siblingAtRow(self: pointer, row: cint): pointer {.importc: "QModelIndex_siblingAtRow".}
proc fcQModelIndex_data(self: pointer, ): pointer {.importc: "QModelIndex_data".}
proc fcQModelIndex_multiData(self: pointer, roleDataSpan: pointer): void {.importc: "QModelIndex_multiData".}
proc fcQModelIndex_flags(self: pointer, ): cint {.importc: "QModelIndex_flags".}
proc fcQModelIndex_model(self: pointer, ): pointer {.importc: "QModelIndex_model".}
proc fcQModelIndex_isValid(self: pointer, ): bool {.importc: "QModelIndex_isValid".}
proc fcQModelIndex_operatorEqual(self: pointer, other: pointer): bool {.importc: "QModelIndex_operatorEqual".}
proc fcQModelIndex_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QModelIndex_operatorNotEqual".}
proc fcQModelIndex_operatorLesser(self: pointer, other: pointer): bool {.importc: "QModelIndex_operatorLesser".}
proc fcQModelIndex_data1(self: pointer, role: cint): pointer {.importc: "QModelIndex_data1".}
proc fcQModelIndex_delete(self: pointer) {.importc: "QModelIndex_delete".}
proc fcQPersistentModelIndex_new(): ptr cQPersistentModelIndex {.importc: "QPersistentModelIndex_new".}
proc fcQPersistentModelIndex_new2(index: pointer): ptr cQPersistentModelIndex {.importc: "QPersistentModelIndex_new2".}
proc fcQPersistentModelIndex_new3(other: pointer): ptr cQPersistentModelIndex {.importc: "QPersistentModelIndex_new3".}
proc fcQPersistentModelIndex_operatorLesser(self: pointer, other: pointer): bool {.importc: "QPersistentModelIndex_operatorLesser".}
proc fcQPersistentModelIndex_operatorEqual(self: pointer, other: pointer): bool {.importc: "QPersistentModelIndex_operatorEqual".}
proc fcQPersistentModelIndex_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QPersistentModelIndex_operatorNotEqual".}
proc fcQPersistentModelIndex_operatorAssign(self: pointer, other: pointer): void {.importc: "QPersistentModelIndex_operatorAssign".}
proc fcQPersistentModelIndex_swap(self: pointer, other: pointer): void {.importc: "QPersistentModelIndex_swap".}
proc fcQPersistentModelIndex_operatorEqualWithOther(self: pointer, other: pointer): bool {.importc: "QPersistentModelIndex_operatorEqualWithOther".}
proc fcQPersistentModelIndex_operatorNotEqualWithOther(self: pointer, other: pointer): bool {.importc: "QPersistentModelIndex_operatorNotEqualWithOther".}
proc fcQPersistentModelIndex_operatorAssignWithOther(self: pointer, other: pointer): void {.importc: "QPersistentModelIndex_operatorAssignWithOther".}
proc fcQPersistentModelIndex_ToQModelIndex(self: pointer, ): pointer {.importc: "QPersistentModelIndex_ToQModelIndex".}
proc fcQPersistentModelIndex_row(self: pointer, ): cint {.importc: "QPersistentModelIndex_row".}
proc fcQPersistentModelIndex_column(self: pointer, ): cint {.importc: "QPersistentModelIndex_column".}
proc fcQPersistentModelIndex_internalPointer(self: pointer, ): pointer {.importc: "QPersistentModelIndex_internalPointer".}
proc fcQPersistentModelIndex_constInternalPointer(self: pointer, ): pointer {.importc: "QPersistentModelIndex_constInternalPointer".}
proc fcQPersistentModelIndex_internalId(self: pointer, ): uint {.importc: "QPersistentModelIndex_internalId".}
proc fcQPersistentModelIndex_parent(self: pointer, ): pointer {.importc: "QPersistentModelIndex_parent".}
proc fcQPersistentModelIndex_sibling(self: pointer, row: cint, column: cint): pointer {.importc: "QPersistentModelIndex_sibling".}
proc fcQPersistentModelIndex_data(self: pointer, ): pointer {.importc: "QPersistentModelIndex_data".}
proc fcQPersistentModelIndex_multiData(self: pointer, roleDataSpan: pointer): void {.importc: "QPersistentModelIndex_multiData".}
proc fcQPersistentModelIndex_flags(self: pointer, ): cint {.importc: "QPersistentModelIndex_flags".}
proc fcQPersistentModelIndex_model(self: pointer, ): pointer {.importc: "QPersistentModelIndex_model".}
proc fcQPersistentModelIndex_isValid(self: pointer, ): bool {.importc: "QPersistentModelIndex_isValid".}
proc fcQPersistentModelIndex_data1(self: pointer, role: cint): pointer {.importc: "QPersistentModelIndex_data1".}
proc fcQPersistentModelIndex_delete(self: pointer) {.importc: "QPersistentModelIndex_delete".}
proc fcQAbstractItemModel_new(): ptr cQAbstractItemModel {.importc: "QAbstractItemModel_new".}
proc fcQAbstractItemModel_new2(parent: pointer): ptr cQAbstractItemModel {.importc: "QAbstractItemModel_new2".}
proc fcQAbstractItemModel_metaObject(self: pointer, ): pointer {.importc: "QAbstractItemModel_metaObject".}
proc fcQAbstractItemModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractItemModel_metacast".}
proc fcQAbstractItemModel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractItemModel_metacall".}
proc fcQAbstractItemModel_tr(s: cstring): struct_miqt_string {.importc: "QAbstractItemModel_tr".}
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
proc fcQAbstractItemModel_clearItemData(self: pointer, index: pointer): bool {.importc: "QAbstractItemModel_clearItemData".}
proc fcQAbstractItemModel_mimeTypes(self: pointer, ): struct_miqt_array {.importc: "QAbstractItemModel_mimeTypes".}
proc fcQAbstractItemModel_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.importc: "QAbstractItemModel_mimeData".}
proc fcQAbstractItemModel_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QAbstractItemModel_canDropMimeData".}
proc fcQAbstractItemModel_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QAbstractItemModel_dropMimeData".}
proc fcQAbstractItemModel_supportedDropActions(self: pointer, ): cint {.importc: "QAbstractItemModel_supportedDropActions".}
proc fcQAbstractItemModel_supportedDragActions(self: pointer, ): cint {.importc: "QAbstractItemModel_supportedDragActions".}
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
proc fcQAbstractItemModel_roleNames(self: pointer, ): struct_miqt_map {.importc: "QAbstractItemModel_roleNames".}
proc fcQAbstractItemModel_checkIndex(self: pointer, index: pointer): bool {.importc: "QAbstractItemModel_checkIndex".}
proc fcQAbstractItemModel_multiData(self: pointer, index: pointer, roleDataSpan: pointer): void {.importc: "QAbstractItemModel_multiData".}
proc fcQAbstractItemModel_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer): void {.importc: "QAbstractItemModel_dataChanged".}
proc fcQAbstractItemModel_connect_dataChanged(self: pointer, slot: int) {.importc: "QAbstractItemModel_connect_dataChanged".}
proc fcQAbstractItemModel_headerDataChanged(self: pointer, orientation: cint, first: cint, last: cint): void {.importc: "QAbstractItemModel_headerDataChanged".}
proc fcQAbstractItemModel_connect_headerDataChanged(self: pointer, slot: int) {.importc: "QAbstractItemModel_connect_headerDataChanged".}
proc fcQAbstractItemModel_layoutChanged(self: pointer, ): void {.importc: "QAbstractItemModel_layoutChanged".}
proc fcQAbstractItemModel_connect_layoutChanged(self: pointer, slot: int) {.importc: "QAbstractItemModel_connect_layoutChanged".}
proc fcQAbstractItemModel_layoutAboutToBeChanged(self: pointer, ): void {.importc: "QAbstractItemModel_layoutAboutToBeChanged".}
proc fcQAbstractItemModel_connect_layoutAboutToBeChanged(self: pointer, slot: int) {.importc: "QAbstractItemModel_connect_layoutAboutToBeChanged".}
proc fcQAbstractItemModel_submit(self: pointer, ): bool {.importc: "QAbstractItemModel_submit".}
proc fcQAbstractItemModel_revert(self: pointer, ): void {.importc: "QAbstractItemModel_revert".}
proc fcQAbstractItemModel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractItemModel_tr2".}
proc fcQAbstractItemModel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractItemModel_tr3".}
proc fcQAbstractItemModel_hasIndex3(self: pointer, row: cint, column: cint, parent: pointer): bool {.importc: "QAbstractItemModel_hasIndex3".}
proc fcQAbstractItemModel_insertRow2(self: pointer, row: cint, parent: pointer): bool {.importc: "QAbstractItemModel_insertRow2".}
proc fcQAbstractItemModel_insertColumn2(self: pointer, column: cint, parent: pointer): bool {.importc: "QAbstractItemModel_insertColumn2".}
proc fcQAbstractItemModel_removeRow2(self: pointer, row: cint, parent: pointer): bool {.importc: "QAbstractItemModel_removeRow2".}
proc fcQAbstractItemModel_removeColumn2(self: pointer, column: cint, parent: pointer): bool {.importc: "QAbstractItemModel_removeColumn2".}
proc fcQAbstractItemModel_checkIndex2(self: pointer, index: pointer, options: cint): bool {.importc: "QAbstractItemModel_checkIndex2".}
proc fcQAbstractItemModel_dataChanged3(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.importc: "QAbstractItemModel_dataChanged3".}
proc fcQAbstractItemModel_connect_dataChanged3(self: pointer, slot: int) {.importc: "QAbstractItemModel_connect_dataChanged3".}
proc fcQAbstractItemModel_layoutChanged1(self: pointer, parents: struct_miqt_array): void {.importc: "QAbstractItemModel_layoutChanged1".}
proc fcQAbstractItemModel_connect_layoutChanged1(self: pointer, slot: int) {.importc: "QAbstractItemModel_connect_layoutChanged1".}
proc fcQAbstractItemModel_layoutChanged2(self: pointer, parents: struct_miqt_array, hint: cint): void {.importc: "QAbstractItemModel_layoutChanged2".}
proc fcQAbstractItemModel_connect_layoutChanged2(self: pointer, slot: int) {.importc: "QAbstractItemModel_connect_layoutChanged2".}
proc fcQAbstractItemModel_layoutAboutToBeChanged1(self: pointer, parents: struct_miqt_array): void {.importc: "QAbstractItemModel_layoutAboutToBeChanged1".}
proc fcQAbstractItemModel_connect_layoutAboutToBeChanged1(self: pointer, slot: int) {.importc: "QAbstractItemModel_connect_layoutAboutToBeChanged1".}
proc fcQAbstractItemModel_layoutAboutToBeChanged2(self: pointer, parents: struct_miqt_array, hint: cint): void {.importc: "QAbstractItemModel_layoutAboutToBeChanged2".}
proc fcQAbstractItemModel_connect_layoutAboutToBeChanged2(self: pointer, slot: int) {.importc: "QAbstractItemModel_connect_layoutAboutToBeChanged2".}
proc fQAbstractItemModel_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QAbstractItemModel_virtualbase_metaObject".}
proc fcQAbstractItemModel_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_metaObject".}
proc fQAbstractItemModel_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QAbstractItemModel_virtualbase_metacast".}
proc fcQAbstractItemModel_override_virtual_metacast(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_metacast".}
proc fQAbstractItemModel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAbstractItemModel_virtualbase_metacall".}
proc fcQAbstractItemModel_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_metacall".}
proc fcQAbstractItemModel_override_virtual_index(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_index".}
proc fcQAbstractItemModel_override_virtual_parent(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_parent".}
proc fQAbstractItemModel_virtualbase_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer{.importc: "QAbstractItemModel_virtualbase_sibling".}
proc fcQAbstractItemModel_override_virtual_sibling(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_sibling".}
proc fcQAbstractItemModel_override_virtual_rowCount(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_rowCount".}
proc fcQAbstractItemModel_override_virtual_columnCount(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_columnCount".}
proc fQAbstractItemModel_virtualbase_hasChildren(self: pointer, parent: pointer): bool{.importc: "QAbstractItemModel_virtualbase_hasChildren".}
proc fcQAbstractItemModel_override_virtual_hasChildren(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_hasChildren".}
proc fcQAbstractItemModel_override_virtual_data(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_data".}
proc fQAbstractItemModel_virtualbase_setData(self: pointer, index: pointer, value: pointer, role: cint): bool{.importc: "QAbstractItemModel_virtualbase_setData".}
proc fcQAbstractItemModel_override_virtual_setData(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_setData".}
proc fQAbstractItemModel_virtualbase_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer{.importc: "QAbstractItemModel_virtualbase_headerData".}
proc fcQAbstractItemModel_override_virtual_headerData(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_headerData".}
proc fQAbstractItemModel_virtualbase_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool{.importc: "QAbstractItemModel_virtualbase_setHeaderData".}
proc fcQAbstractItemModel_override_virtual_setHeaderData(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_setHeaderData".}
proc fQAbstractItemModel_virtualbase_itemData(self: pointer, index: pointer): struct_miqt_map{.importc: "QAbstractItemModel_virtualbase_itemData".}
proc fcQAbstractItemModel_override_virtual_itemData(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_itemData".}
proc fQAbstractItemModel_virtualbase_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool{.importc: "QAbstractItemModel_virtualbase_setItemData".}
proc fcQAbstractItemModel_override_virtual_setItemData(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_setItemData".}
proc fQAbstractItemModel_virtualbase_clearItemData(self: pointer, index: pointer): bool{.importc: "QAbstractItemModel_virtualbase_clearItemData".}
proc fcQAbstractItemModel_override_virtual_clearItemData(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_clearItemData".}
proc fQAbstractItemModel_virtualbase_mimeTypes(self: pointer, ): struct_miqt_array{.importc: "QAbstractItemModel_virtualbase_mimeTypes".}
proc fcQAbstractItemModel_override_virtual_mimeTypes(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_mimeTypes".}
proc fQAbstractItemModel_virtualbase_mimeData(self: pointer, indexes: struct_miqt_array): pointer{.importc: "QAbstractItemModel_virtualbase_mimeData".}
proc fcQAbstractItemModel_override_virtual_mimeData(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_mimeData".}
proc fQAbstractItemModel_virtualbase_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool{.importc: "QAbstractItemModel_virtualbase_canDropMimeData".}
proc fcQAbstractItemModel_override_virtual_canDropMimeData(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_canDropMimeData".}
proc fQAbstractItemModel_virtualbase_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool{.importc: "QAbstractItemModel_virtualbase_dropMimeData".}
proc fcQAbstractItemModel_override_virtual_dropMimeData(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_dropMimeData".}
proc fQAbstractItemModel_virtualbase_supportedDropActions(self: pointer, ): cint{.importc: "QAbstractItemModel_virtualbase_supportedDropActions".}
proc fcQAbstractItemModel_override_virtual_supportedDropActions(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_supportedDropActions".}
proc fQAbstractItemModel_virtualbase_supportedDragActions(self: pointer, ): cint{.importc: "QAbstractItemModel_virtualbase_supportedDragActions".}
proc fcQAbstractItemModel_override_virtual_supportedDragActions(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_supportedDragActions".}
proc fQAbstractItemModel_virtualbase_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool{.importc: "QAbstractItemModel_virtualbase_insertRows".}
proc fcQAbstractItemModel_override_virtual_insertRows(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_insertRows".}
proc fQAbstractItemModel_virtualbase_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool{.importc: "QAbstractItemModel_virtualbase_insertColumns".}
proc fcQAbstractItemModel_override_virtual_insertColumns(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_insertColumns".}
proc fQAbstractItemModel_virtualbase_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool{.importc: "QAbstractItemModel_virtualbase_removeRows".}
proc fcQAbstractItemModel_override_virtual_removeRows(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_removeRows".}
proc fQAbstractItemModel_virtualbase_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool{.importc: "QAbstractItemModel_virtualbase_removeColumns".}
proc fcQAbstractItemModel_override_virtual_removeColumns(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_removeColumns".}
proc fQAbstractItemModel_virtualbase_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool{.importc: "QAbstractItemModel_virtualbase_moveRows".}
proc fcQAbstractItemModel_override_virtual_moveRows(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_moveRows".}
proc fQAbstractItemModel_virtualbase_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool{.importc: "QAbstractItemModel_virtualbase_moveColumns".}
proc fcQAbstractItemModel_override_virtual_moveColumns(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_moveColumns".}
proc fQAbstractItemModel_virtualbase_fetchMore(self: pointer, parent: pointer): void{.importc: "QAbstractItemModel_virtualbase_fetchMore".}
proc fcQAbstractItemModel_override_virtual_fetchMore(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_fetchMore".}
proc fQAbstractItemModel_virtualbase_canFetchMore(self: pointer, parent: pointer): bool{.importc: "QAbstractItemModel_virtualbase_canFetchMore".}
proc fcQAbstractItemModel_override_virtual_canFetchMore(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_canFetchMore".}
proc fQAbstractItemModel_virtualbase_flags(self: pointer, index: pointer): cint{.importc: "QAbstractItemModel_virtualbase_flags".}
proc fcQAbstractItemModel_override_virtual_flags(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_flags".}
proc fQAbstractItemModel_virtualbase_sort(self: pointer, column: cint, order: cint): void{.importc: "QAbstractItemModel_virtualbase_sort".}
proc fcQAbstractItemModel_override_virtual_sort(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_sort".}
proc fQAbstractItemModel_virtualbase_buddy(self: pointer, index: pointer): pointer{.importc: "QAbstractItemModel_virtualbase_buddy".}
proc fcQAbstractItemModel_override_virtual_buddy(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_buddy".}
proc fQAbstractItemModel_virtualbase_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array{.importc: "QAbstractItemModel_virtualbase_match".}
proc fcQAbstractItemModel_override_virtual_match(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_match".}
proc fQAbstractItemModel_virtualbase_span(self: pointer, index: pointer): pointer{.importc: "QAbstractItemModel_virtualbase_span".}
proc fcQAbstractItemModel_override_virtual_span(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_span".}
proc fQAbstractItemModel_virtualbase_roleNames(self: pointer, ): struct_miqt_map{.importc: "QAbstractItemModel_virtualbase_roleNames".}
proc fcQAbstractItemModel_override_virtual_roleNames(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_roleNames".}
proc fQAbstractItemModel_virtualbase_multiData(self: pointer, index: pointer, roleDataSpan: pointer): void{.importc: "QAbstractItemModel_virtualbase_multiData".}
proc fcQAbstractItemModel_override_virtual_multiData(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_multiData".}
proc fQAbstractItemModel_virtualbase_submit(self: pointer, ): bool{.importc: "QAbstractItemModel_virtualbase_submit".}
proc fcQAbstractItemModel_override_virtual_submit(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_submit".}
proc fQAbstractItemModel_virtualbase_revert(self: pointer, ): void{.importc: "QAbstractItemModel_virtualbase_revert".}
proc fcQAbstractItemModel_override_virtual_revert(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_revert".}
proc fQAbstractItemModel_virtualbase_resetInternalData(self: pointer, ): void{.importc: "QAbstractItemModel_virtualbase_resetInternalData".}
proc fcQAbstractItemModel_override_virtual_resetInternalData(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_resetInternalData".}
proc fQAbstractItemModel_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAbstractItemModel_virtualbase_event".}
proc fcQAbstractItemModel_override_virtual_event(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_event".}
proc fQAbstractItemModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAbstractItemModel_virtualbase_eventFilter".}
proc fcQAbstractItemModel_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_eventFilter".}
proc fQAbstractItemModel_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemModel_virtualbase_timerEvent".}
proc fcQAbstractItemModel_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_timerEvent".}
proc fQAbstractItemModel_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemModel_virtualbase_childEvent".}
proc fcQAbstractItemModel_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_childEvent".}
proc fQAbstractItemModel_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemModel_virtualbase_customEvent".}
proc fcQAbstractItemModel_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_customEvent".}
proc fQAbstractItemModel_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractItemModel_virtualbase_connectNotify".}
proc fcQAbstractItemModel_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_connectNotify".}
proc fQAbstractItemModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractItemModel_virtualbase_disconnectNotify".}
proc fcQAbstractItemModel_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_disconnectNotify".}
proc fcQAbstractItemModel_staticMetaObject(): pointer {.importc: "QAbstractItemModel_staticMetaObject".}
proc fcQAbstractItemModel_delete(self: pointer) {.importc: "QAbstractItemModel_delete".}
proc fcQAbstractTableModel_new(): ptr cQAbstractTableModel {.importc: "QAbstractTableModel_new".}
proc fcQAbstractTableModel_new2(parent: pointer): ptr cQAbstractTableModel {.importc: "QAbstractTableModel_new2".}
proc fcQAbstractTableModel_metaObject(self: pointer, ): pointer {.importc: "QAbstractTableModel_metaObject".}
proc fcQAbstractTableModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractTableModel_metacast".}
proc fcQAbstractTableModel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractTableModel_metacall".}
proc fcQAbstractTableModel_tr(s: cstring): struct_miqt_string {.importc: "QAbstractTableModel_tr".}
proc fcQAbstractTableModel_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.importc: "QAbstractTableModel_index".}
proc fcQAbstractTableModel_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.importc: "QAbstractTableModel_sibling".}
proc fcQAbstractTableModel_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QAbstractTableModel_dropMimeData".}
proc fcQAbstractTableModel_flags(self: pointer, index: pointer): cint {.importc: "QAbstractTableModel_flags".}
proc fcQAbstractTableModel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractTableModel_tr2".}
proc fcQAbstractTableModel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractTableModel_tr3".}
proc fQAbstractTableModel_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QAbstractTableModel_virtualbase_metaObject".}
proc fcQAbstractTableModel_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_metaObject".}
proc fQAbstractTableModel_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QAbstractTableModel_virtualbase_metacast".}
proc fcQAbstractTableModel_override_virtual_metacast(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_metacast".}
proc fQAbstractTableModel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAbstractTableModel_virtualbase_metacall".}
proc fcQAbstractTableModel_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_metacall".}
proc fQAbstractTableModel_virtualbase_index(self: pointer, row: cint, column: cint, parent: pointer): pointer{.importc: "QAbstractTableModel_virtualbase_index".}
proc fcQAbstractTableModel_override_virtual_index(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_index".}
proc fQAbstractTableModel_virtualbase_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer{.importc: "QAbstractTableModel_virtualbase_sibling".}
proc fcQAbstractTableModel_override_virtual_sibling(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_sibling".}
proc fQAbstractTableModel_virtualbase_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool{.importc: "QAbstractTableModel_virtualbase_dropMimeData".}
proc fcQAbstractTableModel_override_virtual_dropMimeData(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_dropMimeData".}
proc fQAbstractTableModel_virtualbase_flags(self: pointer, index: pointer): cint{.importc: "QAbstractTableModel_virtualbase_flags".}
proc fcQAbstractTableModel_override_virtual_flags(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_flags".}
proc fcQAbstractTableModel_override_virtual_rowCount(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_rowCount".}
proc fcQAbstractTableModel_override_virtual_columnCount(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_columnCount".}
proc fcQAbstractTableModel_override_virtual_data(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_data".}
proc fQAbstractTableModel_virtualbase_setData(self: pointer, index: pointer, value: pointer, role: cint): bool{.importc: "QAbstractTableModel_virtualbase_setData".}
proc fcQAbstractTableModel_override_virtual_setData(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_setData".}
proc fQAbstractTableModel_virtualbase_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer{.importc: "QAbstractTableModel_virtualbase_headerData".}
proc fcQAbstractTableModel_override_virtual_headerData(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_headerData".}
proc fQAbstractTableModel_virtualbase_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool{.importc: "QAbstractTableModel_virtualbase_setHeaderData".}
proc fcQAbstractTableModel_override_virtual_setHeaderData(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_setHeaderData".}
proc fQAbstractTableModel_virtualbase_itemData(self: pointer, index: pointer): struct_miqt_map{.importc: "QAbstractTableModel_virtualbase_itemData".}
proc fcQAbstractTableModel_override_virtual_itemData(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_itemData".}
proc fQAbstractTableModel_virtualbase_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool{.importc: "QAbstractTableModel_virtualbase_setItemData".}
proc fcQAbstractTableModel_override_virtual_setItemData(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_setItemData".}
proc fQAbstractTableModel_virtualbase_clearItemData(self: pointer, index: pointer): bool{.importc: "QAbstractTableModel_virtualbase_clearItemData".}
proc fcQAbstractTableModel_override_virtual_clearItemData(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_clearItemData".}
proc fQAbstractTableModel_virtualbase_mimeTypes(self: pointer, ): struct_miqt_array{.importc: "QAbstractTableModel_virtualbase_mimeTypes".}
proc fcQAbstractTableModel_override_virtual_mimeTypes(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_mimeTypes".}
proc fQAbstractTableModel_virtualbase_mimeData(self: pointer, indexes: struct_miqt_array): pointer{.importc: "QAbstractTableModel_virtualbase_mimeData".}
proc fcQAbstractTableModel_override_virtual_mimeData(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_mimeData".}
proc fQAbstractTableModel_virtualbase_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool{.importc: "QAbstractTableModel_virtualbase_canDropMimeData".}
proc fcQAbstractTableModel_override_virtual_canDropMimeData(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_canDropMimeData".}
proc fQAbstractTableModel_virtualbase_supportedDropActions(self: pointer, ): cint{.importc: "QAbstractTableModel_virtualbase_supportedDropActions".}
proc fcQAbstractTableModel_override_virtual_supportedDropActions(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_supportedDropActions".}
proc fQAbstractTableModel_virtualbase_supportedDragActions(self: pointer, ): cint{.importc: "QAbstractTableModel_virtualbase_supportedDragActions".}
proc fcQAbstractTableModel_override_virtual_supportedDragActions(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_supportedDragActions".}
proc fQAbstractTableModel_virtualbase_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool{.importc: "QAbstractTableModel_virtualbase_insertRows".}
proc fcQAbstractTableModel_override_virtual_insertRows(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_insertRows".}
proc fQAbstractTableModel_virtualbase_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool{.importc: "QAbstractTableModel_virtualbase_insertColumns".}
proc fcQAbstractTableModel_override_virtual_insertColumns(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_insertColumns".}
proc fQAbstractTableModel_virtualbase_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool{.importc: "QAbstractTableModel_virtualbase_removeRows".}
proc fcQAbstractTableModel_override_virtual_removeRows(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_removeRows".}
proc fQAbstractTableModel_virtualbase_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool{.importc: "QAbstractTableModel_virtualbase_removeColumns".}
proc fcQAbstractTableModel_override_virtual_removeColumns(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_removeColumns".}
proc fQAbstractTableModel_virtualbase_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool{.importc: "QAbstractTableModel_virtualbase_moveRows".}
proc fcQAbstractTableModel_override_virtual_moveRows(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_moveRows".}
proc fQAbstractTableModel_virtualbase_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool{.importc: "QAbstractTableModel_virtualbase_moveColumns".}
proc fcQAbstractTableModel_override_virtual_moveColumns(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_moveColumns".}
proc fQAbstractTableModel_virtualbase_fetchMore(self: pointer, parent: pointer): void{.importc: "QAbstractTableModel_virtualbase_fetchMore".}
proc fcQAbstractTableModel_override_virtual_fetchMore(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_fetchMore".}
proc fQAbstractTableModel_virtualbase_canFetchMore(self: pointer, parent: pointer): bool{.importc: "QAbstractTableModel_virtualbase_canFetchMore".}
proc fcQAbstractTableModel_override_virtual_canFetchMore(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_canFetchMore".}
proc fQAbstractTableModel_virtualbase_sort(self: pointer, column: cint, order: cint): void{.importc: "QAbstractTableModel_virtualbase_sort".}
proc fcQAbstractTableModel_override_virtual_sort(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_sort".}
proc fQAbstractTableModel_virtualbase_buddy(self: pointer, index: pointer): pointer{.importc: "QAbstractTableModel_virtualbase_buddy".}
proc fcQAbstractTableModel_override_virtual_buddy(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_buddy".}
proc fQAbstractTableModel_virtualbase_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array{.importc: "QAbstractTableModel_virtualbase_match".}
proc fcQAbstractTableModel_override_virtual_match(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_match".}
proc fQAbstractTableModel_virtualbase_span(self: pointer, index: pointer): pointer{.importc: "QAbstractTableModel_virtualbase_span".}
proc fcQAbstractTableModel_override_virtual_span(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_span".}
proc fQAbstractTableModel_virtualbase_roleNames(self: pointer, ): struct_miqt_map{.importc: "QAbstractTableModel_virtualbase_roleNames".}
proc fcQAbstractTableModel_override_virtual_roleNames(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_roleNames".}
proc fQAbstractTableModel_virtualbase_multiData(self: pointer, index: pointer, roleDataSpan: pointer): void{.importc: "QAbstractTableModel_virtualbase_multiData".}
proc fcQAbstractTableModel_override_virtual_multiData(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_multiData".}
proc fQAbstractTableModel_virtualbase_submit(self: pointer, ): bool{.importc: "QAbstractTableModel_virtualbase_submit".}
proc fcQAbstractTableModel_override_virtual_submit(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_submit".}
proc fQAbstractTableModel_virtualbase_revert(self: pointer, ): void{.importc: "QAbstractTableModel_virtualbase_revert".}
proc fcQAbstractTableModel_override_virtual_revert(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_revert".}
proc fQAbstractTableModel_virtualbase_resetInternalData(self: pointer, ): void{.importc: "QAbstractTableModel_virtualbase_resetInternalData".}
proc fcQAbstractTableModel_override_virtual_resetInternalData(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_resetInternalData".}
proc fQAbstractTableModel_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAbstractTableModel_virtualbase_event".}
proc fcQAbstractTableModel_override_virtual_event(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_event".}
proc fQAbstractTableModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAbstractTableModel_virtualbase_eventFilter".}
proc fcQAbstractTableModel_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_eventFilter".}
proc fQAbstractTableModel_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAbstractTableModel_virtualbase_timerEvent".}
proc fcQAbstractTableModel_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_timerEvent".}
proc fQAbstractTableModel_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAbstractTableModel_virtualbase_childEvent".}
proc fcQAbstractTableModel_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_childEvent".}
proc fQAbstractTableModel_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAbstractTableModel_virtualbase_customEvent".}
proc fcQAbstractTableModel_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_customEvent".}
proc fQAbstractTableModel_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractTableModel_virtualbase_connectNotify".}
proc fcQAbstractTableModel_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_connectNotify".}
proc fQAbstractTableModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractTableModel_virtualbase_disconnectNotify".}
proc fcQAbstractTableModel_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_disconnectNotify".}
proc fcQAbstractTableModel_staticMetaObject(): pointer {.importc: "QAbstractTableModel_staticMetaObject".}
proc fcQAbstractTableModel_delete(self: pointer) {.importc: "QAbstractTableModel_delete".}
proc fcQAbstractListModel_new(): ptr cQAbstractListModel {.importc: "QAbstractListModel_new".}
proc fcQAbstractListModel_new2(parent: pointer): ptr cQAbstractListModel {.importc: "QAbstractListModel_new2".}
proc fcQAbstractListModel_metaObject(self: pointer, ): pointer {.importc: "QAbstractListModel_metaObject".}
proc fcQAbstractListModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractListModel_metacast".}
proc fcQAbstractListModel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractListModel_metacall".}
proc fcQAbstractListModel_tr(s: cstring): struct_miqt_string {.importc: "QAbstractListModel_tr".}
proc fcQAbstractListModel_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.importc: "QAbstractListModel_index".}
proc fcQAbstractListModel_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.importc: "QAbstractListModel_sibling".}
proc fcQAbstractListModel_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QAbstractListModel_dropMimeData".}
proc fcQAbstractListModel_flags(self: pointer, index: pointer): cint {.importc: "QAbstractListModel_flags".}
proc fcQAbstractListModel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractListModel_tr2".}
proc fcQAbstractListModel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractListModel_tr3".}
proc fQAbstractListModel_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QAbstractListModel_virtualbase_metaObject".}
proc fcQAbstractListModel_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_metaObject".}
proc fQAbstractListModel_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QAbstractListModel_virtualbase_metacast".}
proc fcQAbstractListModel_override_virtual_metacast(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_metacast".}
proc fQAbstractListModel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAbstractListModel_virtualbase_metacall".}
proc fcQAbstractListModel_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_metacall".}
proc fQAbstractListModel_virtualbase_index(self: pointer, row: cint, column: cint, parent: pointer): pointer{.importc: "QAbstractListModel_virtualbase_index".}
proc fcQAbstractListModel_override_virtual_index(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_index".}
proc fQAbstractListModel_virtualbase_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer{.importc: "QAbstractListModel_virtualbase_sibling".}
proc fcQAbstractListModel_override_virtual_sibling(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_sibling".}
proc fQAbstractListModel_virtualbase_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool{.importc: "QAbstractListModel_virtualbase_dropMimeData".}
proc fcQAbstractListModel_override_virtual_dropMimeData(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_dropMimeData".}
proc fQAbstractListModel_virtualbase_flags(self: pointer, index: pointer): cint{.importc: "QAbstractListModel_virtualbase_flags".}
proc fcQAbstractListModel_override_virtual_flags(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_flags".}
proc fcQAbstractListModel_override_virtual_rowCount(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_rowCount".}
proc fcQAbstractListModel_override_virtual_data(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_data".}
proc fQAbstractListModel_virtualbase_setData(self: pointer, index: pointer, value: pointer, role: cint): bool{.importc: "QAbstractListModel_virtualbase_setData".}
proc fcQAbstractListModel_override_virtual_setData(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_setData".}
proc fQAbstractListModel_virtualbase_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer{.importc: "QAbstractListModel_virtualbase_headerData".}
proc fcQAbstractListModel_override_virtual_headerData(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_headerData".}
proc fQAbstractListModel_virtualbase_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool{.importc: "QAbstractListModel_virtualbase_setHeaderData".}
proc fcQAbstractListModel_override_virtual_setHeaderData(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_setHeaderData".}
proc fQAbstractListModel_virtualbase_itemData(self: pointer, index: pointer): struct_miqt_map{.importc: "QAbstractListModel_virtualbase_itemData".}
proc fcQAbstractListModel_override_virtual_itemData(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_itemData".}
proc fQAbstractListModel_virtualbase_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool{.importc: "QAbstractListModel_virtualbase_setItemData".}
proc fcQAbstractListModel_override_virtual_setItemData(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_setItemData".}
proc fQAbstractListModel_virtualbase_clearItemData(self: pointer, index: pointer): bool{.importc: "QAbstractListModel_virtualbase_clearItemData".}
proc fcQAbstractListModel_override_virtual_clearItemData(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_clearItemData".}
proc fQAbstractListModel_virtualbase_mimeTypes(self: pointer, ): struct_miqt_array{.importc: "QAbstractListModel_virtualbase_mimeTypes".}
proc fcQAbstractListModel_override_virtual_mimeTypes(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_mimeTypes".}
proc fQAbstractListModel_virtualbase_mimeData(self: pointer, indexes: struct_miqt_array): pointer{.importc: "QAbstractListModel_virtualbase_mimeData".}
proc fcQAbstractListModel_override_virtual_mimeData(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_mimeData".}
proc fQAbstractListModel_virtualbase_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool{.importc: "QAbstractListModel_virtualbase_canDropMimeData".}
proc fcQAbstractListModel_override_virtual_canDropMimeData(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_canDropMimeData".}
proc fQAbstractListModel_virtualbase_supportedDropActions(self: pointer, ): cint{.importc: "QAbstractListModel_virtualbase_supportedDropActions".}
proc fcQAbstractListModel_override_virtual_supportedDropActions(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_supportedDropActions".}
proc fQAbstractListModel_virtualbase_supportedDragActions(self: pointer, ): cint{.importc: "QAbstractListModel_virtualbase_supportedDragActions".}
proc fcQAbstractListModel_override_virtual_supportedDragActions(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_supportedDragActions".}
proc fQAbstractListModel_virtualbase_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool{.importc: "QAbstractListModel_virtualbase_insertRows".}
proc fcQAbstractListModel_override_virtual_insertRows(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_insertRows".}
proc fQAbstractListModel_virtualbase_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool{.importc: "QAbstractListModel_virtualbase_insertColumns".}
proc fcQAbstractListModel_override_virtual_insertColumns(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_insertColumns".}
proc fQAbstractListModel_virtualbase_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool{.importc: "QAbstractListModel_virtualbase_removeRows".}
proc fcQAbstractListModel_override_virtual_removeRows(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_removeRows".}
proc fQAbstractListModel_virtualbase_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool{.importc: "QAbstractListModel_virtualbase_removeColumns".}
proc fcQAbstractListModel_override_virtual_removeColumns(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_removeColumns".}
proc fQAbstractListModel_virtualbase_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool{.importc: "QAbstractListModel_virtualbase_moveRows".}
proc fcQAbstractListModel_override_virtual_moveRows(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_moveRows".}
proc fQAbstractListModel_virtualbase_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool{.importc: "QAbstractListModel_virtualbase_moveColumns".}
proc fcQAbstractListModel_override_virtual_moveColumns(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_moveColumns".}
proc fQAbstractListModel_virtualbase_fetchMore(self: pointer, parent: pointer): void{.importc: "QAbstractListModel_virtualbase_fetchMore".}
proc fcQAbstractListModel_override_virtual_fetchMore(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_fetchMore".}
proc fQAbstractListModel_virtualbase_canFetchMore(self: pointer, parent: pointer): bool{.importc: "QAbstractListModel_virtualbase_canFetchMore".}
proc fcQAbstractListModel_override_virtual_canFetchMore(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_canFetchMore".}
proc fQAbstractListModel_virtualbase_sort(self: pointer, column: cint, order: cint): void{.importc: "QAbstractListModel_virtualbase_sort".}
proc fcQAbstractListModel_override_virtual_sort(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_sort".}
proc fQAbstractListModel_virtualbase_buddy(self: pointer, index: pointer): pointer{.importc: "QAbstractListModel_virtualbase_buddy".}
proc fcQAbstractListModel_override_virtual_buddy(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_buddy".}
proc fQAbstractListModel_virtualbase_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array{.importc: "QAbstractListModel_virtualbase_match".}
proc fcQAbstractListModel_override_virtual_match(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_match".}
proc fQAbstractListModel_virtualbase_span(self: pointer, index: pointer): pointer{.importc: "QAbstractListModel_virtualbase_span".}
proc fcQAbstractListModel_override_virtual_span(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_span".}
proc fQAbstractListModel_virtualbase_roleNames(self: pointer, ): struct_miqt_map{.importc: "QAbstractListModel_virtualbase_roleNames".}
proc fcQAbstractListModel_override_virtual_roleNames(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_roleNames".}
proc fQAbstractListModel_virtualbase_multiData(self: pointer, index: pointer, roleDataSpan: pointer): void{.importc: "QAbstractListModel_virtualbase_multiData".}
proc fcQAbstractListModel_override_virtual_multiData(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_multiData".}
proc fQAbstractListModel_virtualbase_submit(self: pointer, ): bool{.importc: "QAbstractListModel_virtualbase_submit".}
proc fcQAbstractListModel_override_virtual_submit(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_submit".}
proc fQAbstractListModel_virtualbase_revert(self: pointer, ): void{.importc: "QAbstractListModel_virtualbase_revert".}
proc fcQAbstractListModel_override_virtual_revert(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_revert".}
proc fQAbstractListModel_virtualbase_resetInternalData(self: pointer, ): void{.importc: "QAbstractListModel_virtualbase_resetInternalData".}
proc fcQAbstractListModel_override_virtual_resetInternalData(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_resetInternalData".}
proc fQAbstractListModel_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAbstractListModel_virtualbase_event".}
proc fcQAbstractListModel_override_virtual_event(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_event".}
proc fQAbstractListModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAbstractListModel_virtualbase_eventFilter".}
proc fcQAbstractListModel_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_eventFilter".}
proc fQAbstractListModel_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAbstractListModel_virtualbase_timerEvent".}
proc fcQAbstractListModel_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_timerEvent".}
proc fQAbstractListModel_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAbstractListModel_virtualbase_childEvent".}
proc fcQAbstractListModel_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_childEvent".}
proc fQAbstractListModel_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAbstractListModel_virtualbase_customEvent".}
proc fcQAbstractListModel_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_customEvent".}
proc fQAbstractListModel_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractListModel_virtualbase_connectNotify".}
proc fcQAbstractListModel_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_connectNotify".}
proc fQAbstractListModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractListModel_virtualbase_disconnectNotify".}
proc fcQAbstractListModel_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_disconnectNotify".}
proc fcQAbstractListModel_staticMetaObject(): pointer {.importc: "QAbstractListModel_staticMetaObject".}
proc fcQAbstractListModel_delete(self: pointer) {.importc: "QAbstractListModel_delete".}


func init*(T: type gen_qabstractitemmodel_types.QModelRoleData, h: ptr cQModelRoleData): gen_qabstractitemmodel_types.QModelRoleData =
  T(h: h)
proc create*(T: type gen_qabstractitemmodel_types.QModelRoleData, role: cint): gen_qabstractitemmodel_types.QModelRoleData =
  gen_qabstractitemmodel_types.QModelRoleData.init(fcQModelRoleData_new(role))

proc create*(T: type gen_qabstractitemmodel_types.QModelRoleData, param1: gen_qabstractitemmodel_types.QModelRoleData): gen_qabstractitemmodel_types.QModelRoleData =
  gen_qabstractitemmodel_types.QModelRoleData.init(fcQModelRoleData_new2(param1.h))

proc role*(self: gen_qabstractitemmodel_types.QModelRoleData, ): cint =
  fcQModelRoleData_role(self.h)

proc data*(self: gen_qabstractitemmodel_types.QModelRoleData, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQModelRoleData_data(self.h))

proc data2*(self: gen_qabstractitemmodel_types.QModelRoleData, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQModelRoleData_data2(self.h))

proc clearData*(self: gen_qabstractitemmodel_types.QModelRoleData, ): void =
  fcQModelRoleData_clearData(self.h)

proc operatorAssign*(self: gen_qabstractitemmodel_types.QModelRoleData, param1: gen_qabstractitemmodel_types.QModelRoleData): void =
  fcQModelRoleData_operatorAssign(self.h, param1.h)

proc delete*(self: gen_qabstractitemmodel_types.QModelRoleData) =
  fcQModelRoleData_delete(self.h)

func init*(T: type gen_qabstractitemmodel_types.QModelRoleDataSpan, h: ptr cQModelRoleDataSpan): gen_qabstractitemmodel_types.QModelRoleDataSpan =
  T(h: h)
proc create*(T: type gen_qabstractitemmodel_types.QModelRoleDataSpan, ): gen_qabstractitemmodel_types.QModelRoleDataSpan =
  gen_qabstractitemmodel_types.QModelRoleDataSpan.init(fcQModelRoleDataSpan_new())

proc create*(T: type gen_qabstractitemmodel_types.QModelRoleDataSpan, modelRoleData: gen_qabstractitemmodel_types.QModelRoleData): gen_qabstractitemmodel_types.QModelRoleDataSpan =
  gen_qabstractitemmodel_types.QModelRoleDataSpan.init(fcQModelRoleDataSpan_new2(modelRoleData.h))

proc create*(T: type gen_qabstractitemmodel_types.QModelRoleDataSpan, modelRoleData: gen_qabstractitemmodel_types.QModelRoleData, len: int64): gen_qabstractitemmodel_types.QModelRoleDataSpan =
  gen_qabstractitemmodel_types.QModelRoleDataSpan.init(fcQModelRoleDataSpan_new3(modelRoleData.h, len))

proc create*(T: type gen_qabstractitemmodel_types.QModelRoleDataSpan, param1: gen_qabstractitemmodel_types.QModelRoleDataSpan): gen_qabstractitemmodel_types.QModelRoleDataSpan =
  gen_qabstractitemmodel_types.QModelRoleDataSpan.init(fcQModelRoleDataSpan_new4(param1.h))

proc size*(self: gen_qabstractitemmodel_types.QModelRoleDataSpan, ): int64 =
  fcQModelRoleDataSpan_size(self.h)

proc length*(self: gen_qabstractitemmodel_types.QModelRoleDataSpan, ): int64 =
  fcQModelRoleDataSpan_length(self.h)

proc data*(self: gen_qabstractitemmodel_types.QModelRoleDataSpan, ): gen_qabstractitemmodel_types.QModelRoleData =
  gen_qabstractitemmodel_types.QModelRoleData(h: fcQModelRoleDataSpan_data(self.h))

proc begin*(self: gen_qabstractitemmodel_types.QModelRoleDataSpan, ): gen_qabstractitemmodel_types.QModelRoleData =
  gen_qabstractitemmodel_types.QModelRoleData(h: fcQModelRoleDataSpan_begin(self.h))

proc endX*(self: gen_qabstractitemmodel_types.QModelRoleDataSpan, ): gen_qabstractitemmodel_types.QModelRoleData =
  gen_qabstractitemmodel_types.QModelRoleData(h: fcQModelRoleDataSpan_endX(self.h))

proc operatorSubscript*(self: gen_qabstractitemmodel_types.QModelRoleDataSpan, index: int64): gen_qabstractitemmodel_types.QModelRoleData =
  gen_qabstractitemmodel_types.QModelRoleData(h: fcQModelRoleDataSpan_operatorSubscript(self.h, index))

proc dataForRole*(self: gen_qabstractitemmodel_types.QModelRoleDataSpan, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQModelRoleDataSpan_dataForRole(self.h, role))

proc delete*(self: gen_qabstractitemmodel_types.QModelRoleDataSpan) =
  fcQModelRoleDataSpan_delete(self.h)

func init*(T: type gen_qabstractitemmodel_types.QModelIndex, h: ptr cQModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  T(h: h)
proc create*(T: type gen_qabstractitemmodel_types.QModelIndex, ): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex.init(fcQModelIndex_new())

proc create*(T: type gen_qabstractitemmodel_types.QModelIndex, param1: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex.init(fcQModelIndex_new2(param1.h))

proc row*(self: gen_qabstractitemmodel_types.QModelIndex, ): cint =
  fcQModelIndex_row(self.h)

proc column*(self: gen_qabstractitemmodel_types.QModelIndex, ): cint =
  fcQModelIndex_column(self.h)

proc internalId*(self: gen_qabstractitemmodel_types.QModelIndex, ): uint =
  fcQModelIndex_internalId(self.h)

proc internalPointer*(self: gen_qabstractitemmodel_types.QModelIndex, ): pointer =
  fcQModelIndex_internalPointer(self.h)

proc constInternalPointer*(self: gen_qabstractitemmodel_types.QModelIndex, ): pointer =
  fcQModelIndex_constInternalPointer(self.h)

proc parent*(self: gen_qabstractitemmodel_types.QModelIndex, ): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQModelIndex_parent(self.h))

proc sibling*(self: gen_qabstractitemmodel_types.QModelIndex, row: cint, column: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQModelIndex_sibling(self.h, row, column))

proc siblingAtColumn*(self: gen_qabstractitemmodel_types.QModelIndex, column: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQModelIndex_siblingAtColumn(self.h, column))

proc siblingAtRow*(self: gen_qabstractitemmodel_types.QModelIndex, row: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQModelIndex_siblingAtRow(self.h, row))

proc data*(self: gen_qabstractitemmodel_types.QModelIndex, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQModelIndex_data(self.h))

proc multiData*(self: gen_qabstractitemmodel_types.QModelIndex, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void =
  fcQModelIndex_multiData(self.h, roleDataSpan.h)

proc flags*(self: gen_qabstractitemmodel_types.QModelIndex, ): cint =
  cint(fcQModelIndex_flags(self.h))

proc model*(self: gen_qabstractitemmodel_types.QModelIndex, ): gen_qabstractitemmodel_types.QAbstractItemModel =
  gen_qabstractitemmodel_types.QAbstractItemModel(h: fcQModelIndex_model(self.h))

proc isValid*(self: gen_qabstractitemmodel_types.QModelIndex, ): bool =
  fcQModelIndex_isValid(self.h)

proc operatorEqual*(self: gen_qabstractitemmodel_types.QModelIndex, other: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQModelIndex_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qabstractitemmodel_types.QModelIndex, other: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQModelIndex_operatorNotEqual(self.h, other.h)

proc operatorLesser*(self: gen_qabstractitemmodel_types.QModelIndex, other: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQModelIndex_operatorLesser(self.h, other.h)

proc data*(self: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQModelIndex_data1(self.h, role))

proc delete*(self: gen_qabstractitemmodel_types.QModelIndex) =
  fcQModelIndex_delete(self.h)

func init*(T: type gen_qabstractitemmodel_types.QPersistentModelIndex, h: ptr cQPersistentModelIndex): gen_qabstractitemmodel_types.QPersistentModelIndex =
  T(h: h)
proc create*(T: type gen_qabstractitemmodel_types.QPersistentModelIndex, ): gen_qabstractitemmodel_types.QPersistentModelIndex =
  gen_qabstractitemmodel_types.QPersistentModelIndex.init(fcQPersistentModelIndex_new())

proc create*(T: type gen_qabstractitemmodel_types.QPersistentModelIndex, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QPersistentModelIndex =
  gen_qabstractitemmodel_types.QPersistentModelIndex.init(fcQPersistentModelIndex_new2(index.h))

proc create*(T: type gen_qabstractitemmodel_types.QPersistentModelIndex, other: gen_qabstractitemmodel_types.QPersistentModelIndex): gen_qabstractitemmodel_types.QPersistentModelIndex =
  gen_qabstractitemmodel_types.QPersistentModelIndex.init(fcQPersistentModelIndex_new3(other.h))

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

proc ToQModelIndex*(self: gen_qabstractitemmodel_types.QPersistentModelIndex, ): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQPersistentModelIndex_ToQModelIndex(self.h))

proc row*(self: gen_qabstractitemmodel_types.QPersistentModelIndex, ): cint =
  fcQPersistentModelIndex_row(self.h)

proc column*(self: gen_qabstractitemmodel_types.QPersistentModelIndex, ): cint =
  fcQPersistentModelIndex_column(self.h)

proc internalPointer*(self: gen_qabstractitemmodel_types.QPersistentModelIndex, ): pointer =
  fcQPersistentModelIndex_internalPointer(self.h)

proc constInternalPointer*(self: gen_qabstractitemmodel_types.QPersistentModelIndex, ): pointer =
  fcQPersistentModelIndex_constInternalPointer(self.h)

proc internalId*(self: gen_qabstractitemmodel_types.QPersistentModelIndex, ): uint =
  fcQPersistentModelIndex_internalId(self.h)

proc parent*(self: gen_qabstractitemmodel_types.QPersistentModelIndex, ): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQPersistentModelIndex_parent(self.h))

proc sibling*(self: gen_qabstractitemmodel_types.QPersistentModelIndex, row: cint, column: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQPersistentModelIndex_sibling(self.h, row, column))

proc data*(self: gen_qabstractitemmodel_types.QPersistentModelIndex, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQPersistentModelIndex_data(self.h))

proc multiData*(self: gen_qabstractitemmodel_types.QPersistentModelIndex, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void =
  fcQPersistentModelIndex_multiData(self.h, roleDataSpan.h)

proc flags*(self: gen_qabstractitemmodel_types.QPersistentModelIndex, ): cint =
  cint(fcQPersistentModelIndex_flags(self.h))

proc model*(self: gen_qabstractitemmodel_types.QPersistentModelIndex, ): gen_qabstractitemmodel_types.QAbstractItemModel =
  gen_qabstractitemmodel_types.QAbstractItemModel(h: fcQPersistentModelIndex_model(self.h))

proc isValid*(self: gen_qabstractitemmodel_types.QPersistentModelIndex, ): bool =
  fcQPersistentModelIndex_isValid(self.h)

proc data*(self: gen_qabstractitemmodel_types.QPersistentModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQPersistentModelIndex_data1(self.h, role))

proc delete*(self: gen_qabstractitemmodel_types.QPersistentModelIndex) =
  fcQPersistentModelIndex_delete(self.h)

func init*(T: type gen_qabstractitemmodel_types.QAbstractItemModel, h: ptr cQAbstractItemModel): gen_qabstractitemmodel_types.QAbstractItemModel =
  T(h: h)
proc create*(T: type gen_qabstractitemmodel_types.QAbstractItemModel, ): gen_qabstractitemmodel_types.QAbstractItemModel =
  gen_qabstractitemmodel_types.QAbstractItemModel.init(fcQAbstractItemModel_new())

proc create*(T: type gen_qabstractitemmodel_types.QAbstractItemModel, parent: gen_qobject_types.QObject): gen_qabstractitemmodel_types.QAbstractItemModel =
  gen_qabstractitemmodel_types.QAbstractItemModel.init(fcQAbstractItemModel_new2(parent.h))

proc metaObject*(self: gen_qabstractitemmodel_types.QAbstractItemModel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractItemModel_metaObject(self.h))

proc metacast*(self: gen_qabstractitemmodel_types.QAbstractItemModel, param1: cstring): pointer =
  fcQAbstractItemModel_metacast(self.h, param1)

proc metacall*(self: gen_qabstractitemmodel_types.QAbstractItemModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractItemModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qabstractitemmodel_types.QAbstractItemModel, s: cstring): string =
  let v_ms = fcQAbstractItemModel_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc hasIndex*(self: gen_qabstractitemmodel_types.QAbstractItemModel, row: cint, column: cint): bool =
  fcQAbstractItemModel_hasIndex(self.h, row, column)

proc index*(self: gen_qabstractitemmodel_types.QAbstractItemModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractItemModel_index(self.h, row, column, parent.h))

proc parent*(self: gen_qabstractitemmodel_types.QAbstractItemModel, child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractItemModel_parent(self.h, child.h))

proc sibling*(self: gen_qabstractitemmodel_types.QAbstractItemModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractItemModel_sibling(self.h, row, column, idx.h))

proc rowCount*(self: gen_qabstractitemmodel_types.QAbstractItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQAbstractItemModel_rowCount(self.h, parent.h)

proc columnCount*(self: gen_qabstractitemmodel_types.QAbstractItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQAbstractItemModel_columnCount(self.h, parent.h)

proc hasChildren*(self: gen_qabstractitemmodel_types.QAbstractItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractItemModel_hasChildren(self.h, parent.h)

proc data*(self: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractItemModel_data(self.h, index.h, role))

proc setData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQAbstractItemModel_setData(self.h, index.h, value.h, role)

proc headerData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractItemModel_headerData(self.h, section, cint(orientation), role))

proc setHeaderData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQAbstractItemModel_setHeaderData(self.h, section, cint(orientation), value.h, role)

proc itemData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fcQAbstractItemModel_itemData(self.h, index.h)
  var vx_ret: Table[cint, gen_qvariant_types.QVariant]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var v_entry_Value = gen_qvariant_types.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

proc setItemData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool =
  var roles_Keys_CArray = newSeq[cint](len(roles))
  var roles_Values_CArray = newSeq[pointer](len(roles))
  var roles_ctr = 0
  for rolesk, rolesv in roles:
    roles_Keys_CArray[roles_ctr] = roles_k
    roles_Values_CArray[roles_ctr] = roles_v.h
    roles_ctr += 1

  fcQAbstractItemModel_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

proc clearItemData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractItemModel_clearItemData(self.h, index.h)

proc mimeTypes*(self: gen_qabstractitemmodel_types.QAbstractItemModel, ): seq[string] =
  var v_ma = fcQAbstractItemModel_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc mimeData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fcQAbstractItemModel_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))))

proc canDropMimeData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractItemModel_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc dropMimeData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractItemModel_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc supportedDropActions*(self: gen_qabstractitemmodel_types.QAbstractItemModel, ): cint =
  cint(fcQAbstractItemModel_supportedDropActions(self.h))

proc supportedDragActions*(self: gen_qabstractitemmodel_types.QAbstractItemModel, ): cint =
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
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractItemModel_buddy(self.h, index.h))

proc match*(self: gen_qabstractitemmodel_types.QAbstractItemModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQAbstractItemModel_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  vx_ret

proc span*(self: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractItemModel_span(self.h, index.h))

proc roleNames*(self: gen_qabstractitemmodel_types.QAbstractItemModel, ): Table[cint,seq[byte]] =
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
  vx_ret

proc checkIndex*(self: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractItemModel_checkIndex(self.h, index.h)

proc multiData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void =
  fcQAbstractItemModel_multiData(self.h, index.h, roleDataSpan.h)

proc dataChanged*(self: gen_qabstractitemmodel_types.QAbstractItemModel, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemModel_dataChanged(self.h, topLeft.h, bottomRight.h)

type QAbstractItemModeldataChangedSlot* = proc(topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex)
proc miqt_exec_callback_QAbstractItemModel_dataChanged(slot: int, topLeft: pointer, bottomRight: pointer) {.exportc.} =
  let nimfunc = cast[ptr QAbstractItemModeldataChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: topLeft)

  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: bottomRight)

  nimfunc[](slotval1, slotval2)

proc ondataChanged*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModeldataChangedSlot) =
  var tmp = new QAbstractItemModeldataChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_connect_dataChanged(self.h, cast[int](addr tmp[]))

proc headerDataChanged*(self: gen_qabstractitemmodel_types.QAbstractItemModel, orientation: cint, first: cint, last: cint): void =
  fcQAbstractItemModel_headerDataChanged(self.h, cint(orientation), first, last)

type QAbstractItemModelheaderDataChangedSlot* = proc(orientation: cint, first: cint, last: cint)
proc miqt_exec_callback_QAbstractItemModel_headerDataChanged(slot: int, orientation: cint, first: cint, last: cint) {.exportc.} =
  let nimfunc = cast[ptr QAbstractItemModelheaderDataChangedSlot](cast[pointer](slot))
  let slotval1 = cint(orientation)

  let slotval2 = first

  let slotval3 = last

  nimfunc[](slotval1, slotval2, slotval3)

proc onheaderDataChanged*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModelheaderDataChangedSlot) =
  var tmp = new QAbstractItemModelheaderDataChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_connect_headerDataChanged(self.h, cast[int](addr tmp[]))

proc layoutChanged*(self: gen_qabstractitemmodel_types.QAbstractItemModel, ): void =
  fcQAbstractItemModel_layoutChanged(self.h)

type QAbstractItemModellayoutChangedSlot* = proc()
proc miqt_exec_callback_QAbstractItemModel_layoutChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QAbstractItemModellayoutChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onlayoutChanged*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModellayoutChangedSlot) =
  var tmp = new QAbstractItemModellayoutChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_connect_layoutChanged(self.h, cast[int](addr tmp[]))

proc layoutAboutToBeChanged*(self: gen_qabstractitemmodel_types.QAbstractItemModel, ): void =
  fcQAbstractItemModel_layoutAboutToBeChanged(self.h)

type QAbstractItemModellayoutAboutToBeChangedSlot* = proc()
proc miqt_exec_callback_QAbstractItemModel_layoutAboutToBeChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QAbstractItemModellayoutAboutToBeChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onlayoutAboutToBeChanged*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModellayoutAboutToBeChangedSlot) =
  var tmp = new QAbstractItemModellayoutAboutToBeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_connect_layoutAboutToBeChanged(self.h, cast[int](addr tmp[]))

proc submit*(self: gen_qabstractitemmodel_types.QAbstractItemModel, ): bool =
  fcQAbstractItemModel_submit(self.h)

proc revert*(self: gen_qabstractitemmodel_types.QAbstractItemModel, ): void =
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
proc miqt_exec_callback_QAbstractItemModel_dataChanged3(slot: int, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array) {.exportc.} =
  let nimfunc = cast[ptr QAbstractItemModeldataChanged3Slot](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: topLeft)

  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: bottomRight)

  var vroles_ma = roles
  var vrolesx_ret = newSeq[cint](int(vroles_ma.len))
  let vroles_outCast = cast[ptr UncheckedArray[cint]](vroles_ma.data)
  for i in 0 ..< vroles_ma.len:
    vrolesx_ret[i] = vroles_outCast[i]
  let slotval3 = vrolesx_ret

  nimfunc[](slotval1, slotval2, slotval3)

proc ondataChanged*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModeldataChanged3Slot) =
  var tmp = new QAbstractItemModeldataChanged3Slot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_connect_dataChanged3(self.h, cast[int](addr tmp[]))

proc layoutChanged*(self: gen_qabstractitemmodel_types.QAbstractItemModel, parents: seq[gen_qabstractitemmodel_types.QPersistentModelIndex]): void =
  var parents_CArray = newSeq[pointer](len(parents))
  for i in 0..<len(parents):
    parents_CArray[i] = parents[i].h

  fcQAbstractItemModel_layoutChanged1(self.h, struct_miqt_array(len: csize_t(len(parents)), data: if len(parents) == 0: nil else: addr(parents_CArray[0])))

type QAbstractItemModellayoutChanged1Slot* = proc(parents: seq[gen_qabstractitemmodel_types.QPersistentModelIndex])
proc miqt_exec_callback_QAbstractItemModel_layoutChanged1(slot: int, parents: struct_miqt_array) {.exportc.} =
  let nimfunc = cast[ptr QAbstractItemModellayoutChanged1Slot](cast[pointer](slot))
  var vparents_ma = parents
  var vparentsx_ret = newSeq[gen_qabstractitemmodel_types.QPersistentModelIndex](int(vparents_ma.len))
  let vparents_outCast = cast[ptr UncheckedArray[pointer]](vparents_ma.data)
  for i in 0 ..< vparents_ma.len:
    vparentsx_ret[i] = gen_qabstractitemmodel_types.QPersistentModelIndex(h: vparents_outCast[i])
  let slotval1 = vparentsx_ret

  nimfunc[](slotval1)

proc onlayoutChanged*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModellayoutChanged1Slot) =
  var tmp = new QAbstractItemModellayoutChanged1Slot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_connect_layoutChanged1(self.h, cast[int](addr tmp[]))

proc layoutChanged*(self: gen_qabstractitemmodel_types.QAbstractItemModel, parents: seq[gen_qabstractitemmodel_types.QPersistentModelIndex], hint: cint): void =
  var parents_CArray = newSeq[pointer](len(parents))
  for i in 0..<len(parents):
    parents_CArray[i] = parents[i].h

  fcQAbstractItemModel_layoutChanged2(self.h, struct_miqt_array(len: csize_t(len(parents)), data: if len(parents) == 0: nil else: addr(parents_CArray[0])), cint(hint))

type QAbstractItemModellayoutChanged2Slot* = proc(parents: seq[gen_qabstractitemmodel_types.QPersistentModelIndex], hint: cint)
proc miqt_exec_callback_QAbstractItemModel_layoutChanged2(slot: int, parents: struct_miqt_array, hint: cint) {.exportc.} =
  let nimfunc = cast[ptr QAbstractItemModellayoutChanged2Slot](cast[pointer](slot))
  var vparents_ma = parents
  var vparentsx_ret = newSeq[gen_qabstractitemmodel_types.QPersistentModelIndex](int(vparents_ma.len))
  let vparents_outCast = cast[ptr UncheckedArray[pointer]](vparents_ma.data)
  for i in 0 ..< vparents_ma.len:
    vparentsx_ret[i] = gen_qabstractitemmodel_types.QPersistentModelIndex(h: vparents_outCast[i])
  let slotval1 = vparentsx_ret

  let slotval2 = cint(hint)

  nimfunc[](slotval1, slotval2)

proc onlayoutChanged*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModellayoutChanged2Slot) =
  var tmp = new QAbstractItemModellayoutChanged2Slot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_connect_layoutChanged2(self.h, cast[int](addr tmp[]))

proc layoutAboutToBeChanged*(self: gen_qabstractitemmodel_types.QAbstractItemModel, parents: seq[gen_qabstractitemmodel_types.QPersistentModelIndex]): void =
  var parents_CArray = newSeq[pointer](len(parents))
  for i in 0..<len(parents):
    parents_CArray[i] = parents[i].h

  fcQAbstractItemModel_layoutAboutToBeChanged1(self.h, struct_miqt_array(len: csize_t(len(parents)), data: if len(parents) == 0: nil else: addr(parents_CArray[0])))

type QAbstractItemModellayoutAboutToBeChanged1Slot* = proc(parents: seq[gen_qabstractitemmodel_types.QPersistentModelIndex])
proc miqt_exec_callback_QAbstractItemModel_layoutAboutToBeChanged1(slot: int, parents: struct_miqt_array) {.exportc.} =
  let nimfunc = cast[ptr QAbstractItemModellayoutAboutToBeChanged1Slot](cast[pointer](slot))
  var vparents_ma = parents
  var vparentsx_ret = newSeq[gen_qabstractitemmodel_types.QPersistentModelIndex](int(vparents_ma.len))
  let vparents_outCast = cast[ptr UncheckedArray[pointer]](vparents_ma.data)
  for i in 0 ..< vparents_ma.len:
    vparentsx_ret[i] = gen_qabstractitemmodel_types.QPersistentModelIndex(h: vparents_outCast[i])
  let slotval1 = vparentsx_ret

  nimfunc[](slotval1)

proc onlayoutAboutToBeChanged*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModellayoutAboutToBeChanged1Slot) =
  var tmp = new QAbstractItemModellayoutAboutToBeChanged1Slot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_connect_layoutAboutToBeChanged1(self.h, cast[int](addr tmp[]))

proc layoutAboutToBeChanged*(self: gen_qabstractitemmodel_types.QAbstractItemModel, parents: seq[gen_qabstractitemmodel_types.QPersistentModelIndex], hint: cint): void =
  var parents_CArray = newSeq[pointer](len(parents))
  for i in 0..<len(parents):
    parents_CArray[i] = parents[i].h

  fcQAbstractItemModel_layoutAboutToBeChanged2(self.h, struct_miqt_array(len: csize_t(len(parents)), data: if len(parents) == 0: nil else: addr(parents_CArray[0])), cint(hint))

type QAbstractItemModellayoutAboutToBeChanged2Slot* = proc(parents: seq[gen_qabstractitemmodel_types.QPersistentModelIndex], hint: cint)
proc miqt_exec_callback_QAbstractItemModel_layoutAboutToBeChanged2(slot: int, parents: struct_miqt_array, hint: cint) {.exportc.} =
  let nimfunc = cast[ptr QAbstractItemModellayoutAboutToBeChanged2Slot](cast[pointer](slot))
  var vparents_ma = parents
  var vparentsx_ret = newSeq[gen_qabstractitemmodel_types.QPersistentModelIndex](int(vparents_ma.len))
  let vparents_outCast = cast[ptr UncheckedArray[pointer]](vparents_ma.data)
  for i in 0 ..< vparents_ma.len:
    vparentsx_ret[i] = gen_qabstractitemmodel_types.QPersistentModelIndex(h: vparents_outCast[i])
  let slotval1 = vparentsx_ret

  let slotval2 = cint(hint)

  nimfunc[](slotval1, slotval2)

proc onlayoutAboutToBeChanged*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModellayoutAboutToBeChanged2Slot) =
  var tmp = new QAbstractItemModellayoutAboutToBeChanged2Slot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_connect_layoutAboutToBeChanged2(self.h, cast[int](addr tmp[]))

proc QAbstractItemModelmetaObject*(self: gen_qabstractitemmodel_types.QAbstractItemModel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQAbstractItemModel_virtualbase_metaObject(self.h))

type QAbstractItemModelmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModelmetaObjectProc) =
  # TODO check subclass
  var tmp = new QAbstractItemModelmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_metaObject(self: ptr cQAbstractItemModel, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractItemModel_metaObject ".} =
  var nimfunc = cast[ptr QAbstractItemModelmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAbstractItemModelmetacast*(self: gen_qabstractitemmodel_types.QAbstractItemModel, param1: cstring): pointer =
  fQAbstractItemModel_virtualbase_metacast(self.h, param1)

type QAbstractItemModelmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModelmetacastProc) =
  # TODO check subclass
  var tmp = new QAbstractItemModelmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_metacast(self: ptr cQAbstractItemModel, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QAbstractItemModel_metacast ".} =
  var nimfunc = cast[ptr QAbstractItemModelmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractItemModelmetacall*(self: gen_qabstractitemmodel_types.QAbstractItemModel, param1: cint, param2: cint, param3: pointer): cint =
  fQAbstractItemModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAbstractItemModelmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModelmetacallProc) =
  # TODO check subclass
  var tmp = new QAbstractItemModelmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_metacall(self: ptr cQAbstractItemModel, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAbstractItemModel_metacall ".} =
  var nimfunc = cast[ptr QAbstractItemModelmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
type QAbstractItemModelindexProc* = proc(row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onindex*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModelindexProc) =
  # TODO check subclass
  var tmp = new QAbstractItemModelindexProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_index(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_index(self: ptr cQAbstractItemModel, slot: int, row: cint, column: cint, parent: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractItemModel_index ".} =
  var nimfunc = cast[ptr QAbstractItemModelindexProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = column

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
type QAbstractItemModelparentProc* = proc(child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onparent*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModelparentProc) =
  # TODO check subclass
  var tmp = new QAbstractItemModelparentProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_parent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_parent(self: ptr cQAbstractItemModel, slot: int, child: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractItemModel_parent ".} =
  var nimfunc = cast[ptr QAbstractItemModelparentProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: child)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QAbstractItemModelsibling*(self: gen_qabstractitemmodel_types.QAbstractItemModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQAbstractItemModel_virtualbase_sibling(self.h, row, column, idx.h))

type QAbstractItemModelsiblingProc* = proc(row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onsibling*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModelsiblingProc) =
  # TODO check subclass
  var tmp = new QAbstractItemModelsiblingProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_sibling(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_sibling(self: ptr cQAbstractItemModel, slot: int, row: cint, column: cint, idx: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractItemModel_sibling ".} =
  var nimfunc = cast[ptr QAbstractItemModelsiblingProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = column

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
type QAbstractItemModelrowCountProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): cint
proc onrowCount*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModelrowCountProc) =
  # TODO check subclass
  var tmp = new QAbstractItemModelrowCountProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_rowCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_rowCount(self: ptr cQAbstractItemModel, slot: int, parent: pointer): cint {.exportc: "miqt_exec_callback_QAbstractItemModel_rowCount ".} =
  var nimfunc = cast[ptr QAbstractItemModelrowCountProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
type QAbstractItemModelcolumnCountProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): cint
proc oncolumnCount*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModelcolumnCountProc) =
  # TODO check subclass
  var tmp = new QAbstractItemModelcolumnCountProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_columnCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_columnCount(self: ptr cQAbstractItemModel, slot: int, parent: pointer): cint {.exportc: "miqt_exec_callback_QAbstractItemModel_columnCount ".} =
  var nimfunc = cast[ptr QAbstractItemModelcolumnCountProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractItemModelhasChildren*(self: gen_qabstractitemmodel_types.QAbstractItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQAbstractItemModel_virtualbase_hasChildren(self.h, parent.h)

type QAbstractItemModelhasChildrenProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc onhasChildren*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModelhasChildrenProc) =
  # TODO check subclass
  var tmp = new QAbstractItemModelhasChildrenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_hasChildren(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_hasChildren(self: ptr cQAbstractItemModel, slot: int, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractItemModel_hasChildren ".} =
  var nimfunc = cast[ptr QAbstractItemModelhasChildrenProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
type QAbstractItemModeldataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant
proc ondata*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModeldataProc) =
  # TODO check subclass
  var tmp = new QAbstractItemModeldataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_data(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_data(self: ptr cQAbstractItemModel, slot: int, index: pointer, role: cint): pointer {.exportc: "miqt_exec_callback_QAbstractItemModel_data ".} =
  var nimfunc = cast[ptr QAbstractItemModeldataProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = role


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QAbstractItemModelsetData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fQAbstractItemModel_virtualbase_setData(self.h, index.h, value.h, role)

type QAbstractItemModelsetDataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool
proc onsetData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModelsetDataProc) =
  # TODO check subclass
  var tmp = new QAbstractItemModelsetDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_setData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_setData(self: ptr cQAbstractItemModel, slot: int, index: pointer, value: pointer, role: cint): bool {.exportc: "miqt_exec_callback_QAbstractItemModel_setData ".} =
  var nimfunc = cast[ptr QAbstractItemModelsetDataProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = gen_qvariant_types.QVariant(h: value)

  let slotval3 = role


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QAbstractItemModelheaderData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQAbstractItemModel_virtualbase_headerData(self.h, section, cint(orientation), role))

type QAbstractItemModelheaderDataProc* = proc(section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant
proc onheaderData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModelheaderDataProc) =
  # TODO check subclass
  var tmp = new QAbstractItemModelheaderDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_headerData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_headerData(self: ptr cQAbstractItemModel, slot: int, section: cint, orientation: cint, role: cint): pointer {.exportc: "miqt_exec_callback_QAbstractItemModel_headerData ".} =
  var nimfunc = cast[ptr QAbstractItemModelheaderDataProc](cast[pointer](slot))
  let slotval1 = section

  let slotval2 = cint(orientation)

  let slotval3 = role


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QAbstractItemModelsetHeaderData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fQAbstractItemModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

type QAbstractItemModelsetHeaderDataProc* = proc(section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool
proc onsetHeaderData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModelsetHeaderDataProc) =
  # TODO check subclass
  var tmp = new QAbstractItemModelsetHeaderDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_setHeaderData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_setHeaderData(self: ptr cQAbstractItemModel, slot: int, section: cint, orientation: cint, value: pointer, role: cint): bool {.exportc: "miqt_exec_callback_QAbstractItemModel_setHeaderData ".} =
  var nimfunc = cast[ptr QAbstractItemModelsetHeaderDataProc](cast[pointer](slot))
  let slotval1 = section

  let slotval2 = cint(orientation)

  let slotval3 = gen_qvariant_types.QVariant(h: value)

  let slotval4 = role


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc QAbstractItemModelitemData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fQAbstractItemModel_virtualbase_itemData(self.h, index.h)
  var vx_ret: Table[cint, gen_qvariant_types.QVariant]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var v_entry_Value = gen_qvariant_types.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

type QAbstractItemModelitemDataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant]
proc onitemData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModelitemDataProc) =
  # TODO check subclass
  var tmp = new QAbstractItemModelitemDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_itemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_itemData(self: ptr cQAbstractItemModel, slot: int, index: pointer): struct_miqt_map {.exportc: "miqt_exec_callback_QAbstractItemModel_itemData ".} =
  var nimfunc = cast[ptr QAbstractItemModelitemDataProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )
  var virtualReturn_Keys_CArray = newSeq[cint](len(virtualReturn))
  var virtualReturn_Values_CArray = newSeq[pointer](len(virtualReturn))
  var virtualReturn_ctr = 0
  for virtualReturnk, virtualReturnv in virtualReturn:
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_Values_CArray[virtualReturn_ctr] = virtualReturn_v.h
    virtualReturn_ctr += 1


  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)
proc QAbstractItemModelsetItemData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool =
  var roles_Keys_CArray = newSeq[cint](len(roles))
  var roles_Values_CArray = newSeq[pointer](len(roles))
  var roles_ctr = 0
  for rolesk, rolesv in roles:
    roles_Keys_CArray[roles_ctr] = roles_k
    roles_Values_CArray[roles_ctr] = roles_v.h
    roles_ctr += 1

  fQAbstractItemModel_virtualbase_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

type QAbstractItemModelsetItemDataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool
proc onsetItemData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModelsetItemDataProc) =
  # TODO check subclass
  var tmp = new QAbstractItemModelsetItemDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_setItemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_setItemData(self: ptr cQAbstractItemModel, slot: int, index: pointer, roles: struct_miqt_map): bool {.exportc: "miqt_exec_callback_QAbstractItemModel_setItemData ".} =
  var nimfunc = cast[ptr QAbstractItemModelsetItemDataProc](cast[pointer](slot))
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
proc QAbstractItemModelclearItemData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQAbstractItemModel_virtualbase_clearItemData(self.h, index.h)

type QAbstractItemModelclearItemDataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): bool
proc onclearItemData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModelclearItemDataProc) =
  # TODO check subclass
  var tmp = new QAbstractItemModelclearItemDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_clearItemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_clearItemData(self: ptr cQAbstractItemModel, slot: int, index: pointer): bool {.exportc: "miqt_exec_callback_QAbstractItemModel_clearItemData ".} =
  var nimfunc = cast[ptr QAbstractItemModelclearItemDataProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractItemModelmimeTypes*(self: gen_qabstractitemmodel_types.QAbstractItemModel, ): seq[string] =
  var v_ma = fQAbstractItemModel_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QAbstractItemModelmimeTypesProc* = proc(): seq[string]
proc onmimeTypes*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModelmimeTypesProc) =
  # TODO check subclass
  var tmp = new QAbstractItemModelmimeTypesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_mimeTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_mimeTypes(self: ptr cQAbstractItemModel, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QAbstractItemModel_mimeTypes ".} =
  var nimfunc = cast[ptr QAbstractItemModelmimeTypesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QAbstractItemModelmimeData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fQAbstractItemModel_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))))

type QAbstractItemModelmimeDataProc* = proc(indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData
proc onmimeData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModelmimeDataProc) =
  # TODO check subclass
  var tmp = new QAbstractItemModelmimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_mimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_mimeData(self: ptr cQAbstractItemModel, slot: int, indexes: struct_miqt_array): pointer {.exportc: "miqt_exec_callback_QAbstractItemModel_mimeData ".} =
  var nimfunc = cast[ptr QAbstractItemModelmimeDataProc](cast[pointer](slot))
  var vindexes_ma = indexes
  var vindexesx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(vindexes_ma.len))
  let vindexes_outCast = cast[ptr UncheckedArray[pointer]](vindexes_ma.data)
  for i in 0 ..< vindexes_ma.len:
    vindexesx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: vindexes_outCast[i])
  let slotval1 = vindexesx_ret


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QAbstractItemModelcanDropMimeData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQAbstractItemModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

type QAbstractItemModelcanDropMimeDataProc* = proc(data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc oncanDropMimeData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModelcanDropMimeDataProc) =
  # TODO check subclass
  var tmp = new QAbstractItemModelcanDropMimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_canDropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_canDropMimeData(self: ptr cQAbstractItemModel, slot: int, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractItemModel_canDropMimeData ".} =
  var nimfunc = cast[ptr QAbstractItemModelcanDropMimeDataProc](cast[pointer](slot))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data)

  let slotval2 = cint(action)

  let slotval3 = row

  let slotval4 = column

  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QAbstractItemModeldropMimeData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQAbstractItemModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

type QAbstractItemModeldropMimeDataProc* = proc(data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc ondropMimeData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModeldropMimeDataProc) =
  # TODO check subclass
  var tmp = new QAbstractItemModeldropMimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_dropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_dropMimeData(self: ptr cQAbstractItemModel, slot: int, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractItemModel_dropMimeData ".} =
  var nimfunc = cast[ptr QAbstractItemModeldropMimeDataProc](cast[pointer](slot))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data)

  let slotval2 = cint(action)

  let slotval3 = row

  let slotval4 = column

  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QAbstractItemModelsupportedDropActions*(self: gen_qabstractitemmodel_types.QAbstractItemModel, ): cint =
  cint(fQAbstractItemModel_virtualbase_supportedDropActions(self.h))

type QAbstractItemModelsupportedDropActionsProc* = proc(): cint
proc onsupportedDropActions*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModelsupportedDropActionsProc) =
  # TODO check subclass
  var tmp = new QAbstractItemModelsupportedDropActionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_supportedDropActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_supportedDropActions(self: ptr cQAbstractItemModel, slot: int): cint {.exportc: "miqt_exec_callback_QAbstractItemModel_supportedDropActions ".} =
  var nimfunc = cast[ptr QAbstractItemModelsupportedDropActionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QAbstractItemModelsupportedDragActions*(self: gen_qabstractitemmodel_types.QAbstractItemModel, ): cint =
  cint(fQAbstractItemModel_virtualbase_supportedDragActions(self.h))

type QAbstractItemModelsupportedDragActionsProc* = proc(): cint
proc onsupportedDragActions*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModelsupportedDragActionsProc) =
  # TODO check subclass
  var tmp = new QAbstractItemModelsupportedDragActionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_supportedDragActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_supportedDragActions(self: ptr cQAbstractItemModel, slot: int): cint {.exportc: "miqt_exec_callback_QAbstractItemModel_supportedDragActions ".} =
  var nimfunc = cast[ptr QAbstractItemModelsupportedDragActionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QAbstractItemModelinsertRows*(self: gen_qabstractitemmodel_types.QAbstractItemModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQAbstractItemModel_virtualbase_insertRows(self.h, row, count, parent.h)

type QAbstractItemModelinsertRowsProc* = proc(row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc oninsertRows*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModelinsertRowsProc) =
  # TODO check subclass
  var tmp = new QAbstractItemModelinsertRowsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_insertRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_insertRows(self: ptr cQAbstractItemModel, slot: int, row: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractItemModel_insertRows ".} =
  var nimfunc = cast[ptr QAbstractItemModelinsertRowsProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QAbstractItemModelinsertColumns*(self: gen_qabstractitemmodel_types.QAbstractItemModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQAbstractItemModel_virtualbase_insertColumns(self.h, column, count, parent.h)

type QAbstractItemModelinsertColumnsProc* = proc(column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc oninsertColumns*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModelinsertColumnsProc) =
  # TODO check subclass
  var tmp = new QAbstractItemModelinsertColumnsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_insertColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_insertColumns(self: ptr cQAbstractItemModel, slot: int, column: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractItemModel_insertColumns ".} =
  var nimfunc = cast[ptr QAbstractItemModelinsertColumnsProc](cast[pointer](slot))
  let slotval1 = column

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QAbstractItemModelremoveRows*(self: gen_qabstractitemmodel_types.QAbstractItemModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQAbstractItemModel_virtualbase_removeRows(self.h, row, count, parent.h)

type QAbstractItemModelremoveRowsProc* = proc(row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc onremoveRows*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModelremoveRowsProc) =
  # TODO check subclass
  var tmp = new QAbstractItemModelremoveRowsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_removeRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_removeRows(self: ptr cQAbstractItemModel, slot: int, row: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractItemModel_removeRows ".} =
  var nimfunc = cast[ptr QAbstractItemModelremoveRowsProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QAbstractItemModelremoveColumns*(self: gen_qabstractitemmodel_types.QAbstractItemModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQAbstractItemModel_virtualbase_removeColumns(self.h, column, count, parent.h)

type QAbstractItemModelremoveColumnsProc* = proc(column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc onremoveColumns*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModelremoveColumnsProc) =
  # TODO check subclass
  var tmp = new QAbstractItemModelremoveColumnsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_removeColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_removeColumns(self: ptr cQAbstractItemModel, slot: int, column: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractItemModel_removeColumns ".} =
  var nimfunc = cast[ptr QAbstractItemModelremoveColumnsProc](cast[pointer](slot))
  let slotval1 = column

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QAbstractItemModelmoveRows*(self: gen_qabstractitemmodel_types.QAbstractItemModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fQAbstractItemModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

type QAbstractItemModelmoveRowsProc* = proc(sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool
proc onmoveRows*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModelmoveRowsProc) =
  # TODO check subclass
  var tmp = new QAbstractItemModelmoveRowsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_moveRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_moveRows(self: ptr cQAbstractItemModel, slot: int, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.exportc: "miqt_exec_callback_QAbstractItemModel_moveRows ".} =
  var nimfunc = cast[ptr QAbstractItemModelmoveRowsProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent)

  let slotval2 = sourceRow

  let slotval3 = count

  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent)

  let slotval5 = destinationChild


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QAbstractItemModelmoveColumns*(self: gen_qabstractitemmodel_types.QAbstractItemModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fQAbstractItemModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

type QAbstractItemModelmoveColumnsProc* = proc(sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool
proc onmoveColumns*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModelmoveColumnsProc) =
  # TODO check subclass
  var tmp = new QAbstractItemModelmoveColumnsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_moveColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_moveColumns(self: ptr cQAbstractItemModel, slot: int, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.exportc: "miqt_exec_callback_QAbstractItemModel_moveColumns ".} =
  var nimfunc = cast[ptr QAbstractItemModelmoveColumnsProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent)

  let slotval2 = sourceColumn

  let slotval3 = count

  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent)

  let slotval5 = destinationChild


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QAbstractItemModelfetchMore*(self: gen_qabstractitemmodel_types.QAbstractItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): void =
  fQAbstractItemModel_virtualbase_fetchMore(self.h, parent.h)

type QAbstractItemModelfetchMoreProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): void
proc onfetchMore*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModelfetchMoreProc) =
  # TODO check subclass
  var tmp = new QAbstractItemModelfetchMoreProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_fetchMore(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_fetchMore(self: ptr cQAbstractItemModel, slot: int, parent: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemModel_fetchMore ".} =
  var nimfunc = cast[ptr QAbstractItemModelfetchMoreProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  nimfunc[](slotval1)
proc QAbstractItemModelcanFetchMore*(self: gen_qabstractitemmodel_types.QAbstractItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQAbstractItemModel_virtualbase_canFetchMore(self.h, parent.h)

type QAbstractItemModelcanFetchMoreProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc oncanFetchMore*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModelcanFetchMoreProc) =
  # TODO check subclass
  var tmp = new QAbstractItemModelcanFetchMoreProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_canFetchMore(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_canFetchMore(self: ptr cQAbstractItemModel, slot: int, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractItemModel_canFetchMore ".} =
  var nimfunc = cast[ptr QAbstractItemModelcanFetchMoreProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractItemModelflags*(self: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fQAbstractItemModel_virtualbase_flags(self.h, index.h))

type QAbstractItemModelflagsProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): cint
proc onflags*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModelflagsProc) =
  # TODO check subclass
  var tmp = new QAbstractItemModelflagsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_flags(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_flags(self: ptr cQAbstractItemModel, slot: int, index: pointer): cint {.exportc: "miqt_exec_callback_QAbstractItemModel_flags ".} =
  var nimfunc = cast[ptr QAbstractItemModelflagsProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  cint(virtualReturn)
proc QAbstractItemModelsort*(self: gen_qabstractitemmodel_types.QAbstractItemModel, column: cint, order: cint): void =
  fQAbstractItemModel_virtualbase_sort(self.h, column, cint(order))

type QAbstractItemModelsortProc* = proc(column: cint, order: cint): void
proc onsort*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModelsortProc) =
  # TODO check subclass
  var tmp = new QAbstractItemModelsortProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_sort(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_sort(self: ptr cQAbstractItemModel, slot: int, column: cint, order: cint): void {.exportc: "miqt_exec_callback_QAbstractItemModel_sort ".} =
  var nimfunc = cast[ptr QAbstractItemModelsortProc](cast[pointer](slot))
  let slotval1 = column

  let slotval2 = cint(order)


  nimfunc[](slotval1, slotval2)
proc QAbstractItemModelbuddy*(self: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQAbstractItemModel_virtualbase_buddy(self.h, index.h))

type QAbstractItemModelbuddyProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onbuddy*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModelbuddyProc) =
  # TODO check subclass
  var tmp = new QAbstractItemModelbuddyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_buddy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_buddy(self: ptr cQAbstractItemModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractItemModel_buddy ".} =
  var nimfunc = cast[ptr QAbstractItemModelbuddyProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QAbstractItemModelmatch*(self: gen_qabstractitemmodel_types.QAbstractItemModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fQAbstractItemModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  vx_ret

type QAbstractItemModelmatchProc* = proc(start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex]
proc onmatch*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModelmatchProc) =
  # TODO check subclass
  var tmp = new QAbstractItemModelmatchProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_match(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_match(self: ptr cQAbstractItemModel, slot: int, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.exportc: "miqt_exec_callback_QAbstractItemModel_match ".} =
  var nimfunc = cast[ptr QAbstractItemModelmatchProc](cast[pointer](slot))
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
proc QAbstractItemModelspan*(self: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQAbstractItemModel_virtualbase_span(self.h, index.h))

type QAbstractItemModelspanProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize
proc onspan*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModelspanProc) =
  # TODO check subclass
  var tmp = new QAbstractItemModelspanProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_span(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_span(self: ptr cQAbstractItemModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractItemModel_span ".} =
  var nimfunc = cast[ptr QAbstractItemModelspanProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QAbstractItemModelroleNames*(self: gen_qabstractitemmodel_types.QAbstractItemModel, ): Table[cint,seq[byte]] =
  var v_mm = fQAbstractItemModel_virtualbase_roleNames(self.h)
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

type QAbstractItemModelroleNamesProc* = proc(): Table[cint,seq[byte]]
proc onroleNames*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModelroleNamesProc) =
  # TODO check subclass
  var tmp = new QAbstractItemModelroleNamesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_roleNames(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_roleNames(self: ptr cQAbstractItemModel, slot: int): struct_miqt_map {.exportc: "miqt_exec_callback_QAbstractItemModel_roleNames ".} =
  var nimfunc = cast[ptr QAbstractItemModelroleNamesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_Keys_CArray = newSeq[cint](len(virtualReturn))
  var virtualReturn_Values_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  var virtualReturn_ctr = 0
  for virtualReturnk, virtualReturnv in virtualReturn:
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_Values_CArray[virtualReturn_ctr] = struct_miqt_string(data: cast[cstring](if len(virtualReturn_v) == 0: nil else: unsafeAddr virtualReturn_v[0]), len: csize_t(len(virtualReturn_v)))
    virtualReturn_ctr += 1


  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)
proc QAbstractItemModelmultiData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, index: gen_qabstractitemmodel_types.QModelIndex, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void =
  fQAbstractItemModel_virtualbase_multiData(self.h, index.h, roleDataSpan.h)

type QAbstractItemModelmultiDataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void
proc onmultiData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModelmultiDataProc) =
  # TODO check subclass
  var tmp = new QAbstractItemModelmultiDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_multiData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_multiData(self: ptr cQAbstractItemModel, slot: int, index: pointer, roleDataSpan: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemModel_multiData ".} =
  var nimfunc = cast[ptr QAbstractItemModelmultiDataProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = gen_qabstractitemmodel_types.QModelRoleDataSpan(h: roleDataSpan)


  nimfunc[](slotval1, slotval2)
proc QAbstractItemModelsubmit*(self: gen_qabstractitemmodel_types.QAbstractItemModel, ): bool =
  fQAbstractItemModel_virtualbase_submit(self.h)

type QAbstractItemModelsubmitProc* = proc(): bool
proc onsubmit*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModelsubmitProc) =
  # TODO check subclass
  var tmp = new QAbstractItemModelsubmitProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_submit(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_submit(self: ptr cQAbstractItemModel, slot: int): bool {.exportc: "miqt_exec_callback_QAbstractItemModel_submit ".} =
  var nimfunc = cast[ptr QAbstractItemModelsubmitProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QAbstractItemModelrevert*(self: gen_qabstractitemmodel_types.QAbstractItemModel, ): void =
  fQAbstractItemModel_virtualbase_revert(self.h)

type QAbstractItemModelrevertProc* = proc(): void
proc onrevert*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModelrevertProc) =
  # TODO check subclass
  var tmp = new QAbstractItemModelrevertProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_revert(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_revert(self: ptr cQAbstractItemModel, slot: int): void {.exportc: "miqt_exec_callback_QAbstractItemModel_revert ".} =
  var nimfunc = cast[ptr QAbstractItemModelrevertProc](cast[pointer](slot))

  nimfunc[]()
proc QAbstractItemModelresetInternalData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, ): void =
  fQAbstractItemModel_virtualbase_resetInternalData(self.h)

type QAbstractItemModelresetInternalDataProc* = proc(): void
proc onresetInternalData*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModelresetInternalDataProc) =
  # TODO check subclass
  var tmp = new QAbstractItemModelresetInternalDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_resetInternalData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_resetInternalData(self: ptr cQAbstractItemModel, slot: int): void {.exportc: "miqt_exec_callback_QAbstractItemModel_resetInternalData ".} =
  var nimfunc = cast[ptr QAbstractItemModelresetInternalDataProc](cast[pointer](slot))

  nimfunc[]()
proc QAbstractItemModelevent*(self: gen_qabstractitemmodel_types.QAbstractItemModel, event: gen_qcoreevent_types.QEvent): bool =
  fQAbstractItemModel_virtualbase_event(self.h, event.h)

type QAbstractItemModeleventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModeleventProc) =
  # TODO check subclass
  var tmp = new QAbstractItemModeleventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_event(self: ptr cQAbstractItemModel, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractItemModel_event ".} =
  var nimfunc = cast[ptr QAbstractItemModeleventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractItemModeleventFilter*(self: gen_qabstractitemmodel_types.QAbstractItemModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQAbstractItemModel_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAbstractItemModeleventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModeleventFilterProc) =
  # TODO check subclass
  var tmp = new QAbstractItemModeleventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_eventFilter(self: ptr cQAbstractItemModel, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractItemModel_eventFilter ".} =
  var nimfunc = cast[ptr QAbstractItemModeleventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QAbstractItemModeltimerEvent*(self: gen_qabstractitemmodel_types.QAbstractItemModel, event: gen_qcoreevent_types.QTimerEvent): void =
  fQAbstractItemModel_virtualbase_timerEvent(self.h, event.h)

type QAbstractItemModeltimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModeltimerEventProc) =
  # TODO check subclass
  var tmp = new QAbstractItemModeltimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_timerEvent(self: ptr cQAbstractItemModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemModel_timerEvent ".} =
  var nimfunc = cast[ptr QAbstractItemModeltimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractItemModelchildEvent*(self: gen_qabstractitemmodel_types.QAbstractItemModel, event: gen_qcoreevent_types.QChildEvent): void =
  fQAbstractItemModel_virtualbase_childEvent(self.h, event.h)

type QAbstractItemModelchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModelchildEventProc) =
  # TODO check subclass
  var tmp = new QAbstractItemModelchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_childEvent(self: ptr cQAbstractItemModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemModel_childEvent ".} =
  var nimfunc = cast[ptr QAbstractItemModelchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractItemModelcustomEvent*(self: gen_qabstractitemmodel_types.QAbstractItemModel, event: gen_qcoreevent_types.QEvent): void =
  fQAbstractItemModel_virtualbase_customEvent(self.h, event.h)

type QAbstractItemModelcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModelcustomEventProc) =
  # TODO check subclass
  var tmp = new QAbstractItemModelcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_customEvent(self: ptr cQAbstractItemModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemModel_customEvent ".} =
  var nimfunc = cast[ptr QAbstractItemModelcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractItemModelconnectNotify*(self: gen_qabstractitemmodel_types.QAbstractItemModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAbstractItemModel_virtualbase_connectNotify(self.h, signal.h)

type QAbstractItemModelconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModelconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAbstractItemModelconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_connectNotify(self: ptr cQAbstractItemModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemModel_connectNotify ".} =
  var nimfunc = cast[ptr QAbstractItemModelconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QAbstractItemModeldisconnectNotify*(self: gen_qabstractitemmodel_types.QAbstractItemModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAbstractItemModel_virtualbase_disconnectNotify(self.h, signal.h)

type QAbstractItemModeldisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qabstractitemmodel_types.QAbstractItemModel, slot: QAbstractItemModeldisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAbstractItemModeldisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_disconnectNotify(self: ptr cQAbstractItemModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemModel_disconnectNotify ".} =
  var nimfunc = cast[ptr QAbstractItemModeldisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qabstractitemmodel_types.QAbstractItemModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractItemModel_staticMetaObject())
proc delete*(self: gen_qabstractitemmodel_types.QAbstractItemModel) =
  fcQAbstractItemModel_delete(self.h)

func init*(T: type gen_qabstractitemmodel_types.QAbstractTableModel, h: ptr cQAbstractTableModel): gen_qabstractitemmodel_types.QAbstractTableModel =
  T(h: h)
proc create*(T: type gen_qabstractitemmodel_types.QAbstractTableModel, ): gen_qabstractitemmodel_types.QAbstractTableModel =
  gen_qabstractitemmodel_types.QAbstractTableModel.init(fcQAbstractTableModel_new())

proc create*(T: type gen_qabstractitemmodel_types.QAbstractTableModel, parent: gen_qobject_types.QObject): gen_qabstractitemmodel_types.QAbstractTableModel =
  gen_qabstractitemmodel_types.QAbstractTableModel.init(fcQAbstractTableModel_new2(parent.h))

proc metaObject*(self: gen_qabstractitemmodel_types.QAbstractTableModel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractTableModel_metaObject(self.h))

proc metacast*(self: gen_qabstractitemmodel_types.QAbstractTableModel, param1: cstring): pointer =
  fcQAbstractTableModel_metacast(self.h, param1)

proc metacall*(self: gen_qabstractitemmodel_types.QAbstractTableModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractTableModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qabstractitemmodel_types.QAbstractTableModel, s: cstring): string =
  let v_ms = fcQAbstractTableModel_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc index*(self: gen_qabstractitemmodel_types.QAbstractTableModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractTableModel_index(self.h, row, column, parent.h))

proc sibling*(self: gen_qabstractitemmodel_types.QAbstractTableModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractTableModel_sibling(self.h, row, column, idx.h))

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

proc QAbstractTableModelmetaObject*(self: gen_qabstractitemmodel_types.QAbstractTableModel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQAbstractTableModel_virtualbase_metaObject(self.h))

type QAbstractTableModelmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qabstractitemmodel_types.QAbstractTableModel, slot: QAbstractTableModelmetaObjectProc) =
  # TODO check subclass
  var tmp = new QAbstractTableModelmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_metaObject(self: ptr cQAbstractTableModel, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractTableModel_metaObject ".} =
  var nimfunc = cast[ptr QAbstractTableModelmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAbstractTableModelmetacast*(self: gen_qabstractitemmodel_types.QAbstractTableModel, param1: cstring): pointer =
  fQAbstractTableModel_virtualbase_metacast(self.h, param1)

type QAbstractTableModelmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qabstractitemmodel_types.QAbstractTableModel, slot: QAbstractTableModelmetacastProc) =
  # TODO check subclass
  var tmp = new QAbstractTableModelmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_metacast(self: ptr cQAbstractTableModel, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QAbstractTableModel_metacast ".} =
  var nimfunc = cast[ptr QAbstractTableModelmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractTableModelmetacall*(self: gen_qabstractitemmodel_types.QAbstractTableModel, param1: cint, param2: cint, param3: pointer): cint =
  fQAbstractTableModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAbstractTableModelmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qabstractitemmodel_types.QAbstractTableModel, slot: QAbstractTableModelmetacallProc) =
  # TODO check subclass
  var tmp = new QAbstractTableModelmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_metacall(self: ptr cQAbstractTableModel, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAbstractTableModel_metacall ".} =
  var nimfunc = cast[ptr QAbstractTableModelmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QAbstractTableModelindex*(self: gen_qabstractitemmodel_types.QAbstractTableModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQAbstractTableModel_virtualbase_index(self.h, row, column, parent.h))

type QAbstractTableModelindexProc* = proc(row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onindex*(self: gen_qabstractitemmodel_types.QAbstractTableModel, slot: QAbstractTableModelindexProc) =
  # TODO check subclass
  var tmp = new QAbstractTableModelindexProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_index(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_index(self: ptr cQAbstractTableModel, slot: int, row: cint, column: cint, parent: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractTableModel_index ".} =
  var nimfunc = cast[ptr QAbstractTableModelindexProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = column

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QAbstractTableModelsibling*(self: gen_qabstractitemmodel_types.QAbstractTableModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQAbstractTableModel_virtualbase_sibling(self.h, row, column, idx.h))

type QAbstractTableModelsiblingProc* = proc(row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onsibling*(self: gen_qabstractitemmodel_types.QAbstractTableModel, slot: QAbstractTableModelsiblingProc) =
  # TODO check subclass
  var tmp = new QAbstractTableModelsiblingProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_sibling(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_sibling(self: ptr cQAbstractTableModel, slot: int, row: cint, column: cint, idx: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractTableModel_sibling ".} =
  var nimfunc = cast[ptr QAbstractTableModelsiblingProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = column

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QAbstractTableModeldropMimeData*(self: gen_qabstractitemmodel_types.QAbstractTableModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQAbstractTableModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

type QAbstractTableModeldropMimeDataProc* = proc(data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc ondropMimeData*(self: gen_qabstractitemmodel_types.QAbstractTableModel, slot: QAbstractTableModeldropMimeDataProc) =
  # TODO check subclass
  var tmp = new QAbstractTableModeldropMimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_dropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_dropMimeData(self: ptr cQAbstractTableModel, slot: int, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractTableModel_dropMimeData ".} =
  var nimfunc = cast[ptr QAbstractTableModeldropMimeDataProc](cast[pointer](slot))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data)

  let slotval2 = cint(action)

  let slotval3 = row

  let slotval4 = column

  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QAbstractTableModelflags*(self: gen_qabstractitemmodel_types.QAbstractTableModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fQAbstractTableModel_virtualbase_flags(self.h, index.h))

type QAbstractTableModelflagsProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): cint
proc onflags*(self: gen_qabstractitemmodel_types.QAbstractTableModel, slot: QAbstractTableModelflagsProc) =
  # TODO check subclass
  var tmp = new QAbstractTableModelflagsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_flags(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_flags(self: ptr cQAbstractTableModel, slot: int, index: pointer): cint {.exportc: "miqt_exec_callback_QAbstractTableModel_flags ".} =
  var nimfunc = cast[ptr QAbstractTableModelflagsProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  cint(virtualReturn)
type QAbstractTableModelrowCountProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): cint
proc onrowCount*(self: gen_qabstractitemmodel_types.QAbstractTableModel, slot: QAbstractTableModelrowCountProc) =
  # TODO check subclass
  var tmp = new QAbstractTableModelrowCountProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_rowCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_rowCount(self: ptr cQAbstractTableModel, slot: int, parent: pointer): cint {.exportc: "miqt_exec_callback_QAbstractTableModel_rowCount ".} =
  var nimfunc = cast[ptr QAbstractTableModelrowCountProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
type QAbstractTableModelcolumnCountProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): cint
proc oncolumnCount*(self: gen_qabstractitemmodel_types.QAbstractTableModel, slot: QAbstractTableModelcolumnCountProc) =
  # TODO check subclass
  var tmp = new QAbstractTableModelcolumnCountProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_columnCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_columnCount(self: ptr cQAbstractTableModel, slot: int, parent: pointer): cint {.exportc: "miqt_exec_callback_QAbstractTableModel_columnCount ".} =
  var nimfunc = cast[ptr QAbstractTableModelcolumnCountProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
type QAbstractTableModeldataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant
proc ondata*(self: gen_qabstractitemmodel_types.QAbstractTableModel, slot: QAbstractTableModeldataProc) =
  # TODO check subclass
  var tmp = new QAbstractTableModeldataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_data(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_data(self: ptr cQAbstractTableModel, slot: int, index: pointer, role: cint): pointer {.exportc: "miqt_exec_callback_QAbstractTableModel_data ".} =
  var nimfunc = cast[ptr QAbstractTableModeldataProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = role


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QAbstractTableModelsetData*(self: gen_qabstractitemmodel_types.QAbstractTableModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fQAbstractTableModel_virtualbase_setData(self.h, index.h, value.h, role)

type QAbstractTableModelsetDataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool
proc onsetData*(self: gen_qabstractitemmodel_types.QAbstractTableModel, slot: QAbstractTableModelsetDataProc) =
  # TODO check subclass
  var tmp = new QAbstractTableModelsetDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_setData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_setData(self: ptr cQAbstractTableModel, slot: int, index: pointer, value: pointer, role: cint): bool {.exportc: "miqt_exec_callback_QAbstractTableModel_setData ".} =
  var nimfunc = cast[ptr QAbstractTableModelsetDataProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = gen_qvariant_types.QVariant(h: value)

  let slotval3 = role


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QAbstractTableModelheaderData*(self: gen_qabstractitemmodel_types.QAbstractTableModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQAbstractTableModel_virtualbase_headerData(self.h, section, cint(orientation), role))

type QAbstractTableModelheaderDataProc* = proc(section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant
proc onheaderData*(self: gen_qabstractitemmodel_types.QAbstractTableModel, slot: QAbstractTableModelheaderDataProc) =
  # TODO check subclass
  var tmp = new QAbstractTableModelheaderDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_headerData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_headerData(self: ptr cQAbstractTableModel, slot: int, section: cint, orientation: cint, role: cint): pointer {.exportc: "miqt_exec_callback_QAbstractTableModel_headerData ".} =
  var nimfunc = cast[ptr QAbstractTableModelheaderDataProc](cast[pointer](slot))
  let slotval1 = section

  let slotval2 = cint(orientation)

  let slotval3 = role


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QAbstractTableModelsetHeaderData*(self: gen_qabstractitemmodel_types.QAbstractTableModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fQAbstractTableModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

type QAbstractTableModelsetHeaderDataProc* = proc(section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool
proc onsetHeaderData*(self: gen_qabstractitemmodel_types.QAbstractTableModel, slot: QAbstractTableModelsetHeaderDataProc) =
  # TODO check subclass
  var tmp = new QAbstractTableModelsetHeaderDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_setHeaderData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_setHeaderData(self: ptr cQAbstractTableModel, slot: int, section: cint, orientation: cint, value: pointer, role: cint): bool {.exportc: "miqt_exec_callback_QAbstractTableModel_setHeaderData ".} =
  var nimfunc = cast[ptr QAbstractTableModelsetHeaderDataProc](cast[pointer](slot))
  let slotval1 = section

  let slotval2 = cint(orientation)

  let slotval3 = gen_qvariant_types.QVariant(h: value)

  let slotval4 = role


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc QAbstractTableModelitemData*(self: gen_qabstractitemmodel_types.QAbstractTableModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fQAbstractTableModel_virtualbase_itemData(self.h, index.h)
  var vx_ret: Table[cint, gen_qvariant_types.QVariant]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var v_entry_Value = gen_qvariant_types.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

type QAbstractTableModelitemDataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant]
proc onitemData*(self: gen_qabstractitemmodel_types.QAbstractTableModel, slot: QAbstractTableModelitemDataProc) =
  # TODO check subclass
  var tmp = new QAbstractTableModelitemDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_itemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_itemData(self: ptr cQAbstractTableModel, slot: int, index: pointer): struct_miqt_map {.exportc: "miqt_exec_callback_QAbstractTableModel_itemData ".} =
  var nimfunc = cast[ptr QAbstractTableModelitemDataProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )
  var virtualReturn_Keys_CArray = newSeq[cint](len(virtualReturn))
  var virtualReturn_Values_CArray = newSeq[pointer](len(virtualReturn))
  var virtualReturn_ctr = 0
  for virtualReturnk, virtualReturnv in virtualReturn:
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_Values_CArray[virtualReturn_ctr] = virtualReturn_v.h
    virtualReturn_ctr += 1


  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)
proc QAbstractTableModelsetItemData*(self: gen_qabstractitemmodel_types.QAbstractTableModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool =
  var roles_Keys_CArray = newSeq[cint](len(roles))
  var roles_Values_CArray = newSeq[pointer](len(roles))
  var roles_ctr = 0
  for rolesk, rolesv in roles:
    roles_Keys_CArray[roles_ctr] = roles_k
    roles_Values_CArray[roles_ctr] = roles_v.h
    roles_ctr += 1

  fQAbstractTableModel_virtualbase_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

type QAbstractTableModelsetItemDataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool
proc onsetItemData*(self: gen_qabstractitemmodel_types.QAbstractTableModel, slot: QAbstractTableModelsetItemDataProc) =
  # TODO check subclass
  var tmp = new QAbstractTableModelsetItemDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_setItemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_setItemData(self: ptr cQAbstractTableModel, slot: int, index: pointer, roles: struct_miqt_map): bool {.exportc: "miqt_exec_callback_QAbstractTableModel_setItemData ".} =
  var nimfunc = cast[ptr QAbstractTableModelsetItemDataProc](cast[pointer](slot))
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
proc QAbstractTableModelclearItemData*(self: gen_qabstractitemmodel_types.QAbstractTableModel, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQAbstractTableModel_virtualbase_clearItemData(self.h, index.h)

type QAbstractTableModelclearItemDataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): bool
proc onclearItemData*(self: gen_qabstractitemmodel_types.QAbstractTableModel, slot: QAbstractTableModelclearItemDataProc) =
  # TODO check subclass
  var tmp = new QAbstractTableModelclearItemDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_clearItemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_clearItemData(self: ptr cQAbstractTableModel, slot: int, index: pointer): bool {.exportc: "miqt_exec_callback_QAbstractTableModel_clearItemData ".} =
  var nimfunc = cast[ptr QAbstractTableModelclearItemDataProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractTableModelmimeTypes*(self: gen_qabstractitemmodel_types.QAbstractTableModel, ): seq[string] =
  var v_ma = fQAbstractTableModel_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QAbstractTableModelmimeTypesProc* = proc(): seq[string]
proc onmimeTypes*(self: gen_qabstractitemmodel_types.QAbstractTableModel, slot: QAbstractTableModelmimeTypesProc) =
  # TODO check subclass
  var tmp = new QAbstractTableModelmimeTypesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_mimeTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_mimeTypes(self: ptr cQAbstractTableModel, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QAbstractTableModel_mimeTypes ".} =
  var nimfunc = cast[ptr QAbstractTableModelmimeTypesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QAbstractTableModelmimeData*(self: gen_qabstractitemmodel_types.QAbstractTableModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fQAbstractTableModel_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))))

type QAbstractTableModelmimeDataProc* = proc(indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData
proc onmimeData*(self: gen_qabstractitemmodel_types.QAbstractTableModel, slot: QAbstractTableModelmimeDataProc) =
  # TODO check subclass
  var tmp = new QAbstractTableModelmimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_mimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_mimeData(self: ptr cQAbstractTableModel, slot: int, indexes: struct_miqt_array): pointer {.exportc: "miqt_exec_callback_QAbstractTableModel_mimeData ".} =
  var nimfunc = cast[ptr QAbstractTableModelmimeDataProc](cast[pointer](slot))
  var vindexes_ma = indexes
  var vindexesx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(vindexes_ma.len))
  let vindexes_outCast = cast[ptr UncheckedArray[pointer]](vindexes_ma.data)
  for i in 0 ..< vindexes_ma.len:
    vindexesx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: vindexes_outCast[i])
  let slotval1 = vindexesx_ret


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QAbstractTableModelcanDropMimeData*(self: gen_qabstractitemmodel_types.QAbstractTableModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQAbstractTableModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

type QAbstractTableModelcanDropMimeDataProc* = proc(data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc oncanDropMimeData*(self: gen_qabstractitemmodel_types.QAbstractTableModel, slot: QAbstractTableModelcanDropMimeDataProc) =
  # TODO check subclass
  var tmp = new QAbstractTableModelcanDropMimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_canDropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_canDropMimeData(self: ptr cQAbstractTableModel, slot: int, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractTableModel_canDropMimeData ".} =
  var nimfunc = cast[ptr QAbstractTableModelcanDropMimeDataProc](cast[pointer](slot))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data)

  let slotval2 = cint(action)

  let slotval3 = row

  let slotval4 = column

  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QAbstractTableModelsupportedDropActions*(self: gen_qabstractitemmodel_types.QAbstractTableModel, ): cint =
  cint(fQAbstractTableModel_virtualbase_supportedDropActions(self.h))

type QAbstractTableModelsupportedDropActionsProc* = proc(): cint
proc onsupportedDropActions*(self: gen_qabstractitemmodel_types.QAbstractTableModel, slot: QAbstractTableModelsupportedDropActionsProc) =
  # TODO check subclass
  var tmp = new QAbstractTableModelsupportedDropActionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_supportedDropActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_supportedDropActions(self: ptr cQAbstractTableModel, slot: int): cint {.exportc: "miqt_exec_callback_QAbstractTableModel_supportedDropActions ".} =
  var nimfunc = cast[ptr QAbstractTableModelsupportedDropActionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QAbstractTableModelsupportedDragActions*(self: gen_qabstractitemmodel_types.QAbstractTableModel, ): cint =
  cint(fQAbstractTableModel_virtualbase_supportedDragActions(self.h))

type QAbstractTableModelsupportedDragActionsProc* = proc(): cint
proc onsupportedDragActions*(self: gen_qabstractitemmodel_types.QAbstractTableModel, slot: QAbstractTableModelsupportedDragActionsProc) =
  # TODO check subclass
  var tmp = new QAbstractTableModelsupportedDragActionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_supportedDragActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_supportedDragActions(self: ptr cQAbstractTableModel, slot: int): cint {.exportc: "miqt_exec_callback_QAbstractTableModel_supportedDragActions ".} =
  var nimfunc = cast[ptr QAbstractTableModelsupportedDragActionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QAbstractTableModelinsertRows*(self: gen_qabstractitemmodel_types.QAbstractTableModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQAbstractTableModel_virtualbase_insertRows(self.h, row, count, parent.h)

type QAbstractTableModelinsertRowsProc* = proc(row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc oninsertRows*(self: gen_qabstractitemmodel_types.QAbstractTableModel, slot: QAbstractTableModelinsertRowsProc) =
  # TODO check subclass
  var tmp = new QAbstractTableModelinsertRowsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_insertRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_insertRows(self: ptr cQAbstractTableModel, slot: int, row: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractTableModel_insertRows ".} =
  var nimfunc = cast[ptr QAbstractTableModelinsertRowsProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QAbstractTableModelinsertColumns*(self: gen_qabstractitemmodel_types.QAbstractTableModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQAbstractTableModel_virtualbase_insertColumns(self.h, column, count, parent.h)

type QAbstractTableModelinsertColumnsProc* = proc(column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc oninsertColumns*(self: gen_qabstractitemmodel_types.QAbstractTableModel, slot: QAbstractTableModelinsertColumnsProc) =
  # TODO check subclass
  var tmp = new QAbstractTableModelinsertColumnsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_insertColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_insertColumns(self: ptr cQAbstractTableModel, slot: int, column: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractTableModel_insertColumns ".} =
  var nimfunc = cast[ptr QAbstractTableModelinsertColumnsProc](cast[pointer](slot))
  let slotval1 = column

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QAbstractTableModelremoveRows*(self: gen_qabstractitemmodel_types.QAbstractTableModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQAbstractTableModel_virtualbase_removeRows(self.h, row, count, parent.h)

type QAbstractTableModelremoveRowsProc* = proc(row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc onremoveRows*(self: gen_qabstractitemmodel_types.QAbstractTableModel, slot: QAbstractTableModelremoveRowsProc) =
  # TODO check subclass
  var tmp = new QAbstractTableModelremoveRowsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_removeRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_removeRows(self: ptr cQAbstractTableModel, slot: int, row: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractTableModel_removeRows ".} =
  var nimfunc = cast[ptr QAbstractTableModelremoveRowsProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QAbstractTableModelremoveColumns*(self: gen_qabstractitemmodel_types.QAbstractTableModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQAbstractTableModel_virtualbase_removeColumns(self.h, column, count, parent.h)

type QAbstractTableModelremoveColumnsProc* = proc(column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc onremoveColumns*(self: gen_qabstractitemmodel_types.QAbstractTableModel, slot: QAbstractTableModelremoveColumnsProc) =
  # TODO check subclass
  var tmp = new QAbstractTableModelremoveColumnsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_removeColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_removeColumns(self: ptr cQAbstractTableModel, slot: int, column: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractTableModel_removeColumns ".} =
  var nimfunc = cast[ptr QAbstractTableModelremoveColumnsProc](cast[pointer](slot))
  let slotval1 = column

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QAbstractTableModelmoveRows*(self: gen_qabstractitemmodel_types.QAbstractTableModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fQAbstractTableModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

type QAbstractTableModelmoveRowsProc* = proc(sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool
proc onmoveRows*(self: gen_qabstractitemmodel_types.QAbstractTableModel, slot: QAbstractTableModelmoveRowsProc) =
  # TODO check subclass
  var tmp = new QAbstractTableModelmoveRowsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_moveRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_moveRows(self: ptr cQAbstractTableModel, slot: int, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.exportc: "miqt_exec_callback_QAbstractTableModel_moveRows ".} =
  var nimfunc = cast[ptr QAbstractTableModelmoveRowsProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent)

  let slotval2 = sourceRow

  let slotval3 = count

  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent)

  let slotval5 = destinationChild


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QAbstractTableModelmoveColumns*(self: gen_qabstractitemmodel_types.QAbstractTableModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fQAbstractTableModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

type QAbstractTableModelmoveColumnsProc* = proc(sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool
proc onmoveColumns*(self: gen_qabstractitemmodel_types.QAbstractTableModel, slot: QAbstractTableModelmoveColumnsProc) =
  # TODO check subclass
  var tmp = new QAbstractTableModelmoveColumnsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_moveColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_moveColumns(self: ptr cQAbstractTableModel, slot: int, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.exportc: "miqt_exec_callback_QAbstractTableModel_moveColumns ".} =
  var nimfunc = cast[ptr QAbstractTableModelmoveColumnsProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent)

  let slotval2 = sourceColumn

  let slotval3 = count

  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent)

  let slotval5 = destinationChild


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QAbstractTableModelfetchMore*(self: gen_qabstractitemmodel_types.QAbstractTableModel, parent: gen_qabstractitemmodel_types.QModelIndex): void =
  fQAbstractTableModel_virtualbase_fetchMore(self.h, parent.h)

type QAbstractTableModelfetchMoreProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): void
proc onfetchMore*(self: gen_qabstractitemmodel_types.QAbstractTableModel, slot: QAbstractTableModelfetchMoreProc) =
  # TODO check subclass
  var tmp = new QAbstractTableModelfetchMoreProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_fetchMore(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_fetchMore(self: ptr cQAbstractTableModel, slot: int, parent: pointer): void {.exportc: "miqt_exec_callback_QAbstractTableModel_fetchMore ".} =
  var nimfunc = cast[ptr QAbstractTableModelfetchMoreProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  nimfunc[](slotval1)
proc QAbstractTableModelcanFetchMore*(self: gen_qabstractitemmodel_types.QAbstractTableModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQAbstractTableModel_virtualbase_canFetchMore(self.h, parent.h)

type QAbstractTableModelcanFetchMoreProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc oncanFetchMore*(self: gen_qabstractitemmodel_types.QAbstractTableModel, slot: QAbstractTableModelcanFetchMoreProc) =
  # TODO check subclass
  var tmp = new QAbstractTableModelcanFetchMoreProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_canFetchMore(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_canFetchMore(self: ptr cQAbstractTableModel, slot: int, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractTableModel_canFetchMore ".} =
  var nimfunc = cast[ptr QAbstractTableModelcanFetchMoreProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractTableModelsort*(self: gen_qabstractitemmodel_types.QAbstractTableModel, column: cint, order: cint): void =
  fQAbstractTableModel_virtualbase_sort(self.h, column, cint(order))

type QAbstractTableModelsortProc* = proc(column: cint, order: cint): void
proc onsort*(self: gen_qabstractitemmodel_types.QAbstractTableModel, slot: QAbstractTableModelsortProc) =
  # TODO check subclass
  var tmp = new QAbstractTableModelsortProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_sort(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_sort(self: ptr cQAbstractTableModel, slot: int, column: cint, order: cint): void {.exportc: "miqt_exec_callback_QAbstractTableModel_sort ".} =
  var nimfunc = cast[ptr QAbstractTableModelsortProc](cast[pointer](slot))
  let slotval1 = column

  let slotval2 = cint(order)


  nimfunc[](slotval1, slotval2)
proc QAbstractTableModelbuddy*(self: gen_qabstractitemmodel_types.QAbstractTableModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQAbstractTableModel_virtualbase_buddy(self.h, index.h))

type QAbstractTableModelbuddyProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onbuddy*(self: gen_qabstractitemmodel_types.QAbstractTableModel, slot: QAbstractTableModelbuddyProc) =
  # TODO check subclass
  var tmp = new QAbstractTableModelbuddyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_buddy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_buddy(self: ptr cQAbstractTableModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractTableModel_buddy ".} =
  var nimfunc = cast[ptr QAbstractTableModelbuddyProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QAbstractTableModelmatch*(self: gen_qabstractitemmodel_types.QAbstractTableModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fQAbstractTableModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  vx_ret

type QAbstractTableModelmatchProc* = proc(start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex]
proc onmatch*(self: gen_qabstractitemmodel_types.QAbstractTableModel, slot: QAbstractTableModelmatchProc) =
  # TODO check subclass
  var tmp = new QAbstractTableModelmatchProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_match(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_match(self: ptr cQAbstractTableModel, slot: int, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.exportc: "miqt_exec_callback_QAbstractTableModel_match ".} =
  var nimfunc = cast[ptr QAbstractTableModelmatchProc](cast[pointer](slot))
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
proc QAbstractTableModelspan*(self: gen_qabstractitemmodel_types.QAbstractTableModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQAbstractTableModel_virtualbase_span(self.h, index.h))

type QAbstractTableModelspanProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize
proc onspan*(self: gen_qabstractitemmodel_types.QAbstractTableModel, slot: QAbstractTableModelspanProc) =
  # TODO check subclass
  var tmp = new QAbstractTableModelspanProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_span(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_span(self: ptr cQAbstractTableModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractTableModel_span ".} =
  var nimfunc = cast[ptr QAbstractTableModelspanProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QAbstractTableModelroleNames*(self: gen_qabstractitemmodel_types.QAbstractTableModel, ): Table[cint,seq[byte]] =
  var v_mm = fQAbstractTableModel_virtualbase_roleNames(self.h)
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

type QAbstractTableModelroleNamesProc* = proc(): Table[cint,seq[byte]]
proc onroleNames*(self: gen_qabstractitemmodel_types.QAbstractTableModel, slot: QAbstractTableModelroleNamesProc) =
  # TODO check subclass
  var tmp = new QAbstractTableModelroleNamesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_roleNames(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_roleNames(self: ptr cQAbstractTableModel, slot: int): struct_miqt_map {.exportc: "miqt_exec_callback_QAbstractTableModel_roleNames ".} =
  var nimfunc = cast[ptr QAbstractTableModelroleNamesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_Keys_CArray = newSeq[cint](len(virtualReturn))
  var virtualReturn_Values_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  var virtualReturn_ctr = 0
  for virtualReturnk, virtualReturnv in virtualReturn:
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_Values_CArray[virtualReturn_ctr] = struct_miqt_string(data: cast[cstring](if len(virtualReturn_v) == 0: nil else: unsafeAddr virtualReturn_v[0]), len: csize_t(len(virtualReturn_v)))
    virtualReturn_ctr += 1


  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)
proc QAbstractTableModelmultiData*(self: gen_qabstractitemmodel_types.QAbstractTableModel, index: gen_qabstractitemmodel_types.QModelIndex, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void =
  fQAbstractTableModel_virtualbase_multiData(self.h, index.h, roleDataSpan.h)

type QAbstractTableModelmultiDataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void
proc onmultiData*(self: gen_qabstractitemmodel_types.QAbstractTableModel, slot: QAbstractTableModelmultiDataProc) =
  # TODO check subclass
  var tmp = new QAbstractTableModelmultiDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_multiData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_multiData(self: ptr cQAbstractTableModel, slot: int, index: pointer, roleDataSpan: pointer): void {.exportc: "miqt_exec_callback_QAbstractTableModel_multiData ".} =
  var nimfunc = cast[ptr QAbstractTableModelmultiDataProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = gen_qabstractitemmodel_types.QModelRoleDataSpan(h: roleDataSpan)


  nimfunc[](slotval1, slotval2)
proc QAbstractTableModelsubmit*(self: gen_qabstractitemmodel_types.QAbstractTableModel, ): bool =
  fQAbstractTableModel_virtualbase_submit(self.h)

type QAbstractTableModelsubmitProc* = proc(): bool
proc onsubmit*(self: gen_qabstractitemmodel_types.QAbstractTableModel, slot: QAbstractTableModelsubmitProc) =
  # TODO check subclass
  var tmp = new QAbstractTableModelsubmitProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_submit(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_submit(self: ptr cQAbstractTableModel, slot: int): bool {.exportc: "miqt_exec_callback_QAbstractTableModel_submit ".} =
  var nimfunc = cast[ptr QAbstractTableModelsubmitProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QAbstractTableModelrevert*(self: gen_qabstractitemmodel_types.QAbstractTableModel, ): void =
  fQAbstractTableModel_virtualbase_revert(self.h)

type QAbstractTableModelrevertProc* = proc(): void
proc onrevert*(self: gen_qabstractitemmodel_types.QAbstractTableModel, slot: QAbstractTableModelrevertProc) =
  # TODO check subclass
  var tmp = new QAbstractTableModelrevertProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_revert(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_revert(self: ptr cQAbstractTableModel, slot: int): void {.exportc: "miqt_exec_callback_QAbstractTableModel_revert ".} =
  var nimfunc = cast[ptr QAbstractTableModelrevertProc](cast[pointer](slot))

  nimfunc[]()
proc QAbstractTableModelresetInternalData*(self: gen_qabstractitemmodel_types.QAbstractTableModel, ): void =
  fQAbstractTableModel_virtualbase_resetInternalData(self.h)

type QAbstractTableModelresetInternalDataProc* = proc(): void
proc onresetInternalData*(self: gen_qabstractitemmodel_types.QAbstractTableModel, slot: QAbstractTableModelresetInternalDataProc) =
  # TODO check subclass
  var tmp = new QAbstractTableModelresetInternalDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_resetInternalData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_resetInternalData(self: ptr cQAbstractTableModel, slot: int): void {.exportc: "miqt_exec_callback_QAbstractTableModel_resetInternalData ".} =
  var nimfunc = cast[ptr QAbstractTableModelresetInternalDataProc](cast[pointer](slot))

  nimfunc[]()
proc QAbstractTableModelevent*(self: gen_qabstractitemmodel_types.QAbstractTableModel, event: gen_qcoreevent_types.QEvent): bool =
  fQAbstractTableModel_virtualbase_event(self.h, event.h)

type QAbstractTableModeleventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qabstractitemmodel_types.QAbstractTableModel, slot: QAbstractTableModeleventProc) =
  # TODO check subclass
  var tmp = new QAbstractTableModeleventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_event(self: ptr cQAbstractTableModel, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractTableModel_event ".} =
  var nimfunc = cast[ptr QAbstractTableModeleventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractTableModeleventFilter*(self: gen_qabstractitemmodel_types.QAbstractTableModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQAbstractTableModel_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAbstractTableModeleventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qabstractitemmodel_types.QAbstractTableModel, slot: QAbstractTableModeleventFilterProc) =
  # TODO check subclass
  var tmp = new QAbstractTableModeleventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_eventFilter(self: ptr cQAbstractTableModel, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractTableModel_eventFilter ".} =
  var nimfunc = cast[ptr QAbstractTableModeleventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QAbstractTableModeltimerEvent*(self: gen_qabstractitemmodel_types.QAbstractTableModel, event: gen_qcoreevent_types.QTimerEvent): void =
  fQAbstractTableModel_virtualbase_timerEvent(self.h, event.h)

type QAbstractTableModeltimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qabstractitemmodel_types.QAbstractTableModel, slot: QAbstractTableModeltimerEventProc) =
  # TODO check subclass
  var tmp = new QAbstractTableModeltimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_timerEvent(self: ptr cQAbstractTableModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractTableModel_timerEvent ".} =
  var nimfunc = cast[ptr QAbstractTableModeltimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractTableModelchildEvent*(self: gen_qabstractitemmodel_types.QAbstractTableModel, event: gen_qcoreevent_types.QChildEvent): void =
  fQAbstractTableModel_virtualbase_childEvent(self.h, event.h)

type QAbstractTableModelchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qabstractitemmodel_types.QAbstractTableModel, slot: QAbstractTableModelchildEventProc) =
  # TODO check subclass
  var tmp = new QAbstractTableModelchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_childEvent(self: ptr cQAbstractTableModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractTableModel_childEvent ".} =
  var nimfunc = cast[ptr QAbstractTableModelchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractTableModelcustomEvent*(self: gen_qabstractitemmodel_types.QAbstractTableModel, event: gen_qcoreevent_types.QEvent): void =
  fQAbstractTableModel_virtualbase_customEvent(self.h, event.h)

type QAbstractTableModelcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qabstractitemmodel_types.QAbstractTableModel, slot: QAbstractTableModelcustomEventProc) =
  # TODO check subclass
  var tmp = new QAbstractTableModelcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_customEvent(self: ptr cQAbstractTableModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractTableModel_customEvent ".} =
  var nimfunc = cast[ptr QAbstractTableModelcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractTableModelconnectNotify*(self: gen_qabstractitemmodel_types.QAbstractTableModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAbstractTableModel_virtualbase_connectNotify(self.h, signal.h)

type QAbstractTableModelconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qabstractitemmodel_types.QAbstractTableModel, slot: QAbstractTableModelconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAbstractTableModelconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_connectNotify(self: ptr cQAbstractTableModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractTableModel_connectNotify ".} =
  var nimfunc = cast[ptr QAbstractTableModelconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QAbstractTableModeldisconnectNotify*(self: gen_qabstractitemmodel_types.QAbstractTableModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAbstractTableModel_virtualbase_disconnectNotify(self.h, signal.h)

type QAbstractTableModeldisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qabstractitemmodel_types.QAbstractTableModel, slot: QAbstractTableModeldisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAbstractTableModeldisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_disconnectNotify(self: ptr cQAbstractTableModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractTableModel_disconnectNotify ".} =
  var nimfunc = cast[ptr QAbstractTableModeldisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qabstractitemmodel_types.QAbstractTableModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractTableModel_staticMetaObject())
proc delete*(self: gen_qabstractitemmodel_types.QAbstractTableModel) =
  fcQAbstractTableModel_delete(self.h)

func init*(T: type gen_qabstractitemmodel_types.QAbstractListModel, h: ptr cQAbstractListModel): gen_qabstractitemmodel_types.QAbstractListModel =
  T(h: h)
proc create*(T: type gen_qabstractitemmodel_types.QAbstractListModel, ): gen_qabstractitemmodel_types.QAbstractListModel =
  gen_qabstractitemmodel_types.QAbstractListModel.init(fcQAbstractListModel_new())

proc create*(T: type gen_qabstractitemmodel_types.QAbstractListModel, parent: gen_qobject_types.QObject): gen_qabstractitemmodel_types.QAbstractListModel =
  gen_qabstractitemmodel_types.QAbstractListModel.init(fcQAbstractListModel_new2(parent.h))

proc metaObject*(self: gen_qabstractitemmodel_types.QAbstractListModel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractListModel_metaObject(self.h))

proc metacast*(self: gen_qabstractitemmodel_types.QAbstractListModel, param1: cstring): pointer =
  fcQAbstractListModel_metacast(self.h, param1)

proc metacall*(self: gen_qabstractitemmodel_types.QAbstractListModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractListModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qabstractitemmodel_types.QAbstractListModel, s: cstring): string =
  let v_ms = fcQAbstractListModel_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc index*(self: gen_qabstractitemmodel_types.QAbstractListModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractListModel_index(self.h, row, column, parent.h))

proc sibling*(self: gen_qabstractitemmodel_types.QAbstractListModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractListModel_sibling(self.h, row, column, idx.h))

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

proc QAbstractListModelmetaObject*(self: gen_qabstractitemmodel_types.QAbstractListModel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQAbstractListModel_virtualbase_metaObject(self.h))

type QAbstractListModelmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qabstractitemmodel_types.QAbstractListModel, slot: QAbstractListModelmetaObjectProc) =
  # TODO check subclass
  var tmp = new QAbstractListModelmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_metaObject(self: ptr cQAbstractListModel, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractListModel_metaObject ".} =
  var nimfunc = cast[ptr QAbstractListModelmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAbstractListModelmetacast*(self: gen_qabstractitemmodel_types.QAbstractListModel, param1: cstring): pointer =
  fQAbstractListModel_virtualbase_metacast(self.h, param1)

type QAbstractListModelmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qabstractitemmodel_types.QAbstractListModel, slot: QAbstractListModelmetacastProc) =
  # TODO check subclass
  var tmp = new QAbstractListModelmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_metacast(self: ptr cQAbstractListModel, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QAbstractListModel_metacast ".} =
  var nimfunc = cast[ptr QAbstractListModelmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractListModelmetacall*(self: gen_qabstractitemmodel_types.QAbstractListModel, param1: cint, param2: cint, param3: pointer): cint =
  fQAbstractListModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAbstractListModelmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qabstractitemmodel_types.QAbstractListModel, slot: QAbstractListModelmetacallProc) =
  # TODO check subclass
  var tmp = new QAbstractListModelmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_metacall(self: ptr cQAbstractListModel, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAbstractListModel_metacall ".} =
  var nimfunc = cast[ptr QAbstractListModelmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QAbstractListModelindex*(self: gen_qabstractitemmodel_types.QAbstractListModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQAbstractListModel_virtualbase_index(self.h, row, column, parent.h))

type QAbstractListModelindexProc* = proc(row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onindex*(self: gen_qabstractitemmodel_types.QAbstractListModel, slot: QAbstractListModelindexProc) =
  # TODO check subclass
  var tmp = new QAbstractListModelindexProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_index(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_index(self: ptr cQAbstractListModel, slot: int, row: cint, column: cint, parent: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractListModel_index ".} =
  var nimfunc = cast[ptr QAbstractListModelindexProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = column

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QAbstractListModelsibling*(self: gen_qabstractitemmodel_types.QAbstractListModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQAbstractListModel_virtualbase_sibling(self.h, row, column, idx.h))

type QAbstractListModelsiblingProc* = proc(row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onsibling*(self: gen_qabstractitemmodel_types.QAbstractListModel, slot: QAbstractListModelsiblingProc) =
  # TODO check subclass
  var tmp = new QAbstractListModelsiblingProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_sibling(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_sibling(self: ptr cQAbstractListModel, slot: int, row: cint, column: cint, idx: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractListModel_sibling ".} =
  var nimfunc = cast[ptr QAbstractListModelsiblingProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = column

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QAbstractListModeldropMimeData*(self: gen_qabstractitemmodel_types.QAbstractListModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQAbstractListModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

type QAbstractListModeldropMimeDataProc* = proc(data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc ondropMimeData*(self: gen_qabstractitemmodel_types.QAbstractListModel, slot: QAbstractListModeldropMimeDataProc) =
  # TODO check subclass
  var tmp = new QAbstractListModeldropMimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_dropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_dropMimeData(self: ptr cQAbstractListModel, slot: int, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractListModel_dropMimeData ".} =
  var nimfunc = cast[ptr QAbstractListModeldropMimeDataProc](cast[pointer](slot))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data)

  let slotval2 = cint(action)

  let slotval3 = row

  let slotval4 = column

  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QAbstractListModelflags*(self: gen_qabstractitemmodel_types.QAbstractListModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fQAbstractListModel_virtualbase_flags(self.h, index.h))

type QAbstractListModelflagsProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): cint
proc onflags*(self: gen_qabstractitemmodel_types.QAbstractListModel, slot: QAbstractListModelflagsProc) =
  # TODO check subclass
  var tmp = new QAbstractListModelflagsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_flags(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_flags(self: ptr cQAbstractListModel, slot: int, index: pointer): cint {.exportc: "miqt_exec_callback_QAbstractListModel_flags ".} =
  var nimfunc = cast[ptr QAbstractListModelflagsProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  cint(virtualReturn)
type QAbstractListModelrowCountProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): cint
proc onrowCount*(self: gen_qabstractitemmodel_types.QAbstractListModel, slot: QAbstractListModelrowCountProc) =
  # TODO check subclass
  var tmp = new QAbstractListModelrowCountProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_rowCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_rowCount(self: ptr cQAbstractListModel, slot: int, parent: pointer): cint {.exportc: "miqt_exec_callback_QAbstractListModel_rowCount ".} =
  var nimfunc = cast[ptr QAbstractListModelrowCountProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
type QAbstractListModeldataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant
proc ondata*(self: gen_qabstractitemmodel_types.QAbstractListModel, slot: QAbstractListModeldataProc) =
  # TODO check subclass
  var tmp = new QAbstractListModeldataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_data(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_data(self: ptr cQAbstractListModel, slot: int, index: pointer, role: cint): pointer {.exportc: "miqt_exec_callback_QAbstractListModel_data ".} =
  var nimfunc = cast[ptr QAbstractListModeldataProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = role


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QAbstractListModelsetData*(self: gen_qabstractitemmodel_types.QAbstractListModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fQAbstractListModel_virtualbase_setData(self.h, index.h, value.h, role)

type QAbstractListModelsetDataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool
proc onsetData*(self: gen_qabstractitemmodel_types.QAbstractListModel, slot: QAbstractListModelsetDataProc) =
  # TODO check subclass
  var tmp = new QAbstractListModelsetDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_setData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_setData(self: ptr cQAbstractListModel, slot: int, index: pointer, value: pointer, role: cint): bool {.exportc: "miqt_exec_callback_QAbstractListModel_setData ".} =
  var nimfunc = cast[ptr QAbstractListModelsetDataProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = gen_qvariant_types.QVariant(h: value)

  let slotval3 = role


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QAbstractListModelheaderData*(self: gen_qabstractitemmodel_types.QAbstractListModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQAbstractListModel_virtualbase_headerData(self.h, section, cint(orientation), role))

type QAbstractListModelheaderDataProc* = proc(section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant
proc onheaderData*(self: gen_qabstractitemmodel_types.QAbstractListModel, slot: QAbstractListModelheaderDataProc) =
  # TODO check subclass
  var tmp = new QAbstractListModelheaderDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_headerData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_headerData(self: ptr cQAbstractListModel, slot: int, section: cint, orientation: cint, role: cint): pointer {.exportc: "miqt_exec_callback_QAbstractListModel_headerData ".} =
  var nimfunc = cast[ptr QAbstractListModelheaderDataProc](cast[pointer](slot))
  let slotval1 = section

  let slotval2 = cint(orientation)

  let slotval3 = role


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QAbstractListModelsetHeaderData*(self: gen_qabstractitemmodel_types.QAbstractListModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fQAbstractListModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

type QAbstractListModelsetHeaderDataProc* = proc(section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool
proc onsetHeaderData*(self: gen_qabstractitemmodel_types.QAbstractListModel, slot: QAbstractListModelsetHeaderDataProc) =
  # TODO check subclass
  var tmp = new QAbstractListModelsetHeaderDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_setHeaderData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_setHeaderData(self: ptr cQAbstractListModel, slot: int, section: cint, orientation: cint, value: pointer, role: cint): bool {.exportc: "miqt_exec_callback_QAbstractListModel_setHeaderData ".} =
  var nimfunc = cast[ptr QAbstractListModelsetHeaderDataProc](cast[pointer](slot))
  let slotval1 = section

  let slotval2 = cint(orientation)

  let slotval3 = gen_qvariant_types.QVariant(h: value)

  let slotval4 = role


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc QAbstractListModelitemData*(self: gen_qabstractitemmodel_types.QAbstractListModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fQAbstractListModel_virtualbase_itemData(self.h, index.h)
  var vx_ret: Table[cint, gen_qvariant_types.QVariant]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var v_entry_Value = gen_qvariant_types.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

type QAbstractListModelitemDataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant]
proc onitemData*(self: gen_qabstractitemmodel_types.QAbstractListModel, slot: QAbstractListModelitemDataProc) =
  # TODO check subclass
  var tmp = new QAbstractListModelitemDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_itemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_itemData(self: ptr cQAbstractListModel, slot: int, index: pointer): struct_miqt_map {.exportc: "miqt_exec_callback_QAbstractListModel_itemData ".} =
  var nimfunc = cast[ptr QAbstractListModelitemDataProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )
  var virtualReturn_Keys_CArray = newSeq[cint](len(virtualReturn))
  var virtualReturn_Values_CArray = newSeq[pointer](len(virtualReturn))
  var virtualReturn_ctr = 0
  for virtualReturnk, virtualReturnv in virtualReturn:
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_Values_CArray[virtualReturn_ctr] = virtualReturn_v.h
    virtualReturn_ctr += 1


  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)
proc QAbstractListModelsetItemData*(self: gen_qabstractitemmodel_types.QAbstractListModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool =
  var roles_Keys_CArray = newSeq[cint](len(roles))
  var roles_Values_CArray = newSeq[pointer](len(roles))
  var roles_ctr = 0
  for rolesk, rolesv in roles:
    roles_Keys_CArray[roles_ctr] = roles_k
    roles_Values_CArray[roles_ctr] = roles_v.h
    roles_ctr += 1

  fQAbstractListModel_virtualbase_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

type QAbstractListModelsetItemDataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool
proc onsetItemData*(self: gen_qabstractitemmodel_types.QAbstractListModel, slot: QAbstractListModelsetItemDataProc) =
  # TODO check subclass
  var tmp = new QAbstractListModelsetItemDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_setItemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_setItemData(self: ptr cQAbstractListModel, slot: int, index: pointer, roles: struct_miqt_map): bool {.exportc: "miqt_exec_callback_QAbstractListModel_setItemData ".} =
  var nimfunc = cast[ptr QAbstractListModelsetItemDataProc](cast[pointer](slot))
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
proc QAbstractListModelclearItemData*(self: gen_qabstractitemmodel_types.QAbstractListModel, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQAbstractListModel_virtualbase_clearItemData(self.h, index.h)

type QAbstractListModelclearItemDataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): bool
proc onclearItemData*(self: gen_qabstractitemmodel_types.QAbstractListModel, slot: QAbstractListModelclearItemDataProc) =
  # TODO check subclass
  var tmp = new QAbstractListModelclearItemDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_clearItemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_clearItemData(self: ptr cQAbstractListModel, slot: int, index: pointer): bool {.exportc: "miqt_exec_callback_QAbstractListModel_clearItemData ".} =
  var nimfunc = cast[ptr QAbstractListModelclearItemDataProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractListModelmimeTypes*(self: gen_qabstractitemmodel_types.QAbstractListModel, ): seq[string] =
  var v_ma = fQAbstractListModel_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QAbstractListModelmimeTypesProc* = proc(): seq[string]
proc onmimeTypes*(self: gen_qabstractitemmodel_types.QAbstractListModel, slot: QAbstractListModelmimeTypesProc) =
  # TODO check subclass
  var tmp = new QAbstractListModelmimeTypesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_mimeTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_mimeTypes(self: ptr cQAbstractListModel, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QAbstractListModel_mimeTypes ".} =
  var nimfunc = cast[ptr QAbstractListModelmimeTypesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QAbstractListModelmimeData*(self: gen_qabstractitemmodel_types.QAbstractListModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fQAbstractListModel_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))))

type QAbstractListModelmimeDataProc* = proc(indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData
proc onmimeData*(self: gen_qabstractitemmodel_types.QAbstractListModel, slot: QAbstractListModelmimeDataProc) =
  # TODO check subclass
  var tmp = new QAbstractListModelmimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_mimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_mimeData(self: ptr cQAbstractListModel, slot: int, indexes: struct_miqt_array): pointer {.exportc: "miqt_exec_callback_QAbstractListModel_mimeData ".} =
  var nimfunc = cast[ptr QAbstractListModelmimeDataProc](cast[pointer](slot))
  var vindexes_ma = indexes
  var vindexesx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(vindexes_ma.len))
  let vindexes_outCast = cast[ptr UncheckedArray[pointer]](vindexes_ma.data)
  for i in 0 ..< vindexes_ma.len:
    vindexesx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: vindexes_outCast[i])
  let slotval1 = vindexesx_ret


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QAbstractListModelcanDropMimeData*(self: gen_qabstractitemmodel_types.QAbstractListModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQAbstractListModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

type QAbstractListModelcanDropMimeDataProc* = proc(data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc oncanDropMimeData*(self: gen_qabstractitemmodel_types.QAbstractListModel, slot: QAbstractListModelcanDropMimeDataProc) =
  # TODO check subclass
  var tmp = new QAbstractListModelcanDropMimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_canDropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_canDropMimeData(self: ptr cQAbstractListModel, slot: int, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractListModel_canDropMimeData ".} =
  var nimfunc = cast[ptr QAbstractListModelcanDropMimeDataProc](cast[pointer](slot))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data)

  let slotval2 = cint(action)

  let slotval3 = row

  let slotval4 = column

  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QAbstractListModelsupportedDropActions*(self: gen_qabstractitemmodel_types.QAbstractListModel, ): cint =
  cint(fQAbstractListModel_virtualbase_supportedDropActions(self.h))

type QAbstractListModelsupportedDropActionsProc* = proc(): cint
proc onsupportedDropActions*(self: gen_qabstractitemmodel_types.QAbstractListModel, slot: QAbstractListModelsupportedDropActionsProc) =
  # TODO check subclass
  var tmp = new QAbstractListModelsupportedDropActionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_supportedDropActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_supportedDropActions(self: ptr cQAbstractListModel, slot: int): cint {.exportc: "miqt_exec_callback_QAbstractListModel_supportedDropActions ".} =
  var nimfunc = cast[ptr QAbstractListModelsupportedDropActionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QAbstractListModelsupportedDragActions*(self: gen_qabstractitemmodel_types.QAbstractListModel, ): cint =
  cint(fQAbstractListModel_virtualbase_supportedDragActions(self.h))

type QAbstractListModelsupportedDragActionsProc* = proc(): cint
proc onsupportedDragActions*(self: gen_qabstractitemmodel_types.QAbstractListModel, slot: QAbstractListModelsupportedDragActionsProc) =
  # TODO check subclass
  var tmp = new QAbstractListModelsupportedDragActionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_supportedDragActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_supportedDragActions(self: ptr cQAbstractListModel, slot: int): cint {.exportc: "miqt_exec_callback_QAbstractListModel_supportedDragActions ".} =
  var nimfunc = cast[ptr QAbstractListModelsupportedDragActionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QAbstractListModelinsertRows*(self: gen_qabstractitemmodel_types.QAbstractListModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQAbstractListModel_virtualbase_insertRows(self.h, row, count, parent.h)

type QAbstractListModelinsertRowsProc* = proc(row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc oninsertRows*(self: gen_qabstractitemmodel_types.QAbstractListModel, slot: QAbstractListModelinsertRowsProc) =
  # TODO check subclass
  var tmp = new QAbstractListModelinsertRowsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_insertRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_insertRows(self: ptr cQAbstractListModel, slot: int, row: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractListModel_insertRows ".} =
  var nimfunc = cast[ptr QAbstractListModelinsertRowsProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QAbstractListModelinsertColumns*(self: gen_qabstractitemmodel_types.QAbstractListModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQAbstractListModel_virtualbase_insertColumns(self.h, column, count, parent.h)

type QAbstractListModelinsertColumnsProc* = proc(column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc oninsertColumns*(self: gen_qabstractitemmodel_types.QAbstractListModel, slot: QAbstractListModelinsertColumnsProc) =
  # TODO check subclass
  var tmp = new QAbstractListModelinsertColumnsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_insertColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_insertColumns(self: ptr cQAbstractListModel, slot: int, column: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractListModel_insertColumns ".} =
  var nimfunc = cast[ptr QAbstractListModelinsertColumnsProc](cast[pointer](slot))
  let slotval1 = column

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QAbstractListModelremoveRows*(self: gen_qabstractitemmodel_types.QAbstractListModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQAbstractListModel_virtualbase_removeRows(self.h, row, count, parent.h)

type QAbstractListModelremoveRowsProc* = proc(row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc onremoveRows*(self: gen_qabstractitemmodel_types.QAbstractListModel, slot: QAbstractListModelremoveRowsProc) =
  # TODO check subclass
  var tmp = new QAbstractListModelremoveRowsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_removeRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_removeRows(self: ptr cQAbstractListModel, slot: int, row: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractListModel_removeRows ".} =
  var nimfunc = cast[ptr QAbstractListModelremoveRowsProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QAbstractListModelremoveColumns*(self: gen_qabstractitemmodel_types.QAbstractListModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQAbstractListModel_virtualbase_removeColumns(self.h, column, count, parent.h)

type QAbstractListModelremoveColumnsProc* = proc(column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc onremoveColumns*(self: gen_qabstractitemmodel_types.QAbstractListModel, slot: QAbstractListModelremoveColumnsProc) =
  # TODO check subclass
  var tmp = new QAbstractListModelremoveColumnsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_removeColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_removeColumns(self: ptr cQAbstractListModel, slot: int, column: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractListModel_removeColumns ".} =
  var nimfunc = cast[ptr QAbstractListModelremoveColumnsProc](cast[pointer](slot))
  let slotval1 = column

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QAbstractListModelmoveRows*(self: gen_qabstractitemmodel_types.QAbstractListModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fQAbstractListModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

type QAbstractListModelmoveRowsProc* = proc(sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool
proc onmoveRows*(self: gen_qabstractitemmodel_types.QAbstractListModel, slot: QAbstractListModelmoveRowsProc) =
  # TODO check subclass
  var tmp = new QAbstractListModelmoveRowsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_moveRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_moveRows(self: ptr cQAbstractListModel, slot: int, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.exportc: "miqt_exec_callback_QAbstractListModel_moveRows ".} =
  var nimfunc = cast[ptr QAbstractListModelmoveRowsProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent)

  let slotval2 = sourceRow

  let slotval3 = count

  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent)

  let slotval5 = destinationChild


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QAbstractListModelmoveColumns*(self: gen_qabstractitemmodel_types.QAbstractListModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fQAbstractListModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

type QAbstractListModelmoveColumnsProc* = proc(sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool
proc onmoveColumns*(self: gen_qabstractitemmodel_types.QAbstractListModel, slot: QAbstractListModelmoveColumnsProc) =
  # TODO check subclass
  var tmp = new QAbstractListModelmoveColumnsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_moveColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_moveColumns(self: ptr cQAbstractListModel, slot: int, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.exportc: "miqt_exec_callback_QAbstractListModel_moveColumns ".} =
  var nimfunc = cast[ptr QAbstractListModelmoveColumnsProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent)

  let slotval2 = sourceColumn

  let slotval3 = count

  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent)

  let slotval5 = destinationChild


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QAbstractListModelfetchMore*(self: gen_qabstractitemmodel_types.QAbstractListModel, parent: gen_qabstractitemmodel_types.QModelIndex): void =
  fQAbstractListModel_virtualbase_fetchMore(self.h, parent.h)

type QAbstractListModelfetchMoreProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): void
proc onfetchMore*(self: gen_qabstractitemmodel_types.QAbstractListModel, slot: QAbstractListModelfetchMoreProc) =
  # TODO check subclass
  var tmp = new QAbstractListModelfetchMoreProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_fetchMore(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_fetchMore(self: ptr cQAbstractListModel, slot: int, parent: pointer): void {.exportc: "miqt_exec_callback_QAbstractListModel_fetchMore ".} =
  var nimfunc = cast[ptr QAbstractListModelfetchMoreProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  nimfunc[](slotval1)
proc QAbstractListModelcanFetchMore*(self: gen_qabstractitemmodel_types.QAbstractListModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQAbstractListModel_virtualbase_canFetchMore(self.h, parent.h)

type QAbstractListModelcanFetchMoreProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc oncanFetchMore*(self: gen_qabstractitemmodel_types.QAbstractListModel, slot: QAbstractListModelcanFetchMoreProc) =
  # TODO check subclass
  var tmp = new QAbstractListModelcanFetchMoreProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_canFetchMore(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_canFetchMore(self: ptr cQAbstractListModel, slot: int, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractListModel_canFetchMore ".} =
  var nimfunc = cast[ptr QAbstractListModelcanFetchMoreProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractListModelsort*(self: gen_qabstractitemmodel_types.QAbstractListModel, column: cint, order: cint): void =
  fQAbstractListModel_virtualbase_sort(self.h, column, cint(order))

type QAbstractListModelsortProc* = proc(column: cint, order: cint): void
proc onsort*(self: gen_qabstractitemmodel_types.QAbstractListModel, slot: QAbstractListModelsortProc) =
  # TODO check subclass
  var tmp = new QAbstractListModelsortProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_sort(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_sort(self: ptr cQAbstractListModel, slot: int, column: cint, order: cint): void {.exportc: "miqt_exec_callback_QAbstractListModel_sort ".} =
  var nimfunc = cast[ptr QAbstractListModelsortProc](cast[pointer](slot))
  let slotval1 = column

  let slotval2 = cint(order)


  nimfunc[](slotval1, slotval2)
proc QAbstractListModelbuddy*(self: gen_qabstractitemmodel_types.QAbstractListModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQAbstractListModel_virtualbase_buddy(self.h, index.h))

type QAbstractListModelbuddyProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onbuddy*(self: gen_qabstractitemmodel_types.QAbstractListModel, slot: QAbstractListModelbuddyProc) =
  # TODO check subclass
  var tmp = new QAbstractListModelbuddyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_buddy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_buddy(self: ptr cQAbstractListModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractListModel_buddy ".} =
  var nimfunc = cast[ptr QAbstractListModelbuddyProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QAbstractListModelmatch*(self: gen_qabstractitemmodel_types.QAbstractListModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fQAbstractListModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  vx_ret

type QAbstractListModelmatchProc* = proc(start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex]
proc onmatch*(self: gen_qabstractitemmodel_types.QAbstractListModel, slot: QAbstractListModelmatchProc) =
  # TODO check subclass
  var tmp = new QAbstractListModelmatchProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_match(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_match(self: ptr cQAbstractListModel, slot: int, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.exportc: "miqt_exec_callback_QAbstractListModel_match ".} =
  var nimfunc = cast[ptr QAbstractListModelmatchProc](cast[pointer](slot))
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
proc QAbstractListModelspan*(self: gen_qabstractitemmodel_types.QAbstractListModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQAbstractListModel_virtualbase_span(self.h, index.h))

type QAbstractListModelspanProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize
proc onspan*(self: gen_qabstractitemmodel_types.QAbstractListModel, slot: QAbstractListModelspanProc) =
  # TODO check subclass
  var tmp = new QAbstractListModelspanProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_span(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_span(self: ptr cQAbstractListModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractListModel_span ".} =
  var nimfunc = cast[ptr QAbstractListModelspanProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QAbstractListModelroleNames*(self: gen_qabstractitemmodel_types.QAbstractListModel, ): Table[cint,seq[byte]] =
  var v_mm = fQAbstractListModel_virtualbase_roleNames(self.h)
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

type QAbstractListModelroleNamesProc* = proc(): Table[cint,seq[byte]]
proc onroleNames*(self: gen_qabstractitemmodel_types.QAbstractListModel, slot: QAbstractListModelroleNamesProc) =
  # TODO check subclass
  var tmp = new QAbstractListModelroleNamesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_roleNames(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_roleNames(self: ptr cQAbstractListModel, slot: int): struct_miqt_map {.exportc: "miqt_exec_callback_QAbstractListModel_roleNames ".} =
  var nimfunc = cast[ptr QAbstractListModelroleNamesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_Keys_CArray = newSeq[cint](len(virtualReturn))
  var virtualReturn_Values_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  var virtualReturn_ctr = 0
  for virtualReturnk, virtualReturnv in virtualReturn:
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_Values_CArray[virtualReturn_ctr] = struct_miqt_string(data: cast[cstring](if len(virtualReturn_v) == 0: nil else: unsafeAddr virtualReturn_v[0]), len: csize_t(len(virtualReturn_v)))
    virtualReturn_ctr += 1


  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)
proc QAbstractListModelmultiData*(self: gen_qabstractitemmodel_types.QAbstractListModel, index: gen_qabstractitemmodel_types.QModelIndex, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void =
  fQAbstractListModel_virtualbase_multiData(self.h, index.h, roleDataSpan.h)

type QAbstractListModelmultiDataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void
proc onmultiData*(self: gen_qabstractitemmodel_types.QAbstractListModel, slot: QAbstractListModelmultiDataProc) =
  # TODO check subclass
  var tmp = new QAbstractListModelmultiDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_multiData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_multiData(self: ptr cQAbstractListModel, slot: int, index: pointer, roleDataSpan: pointer): void {.exportc: "miqt_exec_callback_QAbstractListModel_multiData ".} =
  var nimfunc = cast[ptr QAbstractListModelmultiDataProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = gen_qabstractitemmodel_types.QModelRoleDataSpan(h: roleDataSpan)


  nimfunc[](slotval1, slotval2)
proc QAbstractListModelsubmit*(self: gen_qabstractitemmodel_types.QAbstractListModel, ): bool =
  fQAbstractListModel_virtualbase_submit(self.h)

type QAbstractListModelsubmitProc* = proc(): bool
proc onsubmit*(self: gen_qabstractitemmodel_types.QAbstractListModel, slot: QAbstractListModelsubmitProc) =
  # TODO check subclass
  var tmp = new QAbstractListModelsubmitProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_submit(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_submit(self: ptr cQAbstractListModel, slot: int): bool {.exportc: "miqt_exec_callback_QAbstractListModel_submit ".} =
  var nimfunc = cast[ptr QAbstractListModelsubmitProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QAbstractListModelrevert*(self: gen_qabstractitemmodel_types.QAbstractListModel, ): void =
  fQAbstractListModel_virtualbase_revert(self.h)

type QAbstractListModelrevertProc* = proc(): void
proc onrevert*(self: gen_qabstractitemmodel_types.QAbstractListModel, slot: QAbstractListModelrevertProc) =
  # TODO check subclass
  var tmp = new QAbstractListModelrevertProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_revert(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_revert(self: ptr cQAbstractListModel, slot: int): void {.exportc: "miqt_exec_callback_QAbstractListModel_revert ".} =
  var nimfunc = cast[ptr QAbstractListModelrevertProc](cast[pointer](slot))

  nimfunc[]()
proc QAbstractListModelresetInternalData*(self: gen_qabstractitemmodel_types.QAbstractListModel, ): void =
  fQAbstractListModel_virtualbase_resetInternalData(self.h)

type QAbstractListModelresetInternalDataProc* = proc(): void
proc onresetInternalData*(self: gen_qabstractitemmodel_types.QAbstractListModel, slot: QAbstractListModelresetInternalDataProc) =
  # TODO check subclass
  var tmp = new QAbstractListModelresetInternalDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_resetInternalData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_resetInternalData(self: ptr cQAbstractListModel, slot: int): void {.exportc: "miqt_exec_callback_QAbstractListModel_resetInternalData ".} =
  var nimfunc = cast[ptr QAbstractListModelresetInternalDataProc](cast[pointer](slot))

  nimfunc[]()
proc QAbstractListModelevent*(self: gen_qabstractitemmodel_types.QAbstractListModel, event: gen_qcoreevent_types.QEvent): bool =
  fQAbstractListModel_virtualbase_event(self.h, event.h)

type QAbstractListModeleventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qabstractitemmodel_types.QAbstractListModel, slot: QAbstractListModeleventProc) =
  # TODO check subclass
  var tmp = new QAbstractListModeleventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_event(self: ptr cQAbstractListModel, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractListModel_event ".} =
  var nimfunc = cast[ptr QAbstractListModeleventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractListModeleventFilter*(self: gen_qabstractitemmodel_types.QAbstractListModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQAbstractListModel_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAbstractListModeleventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qabstractitemmodel_types.QAbstractListModel, slot: QAbstractListModeleventFilterProc) =
  # TODO check subclass
  var tmp = new QAbstractListModeleventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_eventFilter(self: ptr cQAbstractListModel, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractListModel_eventFilter ".} =
  var nimfunc = cast[ptr QAbstractListModeleventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QAbstractListModeltimerEvent*(self: gen_qabstractitemmodel_types.QAbstractListModel, event: gen_qcoreevent_types.QTimerEvent): void =
  fQAbstractListModel_virtualbase_timerEvent(self.h, event.h)

type QAbstractListModeltimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qabstractitemmodel_types.QAbstractListModel, slot: QAbstractListModeltimerEventProc) =
  # TODO check subclass
  var tmp = new QAbstractListModeltimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_timerEvent(self: ptr cQAbstractListModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractListModel_timerEvent ".} =
  var nimfunc = cast[ptr QAbstractListModeltimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractListModelchildEvent*(self: gen_qabstractitemmodel_types.QAbstractListModel, event: gen_qcoreevent_types.QChildEvent): void =
  fQAbstractListModel_virtualbase_childEvent(self.h, event.h)

type QAbstractListModelchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qabstractitemmodel_types.QAbstractListModel, slot: QAbstractListModelchildEventProc) =
  # TODO check subclass
  var tmp = new QAbstractListModelchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_childEvent(self: ptr cQAbstractListModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractListModel_childEvent ".} =
  var nimfunc = cast[ptr QAbstractListModelchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractListModelcustomEvent*(self: gen_qabstractitemmodel_types.QAbstractListModel, event: gen_qcoreevent_types.QEvent): void =
  fQAbstractListModel_virtualbase_customEvent(self.h, event.h)

type QAbstractListModelcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qabstractitemmodel_types.QAbstractListModel, slot: QAbstractListModelcustomEventProc) =
  # TODO check subclass
  var tmp = new QAbstractListModelcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_customEvent(self: ptr cQAbstractListModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractListModel_customEvent ".} =
  var nimfunc = cast[ptr QAbstractListModelcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractListModelconnectNotify*(self: gen_qabstractitemmodel_types.QAbstractListModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAbstractListModel_virtualbase_connectNotify(self.h, signal.h)

type QAbstractListModelconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qabstractitemmodel_types.QAbstractListModel, slot: QAbstractListModelconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAbstractListModelconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_connectNotify(self: ptr cQAbstractListModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractListModel_connectNotify ".} =
  var nimfunc = cast[ptr QAbstractListModelconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QAbstractListModeldisconnectNotify*(self: gen_qabstractitemmodel_types.QAbstractListModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAbstractListModel_virtualbase_disconnectNotify(self.h, signal.h)

type QAbstractListModeldisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qabstractitemmodel_types.QAbstractListModel, slot: QAbstractListModeldisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAbstractListModeldisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_disconnectNotify(self: ptr cQAbstractListModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractListModel_disconnectNotify ".} =
  var nimfunc = cast[ptr QAbstractListModeldisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qabstractitemmodel_types.QAbstractListModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractListModel_staticMetaObject())
proc delete*(self: gen_qabstractitemmodel_types.QAbstractListModel) =
  fcQAbstractListModel_delete(self.h)
