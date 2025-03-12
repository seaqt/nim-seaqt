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
{.compile("gen_qsortfilterproxymodel.cpp", cflags).}


import ./gen_qsortfilterproxymodel_types
export gen_qsortfilterproxymodel_types

import
  ./gen_qabstractitemmodel_types,
  ./gen_qabstractproxymodel,
  ./gen_qcoreevent_types,
  ./gen_qdatastream_types,
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
  gen_qdatastream_types,
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

proc fcQSortFilterProxyModel_metaObject(self: pointer): pointer {.importc: "QSortFilterProxyModel_metaObject".}
proc fcQSortFilterProxyModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QSortFilterProxyModel_metacast".}
proc fcQSortFilterProxyModel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSortFilterProxyModel_metacall".}
proc fcQSortFilterProxyModel_tr(s: cstring): struct_miqt_string {.importc: "QSortFilterProxyModel_tr".}
proc fcQSortFilterProxyModel_trUtf8(s: cstring): struct_miqt_string {.importc: "QSortFilterProxyModel_trUtf8".}
proc fcQSortFilterProxyModel_setSourceModel(self: pointer, sourceModel: pointer): void {.importc: "QSortFilterProxyModel_setSourceModel".}
proc fcQSortFilterProxyModel_mapToSource(self: pointer, proxyIndex: pointer): pointer {.importc: "QSortFilterProxyModel_mapToSource".}
proc fcQSortFilterProxyModel_mapFromSource(self: pointer, sourceIndex: pointer): pointer {.importc: "QSortFilterProxyModel_mapFromSource".}
proc fcQSortFilterProxyModel_mapSelectionToSource(self: pointer, proxySelection: pointer): pointer {.importc: "QSortFilterProxyModel_mapSelectionToSource".}
proc fcQSortFilterProxyModel_mapSelectionFromSource(self: pointer, sourceSelection: pointer): pointer {.importc: "QSortFilterProxyModel_mapSelectionFromSource".}
proc fcQSortFilterProxyModel_filterRegExp(self: pointer): pointer {.importc: "QSortFilterProxyModel_filterRegExp".}
proc fcQSortFilterProxyModel_filterRegularExpression(self: pointer): pointer {.importc: "QSortFilterProxyModel_filterRegularExpression".}
proc fcQSortFilterProxyModel_filterKeyColumn(self: pointer): cint {.importc: "QSortFilterProxyModel_filterKeyColumn".}
proc fcQSortFilterProxyModel_setFilterKeyColumn(self: pointer, column: cint): void {.importc: "QSortFilterProxyModel_setFilterKeyColumn".}
proc fcQSortFilterProxyModel_filterCaseSensitivity(self: pointer): cint {.importc: "QSortFilterProxyModel_filterCaseSensitivity".}
proc fcQSortFilterProxyModel_setFilterCaseSensitivity(self: pointer, cs: cint): void {.importc: "QSortFilterProxyModel_setFilterCaseSensitivity".}
proc fcQSortFilterProxyModel_sortCaseSensitivity(self: pointer): cint {.importc: "QSortFilterProxyModel_sortCaseSensitivity".}
proc fcQSortFilterProxyModel_setSortCaseSensitivity(self: pointer, cs: cint): void {.importc: "QSortFilterProxyModel_setSortCaseSensitivity".}
proc fcQSortFilterProxyModel_isSortLocaleAware(self: pointer): bool {.importc: "QSortFilterProxyModel_isSortLocaleAware".}
proc fcQSortFilterProxyModel_setSortLocaleAware(self: pointer, on: bool): void {.importc: "QSortFilterProxyModel_setSortLocaleAware".}
proc fcQSortFilterProxyModel_sortColumn(self: pointer): cint {.importc: "QSortFilterProxyModel_sortColumn".}
proc fcQSortFilterProxyModel_sortOrder(self: pointer): cint {.importc: "QSortFilterProxyModel_sortOrder".}
proc fcQSortFilterProxyModel_dynamicSortFilter(self: pointer): bool {.importc: "QSortFilterProxyModel_dynamicSortFilter".}
proc fcQSortFilterProxyModel_setDynamicSortFilter(self: pointer, enable: bool): void {.importc: "QSortFilterProxyModel_setDynamicSortFilter".}
proc fcQSortFilterProxyModel_sortRole(self: pointer): cint {.importc: "QSortFilterProxyModel_sortRole".}
proc fcQSortFilterProxyModel_setSortRole(self: pointer, role: cint): void {.importc: "QSortFilterProxyModel_setSortRole".}
proc fcQSortFilterProxyModel_filterRole(self: pointer): cint {.importc: "QSortFilterProxyModel_filterRole".}
proc fcQSortFilterProxyModel_setFilterRole(self: pointer, role: cint): void {.importc: "QSortFilterProxyModel_setFilterRole".}
proc fcQSortFilterProxyModel_isRecursiveFilteringEnabled(self: pointer): bool {.importc: "QSortFilterProxyModel_isRecursiveFilteringEnabled".}
proc fcQSortFilterProxyModel_setRecursiveFilteringEnabled(self: pointer, recursive: bool): void {.importc: "QSortFilterProxyModel_setRecursiveFilteringEnabled".}
proc fcQSortFilterProxyModel_setFilterRegExp(self: pointer, pattern: struct_miqt_string): void {.importc: "QSortFilterProxyModel_setFilterRegExp".}
proc fcQSortFilterProxyModel_setFilterRegExpWithRegExp(self: pointer, regExp: pointer): void {.importc: "QSortFilterProxyModel_setFilterRegExpWithRegExp".}
proc fcQSortFilterProxyModel_setFilterRegularExpression(self: pointer, pattern: struct_miqt_string): void {.importc: "QSortFilterProxyModel_setFilterRegularExpression".}
proc fcQSortFilterProxyModel_setFilterRegularExpressionWithRegularExpression(self: pointer, regularExpression: pointer): void {.importc: "QSortFilterProxyModel_setFilterRegularExpressionWithRegularExpression".}
proc fcQSortFilterProxyModel_setFilterWildcard(self: pointer, pattern: struct_miqt_string): void {.importc: "QSortFilterProxyModel_setFilterWildcard".}
proc fcQSortFilterProxyModel_setFilterFixedString(self: pointer, pattern: struct_miqt_string): void {.importc: "QSortFilterProxyModel_setFilterFixedString".}
proc fcQSortFilterProxyModel_clear(self: pointer): void {.importc: "QSortFilterProxyModel_clear".}
proc fcQSortFilterProxyModel_invalidate(self: pointer): void {.importc: "QSortFilterProxyModel_invalidate".}
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
proc fcQSortFilterProxyModel_mimeTypes(self: pointer): struct_miqt_array {.importc: "QSortFilterProxyModel_mimeTypes".}
proc fcQSortFilterProxyModel_supportedDropActions(self: pointer): cint {.importc: "QSortFilterProxyModel_supportedDropActions".}
proc fcQSortFilterProxyModel_dynamicSortFilterChanged(self: pointer, dynamicSortFilter: bool): void {.importc: "QSortFilterProxyModel_dynamicSortFilterChanged".}
proc fcQSortFilterProxyModel_connect_dynamicSortFilterChanged(self: pointer, slot: int, callback: proc (slot: int, dynamicSortFilter: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSortFilterProxyModel_connect_dynamicSortFilterChanged".}
proc fcQSortFilterProxyModel_filterCaseSensitivityChanged(self: pointer, filterCaseSensitivity: cint): void {.importc: "QSortFilterProxyModel_filterCaseSensitivityChanged".}
proc fcQSortFilterProxyModel_connect_filterCaseSensitivityChanged(self: pointer, slot: int, callback: proc (slot: int, filterCaseSensitivity: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSortFilterProxyModel_connect_filterCaseSensitivityChanged".}
proc fcQSortFilterProxyModel_sortCaseSensitivityChanged(self: pointer, sortCaseSensitivity: cint): void {.importc: "QSortFilterProxyModel_sortCaseSensitivityChanged".}
proc fcQSortFilterProxyModel_connect_sortCaseSensitivityChanged(self: pointer, slot: int, callback: proc (slot: int, sortCaseSensitivity: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSortFilterProxyModel_connect_sortCaseSensitivityChanged".}
proc fcQSortFilterProxyModel_sortLocaleAwareChanged(self: pointer, sortLocaleAware: bool): void {.importc: "QSortFilterProxyModel_sortLocaleAwareChanged".}
proc fcQSortFilterProxyModel_connect_sortLocaleAwareChanged(self: pointer, slot: int, callback: proc (slot: int, sortLocaleAware: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSortFilterProxyModel_connect_sortLocaleAwareChanged".}
proc fcQSortFilterProxyModel_sortRoleChanged(self: pointer, sortRole: cint): void {.importc: "QSortFilterProxyModel_sortRoleChanged".}
proc fcQSortFilterProxyModel_connect_sortRoleChanged(self: pointer, slot: int, callback: proc (slot: int, sortRole: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSortFilterProxyModel_connect_sortRoleChanged".}
proc fcQSortFilterProxyModel_filterRoleChanged(self: pointer, filterRole: cint): void {.importc: "QSortFilterProxyModel_filterRoleChanged".}
proc fcQSortFilterProxyModel_connect_filterRoleChanged(self: pointer, slot: int, callback: proc (slot: int, filterRole: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSortFilterProxyModel_connect_filterRoleChanged".}
proc fcQSortFilterProxyModel_recursiveFilteringEnabledChanged(self: pointer, recursiveFilteringEnabled: bool): void {.importc: "QSortFilterProxyModel_recursiveFilteringEnabledChanged".}
proc fcQSortFilterProxyModel_connect_recursiveFilteringEnabledChanged(self: pointer, slot: int, callback: proc (slot: int, recursiveFilteringEnabled: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSortFilterProxyModel_connect_recursiveFilteringEnabledChanged".}
proc fcQSortFilterProxyModel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSortFilterProxyModel_tr2".}
proc fcQSortFilterProxyModel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSortFilterProxyModel_tr3".}
proc fcQSortFilterProxyModel_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSortFilterProxyModel_trUtf82".}
proc fcQSortFilterProxyModel_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSortFilterProxyModel_trUtf83".}
proc fcQSortFilterProxyModel_vtbl(self: pointer): pointer {.importc: "QSortFilterProxyModel_vtbl".}
proc fcQSortFilterProxyModel_vdata(self: pointer): pointer {.importc: "QSortFilterProxyModel_vdata".}
type cQSortFilterProxyModelVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setSourceModel*: proc(self: pointer, sourceModel: pointer): void {.cdecl, raises: [], gcsafe.}
  mapToSource*: proc(self: pointer, proxyIndex: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mapFromSource*: proc(self: pointer, sourceIndex: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mapSelectionToSource*: proc(self: pointer, proxySelection: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mapSelectionFromSource*: proc(self: pointer, sourceSelection: pointer): pointer {.cdecl, raises: [], gcsafe.}
  filterAcceptsRow*: proc(self: pointer, source_row: cint, source_parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  filterAcceptsColumn*: proc(self: pointer, source_column: cint, source_parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  lessThan*: proc(self: pointer, source_left: pointer, source_right: pointer): bool {.cdecl, raises: [], gcsafe.}
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
  mimeData*: proc(self: pointer, indexes: struct_miqt_array): pointer {.cdecl, raises: [], gcsafe.}
  dropMimeData*: proc(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  insertRows*: proc(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  insertColumns*: proc(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  removeRows*: proc(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  removeColumns*: proc(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  fetchMore*: proc(self: pointer, parent: pointer): void {.cdecl, raises: [], gcsafe.}
  canFetchMore*: proc(self: pointer, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  flags*: proc(self: pointer, index: pointer): cint {.cdecl, raises: [], gcsafe.}
  buddy*: proc(self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  match*: proc(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  span*: proc(self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sort*: proc(self: pointer, column: cint, order: cint): void {.cdecl, raises: [], gcsafe.}
  mimeTypes*: proc(self: pointer): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  supportedDropActions*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  submit*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  revert*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  itemData*: proc(self: pointer, index: pointer): struct_miqt_map {.cdecl, raises: [], gcsafe.}
  setItemData*: proc(self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl, raises: [], gcsafe.}
  canDropMimeData*: proc(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  supportedDragActions*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  moveRows*: proc(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl, raises: [], gcsafe.}
  moveColumns*: proc(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl, raises: [], gcsafe.}
  roleNames*: proc(self: pointer): struct_miqt_map {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQSortFilterProxyModel_virtualbase_metaObject(self: pointer): pointer {.importc: "QSortFilterProxyModel_virtualbase_metaObject".}
proc fcQSortFilterProxyModel_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSortFilterProxyModel_virtualbase_metacast".}
proc fcQSortFilterProxyModel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSortFilterProxyModel_virtualbase_metacall".}
proc fcQSortFilterProxyModel_virtualbase_setSourceModel(self: pointer, sourceModel: pointer): void {.importc: "QSortFilterProxyModel_virtualbase_setSourceModel".}
proc fcQSortFilterProxyModel_virtualbase_mapToSource(self: pointer, proxyIndex: pointer): pointer {.importc: "QSortFilterProxyModel_virtualbase_mapToSource".}
proc fcQSortFilterProxyModel_virtualbase_mapFromSource(self: pointer, sourceIndex: pointer): pointer {.importc: "QSortFilterProxyModel_virtualbase_mapFromSource".}
proc fcQSortFilterProxyModel_virtualbase_mapSelectionToSource(self: pointer, proxySelection: pointer): pointer {.importc: "QSortFilterProxyModel_virtualbase_mapSelectionToSource".}
proc fcQSortFilterProxyModel_virtualbase_mapSelectionFromSource(self: pointer, sourceSelection: pointer): pointer {.importc: "QSortFilterProxyModel_virtualbase_mapSelectionFromSource".}
proc fcQSortFilterProxyModel_virtualbase_filterAcceptsRow(self: pointer, source_row: cint, source_parent: pointer): bool {.importc: "QSortFilterProxyModel_virtualbase_filterAcceptsRow".}
proc fcQSortFilterProxyModel_virtualbase_filterAcceptsColumn(self: pointer, source_column: cint, source_parent: pointer): bool {.importc: "QSortFilterProxyModel_virtualbase_filterAcceptsColumn".}
proc fcQSortFilterProxyModel_virtualbase_lessThan(self: pointer, source_left: pointer, source_right: pointer): bool {.importc: "QSortFilterProxyModel_virtualbase_lessThan".}
proc fcQSortFilterProxyModel_virtualbase_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.importc: "QSortFilterProxyModel_virtualbase_index".}
proc fcQSortFilterProxyModel_virtualbase_parent(self: pointer, child: pointer): pointer {.importc: "QSortFilterProxyModel_virtualbase_parent".}
proc fcQSortFilterProxyModel_virtualbase_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.importc: "QSortFilterProxyModel_virtualbase_sibling".}
proc fcQSortFilterProxyModel_virtualbase_rowCount(self: pointer, parent: pointer): cint {.importc: "QSortFilterProxyModel_virtualbase_rowCount".}
proc fcQSortFilterProxyModel_virtualbase_columnCount(self: pointer, parent: pointer): cint {.importc: "QSortFilterProxyModel_virtualbase_columnCount".}
proc fcQSortFilterProxyModel_virtualbase_hasChildren(self: pointer, parent: pointer): bool {.importc: "QSortFilterProxyModel_virtualbase_hasChildren".}
proc fcQSortFilterProxyModel_virtualbase_data(self: pointer, index: pointer, role: cint): pointer {.importc: "QSortFilterProxyModel_virtualbase_data".}
proc fcQSortFilterProxyModel_virtualbase_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.importc: "QSortFilterProxyModel_virtualbase_setData".}
proc fcQSortFilterProxyModel_virtualbase_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.importc: "QSortFilterProxyModel_virtualbase_headerData".}
proc fcQSortFilterProxyModel_virtualbase_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.importc: "QSortFilterProxyModel_virtualbase_setHeaderData".}
proc fcQSortFilterProxyModel_virtualbase_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.importc: "QSortFilterProxyModel_virtualbase_mimeData".}
proc fcQSortFilterProxyModel_virtualbase_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QSortFilterProxyModel_virtualbase_dropMimeData".}
proc fcQSortFilterProxyModel_virtualbase_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QSortFilterProxyModel_virtualbase_insertRows".}
proc fcQSortFilterProxyModel_virtualbase_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QSortFilterProxyModel_virtualbase_insertColumns".}
proc fcQSortFilterProxyModel_virtualbase_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QSortFilterProxyModel_virtualbase_removeRows".}
proc fcQSortFilterProxyModel_virtualbase_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QSortFilterProxyModel_virtualbase_removeColumns".}
proc fcQSortFilterProxyModel_virtualbase_fetchMore(self: pointer, parent: pointer): void {.importc: "QSortFilterProxyModel_virtualbase_fetchMore".}
proc fcQSortFilterProxyModel_virtualbase_canFetchMore(self: pointer, parent: pointer): bool {.importc: "QSortFilterProxyModel_virtualbase_canFetchMore".}
proc fcQSortFilterProxyModel_virtualbase_flags(self: pointer, index: pointer): cint {.importc: "QSortFilterProxyModel_virtualbase_flags".}
proc fcQSortFilterProxyModel_virtualbase_buddy(self: pointer, index: pointer): pointer {.importc: "QSortFilterProxyModel_virtualbase_buddy".}
proc fcQSortFilterProxyModel_virtualbase_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.importc: "QSortFilterProxyModel_virtualbase_match".}
proc fcQSortFilterProxyModel_virtualbase_span(self: pointer, index: pointer): pointer {.importc: "QSortFilterProxyModel_virtualbase_span".}
proc fcQSortFilterProxyModel_virtualbase_sort(self: pointer, column: cint, order: cint): void {.importc: "QSortFilterProxyModel_virtualbase_sort".}
proc fcQSortFilterProxyModel_virtualbase_mimeTypes(self: pointer): struct_miqt_array {.importc: "QSortFilterProxyModel_virtualbase_mimeTypes".}
proc fcQSortFilterProxyModel_virtualbase_supportedDropActions(self: pointer): cint {.importc: "QSortFilterProxyModel_virtualbase_supportedDropActions".}
proc fcQSortFilterProxyModel_virtualbase_submit(self: pointer): bool {.importc: "QSortFilterProxyModel_virtualbase_submit".}
proc fcQSortFilterProxyModel_virtualbase_revert(self: pointer): void {.importc: "QSortFilterProxyModel_virtualbase_revert".}
proc fcQSortFilterProxyModel_virtualbase_itemData(self: pointer, index: pointer): struct_miqt_map {.importc: "QSortFilterProxyModel_virtualbase_itemData".}
proc fcQSortFilterProxyModel_virtualbase_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.importc: "QSortFilterProxyModel_virtualbase_setItemData".}
proc fcQSortFilterProxyModel_virtualbase_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QSortFilterProxyModel_virtualbase_canDropMimeData".}
proc fcQSortFilterProxyModel_virtualbase_supportedDragActions(self: pointer): cint {.importc: "QSortFilterProxyModel_virtualbase_supportedDragActions".}
proc fcQSortFilterProxyModel_virtualbase_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QSortFilterProxyModel_virtualbase_moveRows".}
proc fcQSortFilterProxyModel_virtualbase_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QSortFilterProxyModel_virtualbase_moveColumns".}
proc fcQSortFilterProxyModel_virtualbase_roleNames(self: pointer): struct_miqt_map {.importc: "QSortFilterProxyModel_virtualbase_roleNames".}
proc fcQSortFilterProxyModel_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QSortFilterProxyModel_virtualbase_event".}
proc fcQSortFilterProxyModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSortFilterProxyModel_virtualbase_eventFilter".}
proc fcQSortFilterProxyModel_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QSortFilterProxyModel_virtualbase_timerEvent".}
proc fcQSortFilterProxyModel_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSortFilterProxyModel_virtualbase_childEvent".}
proc fcQSortFilterProxyModel_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSortFilterProxyModel_virtualbase_customEvent".}
proc fcQSortFilterProxyModel_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSortFilterProxyModel_virtualbase_connectNotify".}
proc fcQSortFilterProxyModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSortFilterProxyModel_virtualbase_disconnectNotify".}
proc fcQSortFilterProxyModel_protectedbase_filterChanged(self: pointer): void {.importc: "QSortFilterProxyModel_protectedbase_filterChanged".}
proc fcQSortFilterProxyModel_protectedbase_invalidateFilter(self: pointer): void {.importc: "QSortFilterProxyModel_protectedbase_invalidateFilter".}
proc fcQSortFilterProxyModel_protectedbase_resetInternalData(self: pointer): void {.importc: "QSortFilterProxyModel_protectedbase_resetInternalData".}
proc fcQSortFilterProxyModel_protectedbase_createIndex(self: pointer, row: cint, column: cint): pointer {.importc: "QSortFilterProxyModel_protectedbase_createIndex".}
proc fcQSortFilterProxyModel_protectedbase_encodeData(self: pointer, indexes: struct_miqt_array, stream: pointer): void {.importc: "QSortFilterProxyModel_protectedbase_encodeData".}
proc fcQSortFilterProxyModel_protectedbase_decodeData(self: pointer, row: cint, column: cint, parent: pointer, stream: pointer): bool {.importc: "QSortFilterProxyModel_protectedbase_decodeData".}
proc fcQSortFilterProxyModel_protectedbase_beginInsertRows(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QSortFilterProxyModel_protectedbase_beginInsertRows".}
proc fcQSortFilterProxyModel_protectedbase_endInsertRows(self: pointer): void {.importc: "QSortFilterProxyModel_protectedbase_endInsertRows".}
proc fcQSortFilterProxyModel_protectedbase_beginRemoveRows(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QSortFilterProxyModel_protectedbase_beginRemoveRows".}
proc fcQSortFilterProxyModel_protectedbase_endRemoveRows(self: pointer): void {.importc: "QSortFilterProxyModel_protectedbase_endRemoveRows".}
proc fcQSortFilterProxyModel_protectedbase_beginMoveRows(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationRow: cint): bool {.importc: "QSortFilterProxyModel_protectedbase_beginMoveRows".}
proc fcQSortFilterProxyModel_protectedbase_endMoveRows(self: pointer): void {.importc: "QSortFilterProxyModel_protectedbase_endMoveRows".}
proc fcQSortFilterProxyModel_protectedbase_beginInsertColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QSortFilterProxyModel_protectedbase_beginInsertColumns".}
proc fcQSortFilterProxyModel_protectedbase_endInsertColumns(self: pointer): void {.importc: "QSortFilterProxyModel_protectedbase_endInsertColumns".}
proc fcQSortFilterProxyModel_protectedbase_beginRemoveColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QSortFilterProxyModel_protectedbase_beginRemoveColumns".}
proc fcQSortFilterProxyModel_protectedbase_endRemoveColumns(self: pointer): void {.importc: "QSortFilterProxyModel_protectedbase_endRemoveColumns".}
proc fcQSortFilterProxyModel_protectedbase_beginMoveColumns(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationColumn: cint): bool {.importc: "QSortFilterProxyModel_protectedbase_beginMoveColumns".}
proc fcQSortFilterProxyModel_protectedbase_endMoveColumns(self: pointer): void {.importc: "QSortFilterProxyModel_protectedbase_endMoveColumns".}
proc fcQSortFilterProxyModel_protectedbase_beginResetModel(self: pointer): void {.importc: "QSortFilterProxyModel_protectedbase_beginResetModel".}
proc fcQSortFilterProxyModel_protectedbase_endResetModel(self: pointer): void {.importc: "QSortFilterProxyModel_protectedbase_endResetModel".}
proc fcQSortFilterProxyModel_protectedbase_changePersistentIndex(self: pointer, fromVal: pointer, to: pointer): void {.importc: "QSortFilterProxyModel_protectedbase_changePersistentIndex".}
proc fcQSortFilterProxyModel_protectedbase_changePersistentIndexList(self: pointer, fromVal: struct_miqt_array, to: struct_miqt_array): void {.importc: "QSortFilterProxyModel_protectedbase_changePersistentIndexList".}
proc fcQSortFilterProxyModel_protectedbase_persistentIndexList(self: pointer): struct_miqt_array {.importc: "QSortFilterProxyModel_protectedbase_persistentIndexList".}
proc fcQSortFilterProxyModel_protectedbase_sender(self: pointer): pointer {.importc: "QSortFilterProxyModel_protectedbase_sender".}
proc fcQSortFilterProxyModel_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QSortFilterProxyModel_protectedbase_senderSignalIndex".}
proc fcQSortFilterProxyModel_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QSortFilterProxyModel_protectedbase_receivers".}
proc fcQSortFilterProxyModel_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QSortFilterProxyModel_protectedbase_isSignalConnected".}
proc fcQSortFilterProxyModel_new(vtbl, vdata: pointer): ptr cQSortFilterProxyModel {.importc: "QSortFilterProxyModel_new".}
proc fcQSortFilterProxyModel_new2(vtbl, vdata: pointer, parent: pointer): ptr cQSortFilterProxyModel {.importc: "QSortFilterProxyModel_new2".}
proc fcQSortFilterProxyModel_staticMetaObject(): pointer {.importc: "QSortFilterProxyModel_staticMetaObject".}

proc metaObject*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSortFilterProxyModel_metaObject(self.h), owned: false)

proc metacast*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, param1: cstring): pointer =
  fcQSortFilterProxyModel_metacast(self.h, param1)

proc metacall*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQSortFilterProxyModel_metacall(self.h, cint(param1), param2, param3)

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
  gen_qabstractitemmodel_types.QModelIndex(h: fcQSortFilterProxyModel_mapToSource(self.h, proxyIndex.h), owned: true)

proc mapFromSource*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, sourceIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQSortFilterProxyModel_mapFromSource(self.h, sourceIndex.h), owned: true)

proc mapSelectionToSource*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, proxySelection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fcQSortFilterProxyModel_mapSelectionToSource(self.h, proxySelection.h), owned: true)

proc mapSelectionFromSource*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, sourceSelection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fcQSortFilterProxyModel_mapSelectionFromSource(self.h, sourceSelection.h), owned: true)

proc filterRegExp*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel): gen_qregexp_types.QRegExp =
  gen_qregexp_types.QRegExp(h: fcQSortFilterProxyModel_filterRegExp(self.h), owned: true)

proc filterRegularExpression*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel): gen_qregularexpression_types.QRegularExpression =
  gen_qregularexpression_types.QRegularExpression(h: fcQSortFilterProxyModel_filterRegularExpression(self.h), owned: true)

proc filterKeyColumn*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel): cint =
  fcQSortFilterProxyModel_filterKeyColumn(self.h)

proc setFilterKeyColumn*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, column: cint): void =
  fcQSortFilterProxyModel_setFilterKeyColumn(self.h, column)

proc filterCaseSensitivity*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel): cint =
  cint(fcQSortFilterProxyModel_filterCaseSensitivity(self.h))

proc setFilterCaseSensitivity*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, cs: cint): void =
  fcQSortFilterProxyModel_setFilterCaseSensitivity(self.h, cint(cs))

proc sortCaseSensitivity*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel): cint =
  cint(fcQSortFilterProxyModel_sortCaseSensitivity(self.h))

proc setSortCaseSensitivity*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, cs: cint): void =
  fcQSortFilterProxyModel_setSortCaseSensitivity(self.h, cint(cs))

proc isSortLocaleAware*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel): bool =
  fcQSortFilterProxyModel_isSortLocaleAware(self.h)

proc setSortLocaleAware*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, on: bool): void =
  fcQSortFilterProxyModel_setSortLocaleAware(self.h, on)

proc sortColumn*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel): cint =
  fcQSortFilterProxyModel_sortColumn(self.h)

proc sortOrder*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel): cint =
  cint(fcQSortFilterProxyModel_sortOrder(self.h))

proc dynamicSortFilter*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel): bool =
  fcQSortFilterProxyModel_dynamicSortFilter(self.h)

proc setDynamicSortFilter*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, enable: bool): void =
  fcQSortFilterProxyModel_setDynamicSortFilter(self.h, enable)

proc sortRole*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel): cint =
  fcQSortFilterProxyModel_sortRole(self.h)

proc setSortRole*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, role: cint): void =
  fcQSortFilterProxyModel_setSortRole(self.h, role)

proc filterRole*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel): cint =
  fcQSortFilterProxyModel_filterRole(self.h)

proc setFilterRole*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, role: cint): void =
  fcQSortFilterProxyModel_setFilterRole(self.h, role)

proc isRecursiveFilteringEnabled*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel): bool =
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

