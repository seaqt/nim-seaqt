import ./Qt5Core_libs

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

const cflags = gorge("pkg-config --cflags Qt5Core")  & " -fPIC"
{.compile("gen_qsortfilterproxymodel.cpp", cflags).}


import ./gen_qsortfilterproxymodel_types
export gen_qsortfilterproxymodel_types

import
  ./gen_qabstractitemmodel_types,
  ./gen_qabstractproxymodel,
  ./gen_qcoreevent_types,
  ./gen_qitemselectionmodel_types,
  ./gen_qmetaobject_types,
  ./gen_qmimedata_types,
  ./gen_qobject_types,
  ./gen_qobjectdefs_types,
  ./gen_qregexp_types,
  ./gen_qregularexpression_types,
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
  gen_qregexp_types,
  gen_qregularexpression_types,
  gen_qsize_types,
  gen_qvariant_types

type cQSortFilterProxyModel*{.exportc: "QSortFilterProxyModel", incompleteStruct.} = object

proc fcQSortFilterProxyModel_new(): ptr cQSortFilterProxyModel {.importc: "QSortFilterProxyModel_new".}
proc fcQSortFilterProxyModel_new2(parent: pointer): ptr cQSortFilterProxyModel {.importc: "QSortFilterProxyModel_new2".}
proc fcQSortFilterProxyModel_metaObject(self: pointer, ): pointer {.importc: "QSortFilterProxyModel_metaObject".}
proc fcQSortFilterProxyModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QSortFilterProxyModel_metacast".}
proc fcQSortFilterProxyModel_tr(s: cstring): struct_miqt_string {.importc: "QSortFilterProxyModel_tr".}
proc fcQSortFilterProxyModel_trUtf8(s: cstring): struct_miqt_string {.importc: "QSortFilterProxyModel_trUtf8".}
proc fcQSortFilterProxyModel_setSourceModel(self: pointer, sourceModel: pointer): void {.importc: "QSortFilterProxyModel_setSourceModel".}
proc fcQSortFilterProxyModel_mapToSource(self: pointer, proxyIndex: pointer): pointer {.importc: "QSortFilterProxyModel_mapToSource".}
proc fcQSortFilterProxyModel_mapFromSource(self: pointer, sourceIndex: pointer): pointer {.importc: "QSortFilterProxyModel_mapFromSource".}
proc fcQSortFilterProxyModel_mapSelectionToSource(self: pointer, proxySelection: pointer): pointer {.importc: "QSortFilterProxyModel_mapSelectionToSource".}
proc fcQSortFilterProxyModel_mapSelectionFromSource(self: pointer, sourceSelection: pointer): pointer {.importc: "QSortFilterProxyModel_mapSelectionFromSource".}
proc fcQSortFilterProxyModel_filterRegExp(self: pointer, ): pointer {.importc: "QSortFilterProxyModel_filterRegExp".}
proc fcQSortFilterProxyModel_filterRegularExpression(self: pointer, ): pointer {.importc: "QSortFilterProxyModel_filterRegularExpression".}
proc fcQSortFilterProxyModel_filterKeyColumn(self: pointer, ): cint {.importc: "QSortFilterProxyModel_filterKeyColumn".}
proc fcQSortFilterProxyModel_setFilterKeyColumn(self: pointer, column: cint): void {.importc: "QSortFilterProxyModel_setFilterKeyColumn".}
proc fcQSortFilterProxyModel_filterCaseSensitivity(self: pointer, ): cint {.importc: "QSortFilterProxyModel_filterCaseSensitivity".}
proc fcQSortFilterProxyModel_setFilterCaseSensitivity(self: pointer, cs: cint): void {.importc: "QSortFilterProxyModel_setFilterCaseSensitivity".}
proc fcQSortFilterProxyModel_sortCaseSensitivity(self: pointer, ): cint {.importc: "QSortFilterProxyModel_sortCaseSensitivity".}
proc fcQSortFilterProxyModel_setSortCaseSensitivity(self: pointer, cs: cint): void {.importc: "QSortFilterProxyModel_setSortCaseSensitivity".}
proc fcQSortFilterProxyModel_isSortLocaleAware(self: pointer, ): bool {.importc: "QSortFilterProxyModel_isSortLocaleAware".}
proc fcQSortFilterProxyModel_setSortLocaleAware(self: pointer, on: bool): void {.importc: "QSortFilterProxyModel_setSortLocaleAware".}
proc fcQSortFilterProxyModel_sortColumn(self: pointer, ): cint {.importc: "QSortFilterProxyModel_sortColumn".}
proc fcQSortFilterProxyModel_sortOrder(self: pointer, ): cint {.importc: "QSortFilterProxyModel_sortOrder".}
proc fcQSortFilterProxyModel_dynamicSortFilter(self: pointer, ): bool {.importc: "QSortFilterProxyModel_dynamicSortFilter".}
proc fcQSortFilterProxyModel_setDynamicSortFilter(self: pointer, enable: bool): void {.importc: "QSortFilterProxyModel_setDynamicSortFilter".}
proc fcQSortFilterProxyModel_sortRole(self: pointer, ): cint {.importc: "QSortFilterProxyModel_sortRole".}
proc fcQSortFilterProxyModel_setSortRole(self: pointer, role: cint): void {.importc: "QSortFilterProxyModel_setSortRole".}
proc fcQSortFilterProxyModel_filterRole(self: pointer, ): cint {.importc: "QSortFilterProxyModel_filterRole".}
proc fcQSortFilterProxyModel_setFilterRole(self: pointer, role: cint): void {.importc: "QSortFilterProxyModel_setFilterRole".}
proc fcQSortFilterProxyModel_isRecursiveFilteringEnabled(self: pointer, ): bool {.importc: "QSortFilterProxyModel_isRecursiveFilteringEnabled".}
proc fcQSortFilterProxyModel_setRecursiveFilteringEnabled(self: pointer, recursive: bool): void {.importc: "QSortFilterProxyModel_setRecursiveFilteringEnabled".}
proc fcQSortFilterProxyModel_setFilterRegExp(self: pointer, pattern: struct_miqt_string): void {.importc: "QSortFilterProxyModel_setFilterRegExp".}
proc fcQSortFilterProxyModel_setFilterRegExpWithRegExp(self: pointer, regExp: pointer): void {.importc: "QSortFilterProxyModel_setFilterRegExpWithRegExp".}
proc fcQSortFilterProxyModel_setFilterRegularExpression(self: pointer, pattern: struct_miqt_string): void {.importc: "QSortFilterProxyModel_setFilterRegularExpression".}
proc fcQSortFilterProxyModel_setFilterRegularExpressionWithRegularExpression(self: pointer, regularExpression: pointer): void {.importc: "QSortFilterProxyModel_setFilterRegularExpressionWithRegularExpression".}
proc fcQSortFilterProxyModel_setFilterWildcard(self: pointer, pattern: struct_miqt_string): void {.importc: "QSortFilterProxyModel_setFilterWildcard".}
proc fcQSortFilterProxyModel_setFilterFixedString(self: pointer, pattern: struct_miqt_string): void {.importc: "QSortFilterProxyModel_setFilterFixedString".}
proc fcQSortFilterProxyModel_clear(self: pointer, ): void {.importc: "QSortFilterProxyModel_clear".}
proc fcQSortFilterProxyModel_invalidate(self: pointer, ): void {.importc: "QSortFilterProxyModel_invalidate".}
proc fcQSortFilterProxyModel_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.importc: "QSortFilterProxyModel_index".}
proc fcQSortFilterProxyModel_parent(self: pointer, child: pointer): pointer {.importc: "QSortFilterProxyModel_parent".}
proc fcQSortFilterProxyModel_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.importc: "QSortFilterProxyModel_sibling".}
proc fcQSortFilterProxyModel_rowCount(self: pointer, parent: pointer): cint {.importc: "QSortFilterProxyModel_rowCount".}
proc fcQSortFilterProxyModel_columnCount(self: pointer, parent: pointer): cint {.importc: "QSortFilterProxyModel_columnCount".}
proc fcQSortFilterProxyModel_hasChildren(self: pointer, parent: pointer): bool {.importc: "QSortFilterProxyModel_hasChildren".}
proc fcQSortFilterProxyModel_data(self: pointer, index: pointer, role: cint): pointer {.importc: "QSortFilterProxyModel_data".}
proc fcQSortFilterProxyModel_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.importc: "QSortFilterProxyModel_setData".}
proc fcQSortFilterProxyModel_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.importc: "QSortFilterProxyModel_headerData".}
proc fcQSortFilterProxyModel_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.importc: "QSortFilterProxyModel_setHeaderData".}
proc fcQSortFilterProxyModel_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.importc: "QSortFilterProxyModel_mimeData".}
proc fcQSortFilterProxyModel_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QSortFilterProxyModel_dropMimeData".}
proc fcQSortFilterProxyModel_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QSortFilterProxyModel_insertRows".}
proc fcQSortFilterProxyModel_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QSortFilterProxyModel_insertColumns".}
proc fcQSortFilterProxyModel_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QSortFilterProxyModel_removeRows".}
proc fcQSortFilterProxyModel_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QSortFilterProxyModel_removeColumns".}
proc fcQSortFilterProxyModel_fetchMore(self: pointer, parent: pointer): void {.importc: "QSortFilterProxyModel_fetchMore".}
proc fcQSortFilterProxyModel_canFetchMore(self: pointer, parent: pointer): bool {.importc: "QSortFilterProxyModel_canFetchMore".}
proc fcQSortFilterProxyModel_flags(self: pointer, index: pointer): cint {.importc: "QSortFilterProxyModel_flags".}
proc fcQSortFilterProxyModel_buddy(self: pointer, index: pointer): pointer {.importc: "QSortFilterProxyModel_buddy".}
proc fcQSortFilterProxyModel_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.importc: "QSortFilterProxyModel_match".}
proc fcQSortFilterProxyModel_span(self: pointer, index: pointer): pointer {.importc: "QSortFilterProxyModel_span".}
proc fcQSortFilterProxyModel_sort(self: pointer, column: cint, order: cint): void {.importc: "QSortFilterProxyModel_sort".}
proc fcQSortFilterProxyModel_mimeTypes(self: pointer, ): struct_miqt_array {.importc: "QSortFilterProxyModel_mimeTypes".}
proc fcQSortFilterProxyModel_supportedDropActions(self: pointer, ): cint {.importc: "QSortFilterProxyModel_supportedDropActions".}
proc fcQSortFilterProxyModel_dynamicSortFilterChanged(self: pointer, dynamicSortFilter: bool): void {.importc: "QSortFilterProxyModel_dynamicSortFilterChanged".}
proc fcQSortFilterProxyModel_connect_dynamicSortFilterChanged(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_connect_dynamicSortFilterChanged".}
proc fcQSortFilterProxyModel_filterCaseSensitivityChanged(self: pointer, filterCaseSensitivity: cint): void {.importc: "QSortFilterProxyModel_filterCaseSensitivityChanged".}
proc fcQSortFilterProxyModel_connect_filterCaseSensitivityChanged(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_connect_filterCaseSensitivityChanged".}
proc fcQSortFilterProxyModel_sortCaseSensitivityChanged(self: pointer, sortCaseSensitivity: cint): void {.importc: "QSortFilterProxyModel_sortCaseSensitivityChanged".}
proc fcQSortFilterProxyModel_connect_sortCaseSensitivityChanged(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_connect_sortCaseSensitivityChanged".}
proc fcQSortFilterProxyModel_sortLocaleAwareChanged(self: pointer, sortLocaleAware: bool): void {.importc: "QSortFilterProxyModel_sortLocaleAwareChanged".}
proc fcQSortFilterProxyModel_connect_sortLocaleAwareChanged(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_connect_sortLocaleAwareChanged".}
proc fcQSortFilterProxyModel_sortRoleChanged(self: pointer, sortRole: cint): void {.importc: "QSortFilterProxyModel_sortRoleChanged".}
proc fcQSortFilterProxyModel_connect_sortRoleChanged(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_connect_sortRoleChanged".}
proc fcQSortFilterProxyModel_filterRoleChanged(self: pointer, filterRole: cint): void {.importc: "QSortFilterProxyModel_filterRoleChanged".}
proc fcQSortFilterProxyModel_connect_filterRoleChanged(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_connect_filterRoleChanged".}
proc fcQSortFilterProxyModel_recursiveFilteringEnabledChanged(self: pointer, recursiveFilteringEnabled: bool): void {.importc: "QSortFilterProxyModel_recursiveFilteringEnabledChanged".}
proc fcQSortFilterProxyModel_connect_recursiveFilteringEnabledChanged(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_connect_recursiveFilteringEnabledChanged".}
proc fcQSortFilterProxyModel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSortFilterProxyModel_tr2".}
proc fcQSortFilterProxyModel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSortFilterProxyModel_tr3".}
proc fcQSortFilterProxyModel_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSortFilterProxyModel_trUtf82".}
proc fcQSortFilterProxyModel_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSortFilterProxyModel_trUtf83".}
proc fQSortFilterProxyModel_virtualbase_setSourceModel(self: pointer, sourceModel: pointer): void{.importc: "QSortFilterProxyModel_virtualbase_setSourceModel".}
proc fcQSortFilterProxyModel_override_virtual_setSourceModel(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_setSourceModel".}
proc fQSortFilterProxyModel_virtualbase_mapToSource(self: pointer, proxyIndex: pointer): pointer{.importc: "QSortFilterProxyModel_virtualbase_mapToSource".}
proc fcQSortFilterProxyModel_override_virtual_mapToSource(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_mapToSource".}
proc fQSortFilterProxyModel_virtualbase_mapFromSource(self: pointer, sourceIndex: pointer): pointer{.importc: "QSortFilterProxyModel_virtualbase_mapFromSource".}
proc fcQSortFilterProxyModel_override_virtual_mapFromSource(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_mapFromSource".}
proc fQSortFilterProxyModel_virtualbase_mapSelectionToSource(self: pointer, proxySelection: pointer): pointer{.importc: "QSortFilterProxyModel_virtualbase_mapSelectionToSource".}
proc fcQSortFilterProxyModel_override_virtual_mapSelectionToSource(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_mapSelectionToSource".}
proc fQSortFilterProxyModel_virtualbase_mapSelectionFromSource(self: pointer, sourceSelection: pointer): pointer{.importc: "QSortFilterProxyModel_virtualbase_mapSelectionFromSource".}
proc fcQSortFilterProxyModel_override_virtual_mapSelectionFromSource(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_mapSelectionFromSource".}
proc fQSortFilterProxyModel_virtualbase_filterAcceptsRow(self: pointer, source_row: cint, source_parent: pointer): bool{.importc: "QSortFilterProxyModel_virtualbase_filterAcceptsRow".}
proc fcQSortFilterProxyModel_override_virtual_filterAcceptsRow(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_filterAcceptsRow".}
proc fQSortFilterProxyModel_virtualbase_filterAcceptsColumn(self: pointer, source_column: cint, source_parent: pointer): bool{.importc: "QSortFilterProxyModel_virtualbase_filterAcceptsColumn".}
proc fcQSortFilterProxyModel_override_virtual_filterAcceptsColumn(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_filterAcceptsColumn".}
proc fQSortFilterProxyModel_virtualbase_lessThan(self: pointer, source_left: pointer, source_right: pointer): bool{.importc: "QSortFilterProxyModel_virtualbase_lessThan".}
proc fcQSortFilterProxyModel_override_virtual_lessThan(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_lessThan".}
proc fQSortFilterProxyModel_virtualbase_index(self: pointer, row: cint, column: cint, parent: pointer): pointer{.importc: "QSortFilterProxyModel_virtualbase_index".}
proc fcQSortFilterProxyModel_override_virtual_index(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_index".}
proc fQSortFilterProxyModel_virtualbase_parent(self: pointer, child: pointer): pointer{.importc: "QSortFilterProxyModel_virtualbase_parent".}
proc fcQSortFilterProxyModel_override_virtual_parent(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_parent".}
proc fQSortFilterProxyModel_virtualbase_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer{.importc: "QSortFilterProxyModel_virtualbase_sibling".}
proc fcQSortFilterProxyModel_override_virtual_sibling(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_sibling".}
proc fQSortFilterProxyModel_virtualbase_rowCount(self: pointer, parent: pointer): cint{.importc: "QSortFilterProxyModel_virtualbase_rowCount".}
proc fcQSortFilterProxyModel_override_virtual_rowCount(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_rowCount".}
proc fQSortFilterProxyModel_virtualbase_columnCount(self: pointer, parent: pointer): cint{.importc: "QSortFilterProxyModel_virtualbase_columnCount".}
proc fcQSortFilterProxyModel_override_virtual_columnCount(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_columnCount".}
proc fQSortFilterProxyModel_virtualbase_hasChildren(self: pointer, parent: pointer): bool{.importc: "QSortFilterProxyModel_virtualbase_hasChildren".}
proc fcQSortFilterProxyModel_override_virtual_hasChildren(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_hasChildren".}
proc fQSortFilterProxyModel_virtualbase_data(self: pointer, index: pointer, role: cint): pointer{.importc: "QSortFilterProxyModel_virtualbase_data".}
proc fcQSortFilterProxyModel_override_virtual_data(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_data".}
proc fQSortFilterProxyModel_virtualbase_setData(self: pointer, index: pointer, value: pointer, role: cint): bool{.importc: "QSortFilterProxyModel_virtualbase_setData".}
proc fcQSortFilterProxyModel_override_virtual_setData(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_setData".}
proc fQSortFilterProxyModel_virtualbase_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer{.importc: "QSortFilterProxyModel_virtualbase_headerData".}
proc fcQSortFilterProxyModel_override_virtual_headerData(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_headerData".}
proc fQSortFilterProxyModel_virtualbase_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool{.importc: "QSortFilterProxyModel_virtualbase_setHeaderData".}
proc fcQSortFilterProxyModel_override_virtual_setHeaderData(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_setHeaderData".}
proc fQSortFilterProxyModel_virtualbase_mimeData(self: pointer, indexes: struct_miqt_array): pointer{.importc: "QSortFilterProxyModel_virtualbase_mimeData".}
proc fcQSortFilterProxyModel_override_virtual_mimeData(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_mimeData".}
proc fQSortFilterProxyModel_virtualbase_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool{.importc: "QSortFilterProxyModel_virtualbase_dropMimeData".}
proc fcQSortFilterProxyModel_override_virtual_dropMimeData(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_dropMimeData".}
proc fQSortFilterProxyModel_virtualbase_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool{.importc: "QSortFilterProxyModel_virtualbase_insertRows".}
proc fcQSortFilterProxyModel_override_virtual_insertRows(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_insertRows".}
proc fQSortFilterProxyModel_virtualbase_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool{.importc: "QSortFilterProxyModel_virtualbase_insertColumns".}
proc fcQSortFilterProxyModel_override_virtual_insertColumns(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_insertColumns".}
proc fQSortFilterProxyModel_virtualbase_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool{.importc: "QSortFilterProxyModel_virtualbase_removeRows".}
proc fcQSortFilterProxyModel_override_virtual_removeRows(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_removeRows".}
proc fQSortFilterProxyModel_virtualbase_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool{.importc: "QSortFilterProxyModel_virtualbase_removeColumns".}
proc fcQSortFilterProxyModel_override_virtual_removeColumns(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_removeColumns".}
proc fQSortFilterProxyModel_virtualbase_fetchMore(self: pointer, parent: pointer): void{.importc: "QSortFilterProxyModel_virtualbase_fetchMore".}
proc fcQSortFilterProxyModel_override_virtual_fetchMore(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_fetchMore".}
proc fQSortFilterProxyModel_virtualbase_canFetchMore(self: pointer, parent: pointer): bool{.importc: "QSortFilterProxyModel_virtualbase_canFetchMore".}
proc fcQSortFilterProxyModel_override_virtual_canFetchMore(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_canFetchMore".}
proc fQSortFilterProxyModel_virtualbase_flags(self: pointer, index: pointer): cint{.importc: "QSortFilterProxyModel_virtualbase_flags".}
proc fcQSortFilterProxyModel_override_virtual_flags(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_flags".}
proc fQSortFilterProxyModel_virtualbase_buddy(self: pointer, index: pointer): pointer{.importc: "QSortFilterProxyModel_virtualbase_buddy".}
proc fcQSortFilterProxyModel_override_virtual_buddy(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_buddy".}
proc fQSortFilterProxyModel_virtualbase_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array{.importc: "QSortFilterProxyModel_virtualbase_match".}
proc fcQSortFilterProxyModel_override_virtual_match(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_match".}
proc fQSortFilterProxyModel_virtualbase_span(self: pointer, index: pointer): pointer{.importc: "QSortFilterProxyModel_virtualbase_span".}
proc fcQSortFilterProxyModel_override_virtual_span(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_span".}
proc fQSortFilterProxyModel_virtualbase_sort(self: pointer, column: cint, order: cint): void{.importc: "QSortFilterProxyModel_virtualbase_sort".}
proc fcQSortFilterProxyModel_override_virtual_sort(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_sort".}
proc fQSortFilterProxyModel_virtualbase_mimeTypes(self: pointer, ): struct_miqt_array{.importc: "QSortFilterProxyModel_virtualbase_mimeTypes".}
proc fcQSortFilterProxyModel_override_virtual_mimeTypes(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_mimeTypes".}
proc fQSortFilterProxyModel_virtualbase_supportedDropActions(self: pointer, ): cint{.importc: "QSortFilterProxyModel_virtualbase_supportedDropActions".}
proc fcQSortFilterProxyModel_override_virtual_supportedDropActions(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_supportedDropActions".}
proc fQSortFilterProxyModel_virtualbase_submit(self: pointer, ): bool{.importc: "QSortFilterProxyModel_virtualbase_submit".}
proc fcQSortFilterProxyModel_override_virtual_submit(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_submit".}
proc fQSortFilterProxyModel_virtualbase_revert(self: pointer, ): void{.importc: "QSortFilterProxyModel_virtualbase_revert".}
proc fcQSortFilterProxyModel_override_virtual_revert(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_revert".}
proc fQSortFilterProxyModel_virtualbase_itemData(self: pointer, index: pointer): struct_miqt_map{.importc: "QSortFilterProxyModel_virtualbase_itemData".}
proc fcQSortFilterProxyModel_override_virtual_itemData(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_itemData".}
proc fQSortFilterProxyModel_virtualbase_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool{.importc: "QSortFilterProxyModel_virtualbase_setItemData".}
proc fcQSortFilterProxyModel_override_virtual_setItemData(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_setItemData".}
proc fQSortFilterProxyModel_virtualbase_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool{.importc: "QSortFilterProxyModel_virtualbase_canDropMimeData".}
proc fcQSortFilterProxyModel_override_virtual_canDropMimeData(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_canDropMimeData".}
proc fQSortFilterProxyModel_virtualbase_supportedDragActions(self: pointer, ): cint{.importc: "QSortFilterProxyModel_virtualbase_supportedDragActions".}
proc fcQSortFilterProxyModel_override_virtual_supportedDragActions(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_supportedDragActions".}
proc fQSortFilterProxyModel_virtualbase_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool{.importc: "QSortFilterProxyModel_virtualbase_moveRows".}
proc fcQSortFilterProxyModel_override_virtual_moveRows(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_moveRows".}
proc fQSortFilterProxyModel_virtualbase_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool{.importc: "QSortFilterProxyModel_virtualbase_moveColumns".}
proc fcQSortFilterProxyModel_override_virtual_moveColumns(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_moveColumns".}
proc fQSortFilterProxyModel_virtualbase_roleNames(self: pointer, ): struct_miqt_map{.importc: "QSortFilterProxyModel_virtualbase_roleNames".}
proc fcQSortFilterProxyModel_override_virtual_roleNames(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_roleNames".}
proc fQSortFilterProxyModel_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QSortFilterProxyModel_virtualbase_event".}
proc fcQSortFilterProxyModel_override_virtual_event(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_event".}
proc fQSortFilterProxyModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSortFilterProxyModel_virtualbase_eventFilter".}
proc fcQSortFilterProxyModel_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_eventFilter".}
proc fQSortFilterProxyModel_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSortFilterProxyModel_virtualbase_timerEvent".}
proc fcQSortFilterProxyModel_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_timerEvent".}
proc fQSortFilterProxyModel_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSortFilterProxyModel_virtualbase_childEvent".}
proc fcQSortFilterProxyModel_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_childEvent".}
proc fQSortFilterProxyModel_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSortFilterProxyModel_virtualbase_customEvent".}
proc fcQSortFilterProxyModel_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_customEvent".}
proc fQSortFilterProxyModel_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSortFilterProxyModel_virtualbase_connectNotify".}
proc fcQSortFilterProxyModel_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_connectNotify".}
proc fQSortFilterProxyModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSortFilterProxyModel_virtualbase_disconnectNotify".}
proc fcQSortFilterProxyModel_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_disconnectNotify".}
proc fcQSortFilterProxyModel_delete(self: pointer) {.importc: "QSortFilterProxyModel_delete".}


func init*(T: type gen_qsortfilterproxymodel_types.QSortFilterProxyModel, h: ptr cQSortFilterProxyModel): gen_qsortfilterproxymodel_types.QSortFilterProxyModel =
  T(h: h)
proc create*(T: type gen_qsortfilterproxymodel_types.QSortFilterProxyModel, ): gen_qsortfilterproxymodel_types.QSortFilterProxyModel =
  gen_qsortfilterproxymodel_types.QSortFilterProxyModel.init(fcQSortFilterProxyModel_new())

proc create*(T: type gen_qsortfilterproxymodel_types.QSortFilterProxyModel, parent: gen_qobject_types.QObject): gen_qsortfilterproxymodel_types.QSortFilterProxyModel =
  gen_qsortfilterproxymodel_types.QSortFilterProxyModel.init(fcQSortFilterProxyModel_new2(parent.h))

proc metaObject*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSortFilterProxyModel_metaObject(self.h))

proc metacast*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, param1: cstring): pointer =
  fcQSortFilterProxyModel_metacast(self.h, param1)

proc tr*(_: type gen_qsortfilterproxymodel_types.QSortFilterProxyModel, s: cstring): string =
  let v_ms = fcQSortFilterProxyModel_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsortfilterproxymodel_types.QSortFilterProxyModel, s: cstring): string =
  let v_ms = fcQSortFilterProxyModel_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSourceModel*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, sourceModel: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQSortFilterProxyModel_setSourceModel(self.h, sourceModel.h)

proc mapToSource*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQSortFilterProxyModel_mapToSource(self.h, proxyIndex.h))

proc mapFromSource*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, sourceIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQSortFilterProxyModel_mapFromSource(self.h, sourceIndex.h))

proc mapSelectionToSource*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, proxySelection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fcQSortFilterProxyModel_mapSelectionToSource(self.h, proxySelection.h))

proc mapSelectionFromSource*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, sourceSelection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fcQSortFilterProxyModel_mapSelectionFromSource(self.h, sourceSelection.h))

proc filterRegExp*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, ): gen_qregexp_types.QRegExp =
  gen_qregexp_types.QRegExp(h: fcQSortFilterProxyModel_filterRegExp(self.h))

proc filterRegularExpression*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, ): gen_qregularexpression_types.QRegularExpression =
  gen_qregularexpression_types.QRegularExpression(h: fcQSortFilterProxyModel_filterRegularExpression(self.h))

proc filterKeyColumn*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, ): cint =
  fcQSortFilterProxyModel_filterKeyColumn(self.h)

proc setFilterKeyColumn*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, column: cint): void =
  fcQSortFilterProxyModel_setFilterKeyColumn(self.h, column)

proc filterCaseSensitivity*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, ): cint =
  cint(fcQSortFilterProxyModel_filterCaseSensitivity(self.h))

proc setFilterCaseSensitivity*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, cs: cint): void =
  fcQSortFilterProxyModel_setFilterCaseSensitivity(self.h, cint(cs))

proc sortCaseSensitivity*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, ): cint =
  cint(fcQSortFilterProxyModel_sortCaseSensitivity(self.h))

proc setSortCaseSensitivity*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, cs: cint): void =
  fcQSortFilterProxyModel_setSortCaseSensitivity(self.h, cint(cs))

proc isSortLocaleAware*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, ): bool =
  fcQSortFilterProxyModel_isSortLocaleAware(self.h)

proc setSortLocaleAware*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, on: bool): void =
  fcQSortFilterProxyModel_setSortLocaleAware(self.h, on)

proc sortColumn*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, ): cint =
  fcQSortFilterProxyModel_sortColumn(self.h)

proc sortOrder*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, ): cint =
  cint(fcQSortFilterProxyModel_sortOrder(self.h))

proc dynamicSortFilter*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, ): bool =
  fcQSortFilterProxyModel_dynamicSortFilter(self.h)

proc setDynamicSortFilter*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, enable: bool): void =
  fcQSortFilterProxyModel_setDynamicSortFilter(self.h, enable)

proc sortRole*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, ): cint =
  fcQSortFilterProxyModel_sortRole(self.h)

proc setSortRole*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, role: cint): void =
  fcQSortFilterProxyModel_setSortRole(self.h, role)

proc filterRole*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, ): cint =
  fcQSortFilterProxyModel_filterRole(self.h)

proc setFilterRole*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, role: cint): void =
  fcQSortFilterProxyModel_setFilterRole(self.h, role)

proc isRecursiveFilteringEnabled*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, ): bool =
  fcQSortFilterProxyModel_isRecursiveFilteringEnabled(self.h)

proc setRecursiveFilteringEnabled*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, recursive: bool): void =
  fcQSortFilterProxyModel_setRecursiveFilteringEnabled(self.h, recursive)

proc setFilterRegExp*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, pattern: string): void =
  fcQSortFilterProxyModel_setFilterRegExp(self.h, struct_miqt_string(data: pattern, len: csize_t(len(pattern))))

proc setFilterRegExp*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, regExp: gen_qregexp_types.QRegExp): void =
  fcQSortFilterProxyModel_setFilterRegExpWithRegExp(self.h, regExp.h)

proc setFilterRegularExpression*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, pattern: string): void =
  fcQSortFilterProxyModel_setFilterRegularExpression(self.h, struct_miqt_string(data: pattern, len: csize_t(len(pattern))))

proc setFilterRegularExpression*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, regularExpression: gen_qregularexpression_types.QRegularExpression): void =
  fcQSortFilterProxyModel_setFilterRegularExpressionWithRegularExpression(self.h, regularExpression.h)

proc setFilterWildcard*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, pattern: string): void =
  fcQSortFilterProxyModel_setFilterWildcard(self.h, struct_miqt_string(data: pattern, len: csize_t(len(pattern))))

proc setFilterFixedString*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, pattern: string): void =
  fcQSortFilterProxyModel_setFilterFixedString(self.h, struct_miqt_string(data: pattern, len: csize_t(len(pattern))))

proc clear*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, ): void =
  fcQSortFilterProxyModel_clear(self.h)

proc invalidate*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, ): void =
  fcQSortFilterProxyModel_invalidate(self.h)

proc index*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQSortFilterProxyModel_index(self.h, row, column, parent.h))

proc parent*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQSortFilterProxyModel_parent(self.h, child.h))

proc sibling*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQSortFilterProxyModel_sibling(self.h, row, column, idx.h))

proc rowCount*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQSortFilterProxyModel_rowCount(self.h, parent.h)

proc columnCount*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQSortFilterProxyModel_columnCount(self.h, parent.h)

proc hasChildren*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSortFilterProxyModel_hasChildren(self.h, parent.h)

proc data*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSortFilterProxyModel_data(self.h, index.h, role))

proc setData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQSortFilterProxyModel_setData(self.h, index.h, value.h, role)

proc headerData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSortFilterProxyModel_headerData(self.h, section, cint(orientation), role))

proc setHeaderData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQSortFilterProxyModel_setHeaderData(self.h, section, cint(orientation), value.h, role)

proc mimeData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fcQSortFilterProxyModel_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))))

proc dropMimeData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSortFilterProxyModel_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc insertRows*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSortFilterProxyModel_insertRows(self.h, row, count, parent.h)

proc insertColumns*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSortFilterProxyModel_insertColumns(self.h, column, count, parent.h)

proc removeRows*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSortFilterProxyModel_removeRows(self.h, row, count, parent.h)

proc removeColumns*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSortFilterProxyModel_removeColumns(self.h, column, count, parent.h)

proc fetchMore*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQSortFilterProxyModel_fetchMore(self.h, parent.h)

proc canFetchMore*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSortFilterProxyModel_canFetchMore(self.h, parent.h)

proc flags*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fcQSortFilterProxyModel_flags(self.h, index.h))

proc buddy*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQSortFilterProxyModel_buddy(self.h, index.h))

proc match*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQSortFilterProxyModel_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  vx_ret

proc span*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSortFilterProxyModel_span(self.h, index.h))

proc sort*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, column: cint, order: cint): void =
  fcQSortFilterProxyModel_sort(self.h, column, cint(order))

proc mimeTypes*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, ): seq[string] =
  var v_ma = fcQSortFilterProxyModel_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc supportedDropActions*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, ): cint =
  cint(fcQSortFilterProxyModel_supportedDropActions(self.h))

proc dynamicSortFilterChanged*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, dynamicSortFilter: bool): void =
  fcQSortFilterProxyModel_dynamicSortFilterChanged(self.h, dynamicSortFilter)

type QSortFilterProxyModeldynamicSortFilterChangedSlot* = proc(dynamicSortFilter: bool)
proc miqt_exec_callback_QSortFilterProxyModel_dynamicSortFilterChanged(slot: int, dynamicSortFilter: bool) {.exportc.} =
  let nimfunc = cast[ptr QSortFilterProxyModeldynamicSortFilterChangedSlot](cast[pointer](slot))
  let slotval1 = dynamicSortFilter

  nimfunc[](slotval1)

proc ondynamicSortFilterChanged*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModeldynamicSortFilterChangedSlot) =
  var tmp = new QSortFilterProxyModeldynamicSortFilterChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_connect_dynamicSortFilterChanged(self.h, cast[int](addr tmp[]))

proc filterCaseSensitivityChanged*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, filterCaseSensitivity: cint): void =
  fcQSortFilterProxyModel_filterCaseSensitivityChanged(self.h, cint(filterCaseSensitivity))

type QSortFilterProxyModelfilterCaseSensitivityChangedSlot* = proc(filterCaseSensitivity: cint)
proc miqt_exec_callback_QSortFilterProxyModel_filterCaseSensitivityChanged(slot: int, filterCaseSensitivity: cint) {.exportc.} =
  let nimfunc = cast[ptr QSortFilterProxyModelfilterCaseSensitivityChangedSlot](cast[pointer](slot))
  let slotval1 = cint(filterCaseSensitivity)

  nimfunc[](slotval1)