proc clear*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel): void =
  fcQSortFilterProxyModel_clear(self.h)

proc invalidate*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel): void =
  fcQSortFilterProxyModel_invalidate(self.h)

proc index*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQSortFilterProxyModel_index(self.h, row, column, parent.h), owned: true)

proc parent*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQSortFilterProxyModel_parent(self.h, child.h), owned: true)

proc sibling*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQSortFilterProxyModel_sibling(self.h, row, column, idx.h), owned: true)

proc rowCount*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQSortFilterProxyModel_rowCount(self.h, parent.h)

proc columnCount*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQSortFilterProxyModel_columnCount(self.h, parent.h)

proc hasChildren*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSortFilterProxyModel_hasChildren(self.h, parent.h)

proc data*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSortFilterProxyModel_data(self.h, index.h, role), owned: true)

proc setData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQSortFilterProxyModel_setData(self.h, index.h, value.h, role)

proc headerData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSortFilterProxyModel_headerData(self.h, section, cint(orientation), role), owned: true)

proc setHeaderData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQSortFilterProxyModel_setHeaderData(self.h, section, cint(orientation), value.h, role)

proc mimeData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fcQSortFilterProxyModel_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))), owned: false)

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
  gen_qabstractitemmodel_types.QModelIndex(h: fcQSortFilterProxyModel_buddy(self.h, index.h), owned: true)