proc onfilterCaseSensitivityChanged*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelfilterCaseSensitivityChangedSlot) =
  var tmp = new QSortFilterProxyModelfilterCaseSensitivityChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_connect_filterCaseSensitivityChanged(self.h, cast[int](addr tmp[]))

proc sortCaseSensitivityChanged*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, sortCaseSensitivity: cint): void =
  fcQSortFilterProxyModel_sortCaseSensitivityChanged(self.h, cint(sortCaseSensitivity))

type QSortFilterProxyModelsortCaseSensitivityChangedSlot* = proc(sortCaseSensitivity: cint)
proc miqt_exec_callback_QSortFilterProxyModel_sortCaseSensitivityChanged(slot: int, sortCaseSensitivity: cint) {.exportc.} =
  let nimfunc = cast[ptr QSortFilterProxyModelsortCaseSensitivityChangedSlot](cast[pointer](slot))
  let slotval1 = cint(sortCaseSensitivity)

  nimfunc[](slotval1)

proc onsortCaseSensitivityChanged*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelsortCaseSensitivityChangedSlot) =
  var tmp = new QSortFilterProxyModelsortCaseSensitivityChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_connect_sortCaseSensitivityChanged(self.h, cast[int](addr tmp[]))

proc sortLocaleAwareChanged*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, sortLocaleAware: bool): void =
  fcQSortFilterProxyModel_sortLocaleAwareChanged(self.h, sortLocaleAware)

type QSortFilterProxyModelsortLocaleAwareChangedSlot* = proc(sortLocaleAware: bool)
proc miqt_exec_callback_QSortFilterProxyModel_sortLocaleAwareChanged(slot: int, sortLocaleAware: bool) {.exportc.} =
  let nimfunc = cast[ptr QSortFilterProxyModelsortLocaleAwareChangedSlot](cast[pointer](slot))
  let slotval1 = sortLocaleAware

  nimfunc[](slotval1)

proc onsortLocaleAwareChanged*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelsortLocaleAwareChangedSlot) =
  var tmp = new QSortFilterProxyModelsortLocaleAwareChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_connect_sortLocaleAwareChanged(self.h, cast[int](addr tmp[]))

proc sortRoleChanged*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, sortRole: cint): void =
  fcQSortFilterProxyModel_sortRoleChanged(self.h, sortRole)

type QSortFilterProxyModelsortRoleChangedSlot* = proc(sortRole: cint)
proc miqt_exec_callback_QSortFilterProxyModel_sortRoleChanged(slot: int, sortRole: cint) {.exportc.} =
  let nimfunc = cast[ptr QSortFilterProxyModelsortRoleChangedSlot](cast[pointer](slot))
  let slotval1 = sortRole

  nimfunc[](slotval1)