proc match*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQSortFilterProxyModel_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc span*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSortFilterProxyModel_span(self.h, index.h), owned: true)

proc sort*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, column: cint, order: cint): void =
  fcQSortFilterProxyModel_sort(self.h, column, cint(order))

proc mimeTypes*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel): seq[string] =
  var v_ma = fcQSortFilterProxyModel_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc supportedDropActions*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel): cint =
  cint(fcQSortFilterProxyModel_supportedDropActions(self.h))

proc dynamicSortFilterChanged*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, dynamicSortFilter: bool): void =
  fcQSortFilterProxyModel_dynamicSortFilterChanged(self.h, dynamicSortFilter)

type QSortFilterProxyModeldynamicSortFilterChangedSlot* = proc(dynamicSortFilter: bool)
proc cQSortFilterProxyModel_slot_callback_dynamicSortFilterChanged(slot: int, dynamicSortFilter: bool) {.cdecl.} =
  let nimfunc = cast[ptr QSortFilterProxyModeldynamicSortFilterChangedSlot](cast[pointer](slot))
  let slotval1 = dynamicSortFilter

  nimfunc[](slotval1)

proc cQSortFilterProxyModel_slot_callback_dynamicSortFilterChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSortFilterProxyModeldynamicSortFilterChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ondynamicSortFilterChanged*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModeldynamicSortFilterChangedSlot) =
  var tmp = new QSortFilterProxyModeldynamicSortFilterChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_connect_dynamicSortFilterChanged(self.h, cast[int](addr tmp[]), cQSortFilterProxyModel_slot_callback_dynamicSortFilterChanged, cQSortFilterProxyModel_slot_callback_dynamicSortFilterChanged_release)

proc filterCaseSensitivityChanged*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, filterCaseSensitivity: cint): void =
  fcQSortFilterProxyModel_filterCaseSensitivityChanged(self.h, cint(filterCaseSensitivity))

type QSortFilterProxyModelfilterCaseSensitivityChangedSlot* = proc(filterCaseSensitivity: cint)
proc cQSortFilterProxyModel_slot_callback_filterCaseSensitivityChanged(slot: int, filterCaseSensitivity: cint) {.cdecl.} =
  let nimfunc = cast[ptr QSortFilterProxyModelfilterCaseSensitivityChangedSlot](cast[pointer](slot))
  let slotval1 = cint(filterCaseSensitivity)

  nimfunc[](slotval1)

proc cQSortFilterProxyModel_slot_callback_filterCaseSensitivityChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSortFilterProxyModelfilterCaseSensitivityChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfilterCaseSensitivityChanged*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelfilterCaseSensitivityChangedSlot) =
  var tmp = new QSortFilterProxyModelfilterCaseSensitivityChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_connect_filterCaseSensitivityChanged(self.h, cast[int](addr tmp[]), cQSortFilterProxyModel_slot_callback_filterCaseSensitivityChanged, cQSortFilterProxyModel_slot_callback_filterCaseSensitivityChanged_release)

proc sortCaseSensitivityChanged*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, sortCaseSensitivity: cint): void =
  fcQSortFilterProxyModel_sortCaseSensitivityChanged(self.h, cint(sortCaseSensitivity))

type QSortFilterProxyModelsortCaseSensitivityChangedSlot* = proc(sortCaseSensitivity: cint)
proc cQSortFilterProxyModel_slot_callback_sortCaseSensitivityChanged(slot: int, sortCaseSensitivity: cint) {.cdecl.} =
  let nimfunc = cast[ptr QSortFilterProxyModelsortCaseSensitivityChangedSlot](cast[pointer](slot))
  let slotval1 = cint(sortCaseSensitivity)

  nimfunc[](slotval1)

proc cQSortFilterProxyModel_slot_callback_sortCaseSensitivityChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSortFilterProxyModelsortCaseSensitivityChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsortCaseSensitivityChanged*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelsortCaseSensitivityChangedSlot) =
  var tmp = new QSortFilterProxyModelsortCaseSensitivityChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_connect_sortCaseSensitivityChanged(self.h, cast[int](addr tmp[]), cQSortFilterProxyModel_slot_callback_sortCaseSensitivityChanged, cQSortFilterProxyModel_slot_callback_sortCaseSensitivityChanged_release)

proc sortLocaleAwareChanged*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, sortLocaleAware: bool): void =
  fcQSortFilterProxyModel_sortLocaleAwareChanged(self.h, sortLocaleAware)

type QSortFilterProxyModelsortLocaleAwareChangedSlot* = proc(sortLocaleAware: bool)
proc cQSortFilterProxyModel_slot_callback_sortLocaleAwareChanged(slot: int, sortLocaleAware: bool) {.cdecl.} =
  let nimfunc = cast[ptr QSortFilterProxyModelsortLocaleAwareChangedSlot](cast[pointer](slot))
  let slotval1 = sortLocaleAware

  nimfunc[](slotval1)

proc cQSortFilterProxyModel_slot_callback_sortLocaleAwareChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSortFilterProxyModelsortLocaleAwareChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsortLocaleAwareChanged*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelsortLocaleAwareChangedSlot) =
  var tmp = new QSortFilterProxyModelsortLocaleAwareChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_connect_sortLocaleAwareChanged(self.h, cast[int](addr tmp[]), cQSortFilterProxyModel_slot_callback_sortLocaleAwareChanged, cQSortFilterProxyModel_slot_callback_sortLocaleAwareChanged_release)

proc sortRoleChanged*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, sortRole: cint): void =
  fcQSortFilterProxyModel_sortRoleChanged(self.h, sortRole)

type QSortFilterProxyModelsortRoleChangedSlot* = proc(sortRole: cint)
proc cQSortFilterProxyModel_slot_callback_sortRoleChanged(slot: int, sortRole: cint) {.cdecl.} =
  let nimfunc = cast[ptr QSortFilterProxyModelsortRoleChangedSlot](cast[pointer](slot))
  let slotval1 = sortRole

  nimfunc[](slotval1)