proc onsortRoleChanged*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelsortRoleChangedSlot) =
  var tmp = new QSortFilterProxyModelsortRoleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_connect_sortRoleChanged(self.h, cast[int](addr tmp[]))

proc filterRoleChanged*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, filterRole: cint): void =
  fcQSortFilterProxyModel_filterRoleChanged(self.h, filterRole)

type QSortFilterProxyModelfilterRoleChangedSlot* = proc(filterRole: cint)
proc miqt_exec_callback_QSortFilterProxyModel_filterRoleChanged(slot: int, filterRole: cint) {.exportc.} =
  let nimfunc = cast[ptr QSortFilterProxyModelfilterRoleChangedSlot](cast[pointer](slot))
  let slotval1 = filterRole

  nimfunc[](slotval1)

proc onfilterRoleChanged*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelfilterRoleChangedSlot) =
  var tmp = new QSortFilterProxyModelfilterRoleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_connect_filterRoleChanged(self.h, cast[int](addr tmp[]))

proc recursiveFilteringEnabledChanged*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, recursiveFilteringEnabled: bool): void =
  fcQSortFilterProxyModel_recursiveFilteringEnabledChanged(self.h, recursiveFilteringEnabled)

type QSortFilterProxyModelrecursiveFilteringEnabledChangedSlot* = proc(recursiveFilteringEnabled: bool)
proc miqt_exec_callback_QSortFilterProxyModel_recursiveFilteringEnabledChanged(slot: int, recursiveFilteringEnabled: bool) {.exportc.} =
  let nimfunc = cast[ptr QSortFilterProxyModelrecursiveFilteringEnabledChangedSlot](cast[pointer](slot))
  let slotval1 = recursiveFilteringEnabled

  nimfunc[](slotval1)

proc onrecursiveFilteringEnabledChanged*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelrecursiveFilteringEnabledChangedSlot) =
  var tmp = new QSortFilterProxyModelrecursiveFilteringEnabledChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_connect_recursiveFilteringEnabledChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qsortfilterproxymodel_types.QSortFilterProxyModel, s: cstring, c: cstring): string =
  let v_ms = fcQSortFilterProxyModel_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsortfilterproxymodel_types.QSortFilterProxyModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSortFilterProxyModel_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsortfilterproxymodel_types.QSortFilterProxyModel, s: cstring, c: cstring): string =
  let v_ms = fcQSortFilterProxyModel_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsortfilterproxymodel_types.QSortFilterProxyModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSortFilterProxyModel_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QSortFilterProxyModelsetSourceModel*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, sourceModel: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fQSortFilterProxyModel_virtualbase_setSourceModel(self.h, sourceModel.h)

type QSortFilterProxyModelsetSourceModelProc* = proc(sourceModel: gen_qabstractitemmodel_types.QAbstractItemModel): void
proc onsetSourceModel*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelsetSourceModelProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModelsetSourceModelProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_setSourceModel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_setSourceModel(self: ptr cQSortFilterProxyModel, slot: int, sourceModel: pointer): void {.exportc: "miqt_exec_callback_QSortFilterProxyModel_setSourceModel ".} =
  var nimfunc = cast[ptr QSortFilterProxyModelsetSourceModelProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: sourceModel)


  nimfunc[](slotval1)
proc QSortFilterProxyModelmapToSource*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQSortFilterProxyModel_virtualbase_mapToSource(self.h, proxyIndex.h))