proc cQSortFilterProxyModel_slot_callback_sortRoleChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSortFilterProxyModelsortRoleChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsortRoleChanged*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelsortRoleChangedSlot) =
  var tmp = new QSortFilterProxyModelsortRoleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_connect_sortRoleChanged(self.h, cast[int](addr tmp[]), cQSortFilterProxyModel_slot_callback_sortRoleChanged, cQSortFilterProxyModel_slot_callback_sortRoleChanged_release)

proc filterRoleChanged*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, filterRole: cint): void =
  fcQSortFilterProxyModel_filterRoleChanged(self.h, filterRole)

type QSortFilterProxyModelfilterRoleChangedSlot* = proc(filterRole: cint)
proc cQSortFilterProxyModel_slot_callback_filterRoleChanged(slot: int, filterRole: cint) {.cdecl.} =
  let nimfunc = cast[ptr QSortFilterProxyModelfilterRoleChangedSlot](cast[pointer](slot))
  let slotval1 = filterRole

  nimfunc[](slotval1)

proc cQSortFilterProxyModel_slot_callback_filterRoleChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSortFilterProxyModelfilterRoleChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfilterRoleChanged*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelfilterRoleChangedSlot) =
  var tmp = new QSortFilterProxyModelfilterRoleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_connect_filterRoleChanged(self.h, cast[int](addr tmp[]), cQSortFilterProxyModel_slot_callback_filterRoleChanged, cQSortFilterProxyModel_slot_callback_filterRoleChanged_release)

proc recursiveFilteringEnabledChanged*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, recursiveFilteringEnabled: bool): void =
  fcQSortFilterProxyModel_recursiveFilteringEnabledChanged(self.h, recursiveFilteringEnabled)

type QSortFilterProxyModelrecursiveFilteringEnabledChangedSlot* = proc(recursiveFilteringEnabled: bool)
proc cQSortFilterProxyModel_slot_callback_recursiveFilteringEnabledChanged(slot: int, recursiveFilteringEnabled: bool) {.cdecl.} =
  let nimfunc = cast[ptr QSortFilterProxyModelrecursiveFilteringEnabledChangedSlot](cast[pointer](slot))
  let slotval1 = recursiveFilteringEnabled

  nimfunc[](slotval1)

proc cQSortFilterProxyModel_slot_callback_recursiveFilteringEnabledChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSortFilterProxyModelrecursiveFilteringEnabledChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onrecursiveFilteringEnabledChanged*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelrecursiveFilteringEnabledChangedSlot) =
  var tmp = new QSortFilterProxyModelrecursiveFilteringEnabledChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_connect_recursiveFilteringEnabledChanged(self.h, cast[int](addr tmp[]), cQSortFilterProxyModel_slot_callback_recursiveFilteringEnabledChanged, cQSortFilterProxyModel_slot_callback_recursiveFilteringEnabledChanged_release)

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