type QSortFilterProxyModelmapToSourceProc* = proc(proxyIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onmapToSource*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelmapToSourceProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModelmapToSourceProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_mapToSource(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_mapToSource(self: ptr cQSortFilterProxyModel, slot: int, proxyIndex: pointer): pointer {.exportc: "miqt_exec_callback_QSortFilterProxyModel_mapToSource ".} =
  var nimfunc = cast[ptr QSortFilterProxyModelmapToSourceProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: proxyIndex)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QSortFilterProxyModelmapFromSource*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, sourceIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQSortFilterProxyModel_virtualbase_mapFromSource(self.h, sourceIndex.h))

type QSortFilterProxyModelmapFromSourceProc* = proc(sourceIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onmapFromSource*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelmapFromSourceProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModelmapFromSourceProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_mapFromSource(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_mapFromSource(self: ptr cQSortFilterProxyModel, slot: int, sourceIndex: pointer): pointer {.exportc: "miqt_exec_callback_QSortFilterProxyModel_mapFromSource ".} =
  var nimfunc = cast[ptr QSortFilterProxyModelmapFromSourceProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceIndex)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QSortFilterProxyModelmapSelectionToSource*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, proxySelection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fQSortFilterProxyModel_virtualbase_mapSelectionToSource(self.h, proxySelection.h))

type QSortFilterProxyModelmapSelectionToSourceProc* = proc(proxySelection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection
proc onmapSelectionToSource*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelmapSelectionToSourceProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModelmapSelectionToSourceProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_mapSelectionToSource(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_mapSelectionToSource(self: ptr cQSortFilterProxyModel, slot: int, proxySelection: pointer): pointer {.exportc: "miqt_exec_callback_QSortFilterProxyModel_mapSelectionToSource ".} =
  var nimfunc = cast[ptr QSortFilterProxyModelmapSelectionToSourceProc](cast[pointer](slot))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: proxySelection)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QSortFilterProxyModelmapSelectionFromSource*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, sourceSelection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fQSortFilterProxyModel_virtualbase_mapSelectionFromSource(self.h, sourceSelection.h))

type QSortFilterProxyModelmapSelectionFromSourceProc* = proc(sourceSelection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection
proc onmapSelectionFromSource*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelmapSelectionFromSourceProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModelmapSelectionFromSourceProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_mapSelectionFromSource(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_mapSelectionFromSource(self: ptr cQSortFilterProxyModel, slot: int, sourceSelection: pointer): pointer {.exportc: "miqt_exec_callback_QSortFilterProxyModel_mapSelectionFromSource ".} =
  var nimfunc = cast[ptr QSortFilterProxyModelmapSelectionFromSourceProc](cast[pointer](slot))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: sourceSelection)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QSortFilterProxyModelfilterAcceptsRow*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, source_row: cint, source_parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQSortFilterProxyModel_virtualbase_filterAcceptsRow(self.h, source_row, source_parent.h)

type QSortFilterProxyModelfilterAcceptsRowProc* = proc(source_row: cint, source_parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc onfilterAcceptsRow*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelfilterAcceptsRowProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModelfilterAcceptsRowProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_filterAcceptsRow(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_filterAcceptsRow(self: ptr cQSortFilterProxyModel, slot: int, source_row: cint, source_parent: pointer): bool {.exportc: "miqt_exec_callback_QSortFilterProxyModel_filterAcceptsRow ".} =
  var nimfunc = cast[ptr QSortFilterProxyModelfilterAcceptsRowProc](cast[pointer](slot))
  let slotval1 = source_row

  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: source_parent)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QSortFilterProxyModelfilterAcceptsColumn*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, source_column: cint, source_parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQSortFilterProxyModel_virtualbase_filterAcceptsColumn(self.h, source_column, source_parent.h)

type QSortFilterProxyModelfilterAcceptsColumnProc* = proc(source_column: cint, source_parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc onfilterAcceptsColumn*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelfilterAcceptsColumnProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModelfilterAcceptsColumnProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_filterAcceptsColumn(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_filterAcceptsColumn(self: ptr cQSortFilterProxyModel, slot: int, source_column: cint, source_parent: pointer): bool {.exportc: "miqt_exec_callback_QSortFilterProxyModel_filterAcceptsColumn ".} =
  var nimfunc = cast[ptr QSortFilterProxyModelfilterAcceptsColumnProc](cast[pointer](slot))
  let slotval1 = source_column

  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: source_parent)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QSortFilterProxyModellessThan*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, source_left: gen_qabstractitemmodel_types.QModelIndex, source_right: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQSortFilterProxyModel_virtualbase_lessThan(self.h, source_left.h, source_right.h)

type QSortFilterProxyModellessThanProc* = proc(source_left: gen_qabstractitemmodel_types.QModelIndex, source_right: gen_qabstractitemmodel_types.QModelIndex): bool
proc onlessThan*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModellessThanProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModellessThanProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_lessThan(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_lessThan(self: ptr cQSortFilterProxyModel, slot: int, source_left: pointer, source_right: pointer): bool {.exportc: "miqt_exec_callback_QSortFilterProxyModel_lessThan ".} =
  var nimfunc = cast[ptr QSortFilterProxyModellessThanProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: source_left)

  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: source_right)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QSortFilterProxyModelindex*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQSortFilterProxyModel_virtualbase_index(self.h, row, column, parent.h))

type QSortFilterProxyModelindexProc* = proc(row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onindex*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelindexProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModelindexProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_index(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_index(self: ptr cQSortFilterProxyModel, slot: int, row: cint, column: cint, parent: pointer): pointer {.exportc: "miqt_exec_callback_QSortFilterProxyModel_index ".} =
  var nimfunc = cast[ptr QSortFilterProxyModelindexProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = column

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QSortFilterProxyModelparent*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQSortFilterProxyModel_virtualbase_parent(self.h, child.h))

type QSortFilterProxyModelparentProc* = proc(child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onparent*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelparentProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModelparentProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_parent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_parent(self: ptr cQSortFilterProxyModel, slot: int, child: pointer): pointer {.exportc: "miqt_exec_callback_QSortFilterProxyModel_parent ".} =
  var nimfunc = cast[ptr QSortFilterProxyModelparentProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: child)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QSortFilterProxyModelsibling*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQSortFilterProxyModel_virtualbase_sibling(self.h, row, column, idx.h))

type QSortFilterProxyModelsiblingProc* = proc(row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onsibling*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelsiblingProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModelsiblingProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_sibling(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_sibling(self: ptr cQSortFilterProxyModel, slot: int, row: cint, column: cint, idx: pointer): pointer {.exportc: "miqt_exec_callback_QSortFilterProxyModel_sibling ".} =
  var nimfunc = cast[ptr QSortFilterProxyModelsiblingProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = column

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QSortFilterProxyModelrowCount*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fQSortFilterProxyModel_virtualbase_rowCount(self.h, parent.h)

type QSortFilterProxyModelrowCountProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): cint
proc onrowCount*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelrowCountProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModelrowCountProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_rowCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_rowCount(self: ptr cQSortFilterProxyModel, slot: int, parent: pointer): cint {.exportc: "miqt_exec_callback_QSortFilterProxyModel_rowCount ".} =
  var nimfunc = cast[ptr QSortFilterProxyModelrowCountProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSortFilterProxyModelcolumnCount*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fQSortFilterProxyModel_virtualbase_columnCount(self.h, parent.h)

type QSortFilterProxyModelcolumnCountProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): cint
proc oncolumnCount*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelcolumnCountProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModelcolumnCountProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_columnCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_columnCount(self: ptr cQSortFilterProxyModel, slot: int, parent: pointer): cint {.exportc: "miqt_exec_callback_QSortFilterProxyModel_columnCount ".} =
  var nimfunc = cast[ptr QSortFilterProxyModelcolumnCountProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSortFilterProxyModelhasChildren*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQSortFilterProxyModel_virtualbase_hasChildren(self.h, parent.h)

type QSortFilterProxyModelhasChildrenProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc onhasChildren*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelhasChildrenProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModelhasChildrenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_hasChildren(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_hasChildren(self: ptr cQSortFilterProxyModel, slot: int, parent: pointer): bool {.exportc: "miqt_exec_callback_QSortFilterProxyModel_hasChildren ".} =
  var nimfunc = cast[ptr QSortFilterProxyModelhasChildrenProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSortFilterProxyModeldata*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQSortFilterProxyModel_virtualbase_data(self.h, index.h, role))

type QSortFilterProxyModeldataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant
proc ondata*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModeldataProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModeldataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_data(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_data(self: ptr cQSortFilterProxyModel, slot: int, index: pointer, role: cint): pointer {.exportc: "miqt_exec_callback_QSortFilterProxyModel_data ".} =
  var nimfunc = cast[ptr QSortFilterProxyModeldataProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = role


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QSortFilterProxyModelsetData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fQSortFilterProxyModel_virtualbase_setData(self.h, index.h, value.h, role)

type QSortFilterProxyModelsetDataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool
proc onsetData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelsetDataProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModelsetDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_setData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_setData(self: ptr cQSortFilterProxyModel, slot: int, index: pointer, value: pointer, role: cint): bool {.exportc: "miqt_exec_callback_QSortFilterProxyModel_setData ".} =
  var nimfunc = cast[ptr QSortFilterProxyModelsetDataProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = gen_qvariant_types.QVariant(h: value)

  let slotval3 = role


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QSortFilterProxyModelheaderData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQSortFilterProxyModel_virtualbase_headerData(self.h, section, cint(orientation), role))

type QSortFilterProxyModelheaderDataProc* = proc(section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant
proc onheaderData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelheaderDataProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModelheaderDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_headerData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_headerData(self: ptr cQSortFilterProxyModel, slot: int, section: cint, orientation: cint, role: cint): pointer {.exportc: "miqt_exec_callback_QSortFilterProxyModel_headerData ".} =
  var nimfunc = cast[ptr QSortFilterProxyModelheaderDataProc](cast[pointer](slot))
  let slotval1 = section

  let slotval2 = cint(orientation)

  let slotval3 = role


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QSortFilterProxyModelsetHeaderData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fQSortFilterProxyModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

type QSortFilterProxyModelsetHeaderDataProc* = proc(section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool
proc onsetHeaderData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelsetHeaderDataProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModelsetHeaderDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_setHeaderData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_setHeaderData(self: ptr cQSortFilterProxyModel, slot: int, section: cint, orientation: cint, value: pointer, role: cint): bool {.exportc: "miqt_exec_callback_QSortFilterProxyModel_setHeaderData ".} =
  var nimfunc = cast[ptr QSortFilterProxyModelsetHeaderDataProc](cast[pointer](slot))
  let slotval1 = section

  let slotval2 = cint(orientation)

  let slotval3 = gen_qvariant_types.QVariant(h: value)

  let slotval4 = role


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc QSortFilterProxyModelmimeData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fQSortFilterProxyModel_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))))

type QSortFilterProxyModelmimeDataProc* = proc(indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData
proc onmimeData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelmimeDataProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModelmimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_mimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_mimeData(self: ptr cQSortFilterProxyModel, slot: int, indexes: struct_miqt_array): pointer {.exportc: "miqt_exec_callback_QSortFilterProxyModel_mimeData ".} =
  var nimfunc = cast[ptr QSortFilterProxyModelmimeDataProc](cast[pointer](slot))
  var vindexes_ma = indexes
  var vindexesx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(vindexes_ma.len))
  let vindexes_outCast = cast[ptr UncheckedArray[pointer]](vindexes_ma.data)
  for i in 0 ..< vindexes_ma.len:
    vindexesx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: vindexes_outCast[i])
  let slotval1 = vindexesx_ret


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QSortFilterProxyModeldropMimeData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQSortFilterProxyModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

type QSortFilterProxyModeldropMimeDataProc* = proc(data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc ondropMimeData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModeldropMimeDataProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModeldropMimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_dropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_dropMimeData(self: ptr cQSortFilterProxyModel, slot: int, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QSortFilterProxyModel_dropMimeData ".} =
  var nimfunc = cast[ptr QSortFilterProxyModeldropMimeDataProc](cast[pointer](slot))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data)

  let slotval2 = cint(action)

  let slotval3 = row

  let slotval4 = column

  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QSortFilterProxyModelinsertRows*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQSortFilterProxyModel_virtualbase_insertRows(self.h, row, count, parent.h)

type QSortFilterProxyModelinsertRowsProc* = proc(row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc oninsertRows*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelinsertRowsProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModelinsertRowsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_insertRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_insertRows(self: ptr cQSortFilterProxyModel, slot: int, row: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QSortFilterProxyModel_insertRows ".} =
  var nimfunc = cast[ptr QSortFilterProxyModelinsertRowsProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QSortFilterProxyModelinsertColumns*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQSortFilterProxyModel_virtualbase_insertColumns(self.h, column, count, parent.h)

type QSortFilterProxyModelinsertColumnsProc* = proc(column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc oninsertColumns*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelinsertColumnsProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModelinsertColumnsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_insertColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_insertColumns(self: ptr cQSortFilterProxyModel, slot: int, column: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QSortFilterProxyModel_insertColumns ".} =
  var nimfunc = cast[ptr QSortFilterProxyModelinsertColumnsProc](cast[pointer](slot))
  let slotval1 = column

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QSortFilterProxyModelremoveRows*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQSortFilterProxyModel_virtualbase_removeRows(self.h, row, count, parent.h)

type QSortFilterProxyModelremoveRowsProc* = proc(row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc onremoveRows*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelremoveRowsProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModelremoveRowsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_removeRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_removeRows(self: ptr cQSortFilterProxyModel, slot: int, row: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QSortFilterProxyModel_removeRows ".} =
  var nimfunc = cast[ptr QSortFilterProxyModelremoveRowsProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QSortFilterProxyModelremoveColumns*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQSortFilterProxyModel_virtualbase_removeColumns(self.h, column, count, parent.h)

type QSortFilterProxyModelremoveColumnsProc* = proc(column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc onremoveColumns*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelremoveColumnsProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModelremoveColumnsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_removeColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_removeColumns(self: ptr cQSortFilterProxyModel, slot: int, column: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QSortFilterProxyModel_removeColumns ".} =
  var nimfunc = cast[ptr QSortFilterProxyModelremoveColumnsProc](cast[pointer](slot))
  let slotval1 = column

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QSortFilterProxyModelfetchMore*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): void =
  fQSortFilterProxyModel_virtualbase_fetchMore(self.h, parent.h)

type QSortFilterProxyModelfetchMoreProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): void
proc onfetchMore*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelfetchMoreProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModelfetchMoreProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_fetchMore(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_fetchMore(self: ptr cQSortFilterProxyModel, slot: int, parent: pointer): void {.exportc: "miqt_exec_callback_QSortFilterProxyModel_fetchMore ".} =
  var nimfunc = cast[ptr QSortFilterProxyModelfetchMoreProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  nimfunc[](slotval1)
proc QSortFilterProxyModelcanFetchMore*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQSortFilterProxyModel_virtualbase_canFetchMore(self.h, parent.h)

type QSortFilterProxyModelcanFetchMoreProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc oncanFetchMore*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelcanFetchMoreProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModelcanFetchMoreProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_canFetchMore(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_canFetchMore(self: ptr cQSortFilterProxyModel, slot: int, parent: pointer): bool {.exportc: "miqt_exec_callback_QSortFilterProxyModel_canFetchMore ".} =
  var nimfunc = cast[ptr QSortFilterProxyModelcanFetchMoreProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSortFilterProxyModelflags*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fQSortFilterProxyModel_virtualbase_flags(self.h, index.h))

type QSortFilterProxyModelflagsProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): cint
proc onflags*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelflagsProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModelflagsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_flags(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_flags(self: ptr cQSortFilterProxyModel, slot: int, index: pointer): cint {.exportc: "miqt_exec_callback_QSortFilterProxyModel_flags ".} =
  var nimfunc = cast[ptr QSortFilterProxyModelflagsProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  cint(virtualReturn)
proc QSortFilterProxyModelbuddy*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQSortFilterProxyModel_virtualbase_buddy(self.h, index.h))

type QSortFilterProxyModelbuddyProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onbuddy*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelbuddyProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModelbuddyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_buddy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_buddy(self: ptr cQSortFilterProxyModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QSortFilterProxyModel_buddy ".} =
  var nimfunc = cast[ptr QSortFilterProxyModelbuddyProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QSortFilterProxyModelmatch*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fQSortFilterProxyModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  vx_ret

type QSortFilterProxyModelmatchProc* = proc(start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex]
proc onmatch*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelmatchProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModelmatchProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_match(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_match(self: ptr cQSortFilterProxyModel, slot: int, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.exportc: "miqt_exec_callback_QSortFilterProxyModel_match ".} =
  var nimfunc = cast[ptr QSortFilterProxyModelmatchProc](cast[pointer](slot))
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
proc QSortFilterProxyModelspan*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQSortFilterProxyModel_virtualbase_span(self.h, index.h))

type QSortFilterProxyModelspanProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize
proc onspan*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelspanProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModelspanProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_span(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_span(self: ptr cQSortFilterProxyModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QSortFilterProxyModel_span ".} =
  var nimfunc = cast[ptr QSortFilterProxyModelspanProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QSortFilterProxyModelsort*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, column: cint, order: cint): void =
  fQSortFilterProxyModel_virtualbase_sort(self.h, column, cint(order))

type QSortFilterProxyModelsortProc* = proc(column: cint, order: cint): void
proc onsort*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelsortProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModelsortProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_sort(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_sort(self: ptr cQSortFilterProxyModel, slot: int, column: cint, order: cint): void {.exportc: "miqt_exec_callback_QSortFilterProxyModel_sort ".} =
  var nimfunc = cast[ptr QSortFilterProxyModelsortProc](cast[pointer](slot))
  let slotval1 = column

  let slotval2 = cint(order)


  nimfunc[](slotval1, slotval2)
proc QSortFilterProxyModelmimeTypes*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, ): seq[string] =
  var v_ma = fQSortFilterProxyModel_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QSortFilterProxyModelmimeTypesProc* = proc(): seq[string]
proc onmimeTypes*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelmimeTypesProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModelmimeTypesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_mimeTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_mimeTypes(self: ptr cQSortFilterProxyModel, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QSortFilterProxyModel_mimeTypes ".} =
  var nimfunc = cast[ptr QSortFilterProxyModelmimeTypesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QSortFilterProxyModelsupportedDropActions*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, ): cint =
  cint(fQSortFilterProxyModel_virtualbase_supportedDropActions(self.h))

type QSortFilterProxyModelsupportedDropActionsProc* = proc(): cint
proc onsupportedDropActions*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelsupportedDropActionsProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModelsupportedDropActionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_supportedDropActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_supportedDropActions(self: ptr cQSortFilterProxyModel, slot: int): cint {.exportc: "miqt_exec_callback_QSortFilterProxyModel_supportedDropActions ".} =
  var nimfunc = cast[ptr QSortFilterProxyModelsupportedDropActionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QSortFilterProxyModelsubmit*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, ): bool =
  fQSortFilterProxyModel_virtualbase_submit(self.h)

type QSortFilterProxyModelsubmitProc* = proc(): bool
proc onsubmit*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelsubmitProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModelsubmitProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_submit(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_submit(self: ptr cQSortFilterProxyModel, slot: int): bool {.exportc: "miqt_exec_callback_QSortFilterProxyModel_submit ".} =
  var nimfunc = cast[ptr QSortFilterProxyModelsubmitProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSortFilterProxyModelrevert*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, ): void =
  fQSortFilterProxyModel_virtualbase_revert(self.h)

type QSortFilterProxyModelrevertProc* = proc(): void
proc onrevert*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelrevertProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModelrevertProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_revert(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_revert(self: ptr cQSortFilterProxyModel, slot: int): void {.exportc: "miqt_exec_callback_QSortFilterProxyModel_revert ".} =
  var nimfunc = cast[ptr QSortFilterProxyModelrevertProc](cast[pointer](slot))

  nimfunc[]()
proc QSortFilterProxyModelitemData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fQSortFilterProxyModel_virtualbase_itemData(self.h, index.h)
  var vx_ret: Table[cint, gen_qvariant_types.QVariant]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var v_entry_Value = gen_qvariant_types.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

type QSortFilterProxyModelitemDataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant]
proc onitemData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelitemDataProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModelitemDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_itemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_itemData(self: ptr cQSortFilterProxyModel, slot: int, index: pointer): struct_miqt_map {.exportc: "miqt_exec_callback_QSortFilterProxyModel_itemData ".} =
  var nimfunc = cast[ptr QSortFilterProxyModelitemDataProc](cast[pointer](slot))
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
proc QSortFilterProxyModelsetItemData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool =
  var roles_Keys_CArray = newSeq[cint](len(roles))
  var roles_Values_CArray = newSeq[pointer](len(roles))
  var roles_ctr = 0
  for rolesk, rolesv in roles:
    roles_Keys_CArray[roles_ctr] = roles_k
    roles_Values_CArray[roles_ctr] = roles_v.h
    roles_ctr += 1

  fQSortFilterProxyModel_virtualbase_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

type QSortFilterProxyModelsetItemDataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool
proc onsetItemData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelsetItemDataProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModelsetItemDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_setItemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_setItemData(self: ptr cQSortFilterProxyModel, slot: int, index: pointer, roles: struct_miqt_map): bool {.exportc: "miqt_exec_callback_QSortFilterProxyModel_setItemData ".} =
  var nimfunc = cast[ptr QSortFilterProxyModelsetItemDataProc](cast[pointer](slot))
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
proc QSortFilterProxyModelcanDropMimeData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQSortFilterProxyModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

type QSortFilterProxyModelcanDropMimeDataProc* = proc(data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc oncanDropMimeData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelcanDropMimeDataProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModelcanDropMimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_canDropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_canDropMimeData(self: ptr cQSortFilterProxyModel, slot: int, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QSortFilterProxyModel_canDropMimeData ".} =
  var nimfunc = cast[ptr QSortFilterProxyModelcanDropMimeDataProc](cast[pointer](slot))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data)

  let slotval2 = cint(action)

  let slotval3 = row

  let slotval4 = column

  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QSortFilterProxyModelsupportedDragActions*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, ): cint =
  cint(fQSortFilterProxyModel_virtualbase_supportedDragActions(self.h))

type QSortFilterProxyModelsupportedDragActionsProc* = proc(): cint
proc onsupportedDragActions*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelsupportedDragActionsProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModelsupportedDragActionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_supportedDragActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_supportedDragActions(self: ptr cQSortFilterProxyModel, slot: int): cint {.exportc: "miqt_exec_callback_QSortFilterProxyModel_supportedDragActions ".} =
  var nimfunc = cast[ptr QSortFilterProxyModelsupportedDragActionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QSortFilterProxyModelmoveRows*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fQSortFilterProxyModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

type QSortFilterProxyModelmoveRowsProc* = proc(sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool
proc onmoveRows*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelmoveRowsProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModelmoveRowsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_moveRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_moveRows(self: ptr cQSortFilterProxyModel, slot: int, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.exportc: "miqt_exec_callback_QSortFilterProxyModel_moveRows ".} =
  var nimfunc = cast[ptr QSortFilterProxyModelmoveRowsProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent)

  let slotval2 = sourceRow

  let slotval3 = count

  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent)

  let slotval5 = destinationChild


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QSortFilterProxyModelmoveColumns*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fQSortFilterProxyModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

type QSortFilterProxyModelmoveColumnsProc* = proc(sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool
proc onmoveColumns*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelmoveColumnsProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModelmoveColumnsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_moveColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_moveColumns(self: ptr cQSortFilterProxyModel, slot: int, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.exportc: "miqt_exec_callback_QSortFilterProxyModel_moveColumns ".} =
  var nimfunc = cast[ptr QSortFilterProxyModelmoveColumnsProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent)

  let slotval2 = sourceColumn

  let slotval3 = count

  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent)

  let slotval5 = destinationChild


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QSortFilterProxyModelroleNames*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, ): Table[cint,seq[byte]] =
  var v_mm = fQSortFilterProxyModel_virtualbase_roleNames(self.h)
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

type QSortFilterProxyModelroleNamesProc* = proc(): Table[cint,seq[byte]]
proc onroleNames*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelroleNamesProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModelroleNamesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_roleNames(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_roleNames(self: ptr cQSortFilterProxyModel, slot: int): struct_miqt_map {.exportc: "miqt_exec_callback_QSortFilterProxyModel_roleNames ".} =
  var nimfunc = cast[ptr QSortFilterProxyModelroleNamesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_Keys_CArray = newSeq[cint](len(virtualReturn))
  var virtualReturn_Values_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  var virtualReturn_ctr = 0
  for virtualReturnk, virtualReturnv in virtualReturn:
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_Values_CArray[virtualReturn_ctr] = struct_miqt_string(data: cast[cstring](if len(virtualReturn_v) == 0: nil else: unsafeAddr virtualReturn_v[0]), len: csize_t(len(virtualReturn_v)))
    virtualReturn_ctr += 1


  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)
proc QSortFilterProxyModelevent*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, event: gen_qcoreevent_types.QEvent): bool =
  fQSortFilterProxyModel_virtualbase_event(self.h, event.h)

type QSortFilterProxyModeleventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModeleventProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModeleventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_event(self: ptr cQSortFilterProxyModel, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QSortFilterProxyModel_event ".} =
  var nimfunc = cast[ptr QSortFilterProxyModeleventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSortFilterProxyModeleventFilter*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQSortFilterProxyModel_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSortFilterProxyModeleventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModeleventFilterProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModeleventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_eventFilter(self: ptr cQSortFilterProxyModel, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSortFilterProxyModel_eventFilter ".} =
  var nimfunc = cast[ptr QSortFilterProxyModeleventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QSortFilterProxyModeltimerEvent*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, event: gen_qcoreevent_types.QTimerEvent): void =
  fQSortFilterProxyModel_virtualbase_timerEvent(self.h, event.h)

type QSortFilterProxyModeltimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModeltimerEventProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModeltimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_timerEvent(self: ptr cQSortFilterProxyModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSortFilterProxyModel_timerEvent ".} =
  var nimfunc = cast[ptr QSortFilterProxyModeltimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QSortFilterProxyModelchildEvent*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, event: gen_qcoreevent_types.QChildEvent): void =
  fQSortFilterProxyModel_virtualbase_childEvent(self.h, event.h)

type QSortFilterProxyModelchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelchildEventProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModelchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_childEvent(self: ptr cQSortFilterProxyModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSortFilterProxyModel_childEvent ".} =
  var nimfunc = cast[ptr QSortFilterProxyModelchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QSortFilterProxyModelcustomEvent*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, event: gen_qcoreevent_types.QEvent): void =
  fQSortFilterProxyModel_virtualbase_customEvent(self.h, event.h)

type QSortFilterProxyModelcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelcustomEventProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModelcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_customEvent(self: ptr cQSortFilterProxyModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSortFilterProxyModel_customEvent ".} =
  var nimfunc = cast[ptr QSortFilterProxyModelcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QSortFilterProxyModelconnectNotify*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQSortFilterProxyModel_virtualbase_connectNotify(self.h, signal.h)

type QSortFilterProxyModelconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModelconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_connectNotify(self: ptr cQSortFilterProxyModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSortFilterProxyModel_connectNotify ".} =
  var nimfunc = cast[ptr QSortFilterProxyModelconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QSortFilterProxyModeldisconnectNotify*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQSortFilterProxyModel_virtualbase_disconnectNotify(self.h, signal.h)

type QSortFilterProxyModeldisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModeldisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSortFilterProxyModeldisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_disconnectNotify(self: ptr cQSortFilterProxyModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSortFilterProxyModel_disconnectNotify ".} =
  var nimfunc = cast[ptr QSortFilterProxyModeldisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel) =
  fcQSortFilterProxyModel_delete(self.h)