type QSortFilterProxyModelmetaObjectProc* = proc(self: QSortFilterProxyModel): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QSortFilterProxyModelmetacastProc* = proc(self: QSortFilterProxyModel, param1: cstring): pointer {.raises: [], gcsafe.}
type QSortFilterProxyModelmetacallProc* = proc(self: QSortFilterProxyModel, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QSortFilterProxyModelsetSourceModelProc* = proc(self: QSortFilterProxyModel, sourceModel: gen_qabstractitemmodel_types.QAbstractItemModel): void {.raises: [], gcsafe.}
type QSortFilterProxyModelmapToSourceProc* = proc(self: QSortFilterProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QSortFilterProxyModelmapFromSourceProc* = proc(self: QSortFilterProxyModel, sourceIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QSortFilterProxyModelmapSelectionToSourceProc* = proc(self: QSortFilterProxyModel, proxySelection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection {.raises: [], gcsafe.}
type QSortFilterProxyModelmapSelectionFromSourceProc* = proc(self: QSortFilterProxyModel, sourceSelection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection {.raises: [], gcsafe.}
type QSortFilterProxyModelfilterAcceptsRowProc* = proc(self: QSortFilterProxyModel, source_row: cint, source_parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QSortFilterProxyModelfilterAcceptsColumnProc* = proc(self: QSortFilterProxyModel, source_column: cint, source_parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QSortFilterProxyModellessThanProc* = proc(self: QSortFilterProxyModel, source_left: gen_qabstractitemmodel_types.QModelIndex, source_right: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QSortFilterProxyModelindexProc* = proc(self: QSortFilterProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QSortFilterProxyModelparentProc* = proc(self: QSortFilterProxyModel, child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QSortFilterProxyModelsiblingProc* = proc(self: QSortFilterProxyModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QSortFilterProxyModelrowCountProc* = proc(self: QSortFilterProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QSortFilterProxyModelcolumnCountProc* = proc(self: QSortFilterProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QSortFilterProxyModelhasChildrenProc* = proc(self: QSortFilterProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QSortFilterProxyModeldataProc* = proc(self: QSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QSortFilterProxyModelsetDataProc* = proc(self: QSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool {.raises: [], gcsafe.}
type QSortFilterProxyModelheaderDataProc* = proc(self: QSortFilterProxyModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QSortFilterProxyModelsetHeaderDataProc* = proc(self: QSortFilterProxyModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool {.raises: [], gcsafe.}
type QSortFilterProxyModelmimeDataProc* = proc(self: QSortFilterProxyModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData {.raises: [], gcsafe.}
type QSortFilterProxyModeldropMimeDataProc* = proc(self: QSortFilterProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QSortFilterProxyModelinsertRowsProc* = proc(self: QSortFilterProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QSortFilterProxyModelinsertColumnsProc* = proc(self: QSortFilterProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QSortFilterProxyModelremoveRowsProc* = proc(self: QSortFilterProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QSortFilterProxyModelremoveColumnsProc* = proc(self: QSortFilterProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QSortFilterProxyModelfetchMoreProc* = proc(self: QSortFilterProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QSortFilterProxyModelcanFetchMoreProc* = proc(self: QSortFilterProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QSortFilterProxyModelflagsProc* = proc(self: QSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QSortFilterProxyModelbuddyProc* = proc(self: QSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QSortFilterProxyModelmatchProc* = proc(self: QSortFilterProxyModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] {.raises: [], gcsafe.}
type QSortFilterProxyModelspanProc* = proc(self: QSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QSortFilterProxyModelsortProc* = proc(self: QSortFilterProxyModel, column: cint, order: cint): void {.raises: [], gcsafe.}
type QSortFilterProxyModelmimeTypesProc* = proc(self: QSortFilterProxyModel): seq[string] {.raises: [], gcsafe.}
type QSortFilterProxyModelsupportedDropActionsProc* = proc(self: QSortFilterProxyModel): cint {.raises: [], gcsafe.}
type QSortFilterProxyModelsubmitProc* = proc(self: QSortFilterProxyModel): bool {.raises: [], gcsafe.}
type QSortFilterProxyModelrevertProc* = proc(self: QSortFilterProxyModel): void {.raises: [], gcsafe.}
type QSortFilterProxyModelitemDataProc* = proc(self: QSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] {.raises: [], gcsafe.}
type QSortFilterProxyModelsetItemDataProc* = proc(self: QSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool {.raises: [], gcsafe.}
type QSortFilterProxyModelcanDropMimeDataProc* = proc(self: QSortFilterProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QSortFilterProxyModelsupportedDragActionsProc* = proc(self: QSortFilterProxyModel): cint {.raises: [], gcsafe.}
type QSortFilterProxyModelmoveRowsProc* = proc(self: QSortFilterProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.raises: [], gcsafe.}
type QSortFilterProxyModelmoveColumnsProc* = proc(self: QSortFilterProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.raises: [], gcsafe.}
type QSortFilterProxyModelroleNamesProc* = proc(self: QSortFilterProxyModel): Table[cint,seq[byte]] {.raises: [], gcsafe.}
type QSortFilterProxyModeleventProc* = proc(self: QSortFilterProxyModel, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSortFilterProxyModeleventFilterProc* = proc(self: QSortFilterProxyModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSortFilterProxyModeltimerEventProc* = proc(self: QSortFilterProxyModel, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QSortFilterProxyModelchildEventProc* = proc(self: QSortFilterProxyModel, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QSortFilterProxyModelcustomEventProc* = proc(self: QSortFilterProxyModel, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSortFilterProxyModelconnectNotifyProc* = proc(self: QSortFilterProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSortFilterProxyModeldisconnectNotifyProc* = proc(self: QSortFilterProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSortFilterProxyModelVTable* {.inheritable, pure.} = object
  vtbl: cQSortFilterProxyModelVTable
  metaObject*: QSortFilterProxyModelmetaObjectProc
  metacast*: QSortFilterProxyModelmetacastProc
  metacall*: QSortFilterProxyModelmetacallProc
  setSourceModel*: QSortFilterProxyModelsetSourceModelProc
  mapToSource*: QSortFilterProxyModelmapToSourceProc
  mapFromSource*: QSortFilterProxyModelmapFromSourceProc
  mapSelectionToSource*: QSortFilterProxyModelmapSelectionToSourceProc
  mapSelectionFromSource*: QSortFilterProxyModelmapSelectionFromSourceProc
  filterAcceptsRow*: QSortFilterProxyModelfilterAcceptsRowProc
  filterAcceptsColumn*: QSortFilterProxyModelfilterAcceptsColumnProc
  lessThan*: QSortFilterProxyModellessThanProc
  index*: QSortFilterProxyModelindexProc
  parent*: QSortFilterProxyModelparentProc
  sibling*: QSortFilterProxyModelsiblingProc
  rowCount*: QSortFilterProxyModelrowCountProc
  columnCount*: QSortFilterProxyModelcolumnCountProc
  hasChildren*: QSortFilterProxyModelhasChildrenProc
  data*: QSortFilterProxyModeldataProc
  setData*: QSortFilterProxyModelsetDataProc
  headerData*: QSortFilterProxyModelheaderDataProc
  setHeaderData*: QSortFilterProxyModelsetHeaderDataProc
  mimeData*: QSortFilterProxyModelmimeDataProc
  dropMimeData*: QSortFilterProxyModeldropMimeDataProc
  insertRows*: QSortFilterProxyModelinsertRowsProc
  insertColumns*: QSortFilterProxyModelinsertColumnsProc
  removeRows*: QSortFilterProxyModelremoveRowsProc
  removeColumns*: QSortFilterProxyModelremoveColumnsProc
  fetchMore*: QSortFilterProxyModelfetchMoreProc
  canFetchMore*: QSortFilterProxyModelcanFetchMoreProc
  flags*: QSortFilterProxyModelflagsProc
  buddy*: QSortFilterProxyModelbuddyProc
  match*: QSortFilterProxyModelmatchProc
  span*: QSortFilterProxyModelspanProc
  sort*: QSortFilterProxyModelsortProc
  mimeTypes*: QSortFilterProxyModelmimeTypesProc
  supportedDropActions*: QSortFilterProxyModelsupportedDropActionsProc
  submit*: QSortFilterProxyModelsubmitProc
  revert*: QSortFilterProxyModelrevertProc
  itemData*: QSortFilterProxyModelitemDataProc
  setItemData*: QSortFilterProxyModelsetItemDataProc
  canDropMimeData*: QSortFilterProxyModelcanDropMimeDataProc
  supportedDragActions*: QSortFilterProxyModelsupportedDragActionsProc
  moveRows*: QSortFilterProxyModelmoveRowsProc
  moveColumns*: QSortFilterProxyModelmoveColumnsProc
  roleNames*: QSortFilterProxyModelroleNamesProc
  event*: QSortFilterProxyModeleventProc
  eventFilter*: QSortFilterProxyModeleventFilterProc
  timerEvent*: QSortFilterProxyModeltimerEventProc
  childEvent*: QSortFilterProxyModelchildEventProc
  customEvent*: QSortFilterProxyModelcustomEventProc
  connectNotify*: QSortFilterProxyModelconnectNotifyProc
  disconnectNotify*: QSortFilterProxyModeldisconnectNotifyProc
proc QSortFilterProxyModelmetaObject*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSortFilterProxyModel_virtualbase_metaObject(self.h), owned: false)

proc cQSortFilterProxyModel_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSortFilterProxyModelmetacast*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, param1: cstring): pointer =
  fcQSortFilterProxyModel_virtualbase_metacast(self.h, param1)

proc cQSortFilterProxyModel_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QSortFilterProxyModelmetacall*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQSortFilterProxyModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQSortFilterProxyModel_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSortFilterProxyModelsetSourceModel*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, sourceModel: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQSortFilterProxyModel_virtualbase_setSourceModel(self.h, sourceModel.h)

proc cQSortFilterProxyModel_vtable_callback_setSourceModel(self: pointer, sourceModel: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: sourceModel, owned: false)
  vtbl[].setSourceModel(self, slotval1)

proc QSortFilterProxyModelmapToSource*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQSortFilterProxyModel_virtualbase_mapToSource(self.h, proxyIndex.h), owned: true)

proc cQSortFilterProxyModel_vtable_callback_mapToSource(self: pointer, proxyIndex: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: proxyIndex, owned: false)
  var virtualReturn = vtbl[].mapToSource(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSortFilterProxyModelmapFromSource*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, sourceIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQSortFilterProxyModel_virtualbase_mapFromSource(self.h, sourceIndex.h), owned: true)

proc cQSortFilterProxyModel_vtable_callback_mapFromSource(self: pointer, sourceIndex: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceIndex, owned: false)
  var virtualReturn = vtbl[].mapFromSource(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSortFilterProxyModelmapSelectionToSource*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, proxySelection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fcQSortFilterProxyModel_virtualbase_mapSelectionToSource(self.h, proxySelection.h), owned: true)

proc cQSortFilterProxyModel_vtable_callback_mapSelectionToSource(self: pointer, proxySelection: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: proxySelection, owned: false)
  var virtualReturn = vtbl[].mapSelectionToSource(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSortFilterProxyModelmapSelectionFromSource*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, sourceSelection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fcQSortFilterProxyModel_virtualbase_mapSelectionFromSource(self.h, sourceSelection.h), owned: true)

proc cQSortFilterProxyModel_vtable_callback_mapSelectionFromSource(self: pointer, sourceSelection: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: sourceSelection, owned: false)
  var virtualReturn = vtbl[].mapSelectionFromSource(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSortFilterProxyModelfilterAcceptsRow*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, source_row: cint, source_parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSortFilterProxyModel_virtualbase_filterAcceptsRow(self.h, source_row, source_parent.h)

proc cQSortFilterProxyModel_vtable_callback_filterAcceptsRow(self: pointer, source_row: cint, source_parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = source_row
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: source_parent, owned: false)
  var virtualReturn = vtbl[].filterAcceptsRow(self, slotval1, slotval2)
  virtualReturn

proc QSortFilterProxyModelfilterAcceptsColumn*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, source_column: cint, source_parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSortFilterProxyModel_virtualbase_filterAcceptsColumn(self.h, source_column, source_parent.h)

proc cQSortFilterProxyModel_vtable_callback_filterAcceptsColumn(self: pointer, source_column: cint, source_parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = source_column
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: source_parent, owned: false)
  var virtualReturn = vtbl[].filterAcceptsColumn(self, slotval1, slotval2)
  virtualReturn

proc QSortFilterProxyModellessThan*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, source_left: gen_qabstractitemmodel_types.QModelIndex, source_right: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSortFilterProxyModel_virtualbase_lessThan(self.h, source_left.h, source_right.h)

proc cQSortFilterProxyModel_vtable_callback_lessThan(self: pointer, source_left: pointer, source_right: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: source_left, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: source_right, owned: false)
  var virtualReturn = vtbl[].lessThan(self, slotval1, slotval2)
  virtualReturn

proc QSortFilterProxyModelindex*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQSortFilterProxyModel_virtualbase_index(self.h, row, column, parent.h), owned: true)

proc cQSortFilterProxyModel_vtable_callback_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].index(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSortFilterProxyModelparent*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQSortFilterProxyModel_virtualbase_parent(self.h, child.h), owned: true)

proc cQSortFilterProxyModel_vtable_callback_parent(self: pointer, child: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: child, owned: false)
  var virtualReturn = vtbl[].parent(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSortFilterProxyModelsibling*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQSortFilterProxyModel_virtualbase_sibling(self.h, row, column, idx.h), owned: true)

proc cQSortFilterProxyModel_vtable_callback_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx, owned: false)
  var virtualReturn = vtbl[].sibling(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSortFilterProxyModelrowCount*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQSortFilterProxyModel_virtualbase_rowCount(self.h, parent.h)

proc cQSortFilterProxyModel_vtable_callback_rowCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].rowCount(self, slotval1)
  virtualReturn

proc QSortFilterProxyModelcolumnCount*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQSortFilterProxyModel_virtualbase_columnCount(self.h, parent.h)

proc cQSortFilterProxyModel_vtable_callback_columnCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].columnCount(self, slotval1)
  virtualReturn

proc QSortFilterProxyModelhasChildren*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSortFilterProxyModel_virtualbase_hasChildren(self.h, parent.h)

proc cQSortFilterProxyModel_vtable_callback_hasChildren(self: pointer, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].hasChildren(self, slotval1)
  virtualReturn

proc QSortFilterProxyModeldata*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSortFilterProxyModel_virtualbase_data(self.h, index.h, role), owned: true)

proc cQSortFilterProxyModel_vtable_callback_data(self: pointer, index: pointer, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = role
  var virtualReturn = vtbl[].data(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSortFilterProxyModelsetData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQSortFilterProxyModel_virtualbase_setData(self.h, index.h, value.h, role)

proc cQSortFilterProxyModel_vtable_callback_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval3 = role
  var virtualReturn = vtbl[].setData(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSortFilterProxyModelheaderData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSortFilterProxyModel_virtualbase_headerData(self.h, section, cint(orientation), role), owned: true)

proc cQSortFilterProxyModel_vtable_callback_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = role
  var virtualReturn = vtbl[].headerData(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSortFilterProxyModelsetHeaderData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQSortFilterProxyModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

proc cQSortFilterProxyModel_vtable_callback_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval4 = role
  var virtualReturn = vtbl[].setHeaderData(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc QSortFilterProxyModelmimeData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fcQSortFilterProxyModel_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))), owned: false)

proc cQSortFilterProxyModel_vtable_callback_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
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

proc QSortFilterProxyModeldropMimeData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSortFilterProxyModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc cQSortFilterProxyModel_vtable_callback_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].dropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QSortFilterProxyModelinsertRows*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSortFilterProxyModel_virtualbase_insertRows(self.h, row, count, parent.h)

proc cQSortFilterProxyModel_vtable_callback_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].insertRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSortFilterProxyModelinsertColumns*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSortFilterProxyModel_virtualbase_insertColumns(self.h, column, count, parent.h)

proc cQSortFilterProxyModel_vtable_callback_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].insertColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSortFilterProxyModelremoveRows*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSortFilterProxyModel_virtualbase_removeRows(self.h, row, count, parent.h)

proc cQSortFilterProxyModel_vtable_callback_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].removeRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSortFilterProxyModelremoveColumns*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSortFilterProxyModel_virtualbase_removeColumns(self.h, column, count, parent.h)

proc cQSortFilterProxyModel_vtable_callback_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].removeColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSortFilterProxyModelfetchMore*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQSortFilterProxyModel_virtualbase_fetchMore(self.h, parent.h)

proc cQSortFilterProxyModel_vtable_callback_fetchMore(self: pointer, parent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  vtbl[].fetchMore(self, slotval1)

proc QSortFilterProxyModelcanFetchMore*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSortFilterProxyModel_virtualbase_canFetchMore(self.h, parent.h)

proc cQSortFilterProxyModel_vtable_callback_canFetchMore(self: pointer, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].canFetchMore(self, slotval1)
  virtualReturn

proc QSortFilterProxyModelflags*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fcQSortFilterProxyModel_virtualbase_flags(self.h, index.h))

proc cQSortFilterProxyModel_vtable_callback_flags(self: pointer, index: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].flags(self, slotval1)
  cint(virtualReturn)

proc QSortFilterProxyModelbuddy*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQSortFilterProxyModel_virtualbase_buddy(self.h, index.h), owned: true)

proc cQSortFilterProxyModel_vtable_callback_buddy(self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].buddy(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSortFilterProxyModelmatch*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQSortFilterProxyModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc cQSortFilterProxyModel_vtable_callback_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
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

proc QSortFilterProxyModelspan*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSortFilterProxyModel_virtualbase_span(self.h, index.h), owned: true)

proc cQSortFilterProxyModel_vtable_callback_span(self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].span(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSortFilterProxyModelsort*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, column: cint, order: cint): void =
  fcQSortFilterProxyModel_virtualbase_sort(self.h, column, cint(order))

proc cQSortFilterProxyModel_vtable_callback_sort(self: pointer, column: cint, order: cint): void {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = column
  let slotval2 = cint(order)
  vtbl[].sort(self, slotval1, slotval2)

proc QSortFilterProxyModelmimeTypes*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel): seq[string] =
  var v_ma = fcQSortFilterProxyModel_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc cQSortFilterProxyModel_vtable_callback_mimeTypes(self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
  var virtualReturn = vtbl[].mimeTypes(self)
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_miqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_miqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = cast[cstring](if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil)
    if len(virtualReturn[i]) > 0: copyMem(cast[pointer](virtualReturn_i_copy), addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QSortFilterProxyModelsupportedDropActions*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel): cint =
  cint(fcQSortFilterProxyModel_virtualbase_supportedDropActions(self.h))

proc cQSortFilterProxyModel_vtable_callback_supportedDropActions(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
  var virtualReturn = vtbl[].supportedDropActions(self)
  cint(virtualReturn)

proc QSortFilterProxyModelsubmit*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel): bool =
  fcQSortFilterProxyModel_virtualbase_submit(self.h)

proc cQSortFilterProxyModel_vtable_callback_submit(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
  var virtualReturn = vtbl[].submit(self)
  virtualReturn

proc QSortFilterProxyModelrevert*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel): void =
  fcQSortFilterProxyModel_virtualbase_revert(self.h)

proc cQSortFilterProxyModel_vtable_callback_revert(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
  vtbl[].revert(self)

proc QSortFilterProxyModelitemData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fcQSortFilterProxyModel_virtualbase_itemData(self.h, index.h)
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

proc cQSortFilterProxyModel_vtable_callback_itemData(self: pointer, index: pointer): struct_miqt_map {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
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

proc QSortFilterProxyModelsetItemData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool =
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

  fcQSortFilterProxyModel_virtualbase_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

proc cQSortFilterProxyModel_vtable_callback_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
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

proc QSortFilterProxyModelcanDropMimeData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSortFilterProxyModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc cQSortFilterProxyModel_vtable_callback_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].canDropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QSortFilterProxyModelsupportedDragActions*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel): cint =
  cint(fcQSortFilterProxyModel_virtualbase_supportedDragActions(self.h))

proc cQSortFilterProxyModel_vtable_callback_supportedDragActions(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
  var virtualReturn = vtbl[].supportedDragActions(self)
  cint(virtualReturn)

proc QSortFilterProxyModelmoveRows*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQSortFilterProxyModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

proc cQSortFilterProxyModel_vtable_callback_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceRow
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = vtbl[].moveRows(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QSortFilterProxyModelmoveColumns*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQSortFilterProxyModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

proc cQSortFilterProxyModel_vtable_callback_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceColumn
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = vtbl[].moveColumns(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QSortFilterProxyModelroleNames*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel): Table[cint,seq[byte]] =
  var v_mm = fcQSortFilterProxyModel_virtualbase_roleNames(self.h)
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

proc cQSortFilterProxyModel_vtable_callback_roleNames(self: pointer): struct_miqt_map {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
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

proc QSortFilterProxyModelevent*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, event: gen_qcoreevent_types.QEvent): bool =
  fcQSortFilterProxyModel_virtualbase_event(self.h, event.h)

proc cQSortFilterProxyModel_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QSortFilterProxyModeleventFilter*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSortFilterProxyModel_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQSortFilterProxyModel_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QSortFilterProxyModeltimerEvent*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSortFilterProxyModel_virtualbase_timerEvent(self.h, event.h)

proc cQSortFilterProxyModel_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QSortFilterProxyModelchildEvent*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSortFilterProxyModel_virtualbase_childEvent(self.h, event.h)

proc cQSortFilterProxyModel_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QSortFilterProxyModelcustomEvent*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, event: gen_qcoreevent_types.QEvent): void =
  fcQSortFilterProxyModel_virtualbase_customEvent(self.h, event.h)

proc cQSortFilterProxyModel_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QSortFilterProxyModelconnectNotify*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSortFilterProxyModel_virtualbase_connectNotify(self.h, signal.h)

proc cQSortFilterProxyModel_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QSortFilterProxyModeldisconnectNotify*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSortFilterProxyModel_virtualbase_disconnectNotify(self.h, signal.h)

proc cQSortFilterProxyModel_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQSortFilterProxyModel* {.inheritable.} = ref object of QSortFilterProxyModel
  vtbl*: cQSortFilterProxyModelVTable
method metaObject*(self: VirtualQSortFilterProxyModel): gen_qobjectdefs_types.QMetaObject {.base.} =
  QSortFilterProxyModelmetaObject(self[])
proc cQSortFilterProxyModel_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQSortFilterProxyModel, param1: cstring): pointer {.base.} =
  QSortFilterProxyModelmetacast(self[], param1)
proc cQSortFilterProxyModel_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQSortFilterProxyModel, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QSortFilterProxyModelmetacall(self[], param1, param2, param3)
proc cQSortFilterProxyModel_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method setSourceModel*(self: VirtualQSortFilterProxyModel, sourceModel: gen_qabstractitemmodel_types.QAbstractItemModel): void {.base.} =
  QSortFilterProxyModelsetSourceModel(self[], sourceModel)
proc cQSortFilterProxyModel_method_callback_setSourceModel(self: pointer, sourceModel: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: sourceModel, owned: false)
  inst.setSourceModel(slotval1)

method mapToSource*(self: VirtualQSortFilterProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QSortFilterProxyModelmapToSource(self[], proxyIndex)
proc cQSortFilterProxyModel_method_callback_mapToSource(self: pointer, proxyIndex: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: proxyIndex, owned: false)
  var virtualReturn = inst.mapToSource(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mapFromSource*(self: VirtualQSortFilterProxyModel, sourceIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QSortFilterProxyModelmapFromSource(self[], sourceIndex)
proc cQSortFilterProxyModel_method_callback_mapFromSource(self: pointer, sourceIndex: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceIndex, owned: false)
  var virtualReturn = inst.mapFromSource(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mapSelectionToSource*(self: VirtualQSortFilterProxyModel, proxySelection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection {.base.} =
  QSortFilterProxyModelmapSelectionToSource(self[], proxySelection)
proc cQSortFilterProxyModel_method_callback_mapSelectionToSource(self: pointer, proxySelection: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: proxySelection, owned: false)
  var virtualReturn = inst.mapSelectionToSource(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mapSelectionFromSource*(self: VirtualQSortFilterProxyModel, sourceSelection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection {.base.} =
  QSortFilterProxyModelmapSelectionFromSource(self[], sourceSelection)
proc cQSortFilterProxyModel_method_callback_mapSelectionFromSource(self: pointer, sourceSelection: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: sourceSelection, owned: false)
  var virtualReturn = inst.mapSelectionFromSource(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method filterAcceptsRow*(self: VirtualQSortFilterProxyModel, source_row: cint, source_parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QSortFilterProxyModelfilterAcceptsRow(self[], source_row, source_parent)
proc cQSortFilterProxyModel_method_callback_filterAcceptsRow(self: pointer, source_row: cint, source_parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
  let slotval1 = source_row
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: source_parent, owned: false)
  var virtualReturn = inst.filterAcceptsRow(slotval1, slotval2)
  virtualReturn

method filterAcceptsColumn*(self: VirtualQSortFilterProxyModel, source_column: cint, source_parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QSortFilterProxyModelfilterAcceptsColumn(self[], source_column, source_parent)
proc cQSortFilterProxyModel_method_callback_filterAcceptsColumn(self: pointer, source_column: cint, source_parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
  let slotval1 = source_column
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: source_parent, owned: false)
  var virtualReturn = inst.filterAcceptsColumn(slotval1, slotval2)
  virtualReturn

method lessThan*(self: VirtualQSortFilterProxyModel, source_left: gen_qabstractitemmodel_types.QModelIndex, source_right: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QSortFilterProxyModellessThan(self[], source_left, source_right)
proc cQSortFilterProxyModel_method_callback_lessThan(self: pointer, source_left: pointer, source_right: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: source_left, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: source_right, owned: false)
  var virtualReturn = inst.lessThan(slotval1, slotval2)
  virtualReturn

method index*(self: VirtualQSortFilterProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QSortFilterProxyModelindex(self[], row, column, parent)
proc cQSortFilterProxyModel_method_callback_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.index(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method parent*(self: VirtualQSortFilterProxyModel, child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QSortFilterProxyModelparent(self[], child)
proc cQSortFilterProxyModel_method_callback_parent(self: pointer, child: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: child, owned: false)
  var virtualReturn = inst.parent(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sibling*(self: VirtualQSortFilterProxyModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QSortFilterProxyModelsibling(self[], row, column, idx)
proc cQSortFilterProxyModel_method_callback_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx, owned: false)
  var virtualReturn = inst.sibling(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method rowCount*(self: VirtualQSortFilterProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  QSortFilterProxyModelrowCount(self[], parent)
proc cQSortFilterProxyModel_method_callback_rowCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.rowCount(slotval1)
  virtualReturn

method columnCount*(self: VirtualQSortFilterProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  QSortFilterProxyModelcolumnCount(self[], parent)
proc cQSortFilterProxyModel_method_callback_columnCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.columnCount(slotval1)
  virtualReturn

method hasChildren*(self: VirtualQSortFilterProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QSortFilterProxyModelhasChildren(self[], parent)
proc cQSortFilterProxyModel_method_callback_hasChildren(self: pointer, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.hasChildren(slotval1)
  virtualReturn

method data*(self: VirtualQSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant {.base.} =
  QSortFilterProxyModeldata(self[], index, role)
proc cQSortFilterProxyModel_method_callback_data(self: pointer, index: pointer, role: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = role
  var virtualReturn = inst.data(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method setData*(self: VirtualQSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool {.base.} =
  QSortFilterProxyModelsetData(self[], index, value, role)
proc cQSortFilterProxyModel_method_callback_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval3 = role
  var virtualReturn = inst.setData(slotval1, slotval2, slotval3)
  virtualReturn

method headerData*(self: VirtualQSortFilterProxyModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant {.base.} =
  QSortFilterProxyModelheaderData(self[], section, orientation, role)
proc cQSortFilterProxyModel_method_callback_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = role
  var virtualReturn = inst.headerData(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method setHeaderData*(self: VirtualQSortFilterProxyModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool {.base.} =
  QSortFilterProxyModelsetHeaderData(self[], section, orientation, value, role)
proc cQSortFilterProxyModel_method_callback_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval4 = role
  var virtualReturn = inst.setHeaderData(slotval1, slotval2, slotval3, slotval4)
  virtualReturn

method mimeData*(self: VirtualQSortFilterProxyModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData {.base.} =
  QSortFilterProxyModelmimeData(self[], indexes)
proc cQSortFilterProxyModel_method_callback_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
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

method dropMimeData*(self: VirtualQSortFilterProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QSortFilterProxyModeldropMimeData(self[], data, action, row, column, parent)
proc cQSortFilterProxyModel_method_callback_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.dropMimeData(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

method insertRows*(self: VirtualQSortFilterProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QSortFilterProxyModelinsertRows(self[], row, count, parent)
proc cQSortFilterProxyModel_method_callback_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.insertRows(slotval1, slotval2, slotval3)
  virtualReturn

method insertColumns*(self: VirtualQSortFilterProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QSortFilterProxyModelinsertColumns(self[], column, count, parent)
proc cQSortFilterProxyModel_method_callback_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.insertColumns(slotval1, slotval2, slotval3)
  virtualReturn

method removeRows*(self: VirtualQSortFilterProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QSortFilterProxyModelremoveRows(self[], row, count, parent)
proc cQSortFilterProxyModel_method_callback_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.removeRows(slotval1, slotval2, slotval3)
  virtualReturn

method removeColumns*(self: VirtualQSortFilterProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QSortFilterProxyModelremoveColumns(self[], column, count, parent)
proc cQSortFilterProxyModel_method_callback_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.removeColumns(slotval1, slotval2, slotval3)
  virtualReturn

method fetchMore*(self: VirtualQSortFilterProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QSortFilterProxyModelfetchMore(self[], parent)
proc cQSortFilterProxyModel_method_callback_fetchMore(self: pointer, parent: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  inst.fetchMore(slotval1)

method canFetchMore*(self: VirtualQSortFilterProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QSortFilterProxyModelcanFetchMore(self[], parent)
proc cQSortFilterProxyModel_method_callback_canFetchMore(self: pointer, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.canFetchMore(slotval1)
  virtualReturn

method flags*(self: VirtualQSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  QSortFilterProxyModelflags(self[], index)
proc cQSortFilterProxyModel_method_callback_flags(self: pointer, index: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.flags(slotval1)
  cint(virtualReturn)

method buddy*(self: VirtualQSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QSortFilterProxyModelbuddy(self[], index)
proc cQSortFilterProxyModel_method_callback_buddy(self: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.buddy(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method match*(self: VirtualQSortFilterProxyModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] {.base.} =
  QSortFilterProxyModelmatch(self[], start, role, value, hits, flags)
proc cQSortFilterProxyModel_method_callback_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
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

method span*(self: VirtualQSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize {.base.} =
  QSortFilterProxyModelspan(self[], index)
proc cQSortFilterProxyModel_method_callback_span(self: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.span(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sort*(self: VirtualQSortFilterProxyModel, column: cint, order: cint): void {.base.} =
  QSortFilterProxyModelsort(self[], column, order)
proc cQSortFilterProxyModel_method_callback_sort(self: pointer, column: cint, order: cint): void {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
  let slotval1 = column
  let slotval2 = cint(order)
  inst.sort(slotval1, slotval2)

method mimeTypes*(self: VirtualQSortFilterProxyModel): seq[string] {.base.} =
  QSortFilterProxyModelmimeTypes(self[])
proc cQSortFilterProxyModel_method_callback_mimeTypes(self: pointer): struct_miqt_array {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
  var virtualReturn = inst.mimeTypes()
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_miqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_miqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = cast[cstring](if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil)
    if len(virtualReturn[i]) > 0: copyMem(cast[pointer](virtualReturn_i_copy), addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

method supportedDropActions*(self: VirtualQSortFilterProxyModel): cint {.base.} =
  QSortFilterProxyModelsupportedDropActions(self[])
proc cQSortFilterProxyModel_method_callback_supportedDropActions(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
  var virtualReturn = inst.supportedDropActions()
  cint(virtualReturn)

method submit*(self: VirtualQSortFilterProxyModel): bool {.base.} =
  QSortFilterProxyModelsubmit(self[])
proc cQSortFilterProxyModel_method_callback_submit(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
  var virtualReturn = inst.submit()
  virtualReturn

method revert*(self: VirtualQSortFilterProxyModel): void {.base.} =
  QSortFilterProxyModelrevert(self[])
proc cQSortFilterProxyModel_method_callback_revert(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
  inst.revert()

method itemData*(self: VirtualQSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] {.base.} =
  QSortFilterProxyModelitemData(self[], index)
proc cQSortFilterProxyModel_method_callback_itemData(self: pointer, index: pointer): struct_miqt_map {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
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

method setItemData*(self: VirtualQSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool {.base.} =
  QSortFilterProxyModelsetItemData(self[], index, roles)
proc cQSortFilterProxyModel_method_callback_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
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

method canDropMimeData*(self: VirtualQSortFilterProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QSortFilterProxyModelcanDropMimeData(self[], data, action, row, column, parent)
proc cQSortFilterProxyModel_method_callback_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.canDropMimeData(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

method supportedDragActions*(self: VirtualQSortFilterProxyModel): cint {.base.} =
  QSortFilterProxyModelsupportedDragActions(self[])
proc cQSortFilterProxyModel_method_callback_supportedDragActions(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
  var virtualReturn = inst.supportedDragActions()
  cint(virtualReturn)

method moveRows*(self: VirtualQSortFilterProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.base.} =
  QSortFilterProxyModelmoveRows(self[], sourceParent, sourceRow, count, destinationParent, destinationChild)
proc cQSortFilterProxyModel_method_callback_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceRow
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = inst.moveRows(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

method moveColumns*(self: VirtualQSortFilterProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.base.} =
  QSortFilterProxyModelmoveColumns(self[], sourceParent, sourceColumn, count, destinationParent, destinationChild)
proc cQSortFilterProxyModel_method_callback_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceColumn
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = inst.moveColumns(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

method roleNames*(self: VirtualQSortFilterProxyModel): Table[cint,seq[byte]] {.base.} =
  QSortFilterProxyModelroleNames(self[])
proc cQSortFilterProxyModel_method_callback_roleNames(self: pointer): struct_miqt_map {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
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

method event*(self: VirtualQSortFilterProxyModel, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSortFilterProxyModelevent(self[], event)
proc cQSortFilterProxyModel_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQSortFilterProxyModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSortFilterProxyModeleventFilter(self[], watched, event)
proc cQSortFilterProxyModel_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQSortFilterProxyModel, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QSortFilterProxyModeltimerEvent(self[], event)
proc cQSortFilterProxyModel_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQSortFilterProxyModel, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QSortFilterProxyModelchildEvent(self[], event)
proc cQSortFilterProxyModel_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQSortFilterProxyModel, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QSortFilterProxyModelcustomEvent(self[], event)
proc cQSortFilterProxyModel_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQSortFilterProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSortFilterProxyModelconnectNotify(self[], signal)
proc cQSortFilterProxyModel_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQSortFilterProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSortFilterProxyModeldisconnectNotify(self[], signal)
proc cQSortFilterProxyModel_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSortFilterProxyModel](fcQSortFilterProxyModel_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc filterChanged*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel): void =
  fcQSortFilterProxyModel_protectedbase_filterChanged(self.h)

proc invalidateFilter*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel): void =
  fcQSortFilterProxyModel_protectedbase_invalidateFilter(self.h)

proc resetInternalData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel): void =
  fcQSortFilterProxyModel_protectedbase_resetInternalData(self.h)

proc createIndex*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, row: cint, column: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQSortFilterProxyModel_protectedbase_createIndex(self.h, row, column), owned: true)

proc encodeData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex], stream: gen_qdatastream_types.QDataStream): void =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  fcQSortFilterProxyModel_protectedbase_encodeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0])), stream.h)

proc decodeData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex, stream: gen_qdatastream_types.QDataStream): bool =
  fcQSortFilterProxyModel_protectedbase_decodeData(self.h, row, column, parent.h, stream.h)

proc beginInsertRows*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQSortFilterProxyModel_protectedbase_beginInsertRows(self.h, parent.h, first, last)

proc endInsertRows*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel): void =
  fcQSortFilterProxyModel_protectedbase_endInsertRows(self.h)

proc beginRemoveRows*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQSortFilterProxyModel_protectedbase_beginRemoveRows(self.h, parent.h, first, last)

proc endRemoveRows*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel): void =
  fcQSortFilterProxyModel_protectedbase_endRemoveRows(self.h)

proc beginMoveRows*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationRow: cint): bool =
  fcQSortFilterProxyModel_protectedbase_beginMoveRows(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationRow)

proc endMoveRows*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel): void =
  fcQSortFilterProxyModel_protectedbase_endMoveRows(self.h)

proc beginInsertColumns*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQSortFilterProxyModel_protectedbase_beginInsertColumns(self.h, parent.h, first, last)

proc endInsertColumns*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel): void =
  fcQSortFilterProxyModel_protectedbase_endInsertColumns(self.h)

proc beginRemoveColumns*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQSortFilterProxyModel_protectedbase_beginRemoveColumns(self.h, parent.h, first, last)

proc endRemoveColumns*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel): void =
  fcQSortFilterProxyModel_protectedbase_endRemoveColumns(self.h)

proc beginMoveColumns*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationColumn: cint): bool =
  fcQSortFilterProxyModel_protectedbase_beginMoveColumns(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationColumn)

proc endMoveColumns*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel): void =
  fcQSortFilterProxyModel_protectedbase_endMoveColumns(self.h)

proc beginResetModel*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel): void =
  fcQSortFilterProxyModel_protectedbase_beginResetModel(self.h)

proc endResetModel*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel): void =
  fcQSortFilterProxyModel_protectedbase_endResetModel(self.h)

proc changePersistentIndex*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, fromVal: gen_qabstractitemmodel_types.QModelIndex, to: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQSortFilterProxyModel_protectedbase_changePersistentIndex(self.h, fromVal.h, to.h)

proc changePersistentIndexList*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, fromVal: seq[gen_qabstractitemmodel_types.QModelIndex], to: seq[gen_qabstractitemmodel_types.QModelIndex]): void =
  var fromVal_CArray = newSeq[pointer](len(fromVal))
  for i in 0..<len(fromVal):
    fromVal_CArray[i] = fromVal[i].h

  var to_CArray = newSeq[pointer](len(to))
  for i in 0..<len(to):
    to_CArray[i] = to[i].h

  fcQSortFilterProxyModel_protectedbase_changePersistentIndexList(self.h, struct_miqt_array(len: csize_t(len(fromVal)), data: if len(fromVal) == 0: nil else: addr(fromVal_CArray[0])), struct_miqt_array(len: csize_t(len(to)), data: if len(to) == 0: nil else: addr(to_CArray[0])))

proc persistentIndexList*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQSortFilterProxyModel_protectedbase_persistentIndexList(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc sender*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSortFilterProxyModel_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel): cint =
  fcQSortFilterProxyModel_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, signal: cstring): cint =
  fcQSortFilterProxyModel_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQSortFilterProxyModel_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qsortfilterproxymodel_types.QSortFilterProxyModel,
    vtbl: ref QSortFilterProxyModelVTable = nil): gen_qsortfilterproxymodel_types.QSortFilterProxyModel =
  let vtbl = if vtbl == nil: new QSortFilterProxyModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQSortFilterProxyModel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQSortFilterProxyModel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQSortFilterProxyModel_vtable_callback_metacall
  if not isNil(vtbl[].setSourceModel):
    vtbl[].vtbl.setSourceModel = cQSortFilterProxyModel_vtable_callback_setSourceModel
  if not isNil(vtbl[].mapToSource):
    vtbl[].vtbl.mapToSource = cQSortFilterProxyModel_vtable_callback_mapToSource
  if not isNil(vtbl[].mapFromSource):
    vtbl[].vtbl.mapFromSource = cQSortFilterProxyModel_vtable_callback_mapFromSource
  if not isNil(vtbl[].mapSelectionToSource):
    vtbl[].vtbl.mapSelectionToSource = cQSortFilterProxyModel_vtable_callback_mapSelectionToSource
  if not isNil(vtbl[].mapSelectionFromSource):
    vtbl[].vtbl.mapSelectionFromSource = cQSortFilterProxyModel_vtable_callback_mapSelectionFromSource
  if not isNil(vtbl[].filterAcceptsRow):
    vtbl[].vtbl.filterAcceptsRow = cQSortFilterProxyModel_vtable_callback_filterAcceptsRow
  if not isNil(vtbl[].filterAcceptsColumn):
    vtbl[].vtbl.filterAcceptsColumn = cQSortFilterProxyModel_vtable_callback_filterAcceptsColumn
  if not isNil(vtbl[].lessThan):
    vtbl[].vtbl.lessThan = cQSortFilterProxyModel_vtable_callback_lessThan
  if not isNil(vtbl[].index):
    vtbl[].vtbl.index = cQSortFilterProxyModel_vtable_callback_index
  if not isNil(vtbl[].parent):
    vtbl[].vtbl.parent = cQSortFilterProxyModel_vtable_callback_parent
  if not isNil(vtbl[].sibling):
    vtbl[].vtbl.sibling = cQSortFilterProxyModel_vtable_callback_sibling
  if not isNil(vtbl[].rowCount):
    vtbl[].vtbl.rowCount = cQSortFilterProxyModel_vtable_callback_rowCount
  if not isNil(vtbl[].columnCount):
    vtbl[].vtbl.columnCount = cQSortFilterProxyModel_vtable_callback_columnCount
  if not isNil(vtbl[].hasChildren):
    vtbl[].vtbl.hasChildren = cQSortFilterProxyModel_vtable_callback_hasChildren
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = cQSortFilterProxyModel_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = cQSortFilterProxyModel_vtable_callback_setData
  if not isNil(vtbl[].headerData):
    vtbl[].vtbl.headerData = cQSortFilterProxyModel_vtable_callback_headerData
  if not isNil(vtbl[].setHeaderData):
    vtbl[].vtbl.setHeaderData = cQSortFilterProxyModel_vtable_callback_setHeaderData
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = cQSortFilterProxyModel_vtable_callback_mimeData
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = cQSortFilterProxyModel_vtable_callback_dropMimeData
  if not isNil(vtbl[].insertRows):
    vtbl[].vtbl.insertRows = cQSortFilterProxyModel_vtable_callback_insertRows
  if not isNil(vtbl[].insertColumns):
    vtbl[].vtbl.insertColumns = cQSortFilterProxyModel_vtable_callback_insertColumns
  if not isNil(vtbl[].removeRows):
    vtbl[].vtbl.removeRows = cQSortFilterProxyModel_vtable_callback_removeRows
  if not isNil(vtbl[].removeColumns):
    vtbl[].vtbl.removeColumns = cQSortFilterProxyModel_vtable_callback_removeColumns
  if not isNil(vtbl[].fetchMore):
    vtbl[].vtbl.fetchMore = cQSortFilterProxyModel_vtable_callback_fetchMore
  if not isNil(vtbl[].canFetchMore):
    vtbl[].vtbl.canFetchMore = cQSortFilterProxyModel_vtable_callback_canFetchMore
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = cQSortFilterProxyModel_vtable_callback_flags
  if not isNil(vtbl[].buddy):
    vtbl[].vtbl.buddy = cQSortFilterProxyModel_vtable_callback_buddy
  if not isNil(vtbl[].match):
    vtbl[].vtbl.match = cQSortFilterProxyModel_vtable_callback_match
  if not isNil(vtbl[].span):
    vtbl[].vtbl.span = cQSortFilterProxyModel_vtable_callback_span
  if not isNil(vtbl[].sort):
    vtbl[].vtbl.sort = cQSortFilterProxyModel_vtable_callback_sort
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = cQSortFilterProxyModel_vtable_callback_mimeTypes
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = cQSortFilterProxyModel_vtable_callback_supportedDropActions
  if not isNil(vtbl[].submit):
    vtbl[].vtbl.submit = cQSortFilterProxyModel_vtable_callback_submit
  if not isNil(vtbl[].revert):
    vtbl[].vtbl.revert = cQSortFilterProxyModel_vtable_callback_revert
  if not isNil(vtbl[].itemData):
    vtbl[].vtbl.itemData = cQSortFilterProxyModel_vtable_callback_itemData
  if not isNil(vtbl[].setItemData):
    vtbl[].vtbl.setItemData = cQSortFilterProxyModel_vtable_callback_setItemData
  if not isNil(vtbl[].canDropMimeData):
    vtbl[].vtbl.canDropMimeData = cQSortFilterProxyModel_vtable_callback_canDropMimeData
  if not isNil(vtbl[].supportedDragActions):
    vtbl[].vtbl.supportedDragActions = cQSortFilterProxyModel_vtable_callback_supportedDragActions
  if not isNil(vtbl[].moveRows):
    vtbl[].vtbl.moveRows = cQSortFilterProxyModel_vtable_callback_moveRows
  if not isNil(vtbl[].moveColumns):
    vtbl[].vtbl.moveColumns = cQSortFilterProxyModel_vtable_callback_moveColumns
  if not isNil(vtbl[].roleNames):
    vtbl[].vtbl.roleNames = cQSortFilterProxyModel_vtable_callback_roleNames
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQSortFilterProxyModel_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQSortFilterProxyModel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQSortFilterProxyModel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQSortFilterProxyModel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQSortFilterProxyModel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQSortFilterProxyModel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQSortFilterProxyModel_vtable_callback_disconnectNotify
  gen_qsortfilterproxymodel_types.QSortFilterProxyModel(h: fcQSortFilterProxyModel_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qsortfilterproxymodel_types.QSortFilterProxyModel,
    parent: gen_qobject_types.QObject,
    vtbl: ref QSortFilterProxyModelVTable = nil): gen_qsortfilterproxymodel_types.QSortFilterProxyModel =
  let vtbl = if vtbl == nil: new QSortFilterProxyModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSortFilterProxyModelVTable](fcQSortFilterProxyModel_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQSortFilterProxyModel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQSortFilterProxyModel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQSortFilterProxyModel_vtable_callback_metacall
  if not isNil(vtbl[].setSourceModel):
    vtbl[].vtbl.setSourceModel = cQSortFilterProxyModel_vtable_callback_setSourceModel
  if not isNil(vtbl[].mapToSource):
    vtbl[].vtbl.mapToSource = cQSortFilterProxyModel_vtable_callback_mapToSource
  if not isNil(vtbl[].mapFromSource):
    vtbl[].vtbl.mapFromSource = cQSortFilterProxyModel_vtable_callback_mapFromSource
  if not isNil(vtbl[].mapSelectionToSource):
    vtbl[].vtbl.mapSelectionToSource = cQSortFilterProxyModel_vtable_callback_mapSelectionToSource
  if not isNil(vtbl[].mapSelectionFromSource):
    vtbl[].vtbl.mapSelectionFromSource = cQSortFilterProxyModel_vtable_callback_mapSelectionFromSource
  if not isNil(vtbl[].filterAcceptsRow):
    vtbl[].vtbl.filterAcceptsRow = cQSortFilterProxyModel_vtable_callback_filterAcceptsRow
  if not isNil(vtbl[].filterAcceptsColumn):
    vtbl[].vtbl.filterAcceptsColumn = cQSortFilterProxyModel_vtable_callback_filterAcceptsColumn
  if not isNil(vtbl[].lessThan):
    vtbl[].vtbl.lessThan = cQSortFilterProxyModel_vtable_callback_lessThan
  if not isNil(vtbl[].index):
    vtbl[].vtbl.index = cQSortFilterProxyModel_vtable_callback_index
  if not isNil(vtbl[].parent):
    vtbl[].vtbl.parent = cQSortFilterProxyModel_vtable_callback_parent
  if not isNil(vtbl[].sibling):
    vtbl[].vtbl.sibling = cQSortFilterProxyModel_vtable_callback_sibling
  if not isNil(vtbl[].rowCount):
    vtbl[].vtbl.rowCount = cQSortFilterProxyModel_vtable_callback_rowCount
  if not isNil(vtbl[].columnCount):
    vtbl[].vtbl.columnCount = cQSortFilterProxyModel_vtable_callback_columnCount
  if not isNil(vtbl[].hasChildren):
    vtbl[].vtbl.hasChildren = cQSortFilterProxyModel_vtable_callback_hasChildren
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = cQSortFilterProxyModel_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = cQSortFilterProxyModel_vtable_callback_setData
  if not isNil(vtbl[].headerData):
    vtbl[].vtbl.headerData = cQSortFilterProxyModel_vtable_callback_headerData
  if not isNil(vtbl[].setHeaderData):
    vtbl[].vtbl.setHeaderData = cQSortFilterProxyModel_vtable_callback_setHeaderData
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = cQSortFilterProxyModel_vtable_callback_mimeData
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = cQSortFilterProxyModel_vtable_callback_dropMimeData
  if not isNil(vtbl[].insertRows):
    vtbl[].vtbl.insertRows = cQSortFilterProxyModel_vtable_callback_insertRows
  if not isNil(vtbl[].insertColumns):
    vtbl[].vtbl.insertColumns = cQSortFilterProxyModel_vtable_callback_insertColumns
  if not isNil(vtbl[].removeRows):
    vtbl[].vtbl.removeRows = cQSortFilterProxyModel_vtable_callback_removeRows
  if not isNil(vtbl[].removeColumns):
    vtbl[].vtbl.removeColumns = cQSortFilterProxyModel_vtable_callback_removeColumns
  if not isNil(vtbl[].fetchMore):
    vtbl[].vtbl.fetchMore = cQSortFilterProxyModel_vtable_callback_fetchMore
  if not isNil(vtbl[].canFetchMore):
    vtbl[].vtbl.canFetchMore = cQSortFilterProxyModel_vtable_callback_canFetchMore
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = cQSortFilterProxyModel_vtable_callback_flags
  if not isNil(vtbl[].buddy):
    vtbl[].vtbl.buddy = cQSortFilterProxyModel_vtable_callback_buddy
  if not isNil(vtbl[].match):
    vtbl[].vtbl.match = cQSortFilterProxyModel_vtable_callback_match
  if not isNil(vtbl[].span):
    vtbl[].vtbl.span = cQSortFilterProxyModel_vtable_callback_span
  if not isNil(vtbl[].sort):
    vtbl[].vtbl.sort = cQSortFilterProxyModel_vtable_callback_sort
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = cQSortFilterProxyModel_vtable_callback_mimeTypes
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = cQSortFilterProxyModel_vtable_callback_supportedDropActions
  if not isNil(vtbl[].submit):
    vtbl[].vtbl.submit = cQSortFilterProxyModel_vtable_callback_submit
  if not isNil(vtbl[].revert):
    vtbl[].vtbl.revert = cQSortFilterProxyModel_vtable_callback_revert
  if not isNil(vtbl[].itemData):
    vtbl[].vtbl.itemData = cQSortFilterProxyModel_vtable_callback_itemData
  if not isNil(vtbl[].setItemData):
    vtbl[].vtbl.setItemData = cQSortFilterProxyModel_vtable_callback_setItemData
  if not isNil(vtbl[].canDropMimeData):
    vtbl[].vtbl.canDropMimeData = cQSortFilterProxyModel_vtable_callback_canDropMimeData
  if not isNil(vtbl[].supportedDragActions):
    vtbl[].vtbl.supportedDragActions = cQSortFilterProxyModel_vtable_callback_supportedDragActions
  if not isNil(vtbl[].moveRows):
    vtbl[].vtbl.moveRows = cQSortFilterProxyModel_vtable_callback_moveRows
  if not isNil(vtbl[].moveColumns):
    vtbl[].vtbl.moveColumns = cQSortFilterProxyModel_vtable_callback_moveColumns
  if not isNil(vtbl[].roleNames):
    vtbl[].vtbl.roleNames = cQSortFilterProxyModel_vtable_callback_roleNames
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQSortFilterProxyModel_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQSortFilterProxyModel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQSortFilterProxyModel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQSortFilterProxyModel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQSortFilterProxyModel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQSortFilterProxyModel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQSortFilterProxyModel_vtable_callback_disconnectNotify
  gen_qsortfilterproxymodel_types.QSortFilterProxyModel(h: fcQSortFilterProxyModel_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQSortFilterProxyModel_mvtbl = cQSortFilterProxyModelVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQSortFilterProxyModel()[])](self.fcQSortFilterProxyModel_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQSortFilterProxyModel_method_callback_metaObject,
  metacast: cQSortFilterProxyModel_method_callback_metacast,
  metacall: cQSortFilterProxyModel_method_callback_metacall,
  setSourceModel: cQSortFilterProxyModel_method_callback_setSourceModel,
  mapToSource: cQSortFilterProxyModel_method_callback_mapToSource,
  mapFromSource: cQSortFilterProxyModel_method_callback_mapFromSource,
  mapSelectionToSource: cQSortFilterProxyModel_method_callback_mapSelectionToSource,
  mapSelectionFromSource: cQSortFilterProxyModel_method_callback_mapSelectionFromSource,
  filterAcceptsRow: cQSortFilterProxyModel_method_callback_filterAcceptsRow,
  filterAcceptsColumn: cQSortFilterProxyModel_method_callback_filterAcceptsColumn,
  lessThan: cQSortFilterProxyModel_method_callback_lessThan,
  index: cQSortFilterProxyModel_method_callback_index,
  parent: cQSortFilterProxyModel_method_callback_parent,
  sibling: cQSortFilterProxyModel_method_callback_sibling,
  rowCount: cQSortFilterProxyModel_method_callback_rowCount,
  columnCount: cQSortFilterProxyModel_method_callback_columnCount,
  hasChildren: cQSortFilterProxyModel_method_callback_hasChildren,
  data: cQSortFilterProxyModel_method_callback_data,
  setData: cQSortFilterProxyModel_method_callback_setData,
  headerData: cQSortFilterProxyModel_method_callback_headerData,
  setHeaderData: cQSortFilterProxyModel_method_callback_setHeaderData,
  mimeData: cQSortFilterProxyModel_method_callback_mimeData,
  dropMimeData: cQSortFilterProxyModel_method_callback_dropMimeData,
  insertRows: cQSortFilterProxyModel_method_callback_insertRows,
  insertColumns: cQSortFilterProxyModel_method_callback_insertColumns,
  removeRows: cQSortFilterProxyModel_method_callback_removeRows,
  removeColumns: cQSortFilterProxyModel_method_callback_removeColumns,
  fetchMore: cQSortFilterProxyModel_method_callback_fetchMore,
  canFetchMore: cQSortFilterProxyModel_method_callback_canFetchMore,
  flags: cQSortFilterProxyModel_method_callback_flags,
  buddy: cQSortFilterProxyModel_method_callback_buddy,
  match: cQSortFilterProxyModel_method_callback_match,
  span: cQSortFilterProxyModel_method_callback_span,
  sort: cQSortFilterProxyModel_method_callback_sort,
  mimeTypes: cQSortFilterProxyModel_method_callback_mimeTypes,
  supportedDropActions: cQSortFilterProxyModel_method_callback_supportedDropActions,
  submit: cQSortFilterProxyModel_method_callback_submit,
  revert: cQSortFilterProxyModel_method_callback_revert,
  itemData: cQSortFilterProxyModel_method_callback_itemData,
  setItemData: cQSortFilterProxyModel_method_callback_setItemData,
  canDropMimeData: cQSortFilterProxyModel_method_callback_canDropMimeData,
  supportedDragActions: cQSortFilterProxyModel_method_callback_supportedDragActions,
  moveRows: cQSortFilterProxyModel_method_callback_moveRows,
  moveColumns: cQSortFilterProxyModel_method_callback_moveColumns,
  roleNames: cQSortFilterProxyModel_method_callback_roleNames,
  event: cQSortFilterProxyModel_method_callback_event,
  eventFilter: cQSortFilterProxyModel_method_callback_eventFilter,
  timerEvent: cQSortFilterProxyModel_method_callback_timerEvent,
  childEvent: cQSortFilterProxyModel_method_callback_childEvent,
  customEvent: cQSortFilterProxyModel_method_callback_customEvent,
  connectNotify: cQSortFilterProxyModel_method_callback_connectNotify,
  disconnectNotify: cQSortFilterProxyModel_method_callback_disconnectNotify,
)
proc create*(T: type gen_qsortfilterproxymodel_types.QSortFilterProxyModel,
    inst: VirtualQSortFilterProxyModel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSortFilterProxyModel_new(addr(cQSortFilterProxyModel_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qsortfilterproxymodel_types.QSortFilterProxyModel,
    parent: gen_qobject_types.QObject,
    inst: VirtualQSortFilterProxyModel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSortFilterProxyModel_new2(addr(cQSortFilterProxyModel_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qsortfilterproxymodel_types.QSortFilterProxyModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSortFilterProxyModel_staticMetaObject())
