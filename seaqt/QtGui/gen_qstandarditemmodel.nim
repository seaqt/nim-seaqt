import ./qtgui_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_miqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_miqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newString(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


type QStandardItemItemTypeEnum* = distinct cint
template Type*(_: type QStandardItemItemTypeEnum): untyped = 0
template UserType*(_: type QStandardItemItemTypeEnum): untyped = 1000


import ./gen_qstandarditemmodel_types
export gen_qstandarditemmodel_types

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
  ./gen_qbrush_types,
  ./gen_qfont_types,
  ./gen_qicon_types,
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
  gen_qbrush_types,
  gen_qfont_types,
  gen_qicon_types

type cQStandardItem*{.exportc: "QStandardItem", incompleteStruct.} = object
type cQStandardItemModel*{.exportc: "QStandardItemModel", incompleteStruct.} = object

proc fcQStandardItem_data(self: pointer, role: cint): pointer {.importc: "QStandardItem_data".}
proc fcQStandardItem_setData(self: pointer, value: pointer, role: cint): void {.importc: "QStandardItem_setData".}
proc fcQStandardItem_clearData(self: pointer): void {.importc: "QStandardItem_clearData".}
proc fcQStandardItem_text(self: pointer): struct_miqt_string {.importc: "QStandardItem_text".}
proc fcQStandardItem_setText(self: pointer, text: struct_miqt_string): void {.importc: "QStandardItem_setText".}
proc fcQStandardItem_icon(self: pointer): pointer {.importc: "QStandardItem_icon".}
proc fcQStandardItem_setIcon(self: pointer, icon: pointer): void {.importc: "QStandardItem_setIcon".}
proc fcQStandardItem_toolTip(self: pointer): struct_miqt_string {.importc: "QStandardItem_toolTip".}
proc fcQStandardItem_setToolTip(self: pointer, toolTip: struct_miqt_string): void {.importc: "QStandardItem_setToolTip".}
proc fcQStandardItem_statusTip(self: pointer): struct_miqt_string {.importc: "QStandardItem_statusTip".}
proc fcQStandardItem_setStatusTip(self: pointer, statusTip: struct_miqt_string): void {.importc: "QStandardItem_setStatusTip".}
proc fcQStandardItem_whatsThis(self: pointer): struct_miqt_string {.importc: "QStandardItem_whatsThis".}
proc fcQStandardItem_setWhatsThis(self: pointer, whatsThis: struct_miqt_string): void {.importc: "QStandardItem_setWhatsThis".}
proc fcQStandardItem_sizeHint(self: pointer): pointer {.importc: "QStandardItem_sizeHint".}
proc fcQStandardItem_setSizeHint(self: pointer, sizeHint: pointer): void {.importc: "QStandardItem_setSizeHint".}
proc fcQStandardItem_font(self: pointer): pointer {.importc: "QStandardItem_font".}
proc fcQStandardItem_setFont(self: pointer, font: pointer): void {.importc: "QStandardItem_setFont".}
proc fcQStandardItem_textAlignment(self: pointer): cint {.importc: "QStandardItem_textAlignment".}
proc fcQStandardItem_setTextAlignment(self: pointer, textAlignment: cint): void {.importc: "QStandardItem_setTextAlignment".}
proc fcQStandardItem_background(self: pointer): pointer {.importc: "QStandardItem_background".}
proc fcQStandardItem_setBackground(self: pointer, brush: pointer): void {.importc: "QStandardItem_setBackground".}
proc fcQStandardItem_foreground(self: pointer): pointer {.importc: "QStandardItem_foreground".}
proc fcQStandardItem_setForeground(self: pointer, brush: pointer): void {.importc: "QStandardItem_setForeground".}
proc fcQStandardItem_checkState(self: pointer): cint {.importc: "QStandardItem_checkState".}
proc fcQStandardItem_setCheckState(self: pointer, checkState: cint): void {.importc: "QStandardItem_setCheckState".}
proc fcQStandardItem_accessibleText(self: pointer): struct_miqt_string {.importc: "QStandardItem_accessibleText".}
proc fcQStandardItem_setAccessibleText(self: pointer, accessibleText: struct_miqt_string): void {.importc: "QStandardItem_setAccessibleText".}
proc fcQStandardItem_accessibleDescription(self: pointer): struct_miqt_string {.importc: "QStandardItem_accessibleDescription".}
proc fcQStandardItem_setAccessibleDescription(self: pointer, accessibleDescription: struct_miqt_string): void {.importc: "QStandardItem_setAccessibleDescription".}
proc fcQStandardItem_flags(self: pointer): cint {.importc: "QStandardItem_flags".}
proc fcQStandardItem_setFlags(self: pointer, flags: cint): void {.importc: "QStandardItem_setFlags".}
proc fcQStandardItem_isEnabled(self: pointer): bool {.importc: "QStandardItem_isEnabled".}
proc fcQStandardItem_setEnabled(self: pointer, enabled: bool): void {.importc: "QStandardItem_setEnabled".}
proc fcQStandardItem_isEditable(self: pointer): bool {.importc: "QStandardItem_isEditable".}
proc fcQStandardItem_setEditable(self: pointer, editable: bool): void {.importc: "QStandardItem_setEditable".}
proc fcQStandardItem_isSelectable(self: pointer): bool {.importc: "QStandardItem_isSelectable".}
proc fcQStandardItem_setSelectable(self: pointer, selectable: bool): void {.importc: "QStandardItem_setSelectable".}
proc fcQStandardItem_isCheckable(self: pointer): bool {.importc: "QStandardItem_isCheckable".}
proc fcQStandardItem_setCheckable(self: pointer, checkable: bool): void {.importc: "QStandardItem_setCheckable".}
proc fcQStandardItem_isAutoTristate(self: pointer): bool {.importc: "QStandardItem_isAutoTristate".}
proc fcQStandardItem_setAutoTristate(self: pointer, tristate: bool): void {.importc: "QStandardItem_setAutoTristate".}
proc fcQStandardItem_isUserTristate(self: pointer): bool {.importc: "QStandardItem_isUserTristate".}
proc fcQStandardItem_setUserTristate(self: pointer, tristate: bool): void {.importc: "QStandardItem_setUserTristate".}
proc fcQStandardItem_isTristate(self: pointer): bool {.importc: "QStandardItem_isTristate".}
proc fcQStandardItem_setTristate(self: pointer, tristate: bool): void {.importc: "QStandardItem_setTristate".}
proc fcQStandardItem_isDragEnabled(self: pointer): bool {.importc: "QStandardItem_isDragEnabled".}
proc fcQStandardItem_setDragEnabled(self: pointer, dragEnabled: bool): void {.importc: "QStandardItem_setDragEnabled".}
proc fcQStandardItem_isDropEnabled(self: pointer): bool {.importc: "QStandardItem_isDropEnabled".}
proc fcQStandardItem_setDropEnabled(self: pointer, dropEnabled: bool): void {.importc: "QStandardItem_setDropEnabled".}
proc fcQStandardItem_parent(self: pointer): pointer {.importc: "QStandardItem_parent".}
proc fcQStandardItem_row(self: pointer): cint {.importc: "QStandardItem_row".}
proc fcQStandardItem_column(self: pointer): cint {.importc: "QStandardItem_column".}
proc fcQStandardItem_index(self: pointer): pointer {.importc: "QStandardItem_index".}
proc fcQStandardItem_model(self: pointer): pointer {.importc: "QStandardItem_model".}
proc fcQStandardItem_rowCount(self: pointer): cint {.importc: "QStandardItem_rowCount".}
proc fcQStandardItem_setRowCount(self: pointer, rows: cint): void {.importc: "QStandardItem_setRowCount".}
proc fcQStandardItem_columnCount(self: pointer): cint {.importc: "QStandardItem_columnCount".}
proc fcQStandardItem_setColumnCount(self: pointer, columns: cint): void {.importc: "QStandardItem_setColumnCount".}
proc fcQStandardItem_hasChildren(self: pointer): bool {.importc: "QStandardItem_hasChildren".}
proc fcQStandardItem_child(self: pointer, row: cint): pointer {.importc: "QStandardItem_child".}
proc fcQStandardItem_setChild(self: pointer, row: cint, column: cint, item: pointer): void {.importc: "QStandardItem_setChild".}
proc fcQStandardItem_setChild2(self: pointer, row: cint, item: pointer): void {.importc: "QStandardItem_setChild2".}
proc fcQStandardItem_insertRow(self: pointer, row: cint, items: struct_miqt_array): void {.importc: "QStandardItem_insertRow".}
proc fcQStandardItem_insertColumn(self: pointer, column: cint, items: struct_miqt_array): void {.importc: "QStandardItem_insertColumn".}
proc fcQStandardItem_insertRows(self: pointer, row: cint, items: struct_miqt_array): void {.importc: "QStandardItem_insertRows".}
proc fcQStandardItem_insertRows2(self: pointer, row: cint, count: cint): void {.importc: "QStandardItem_insertRows2".}
proc fcQStandardItem_insertColumns(self: pointer, column: cint, count: cint): void {.importc: "QStandardItem_insertColumns".}
proc fcQStandardItem_removeRow(self: pointer, row: cint): void {.importc: "QStandardItem_removeRow".}
proc fcQStandardItem_removeColumn(self: pointer, column: cint): void {.importc: "QStandardItem_removeColumn".}
proc fcQStandardItem_removeRows(self: pointer, row: cint, count: cint): void {.importc: "QStandardItem_removeRows".}
proc fcQStandardItem_removeColumns(self: pointer, column: cint, count: cint): void {.importc: "QStandardItem_removeColumns".}
proc fcQStandardItem_appendRow(self: pointer, items: struct_miqt_array): void {.importc: "QStandardItem_appendRow".}
proc fcQStandardItem_appendRows(self: pointer, items: struct_miqt_array): void {.importc: "QStandardItem_appendRows".}
proc fcQStandardItem_appendColumn(self: pointer, items: struct_miqt_array): void {.importc: "QStandardItem_appendColumn".}
proc fcQStandardItem_insertRow2(self: pointer, row: cint, item: pointer): void {.importc: "QStandardItem_insertRow2".}
proc fcQStandardItem_appendRowWithItem(self: pointer, item: pointer): void {.importc: "QStandardItem_appendRowWithItem".}
proc fcQStandardItem_takeChild(self: pointer, row: cint): pointer {.importc: "QStandardItem_takeChild".}
proc fcQStandardItem_takeRow(self: pointer, row: cint): struct_miqt_array {.importc: "QStandardItem_takeRow".}
proc fcQStandardItem_takeColumn(self: pointer, column: cint): struct_miqt_array {.importc: "QStandardItem_takeColumn".}
proc fcQStandardItem_sortChildren(self: pointer, column: cint): void {.importc: "QStandardItem_sortChildren".}
proc fcQStandardItem_clone(self: pointer): pointer {.importc: "QStandardItem_clone".}
proc fcQStandardItem_typeX(self: pointer): cint {.importc: "QStandardItem_type".}
proc fcQStandardItem_read(self: pointer, inVal: pointer): void {.importc: "QStandardItem_read".}
proc fcQStandardItem_write(self: pointer, outVal: pointer): void {.importc: "QStandardItem_write".}
proc fcQStandardItem_operatorLesser(self: pointer, other: pointer): bool {.importc: "QStandardItem_operatorLesser".}
proc fcQStandardItem_child2(self: pointer, row: cint, column: cint): pointer {.importc: "QStandardItem_child2".}
proc fcQStandardItem_takeChild2(self: pointer, row: cint, column: cint): pointer {.importc: "QStandardItem_takeChild2".}
proc fcQStandardItem_sortChildren2(self: pointer, column: cint, order: cint): void {.importc: "QStandardItem_sortChildren2".}
proc fcQStandardItem_vtbl(self: pointer): pointer {.importc: "QStandardItem_vtbl".}
proc fcQStandardItem_vdata(self: pointer): pointer {.importc: "QStandardItem_vdata".}

type cQStandardItemVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  data*: proc(self: pointer, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  setData*: proc(self: pointer, value: pointer, role: cint): void {.cdecl, raises: [], gcsafe.}
  clone*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  typeX*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  read*: proc(self: pointer, inVal: pointer): void {.cdecl, raises: [], gcsafe.}
  write*: proc(self: pointer, outVal: pointer): void {.cdecl, raises: [], gcsafe.}
  operatorLesser*: proc(self: pointer, other: pointer): bool {.cdecl, raises: [], gcsafe.}
proc fcQStandardItem_virtualbase_data(self: pointer, role: cint): pointer {.importc: "QStandardItem_virtualbase_data".}
proc fcQStandardItem_virtualbase_setData(self: pointer, value: pointer, role: cint): void {.importc: "QStandardItem_virtualbase_setData".}
proc fcQStandardItem_virtualbase_clone(self: pointer): pointer {.importc: "QStandardItem_virtualbase_clone".}
proc fcQStandardItem_virtualbase_typeX(self: pointer): cint {.importc: "QStandardItem_virtualbase_type".}
proc fcQStandardItem_virtualbase_read(self: pointer, inVal: pointer): void {.importc: "QStandardItem_virtualbase_read".}
proc fcQStandardItem_virtualbase_write(self: pointer, outVal: pointer): void {.importc: "QStandardItem_virtualbase_write".}
proc fcQStandardItem_virtualbase_operatorLesser(self: pointer, other: pointer): bool {.importc: "QStandardItem_virtualbase_operatorLesser".}
proc fcQStandardItem_protectedbase_emitDataChanged(self: pointer): void {.importc: "QStandardItem_protectedbase_emitDataChanged".}
proc fcQStandardItem_new(vtbl, vdata: pointer): ptr cQStandardItem {.importc: "QStandardItem_new".}
proc fcQStandardItem_new2(vtbl, vdata: pointer, text: struct_miqt_string): ptr cQStandardItem {.importc: "QStandardItem_new2".}
proc fcQStandardItem_new3(vtbl, vdata: pointer, icon: pointer, text: struct_miqt_string): ptr cQStandardItem {.importc: "QStandardItem_new3".}
proc fcQStandardItem_new4(vtbl, vdata: pointer, rows: cint): ptr cQStandardItem {.importc: "QStandardItem_new4".}
proc fcQStandardItem_new5(vtbl, vdata: pointer, rows: cint, columns: cint): ptr cQStandardItem {.importc: "QStandardItem_new5".}
proc fcQStandardItemModel_metaObject(self: pointer): pointer {.importc: "QStandardItemModel_metaObject".}
proc fcQStandardItemModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QStandardItemModel_metacast".}
proc fcQStandardItemModel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QStandardItemModel_metacall".}
proc fcQStandardItemModel_tr(s: cstring): struct_miqt_string {.importc: "QStandardItemModel_tr".}
proc fcQStandardItemModel_trUtf8(s: cstring): struct_miqt_string {.importc: "QStandardItemModel_trUtf8".}
proc fcQStandardItemModel_setItemRoleNames(self: pointer, roleNames: struct_miqt_map): void {.importc: "QStandardItemModel_setItemRoleNames".}
proc fcQStandardItemModel_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.importc: "QStandardItemModel_index".}
proc fcQStandardItemModel_parent(self: pointer, child: pointer): pointer {.importc: "QStandardItemModel_parent".}
proc fcQStandardItemModel_rowCount(self: pointer, parent: pointer): cint {.importc: "QStandardItemModel_rowCount".}
proc fcQStandardItemModel_columnCount(self: pointer, parent: pointer): cint {.importc: "QStandardItemModel_columnCount".}
proc fcQStandardItemModel_hasChildren(self: pointer, parent: pointer): bool {.importc: "QStandardItemModel_hasChildren".}
proc fcQStandardItemModel_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.importc: "QStandardItemModel_sibling".}
proc fcQStandardItemModel_data(self: pointer, index: pointer, role: cint): pointer {.importc: "QStandardItemModel_data".}
proc fcQStandardItemModel_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.importc: "QStandardItemModel_setData".}
proc fcQStandardItemModel_clearItemData(self: pointer, index: pointer): bool {.importc: "QStandardItemModel_clearItemData".}
proc fcQStandardItemModel_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.importc: "QStandardItemModel_headerData".}
proc fcQStandardItemModel_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.importc: "QStandardItemModel_setHeaderData".}
proc fcQStandardItemModel_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QStandardItemModel_insertRows".}
proc fcQStandardItemModel_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QStandardItemModel_insertColumns".}
proc fcQStandardItemModel_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QStandardItemModel_removeRows".}
proc fcQStandardItemModel_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QStandardItemModel_removeColumns".}
proc fcQStandardItemModel_flags(self: pointer, index: pointer): cint {.importc: "QStandardItemModel_flags".}
proc fcQStandardItemModel_supportedDropActions(self: pointer): cint {.importc: "QStandardItemModel_supportedDropActions".}
proc fcQStandardItemModel_itemData(self: pointer, index: pointer): struct_miqt_map {.importc: "QStandardItemModel_itemData".}
proc fcQStandardItemModel_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.importc: "QStandardItemModel_setItemData".}
proc fcQStandardItemModel_clear(self: pointer): void {.importc: "QStandardItemModel_clear".}
proc fcQStandardItemModel_sort(self: pointer, column: cint, order: cint): void {.importc: "QStandardItemModel_sort".}
proc fcQStandardItemModel_itemFromIndex(self: pointer, index: pointer): pointer {.importc: "QStandardItemModel_itemFromIndex".}
proc fcQStandardItemModel_indexFromItem(self: pointer, item: pointer): pointer {.importc: "QStandardItemModel_indexFromItem".}
proc fcQStandardItemModel_item(self: pointer, row: cint): pointer {.importc: "QStandardItemModel_item".}
proc fcQStandardItemModel_setItem(self: pointer, row: cint, column: cint, item: pointer): void {.importc: "QStandardItemModel_setItem".}
proc fcQStandardItemModel_setItem2(self: pointer, row: cint, item: pointer): void {.importc: "QStandardItemModel_setItem2".}
proc fcQStandardItemModel_invisibleRootItem(self: pointer): pointer {.importc: "QStandardItemModel_invisibleRootItem".}
proc fcQStandardItemModel_horizontalHeaderItem(self: pointer, column: cint): pointer {.importc: "QStandardItemModel_horizontalHeaderItem".}
proc fcQStandardItemModel_setHorizontalHeaderItem(self: pointer, column: cint, item: pointer): void {.importc: "QStandardItemModel_setHorizontalHeaderItem".}
proc fcQStandardItemModel_verticalHeaderItem(self: pointer, row: cint): pointer {.importc: "QStandardItemModel_verticalHeaderItem".}
proc fcQStandardItemModel_setVerticalHeaderItem(self: pointer, row: cint, item: pointer): void {.importc: "QStandardItemModel_setVerticalHeaderItem".}
proc fcQStandardItemModel_setHorizontalHeaderLabels(self: pointer, labels: struct_miqt_array): void {.importc: "QStandardItemModel_setHorizontalHeaderLabels".}
proc fcQStandardItemModel_setVerticalHeaderLabels(self: pointer, labels: struct_miqt_array): void {.importc: "QStandardItemModel_setVerticalHeaderLabels".}
proc fcQStandardItemModel_setRowCount(self: pointer, rows: cint): void {.importc: "QStandardItemModel_setRowCount".}
proc fcQStandardItemModel_setColumnCount(self: pointer, columns: cint): void {.importc: "QStandardItemModel_setColumnCount".}
proc fcQStandardItemModel_appendRow(self: pointer, items: struct_miqt_array): void {.importc: "QStandardItemModel_appendRow".}
proc fcQStandardItemModel_appendColumn(self: pointer, items: struct_miqt_array): void {.importc: "QStandardItemModel_appendColumn".}
proc fcQStandardItemModel_appendRowWithItem(self: pointer, item: pointer): void {.importc: "QStandardItemModel_appendRowWithItem".}
proc fcQStandardItemModel_insertRow(self: pointer, row: cint, items: struct_miqt_array): void {.importc: "QStandardItemModel_insertRow".}
proc fcQStandardItemModel_insertColumn(self: pointer, column: cint, items: struct_miqt_array): void {.importc: "QStandardItemModel_insertColumn".}
proc fcQStandardItemModel_insertRow2(self: pointer, row: cint, item: pointer): void {.importc: "QStandardItemModel_insertRow2".}
proc fcQStandardItemModel_insertRowWithRow(self: pointer, row: cint): bool {.importc: "QStandardItemModel_insertRowWithRow".}
proc fcQStandardItemModel_insertColumnWithColumn(self: pointer, column: cint): bool {.importc: "QStandardItemModel_insertColumnWithColumn".}
proc fcQStandardItemModel_takeItem(self: pointer, row: cint): pointer {.importc: "QStandardItemModel_takeItem".}
proc fcQStandardItemModel_takeRow(self: pointer, row: cint): struct_miqt_array {.importc: "QStandardItemModel_takeRow".}
proc fcQStandardItemModel_takeColumn(self: pointer, column: cint): struct_miqt_array {.importc: "QStandardItemModel_takeColumn".}
proc fcQStandardItemModel_takeHorizontalHeaderItem(self: pointer, column: cint): pointer {.importc: "QStandardItemModel_takeHorizontalHeaderItem".}
proc fcQStandardItemModel_takeVerticalHeaderItem(self: pointer, row: cint): pointer {.importc: "QStandardItemModel_takeVerticalHeaderItem".}
proc fcQStandardItemModel_itemPrototype(self: pointer): pointer {.importc: "QStandardItemModel_itemPrototype".}
proc fcQStandardItemModel_setItemPrototype(self: pointer, item: pointer): void {.importc: "QStandardItemModel_setItemPrototype".}
proc fcQStandardItemModel_findItems(self: pointer, text: struct_miqt_string): struct_miqt_array {.importc: "QStandardItemModel_findItems".}
proc fcQStandardItemModel_sortRole(self: pointer): cint {.importc: "QStandardItemModel_sortRole".}
proc fcQStandardItemModel_setSortRole(self: pointer, role: cint): void {.importc: "QStandardItemModel_setSortRole".}
proc fcQStandardItemModel_mimeTypes(self: pointer): struct_miqt_array {.importc: "QStandardItemModel_mimeTypes".}
proc fcQStandardItemModel_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.importc: "QStandardItemModel_mimeData".}
proc fcQStandardItemModel_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QStandardItemModel_dropMimeData".}
proc fcQStandardItemModel_itemChanged(self: pointer, item: pointer): void {.importc: "QStandardItemModel_itemChanged".}
proc fcQStandardItemModel_connect_itemChanged(self: pointer, slot: int, callback: proc (slot: int, item: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QStandardItemModel_connect_itemChanged".}
proc fcQStandardItemModel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QStandardItemModel_tr2".}
proc fcQStandardItemModel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QStandardItemModel_tr3".}
proc fcQStandardItemModel_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QStandardItemModel_trUtf82".}
proc fcQStandardItemModel_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QStandardItemModel_trUtf83".}
proc fcQStandardItemModel_item2(self: pointer, row: cint, column: cint): pointer {.importc: "QStandardItemModel_item2".}
proc fcQStandardItemModel_insertRow22(self: pointer, row: cint, parent: pointer): bool {.importc: "QStandardItemModel_insertRow22".}
proc fcQStandardItemModel_insertColumn2(self: pointer, column: cint, parent: pointer): bool {.importc: "QStandardItemModel_insertColumn2".}
proc fcQStandardItemModel_takeItem2(self: pointer, row: cint, column: cint): pointer {.importc: "QStandardItemModel_takeItem2".}
proc fcQStandardItemModel_findItems2(self: pointer, text: struct_miqt_string, flags: cint): struct_miqt_array {.importc: "QStandardItemModel_findItems2".}
proc fcQStandardItemModel_findItems3(self: pointer, text: struct_miqt_string, flags: cint, column: cint): struct_miqt_array {.importc: "QStandardItemModel_findItems3".}
proc fcQStandardItemModel_vtbl(self: pointer): pointer {.importc: "QStandardItemModel_vtbl".}
proc fcQStandardItemModel_vdata(self: pointer): pointer {.importc: "QStandardItemModel_vdata".}

type cQStandardItemModelVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  index*: proc(self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl, raises: [], gcsafe.}
  parent*: proc(self: pointer, child: pointer): pointer {.cdecl, raises: [], gcsafe.}
  rowCount*: proc(self: pointer, parent: pointer): cint {.cdecl, raises: [], gcsafe.}
  columnCount*: proc(self: pointer, parent: pointer): cint {.cdecl, raises: [], gcsafe.}
  hasChildren*: proc(self: pointer, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  sibling*: proc(self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl, raises: [], gcsafe.}
  data*: proc(self: pointer, index: pointer, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  setData*: proc(self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl, raises: [], gcsafe.}
  headerData*: proc(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  setHeaderData*: proc(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl, raises: [], gcsafe.}
  insertRows*: proc(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  insertColumns*: proc(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  removeRows*: proc(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  removeColumns*: proc(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  flags*: proc(self: pointer, index: pointer): cint {.cdecl, raises: [], gcsafe.}
  supportedDropActions*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  itemData*: proc(self: pointer, index: pointer): struct_miqt_map {.cdecl, raises: [], gcsafe.}
  setItemData*: proc(self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl, raises: [], gcsafe.}
  sort*: proc(self: pointer, column: cint, order: cint): void {.cdecl, raises: [], gcsafe.}
  mimeTypes*: proc(self: pointer): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  mimeData*: proc(self: pointer, indexes: struct_miqt_array): pointer {.cdecl, raises: [], gcsafe.}
  dropMimeData*: proc(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  canDropMimeData*: proc(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  supportedDragActions*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  moveRows*: proc(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl, raises: [], gcsafe.}
  moveColumns*: proc(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl, raises: [], gcsafe.}
  fetchMore*: proc(self: pointer, parent: pointer): void {.cdecl, raises: [], gcsafe.}
  canFetchMore*: proc(self: pointer, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
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
proc fcQStandardItemModel_virtualbase_metaObject(self: pointer): pointer {.importc: "QStandardItemModel_virtualbase_metaObject".}
proc fcQStandardItemModel_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QStandardItemModel_virtualbase_metacast".}
proc fcQStandardItemModel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QStandardItemModel_virtualbase_metacall".}
proc fcQStandardItemModel_virtualbase_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.importc: "QStandardItemModel_virtualbase_index".}
proc fcQStandardItemModel_virtualbase_parent(self: pointer, child: pointer): pointer {.importc: "QStandardItemModel_virtualbase_parent".}
proc fcQStandardItemModel_virtualbase_rowCount(self: pointer, parent: pointer): cint {.importc: "QStandardItemModel_virtualbase_rowCount".}
proc fcQStandardItemModel_virtualbase_columnCount(self: pointer, parent: pointer): cint {.importc: "QStandardItemModel_virtualbase_columnCount".}
proc fcQStandardItemModel_virtualbase_hasChildren(self: pointer, parent: pointer): bool {.importc: "QStandardItemModel_virtualbase_hasChildren".}
proc fcQStandardItemModel_virtualbase_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.importc: "QStandardItemModel_virtualbase_sibling".}
proc fcQStandardItemModel_virtualbase_data(self: pointer, index: pointer, role: cint): pointer {.importc: "QStandardItemModel_virtualbase_data".}
proc fcQStandardItemModel_virtualbase_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.importc: "QStandardItemModel_virtualbase_setData".}
proc fcQStandardItemModel_virtualbase_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.importc: "QStandardItemModel_virtualbase_headerData".}
proc fcQStandardItemModel_virtualbase_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.importc: "QStandardItemModel_virtualbase_setHeaderData".}
proc fcQStandardItemModel_virtualbase_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QStandardItemModel_virtualbase_insertRows".}
proc fcQStandardItemModel_virtualbase_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QStandardItemModel_virtualbase_insertColumns".}
proc fcQStandardItemModel_virtualbase_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QStandardItemModel_virtualbase_removeRows".}
proc fcQStandardItemModel_virtualbase_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QStandardItemModel_virtualbase_removeColumns".}
proc fcQStandardItemModel_virtualbase_flags(self: pointer, index: pointer): cint {.importc: "QStandardItemModel_virtualbase_flags".}
proc fcQStandardItemModel_virtualbase_supportedDropActions(self: pointer): cint {.importc: "QStandardItemModel_virtualbase_supportedDropActions".}
proc fcQStandardItemModel_virtualbase_itemData(self: pointer, index: pointer): struct_miqt_map {.importc: "QStandardItemModel_virtualbase_itemData".}
proc fcQStandardItemModel_virtualbase_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.importc: "QStandardItemModel_virtualbase_setItemData".}
proc fcQStandardItemModel_virtualbase_sort(self: pointer, column: cint, order: cint): void {.importc: "QStandardItemModel_virtualbase_sort".}
proc fcQStandardItemModel_virtualbase_mimeTypes(self: pointer): struct_miqt_array {.importc: "QStandardItemModel_virtualbase_mimeTypes".}
proc fcQStandardItemModel_virtualbase_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.importc: "QStandardItemModel_virtualbase_mimeData".}
proc fcQStandardItemModel_virtualbase_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QStandardItemModel_virtualbase_dropMimeData".}
proc fcQStandardItemModel_virtualbase_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QStandardItemModel_virtualbase_canDropMimeData".}
proc fcQStandardItemModel_virtualbase_supportedDragActions(self: pointer): cint {.importc: "QStandardItemModel_virtualbase_supportedDragActions".}
proc fcQStandardItemModel_virtualbase_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QStandardItemModel_virtualbase_moveRows".}
proc fcQStandardItemModel_virtualbase_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QStandardItemModel_virtualbase_moveColumns".}
proc fcQStandardItemModel_virtualbase_fetchMore(self: pointer, parent: pointer): void {.importc: "QStandardItemModel_virtualbase_fetchMore".}
proc fcQStandardItemModel_virtualbase_canFetchMore(self: pointer, parent: pointer): bool {.importc: "QStandardItemModel_virtualbase_canFetchMore".}
proc fcQStandardItemModel_virtualbase_buddy(self: pointer, index: pointer): pointer {.importc: "QStandardItemModel_virtualbase_buddy".}
proc fcQStandardItemModel_virtualbase_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.importc: "QStandardItemModel_virtualbase_match".}
proc fcQStandardItemModel_virtualbase_span(self: pointer, index: pointer): pointer {.importc: "QStandardItemModel_virtualbase_span".}
proc fcQStandardItemModel_virtualbase_roleNames(self: pointer): struct_miqt_map {.importc: "QStandardItemModel_virtualbase_roleNames".}
proc fcQStandardItemModel_virtualbase_submit(self: pointer): bool {.importc: "QStandardItemModel_virtualbase_submit".}
proc fcQStandardItemModel_virtualbase_revert(self: pointer): void {.importc: "QStandardItemModel_virtualbase_revert".}
proc fcQStandardItemModel_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QStandardItemModel_virtualbase_event".}
proc fcQStandardItemModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QStandardItemModel_virtualbase_eventFilter".}
proc fcQStandardItemModel_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QStandardItemModel_virtualbase_timerEvent".}
proc fcQStandardItemModel_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QStandardItemModel_virtualbase_childEvent".}
proc fcQStandardItemModel_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QStandardItemModel_virtualbase_customEvent".}
proc fcQStandardItemModel_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QStandardItemModel_virtualbase_connectNotify".}
proc fcQStandardItemModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QStandardItemModel_virtualbase_disconnectNotify".}
proc fcQStandardItemModel_protectedbase_resetInternalData(self: pointer): void {.importc: "QStandardItemModel_protectedbase_resetInternalData".}
proc fcQStandardItemModel_protectedbase_createIndex(self: pointer, row: cint, column: cint): pointer {.importc: "QStandardItemModel_protectedbase_createIndex".}
proc fcQStandardItemModel_protectedbase_encodeData(self: pointer, indexes: struct_miqt_array, stream: pointer): void {.importc: "QStandardItemModel_protectedbase_encodeData".}
proc fcQStandardItemModel_protectedbase_decodeData(self: pointer, row: cint, column: cint, parent: pointer, stream: pointer): bool {.importc: "QStandardItemModel_protectedbase_decodeData".}
proc fcQStandardItemModel_protectedbase_beginInsertRows(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QStandardItemModel_protectedbase_beginInsertRows".}
proc fcQStandardItemModel_protectedbase_endInsertRows(self: pointer): void {.importc: "QStandardItemModel_protectedbase_endInsertRows".}
proc fcQStandardItemModel_protectedbase_beginRemoveRows(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QStandardItemModel_protectedbase_beginRemoveRows".}
proc fcQStandardItemModel_protectedbase_endRemoveRows(self: pointer): void {.importc: "QStandardItemModel_protectedbase_endRemoveRows".}
proc fcQStandardItemModel_protectedbase_beginMoveRows(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationRow: cint): bool {.importc: "QStandardItemModel_protectedbase_beginMoveRows".}
proc fcQStandardItemModel_protectedbase_endMoveRows(self: pointer): void {.importc: "QStandardItemModel_protectedbase_endMoveRows".}
proc fcQStandardItemModel_protectedbase_beginInsertColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QStandardItemModel_protectedbase_beginInsertColumns".}
proc fcQStandardItemModel_protectedbase_endInsertColumns(self: pointer): void {.importc: "QStandardItemModel_protectedbase_endInsertColumns".}
proc fcQStandardItemModel_protectedbase_beginRemoveColumns(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QStandardItemModel_protectedbase_beginRemoveColumns".}
proc fcQStandardItemModel_protectedbase_endRemoveColumns(self: pointer): void {.importc: "QStandardItemModel_protectedbase_endRemoveColumns".}
proc fcQStandardItemModel_protectedbase_beginMoveColumns(self: pointer, sourceParent: pointer, sourceFirst: cint, sourceLast: cint, destinationParent: pointer, destinationColumn: cint): bool {.importc: "QStandardItemModel_protectedbase_beginMoveColumns".}
proc fcQStandardItemModel_protectedbase_endMoveColumns(self: pointer): void {.importc: "QStandardItemModel_protectedbase_endMoveColumns".}
proc fcQStandardItemModel_protectedbase_beginResetModel(self: pointer): void {.importc: "QStandardItemModel_protectedbase_beginResetModel".}
proc fcQStandardItemModel_protectedbase_endResetModel(self: pointer): void {.importc: "QStandardItemModel_protectedbase_endResetModel".}
proc fcQStandardItemModel_protectedbase_changePersistentIndex(self: pointer, fromVal: pointer, to: pointer): void {.importc: "QStandardItemModel_protectedbase_changePersistentIndex".}
proc fcQStandardItemModel_protectedbase_changePersistentIndexList(self: pointer, fromVal: struct_miqt_array, to: struct_miqt_array): void {.importc: "QStandardItemModel_protectedbase_changePersistentIndexList".}
proc fcQStandardItemModel_protectedbase_persistentIndexList(self: pointer): struct_miqt_array {.importc: "QStandardItemModel_protectedbase_persistentIndexList".}
proc fcQStandardItemModel_protectedbase_sender(self: pointer): pointer {.importc: "QStandardItemModel_protectedbase_sender".}
proc fcQStandardItemModel_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QStandardItemModel_protectedbase_senderSignalIndex".}
proc fcQStandardItemModel_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QStandardItemModel_protectedbase_receivers".}
proc fcQStandardItemModel_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QStandardItemModel_protectedbase_isSignalConnected".}
proc fcQStandardItemModel_new(vtbl, vdata: pointer): ptr cQStandardItemModel {.importc: "QStandardItemModel_new".}
proc fcQStandardItemModel_new2(vtbl, vdata: pointer, rows: cint, columns: cint): ptr cQStandardItemModel {.importc: "QStandardItemModel_new2".}
proc fcQStandardItemModel_new3(vtbl, vdata: pointer, parent: pointer): ptr cQStandardItemModel {.importc: "QStandardItemModel_new3".}
proc fcQStandardItemModel_new4(vtbl, vdata: pointer, rows: cint, columns: cint, parent: pointer): ptr cQStandardItemModel {.importc: "QStandardItemModel_new4".}
proc fcQStandardItemModel_staticMetaObject(): pointer {.importc: "QStandardItemModel_staticMetaObject".}

proc data*(self: gen_qstandarditemmodel_types.QStandardItem, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQStandardItem_data(self.h, role), owned: true)

proc setData*(self: gen_qstandarditemmodel_types.QStandardItem, value: gen_qvariant_types.QVariant, role: cint): void =
  fcQStandardItem_setData(self.h, value.h, role)

proc clearData*(self: gen_qstandarditemmodel_types.QStandardItem): void =
  fcQStandardItem_clearData(self.h)

proc text*(self: gen_qstandarditemmodel_types.QStandardItem): string =
  let v_ms = fcQStandardItem_text(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setText*(self: gen_qstandarditemmodel_types.QStandardItem, text: openArray[char]): void =
  fcQStandardItem_setText(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc icon*(self: gen_qstandarditemmodel_types.QStandardItem): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQStandardItem_icon(self.h), owned: true)

proc setIcon*(self: gen_qstandarditemmodel_types.QStandardItem, icon: gen_qicon_types.QIcon): void =
  fcQStandardItem_setIcon(self.h, icon.h)

proc toolTip*(self: gen_qstandarditemmodel_types.QStandardItem): string =
  let v_ms = fcQStandardItem_toolTip(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setToolTip*(self: gen_qstandarditemmodel_types.QStandardItem, toolTip: openArray[char]): void =
  fcQStandardItem_setToolTip(self.h, struct_miqt_string(data: if len(toolTip) > 0: addr toolTip[0] else: nil, len: csize_t(len(toolTip))))

proc statusTip*(self: gen_qstandarditemmodel_types.QStandardItem): string =
  let v_ms = fcQStandardItem_statusTip(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setStatusTip*(self: gen_qstandarditemmodel_types.QStandardItem, statusTip: openArray[char]): void =
  fcQStandardItem_setStatusTip(self.h, struct_miqt_string(data: if len(statusTip) > 0: addr statusTip[0] else: nil, len: csize_t(len(statusTip))))

proc whatsThis*(self: gen_qstandarditemmodel_types.QStandardItem): string =
  let v_ms = fcQStandardItem_whatsThis(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setWhatsThis*(self: gen_qstandarditemmodel_types.QStandardItem, whatsThis: openArray[char]): void =
  fcQStandardItem_setWhatsThis(self.h, struct_miqt_string(data: if len(whatsThis) > 0: addr whatsThis[0] else: nil, len: csize_t(len(whatsThis))))

proc sizeHint*(self: gen_qstandarditemmodel_types.QStandardItem): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQStandardItem_sizeHint(self.h), owned: true)

proc setSizeHint*(self: gen_qstandarditemmodel_types.QStandardItem, sizeHint: gen_qsize_types.QSize): void =
  fcQStandardItem_setSizeHint(self.h, sizeHint.h)

proc font*(self: gen_qstandarditemmodel_types.QStandardItem): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQStandardItem_font(self.h), owned: true)

proc setFont*(self: gen_qstandarditemmodel_types.QStandardItem, font: gen_qfont_types.QFont): void =
  fcQStandardItem_setFont(self.h, font.h)

proc textAlignment*(self: gen_qstandarditemmodel_types.QStandardItem): cint =
  cint(fcQStandardItem_textAlignment(self.h))

proc setTextAlignment*(self: gen_qstandarditemmodel_types.QStandardItem, textAlignment: cint): void =
  fcQStandardItem_setTextAlignment(self.h, cint(textAlignment))

proc background*(self: gen_qstandarditemmodel_types.QStandardItem): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQStandardItem_background(self.h), owned: true)

proc setBackground*(self: gen_qstandarditemmodel_types.QStandardItem, brush: gen_qbrush_types.QBrush): void =
  fcQStandardItem_setBackground(self.h, brush.h)

proc foreground*(self: gen_qstandarditemmodel_types.QStandardItem): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQStandardItem_foreground(self.h), owned: true)

proc setForeground*(self: gen_qstandarditemmodel_types.QStandardItem, brush: gen_qbrush_types.QBrush): void =
  fcQStandardItem_setForeground(self.h, brush.h)

proc checkState*(self: gen_qstandarditemmodel_types.QStandardItem): cint =
  cint(fcQStandardItem_checkState(self.h))

proc setCheckState*(self: gen_qstandarditemmodel_types.QStandardItem, checkState: cint): void =
  fcQStandardItem_setCheckState(self.h, cint(checkState))

proc accessibleText*(self: gen_qstandarditemmodel_types.QStandardItem): string =
  let v_ms = fcQStandardItem_accessibleText(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setAccessibleText*(self: gen_qstandarditemmodel_types.QStandardItem, accessibleText: openArray[char]): void =
  fcQStandardItem_setAccessibleText(self.h, struct_miqt_string(data: if len(accessibleText) > 0: addr accessibleText[0] else: nil, len: csize_t(len(accessibleText))))

proc accessibleDescription*(self: gen_qstandarditemmodel_types.QStandardItem): string =
  let v_ms = fcQStandardItem_accessibleDescription(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setAccessibleDescription*(self: gen_qstandarditemmodel_types.QStandardItem, accessibleDescription: openArray[char]): void =
  fcQStandardItem_setAccessibleDescription(self.h, struct_miqt_string(data: if len(accessibleDescription) > 0: addr accessibleDescription[0] else: nil, len: csize_t(len(accessibleDescription))))

proc flags*(self: gen_qstandarditemmodel_types.QStandardItem): cint =
  cint(fcQStandardItem_flags(self.h))

proc setFlags*(self: gen_qstandarditemmodel_types.QStandardItem, flags: cint): void =
  fcQStandardItem_setFlags(self.h, cint(flags))

proc isEnabled*(self: gen_qstandarditemmodel_types.QStandardItem): bool =
  fcQStandardItem_isEnabled(self.h)

proc setEnabled*(self: gen_qstandarditemmodel_types.QStandardItem, enabled: bool): void =
  fcQStandardItem_setEnabled(self.h, enabled)

proc isEditable*(self: gen_qstandarditemmodel_types.QStandardItem): bool =
  fcQStandardItem_isEditable(self.h)

proc setEditable*(self: gen_qstandarditemmodel_types.QStandardItem, editable: bool): void =
  fcQStandardItem_setEditable(self.h, editable)

proc isSelectable*(self: gen_qstandarditemmodel_types.QStandardItem): bool =
  fcQStandardItem_isSelectable(self.h)

proc setSelectable*(self: gen_qstandarditemmodel_types.QStandardItem, selectable: bool): void =
  fcQStandardItem_setSelectable(self.h, selectable)

proc isCheckable*(self: gen_qstandarditemmodel_types.QStandardItem): bool =
  fcQStandardItem_isCheckable(self.h)

proc setCheckable*(self: gen_qstandarditemmodel_types.QStandardItem, checkable: bool): void =
  fcQStandardItem_setCheckable(self.h, checkable)

proc isAutoTristate*(self: gen_qstandarditemmodel_types.QStandardItem): bool =
  fcQStandardItem_isAutoTristate(self.h)

proc setAutoTristate*(self: gen_qstandarditemmodel_types.QStandardItem, tristate: bool): void =
  fcQStandardItem_setAutoTristate(self.h, tristate)

proc isUserTristate*(self: gen_qstandarditemmodel_types.QStandardItem): bool =
  fcQStandardItem_isUserTristate(self.h)

proc setUserTristate*(self: gen_qstandarditemmodel_types.QStandardItem, tristate: bool): void =
  fcQStandardItem_setUserTristate(self.h, tristate)

proc isTristate*(self: gen_qstandarditemmodel_types.QStandardItem): bool =
  fcQStandardItem_isTristate(self.h)

proc setTristate*(self: gen_qstandarditemmodel_types.QStandardItem, tristate: bool): void =
  fcQStandardItem_setTristate(self.h, tristate)

proc isDragEnabled*(self: gen_qstandarditemmodel_types.QStandardItem): bool =
  fcQStandardItem_isDragEnabled(self.h)

proc setDragEnabled*(self: gen_qstandarditemmodel_types.QStandardItem, dragEnabled: bool): void =
  fcQStandardItem_setDragEnabled(self.h, dragEnabled)

proc isDropEnabled*(self: gen_qstandarditemmodel_types.QStandardItem): bool =
  fcQStandardItem_isDropEnabled(self.h)

proc setDropEnabled*(self: gen_qstandarditemmodel_types.QStandardItem, dropEnabled: bool): void =
  fcQStandardItem_setDropEnabled(self.h, dropEnabled)

proc parent*(self: gen_qstandarditemmodel_types.QStandardItem): gen_qstandarditemmodel_types.QStandardItem =
  gen_qstandarditemmodel_types.QStandardItem(h: fcQStandardItem_parent(self.h), owned: false)

proc row*(self: gen_qstandarditemmodel_types.QStandardItem): cint =
  fcQStandardItem_row(self.h)

proc column*(self: gen_qstandarditemmodel_types.QStandardItem): cint =
  fcQStandardItem_column(self.h)

proc index*(self: gen_qstandarditemmodel_types.QStandardItem): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQStandardItem_index(self.h), owned: true)

proc model*(self: gen_qstandarditemmodel_types.QStandardItem): gen_qstandarditemmodel_types.QStandardItemModel =
  gen_qstandarditemmodel_types.QStandardItemModel(h: fcQStandardItem_model(self.h), owned: false)

proc rowCount*(self: gen_qstandarditemmodel_types.QStandardItem): cint =
  fcQStandardItem_rowCount(self.h)

proc setRowCount*(self: gen_qstandarditemmodel_types.QStandardItem, rows: cint): void =
  fcQStandardItem_setRowCount(self.h, rows)

proc columnCount*(self: gen_qstandarditemmodel_types.QStandardItem): cint =
  fcQStandardItem_columnCount(self.h)

proc setColumnCount*(self: gen_qstandarditemmodel_types.QStandardItem, columns: cint): void =
  fcQStandardItem_setColumnCount(self.h, columns)

proc hasChildren*(self: gen_qstandarditemmodel_types.QStandardItem): bool =
  fcQStandardItem_hasChildren(self.h)

proc child*(self: gen_qstandarditemmodel_types.QStandardItem, row: cint): gen_qstandarditemmodel_types.QStandardItem =
  gen_qstandarditemmodel_types.QStandardItem(h: fcQStandardItem_child(self.h, row), owned: false)

proc setChild*(self: gen_qstandarditemmodel_types.QStandardItem, row: cint, column: cint, item: gen_qstandarditemmodel_types.QStandardItem): void =
  fcQStandardItem_setChild(self.h, row, column, item.h)

proc setChild*(self: gen_qstandarditemmodel_types.QStandardItem, row: cint, item: gen_qstandarditemmodel_types.QStandardItem): void =
  fcQStandardItem_setChild2(self.h, row, item.h)

proc insertRow*(self: gen_qstandarditemmodel_types.QStandardItem, row: cint, items: openArray[gen_qstandarditemmodel_types.QStandardItem]): void =
  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  fcQStandardItem_insertRow(self.h, row, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])))

proc insertColumn*(self: gen_qstandarditemmodel_types.QStandardItem, column: cint, items: openArray[gen_qstandarditemmodel_types.QStandardItem]): void =
  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  fcQStandardItem_insertColumn(self.h, column, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])))

proc insertRows*(self: gen_qstandarditemmodel_types.QStandardItem, row: cint, items: openArray[gen_qstandarditemmodel_types.QStandardItem]): void =
  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  fcQStandardItem_insertRows(self.h, row, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])))

proc insertRows*(self: gen_qstandarditemmodel_types.QStandardItem, row: cint, count: cint): void =
  fcQStandardItem_insertRows2(self.h, row, count)

proc insertColumns*(self: gen_qstandarditemmodel_types.QStandardItem, column: cint, count: cint): void =
  fcQStandardItem_insertColumns(self.h, column, count)

proc removeRow*(self: gen_qstandarditemmodel_types.QStandardItem, row: cint): void =
  fcQStandardItem_removeRow(self.h, row)

proc removeColumn*(self: gen_qstandarditemmodel_types.QStandardItem, column: cint): void =
  fcQStandardItem_removeColumn(self.h, column)

proc removeRows*(self: gen_qstandarditemmodel_types.QStandardItem, row: cint, count: cint): void =
  fcQStandardItem_removeRows(self.h, row, count)

proc removeColumns*(self: gen_qstandarditemmodel_types.QStandardItem, column: cint, count: cint): void =
  fcQStandardItem_removeColumns(self.h, column, count)

proc appendRow*(self: gen_qstandarditemmodel_types.QStandardItem, items: openArray[gen_qstandarditemmodel_types.QStandardItem]): void =
  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  fcQStandardItem_appendRow(self.h, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])))

proc appendRows*(self: gen_qstandarditemmodel_types.QStandardItem, items: openArray[gen_qstandarditemmodel_types.QStandardItem]): void =
  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  fcQStandardItem_appendRows(self.h, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])))

proc appendColumn*(self: gen_qstandarditemmodel_types.QStandardItem, items: openArray[gen_qstandarditemmodel_types.QStandardItem]): void =
  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  fcQStandardItem_appendColumn(self.h, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])))

proc insertRow*(self: gen_qstandarditemmodel_types.QStandardItem, row: cint, item: gen_qstandarditemmodel_types.QStandardItem): void =
  fcQStandardItem_insertRow2(self.h, row, item.h)

proc appendRow*(self: gen_qstandarditemmodel_types.QStandardItem, item: gen_qstandarditemmodel_types.QStandardItem): void =
  fcQStandardItem_appendRowWithItem(self.h, item.h)

proc takeChild*(self: gen_qstandarditemmodel_types.QStandardItem, row: cint): gen_qstandarditemmodel_types.QStandardItem =
  gen_qstandarditemmodel_types.QStandardItem(h: fcQStandardItem_takeChild(self.h, row), owned: false)

proc takeRow*(self: gen_qstandarditemmodel_types.QStandardItem, row: cint): seq[gen_qstandarditemmodel_types.QStandardItem] =
  var v_ma = fcQStandardItem_takeRow(self.h, row)
  var vx_ret = newSeq[gen_qstandarditemmodel_types.QStandardItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qstandarditemmodel_types.QStandardItem(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc takeColumn*(self: gen_qstandarditemmodel_types.QStandardItem, column: cint): seq[gen_qstandarditemmodel_types.QStandardItem] =
  var v_ma = fcQStandardItem_takeColumn(self.h, column)
  var vx_ret = newSeq[gen_qstandarditemmodel_types.QStandardItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qstandarditemmodel_types.QStandardItem(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc sortChildren*(self: gen_qstandarditemmodel_types.QStandardItem, column: cint): void =
  fcQStandardItem_sortChildren(self.h, column)

proc clone*(self: gen_qstandarditemmodel_types.QStandardItem): gen_qstandarditemmodel_types.QStandardItem =
  gen_qstandarditemmodel_types.QStandardItem(h: fcQStandardItem_clone(self.h), owned: false)

proc typeX*(self: gen_qstandarditemmodel_types.QStandardItem): cint =
  fcQStandardItem_typeX(self.h)

proc read*(self: gen_qstandarditemmodel_types.QStandardItem, inVal: gen_qdatastream_types.QDataStream): void =
  fcQStandardItem_read(self.h, inVal.h)

proc write*(self: gen_qstandarditemmodel_types.QStandardItem, outVal: gen_qdatastream_types.QDataStream): void =
  fcQStandardItem_write(self.h, outVal.h)

proc operatorLesser*(self: gen_qstandarditemmodel_types.QStandardItem, other: gen_qstandarditemmodel_types.QStandardItem): bool =
  fcQStandardItem_operatorLesser(self.h, other.h)

proc child*(self: gen_qstandarditemmodel_types.QStandardItem, row: cint, column: cint): gen_qstandarditemmodel_types.QStandardItem =
  gen_qstandarditemmodel_types.QStandardItem(h: fcQStandardItem_child2(self.h, row, column), owned: false)

proc takeChild*(self: gen_qstandarditemmodel_types.QStandardItem, row: cint, column: cint): gen_qstandarditemmodel_types.QStandardItem =
  gen_qstandarditemmodel_types.QStandardItem(h: fcQStandardItem_takeChild2(self.h, row, column), owned: false)

proc sortChildren*(self: gen_qstandarditemmodel_types.QStandardItem, column: cint, order: cint): void =
  fcQStandardItem_sortChildren2(self.h, column, cint(order))

type QStandardItemdataProc* = proc(self: QStandardItem, role: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QStandardItemsetDataProc* = proc(self: QStandardItem, value: gen_qvariant_types.QVariant, role: cint): void {.raises: [], gcsafe.}
type QStandardItemcloneProc* = proc(self: QStandardItem): gen_qstandarditemmodel_types.QStandardItem {.raises: [], gcsafe.}
type QStandardItemtypeXProc* = proc(self: QStandardItem): cint {.raises: [], gcsafe.}
type QStandardItemreadProc* = proc(self: QStandardItem, inVal: gen_qdatastream_types.QDataStream): void {.raises: [], gcsafe.}
type QStandardItemwriteProc* = proc(self: QStandardItem, outVal: gen_qdatastream_types.QDataStream): void {.raises: [], gcsafe.}
type QStandardItemoperatorLesserProc* = proc(self: QStandardItem, other: gen_qstandarditemmodel_types.QStandardItem): bool {.raises: [], gcsafe.}

type QStandardItemVTable* {.inheritable, pure.} = object
  vtbl: cQStandardItemVTable
  data*: QStandardItemdataProc
  setData*: QStandardItemsetDataProc
  clone*: QStandardItemcloneProc
  typeX*: QStandardItemtypeXProc
  read*: QStandardItemreadProc
  write*: QStandardItemwriteProc
  operatorLesser*: QStandardItemoperatorLesserProc

proc QStandardItemdata*(self: gen_qstandarditemmodel_types.QStandardItem, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQStandardItem_virtualbase_data(self.h, role), owned: true)

proc QStandardItemsetData*(self: gen_qstandarditemmodel_types.QStandardItem, value: gen_qvariant_types.QVariant, role: cint): void =
  fcQStandardItem_virtualbase_setData(self.h, value.h, role)

proc QStandardItemclone*(self: gen_qstandarditemmodel_types.QStandardItem): gen_qstandarditemmodel_types.QStandardItem =
  gen_qstandarditemmodel_types.QStandardItem(h: fcQStandardItem_virtualbase_clone(self.h), owned: false)

proc QStandardItemtypeX*(self: gen_qstandarditemmodel_types.QStandardItem): cint =
  fcQStandardItem_virtualbase_typeX(self.h)

proc QStandardItemread*(self: gen_qstandarditemmodel_types.QStandardItem, inVal: gen_qdatastream_types.QDataStream): void =
  fcQStandardItem_virtualbase_read(self.h, inVal.h)

proc QStandardItemwrite*(self: gen_qstandarditemmodel_types.QStandardItem, outVal: gen_qdatastream_types.QDataStream): void =
  fcQStandardItem_virtualbase_write(self.h, outVal.h)

proc QStandardItemoperatorLesser*(self: gen_qstandarditemmodel_types.QStandardItem, other: gen_qstandarditemmodel_types.QStandardItem): bool =
  fcQStandardItem_virtualbase_operatorLesser(self.h, other.h)


proc fcQStandardItem_vtable_callback_data(self: pointer, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QStandardItemVTable](fcQStandardItem_vdata(self))
  let self = QStandardItem(h: self)
  let slotval1 = role
  var virtualReturn = vtbl[].data(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQStandardItem_vtable_callback_setData(self: pointer, value: pointer, role: cint): void {.cdecl.} =
  let vtbl = cast[ptr QStandardItemVTable](fcQStandardItem_vdata(self))
  let self = QStandardItem(h: self)
  let slotval1 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval2 = role
  vtbl[].setData(self, slotval1, slotval2)

proc fcQStandardItem_vtable_callback_clone(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStandardItemVTable](fcQStandardItem_vdata(self))
  let self = QStandardItem(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQStandardItem_vtable_callback_typeX(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QStandardItemVTable](fcQStandardItem_vdata(self))
  let self = QStandardItem(h: self)
  var virtualReturn = vtbl[].typeX(self)
  virtualReturn

proc fcQStandardItem_vtable_callback_read(self: pointer, inVal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStandardItemVTable](fcQStandardItem_vdata(self))
  let self = QStandardItem(h: self)
  let slotval1 = gen_qdatastream_types.QDataStream(h: inVal, owned: false)
  vtbl[].read(self, slotval1)

proc fcQStandardItem_vtable_callback_write(self: pointer, outVal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStandardItemVTable](fcQStandardItem_vdata(self))
  let self = QStandardItem(h: self)
  let slotval1 = gen_qdatastream_types.QDataStream(h: outVal, owned: false)
  vtbl[].write(self, slotval1)

proc fcQStandardItem_vtable_callback_operatorLesser(self: pointer, other: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStandardItemVTable](fcQStandardItem_vdata(self))
  let self = QStandardItem(h: self)
  let slotval1 = gen_qstandarditemmodel_types.QStandardItem(h: other, owned: false)
  var virtualReturn = vtbl[].operatorLesser(self, slotval1)
  virtualReturn

type VirtualQStandardItem* {.inheritable.} = ref object of QStandardItem
  vtbl*: cQStandardItemVTable

method data*(self: VirtualQStandardItem, role: cint): gen_qvariant_types.QVariant {.base.} =
  QStandardItemdata(self[], role)
method setData*(self: VirtualQStandardItem, value: gen_qvariant_types.QVariant, role: cint): void {.base.} =
  QStandardItemsetData(self[], value, role)
method clone*(self: VirtualQStandardItem): gen_qstandarditemmodel_types.QStandardItem {.base.} =
  QStandardItemclone(self[])
method typeX*(self: VirtualQStandardItem): cint {.base.} =
  QStandardItemtypeX(self[])
method read*(self: VirtualQStandardItem, inVal: gen_qdatastream_types.QDataStream): void {.base.} =
  QStandardItemread(self[], inVal)
method write*(self: VirtualQStandardItem, outVal: gen_qdatastream_types.QDataStream): void {.base.} =
  QStandardItemwrite(self[], outVal)
method operatorLesser*(self: VirtualQStandardItem, other: gen_qstandarditemmodel_types.QStandardItem): bool {.base.} =
  QStandardItemoperatorLesser(self[], other)

proc fcQStandardItem_method_callback_data(self: pointer, role: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQStandardItem](fcQStandardItem_vdata(self))
  let slotval1 = role
  var virtualReturn = inst.data(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQStandardItem_method_callback_setData(self: pointer, value: pointer, role: cint): void {.cdecl.} =
  let inst = cast[VirtualQStandardItem](fcQStandardItem_vdata(self))
  let slotval1 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval2 = role
  inst.setData(slotval1, slotval2)

proc fcQStandardItem_method_callback_clone(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQStandardItem](fcQStandardItem_vdata(self))
  var virtualReturn = inst.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQStandardItem_method_callback_typeX(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQStandardItem](fcQStandardItem_vdata(self))
  var virtualReturn = inst.typeX()
  virtualReturn

proc fcQStandardItem_method_callback_read(self: pointer, inVal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStandardItem](fcQStandardItem_vdata(self))
  let slotval1 = gen_qdatastream_types.QDataStream(h: inVal, owned: false)
  inst.read(slotval1)

proc fcQStandardItem_method_callback_write(self: pointer, outVal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStandardItem](fcQStandardItem_vdata(self))
  let slotval1 = gen_qdatastream_types.QDataStream(h: outVal, owned: false)
  inst.write(slotval1)

proc fcQStandardItem_method_callback_operatorLesser(self: pointer, other: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQStandardItem](fcQStandardItem_vdata(self))
  let slotval1 = gen_qstandarditemmodel_types.QStandardItem(h: other, owned: false)
  var virtualReturn = inst.operatorLesser(slotval1)
  virtualReturn


proc emitDataChanged*(self: gen_qstandarditemmodel_types.QStandardItem): void =
  fcQStandardItem_protectedbase_emitDataChanged(self.h)

proc create*(T: type gen_qstandarditemmodel_types.QStandardItem,
    vtbl: ref QStandardItemVTable = nil): gen_qstandarditemmodel_types.QStandardItem =
  let vtbl = if vtbl == nil: new QStandardItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QStandardItemVTable](fcQStandardItem_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = fcQStandardItem_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = fcQStandardItem_vtable_callback_setData
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQStandardItem_vtable_callback_clone
  if not isNil(vtbl[].typeX):
    vtbl[].vtbl.typeX = fcQStandardItem_vtable_callback_typeX
  if not isNil(vtbl[].read):
    vtbl[].vtbl.read = fcQStandardItem_vtable_callback_read
  if not isNil(vtbl[].write):
    vtbl[].vtbl.write = fcQStandardItem_vtable_callback_write
  if not isNil(vtbl[].operatorLesser):
    vtbl[].vtbl.operatorLesser = fcQStandardItem_vtable_callback_operatorLesser
  gen_qstandarditemmodel_types.QStandardItem(h: fcQStandardItem_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qstandarditemmodel_types.QStandardItem,
    text: openArray[char],
    vtbl: ref QStandardItemVTable = nil): gen_qstandarditemmodel_types.QStandardItem =
  let vtbl = if vtbl == nil: new QStandardItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QStandardItemVTable](fcQStandardItem_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = fcQStandardItem_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = fcQStandardItem_vtable_callback_setData
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQStandardItem_vtable_callback_clone
  if not isNil(vtbl[].typeX):
    vtbl[].vtbl.typeX = fcQStandardItem_vtable_callback_typeX
  if not isNil(vtbl[].read):
    vtbl[].vtbl.read = fcQStandardItem_vtable_callback_read
  if not isNil(vtbl[].write):
    vtbl[].vtbl.write = fcQStandardItem_vtable_callback_write
  if not isNil(vtbl[].operatorLesser):
    vtbl[].vtbl.operatorLesser = fcQStandardItem_vtable_callback_operatorLesser
  gen_qstandarditemmodel_types.QStandardItem(h: fcQStandardItem_new2(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text)))), owned: true)

proc create*(T: type gen_qstandarditemmodel_types.QStandardItem,
    icon: gen_qicon_types.QIcon, text: openArray[char],
    vtbl: ref QStandardItemVTable = nil): gen_qstandarditemmodel_types.QStandardItem =
  let vtbl = if vtbl == nil: new QStandardItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QStandardItemVTable](fcQStandardItem_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = fcQStandardItem_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = fcQStandardItem_vtable_callback_setData
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQStandardItem_vtable_callback_clone
  if not isNil(vtbl[].typeX):
    vtbl[].vtbl.typeX = fcQStandardItem_vtable_callback_typeX
  if not isNil(vtbl[].read):
    vtbl[].vtbl.read = fcQStandardItem_vtable_callback_read
  if not isNil(vtbl[].write):
    vtbl[].vtbl.write = fcQStandardItem_vtable_callback_write
  if not isNil(vtbl[].operatorLesser):
    vtbl[].vtbl.operatorLesser = fcQStandardItem_vtable_callback_operatorLesser
  gen_qstandarditemmodel_types.QStandardItem(h: fcQStandardItem_new3(addr(vtbl[].vtbl), addr(vtbl[]), icon.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text)))), owned: true)

proc create*(T: type gen_qstandarditemmodel_types.QStandardItem,
    rows: cint,
    vtbl: ref QStandardItemVTable = nil): gen_qstandarditemmodel_types.QStandardItem =
  let vtbl = if vtbl == nil: new QStandardItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QStandardItemVTable](fcQStandardItem_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = fcQStandardItem_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = fcQStandardItem_vtable_callback_setData
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQStandardItem_vtable_callback_clone
  if not isNil(vtbl[].typeX):
    vtbl[].vtbl.typeX = fcQStandardItem_vtable_callback_typeX
  if not isNil(vtbl[].read):
    vtbl[].vtbl.read = fcQStandardItem_vtable_callback_read
  if not isNil(vtbl[].write):
    vtbl[].vtbl.write = fcQStandardItem_vtable_callback_write
  if not isNil(vtbl[].operatorLesser):
    vtbl[].vtbl.operatorLesser = fcQStandardItem_vtable_callback_operatorLesser
  gen_qstandarditemmodel_types.QStandardItem(h: fcQStandardItem_new4(addr(vtbl[].vtbl), addr(vtbl[]), rows), owned: true)

proc create*(T: type gen_qstandarditemmodel_types.QStandardItem,
    rows: cint, columns: cint,
    vtbl: ref QStandardItemVTable = nil): gen_qstandarditemmodel_types.QStandardItem =
  let vtbl = if vtbl == nil: new QStandardItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QStandardItemVTable](fcQStandardItem_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = fcQStandardItem_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = fcQStandardItem_vtable_callback_setData
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQStandardItem_vtable_callback_clone
  if not isNil(vtbl[].typeX):
    vtbl[].vtbl.typeX = fcQStandardItem_vtable_callback_typeX
  if not isNil(vtbl[].read):
    vtbl[].vtbl.read = fcQStandardItem_vtable_callback_read
  if not isNil(vtbl[].write):
    vtbl[].vtbl.write = fcQStandardItem_vtable_callback_write
  if not isNil(vtbl[].operatorLesser):
    vtbl[].vtbl.operatorLesser = fcQStandardItem_vtable_callback_operatorLesser
  gen_qstandarditemmodel_types.QStandardItem(h: fcQStandardItem_new5(addr(vtbl[].vtbl), addr(vtbl[]), rows, columns), owned: true)

const cQStandardItem_mvtbl = cQStandardItemVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQStandardItem()[])](self.fcQStandardItem_vtbl())
    inst[].h = nil
    inst[].owned = false,

  data: fcQStandardItem_method_callback_data,
  setData: fcQStandardItem_method_callback_setData,
  clone: fcQStandardItem_method_callback_clone,
  typeX: fcQStandardItem_method_callback_typeX,
  read: fcQStandardItem_method_callback_read,
  write: fcQStandardItem_method_callback_write,
  operatorLesser: fcQStandardItem_method_callback_operatorLesser,
)
proc create*(T: type gen_qstandarditemmodel_types.QStandardItem,
    inst: VirtualQStandardItem) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQStandardItem_new(addr(cQStandardItem_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qstandarditemmodel_types.QStandardItem,
    text: openArray[char],
    inst: VirtualQStandardItem) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQStandardItem_new2(addr(cQStandardItem_mvtbl), addr(inst[]), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))
  inst[].owned = true

proc create*(T: type gen_qstandarditemmodel_types.QStandardItem,
    icon: gen_qicon_types.QIcon, text: openArray[char],
    inst: VirtualQStandardItem) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQStandardItem_new3(addr(cQStandardItem_mvtbl), addr(inst[]), icon.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))
  inst[].owned = true

proc create*(T: type gen_qstandarditemmodel_types.QStandardItem,
    rows: cint,
    inst: VirtualQStandardItem) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQStandardItem_new4(addr(cQStandardItem_mvtbl), addr(inst[]), rows)
  inst[].owned = true

proc create*(T: type gen_qstandarditemmodel_types.QStandardItem,
    rows: cint, columns: cint,
    inst: VirtualQStandardItem) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQStandardItem_new5(addr(cQStandardItem_mvtbl), addr(inst[]), rows, columns)
  inst[].owned = true

proc metaObject*(self: gen_qstandarditemmodel_types.QStandardItemModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStandardItemModel_metaObject(self.h), owned: false)

proc metacast*(self: gen_qstandarditemmodel_types.QStandardItemModel, param1: cstring): pointer =
  fcQStandardItemModel_metacast(self.h, param1)

proc metacall*(self: gen_qstandarditemmodel_types.QStandardItemModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQStandardItemModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qstandarditemmodel_types.QStandardItemModel, s: cstring): string =
  let v_ms = fcQStandardItemModel_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qstandarditemmodel_types.QStandardItemModel, s: cstring): string =
  let v_ms = fcQStandardItemModel_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setItemRoleNames*(self: gen_qstandarditemmodel_types.QStandardItemModel, roleNames: Table[cint,seq[byte]]): void =
  var roleNames_Keys_CArray = newSeq[cint](len(roleNames))
  var roleNames_Values_CArray = newSeq[struct_miqt_string](len(roleNames))
  var roleNames_ctr = 0
  for roleNames_k in roleNames.keys():
    roleNames_Keys_CArray[roleNames_ctr] = roleNames_k
    roleNames_ctr += 1
  roleNames_ctr = 0
  for roleNames_v in roleNames.values():
    roleNames_Values_CArray[roleNames_ctr] = struct_miqt_string(data: cast[cstring](if len(roleNames_v) == 0: nil else: unsafeAddr roleNames_v[0]), len: csize_t(len(roleNames_v)))
    roleNames_ctr += 1

  fcQStandardItemModel_setItemRoleNames(self.h, struct_miqt_map(len: csize_t(len(roleNames)),keys: if len(roleNames) == 0: nil else: addr(roleNames_Keys_CArray[0]), values: if len(roleNames) == 0: nil else: addr(roleNames_Values_CArray[0]),))

proc index*(self: gen_qstandarditemmodel_types.QStandardItemModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQStandardItemModel_index(self.h, row, column, parent.h), owned: true)

proc parent*(self: gen_qstandarditemmodel_types.QStandardItemModel, child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQStandardItemModel_parent(self.h, child.h), owned: true)

proc rowCount*(self: gen_qstandarditemmodel_types.QStandardItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQStandardItemModel_rowCount(self.h, parent.h)

proc columnCount*(self: gen_qstandarditemmodel_types.QStandardItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQStandardItemModel_columnCount(self.h, parent.h)

proc hasChildren*(self: gen_qstandarditemmodel_types.QStandardItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQStandardItemModel_hasChildren(self.h, parent.h)

proc sibling*(self: gen_qstandarditemmodel_types.QStandardItemModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQStandardItemModel_sibling(self.h, row, column, idx.h), owned: true)

proc data*(self: gen_qstandarditemmodel_types.QStandardItemModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQStandardItemModel_data(self.h, index.h, role), owned: true)

proc setData*(self: gen_qstandarditemmodel_types.QStandardItemModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQStandardItemModel_setData(self.h, index.h, value.h, role)

proc clearItemData*(self: gen_qstandarditemmodel_types.QStandardItemModel, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQStandardItemModel_clearItemData(self.h, index.h)

proc headerData*(self: gen_qstandarditemmodel_types.QStandardItemModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQStandardItemModel_headerData(self.h, section, cint(orientation), role), owned: true)

proc setHeaderData*(self: gen_qstandarditemmodel_types.QStandardItemModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQStandardItemModel_setHeaderData(self.h, section, cint(orientation), value.h, role)

proc insertRows*(self: gen_qstandarditemmodel_types.QStandardItemModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQStandardItemModel_insertRows(self.h, row, count, parent.h)

proc insertColumns*(self: gen_qstandarditemmodel_types.QStandardItemModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQStandardItemModel_insertColumns(self.h, column, count, parent.h)

proc removeRows*(self: gen_qstandarditemmodel_types.QStandardItemModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQStandardItemModel_removeRows(self.h, row, count, parent.h)

proc removeColumns*(self: gen_qstandarditemmodel_types.QStandardItemModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQStandardItemModel_removeColumns(self.h, column, count, parent.h)

proc flags*(self: gen_qstandarditemmodel_types.QStandardItemModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fcQStandardItemModel_flags(self.h, index.h))

proc supportedDropActions*(self: gen_qstandarditemmodel_types.QStandardItemModel): cint =
  cint(fcQStandardItemModel_supportedDropActions(self.h))

proc itemData*(self: gen_qstandarditemmodel_types.QStandardItemModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fcQStandardItemModel_itemData(self.h, index.h)
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

proc setItemData*(self: gen_qstandarditemmodel_types.QStandardItemModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool =
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

  fcQStandardItemModel_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

proc clear*(self: gen_qstandarditemmodel_types.QStandardItemModel): void =
  fcQStandardItemModel_clear(self.h)

proc sort*(self: gen_qstandarditemmodel_types.QStandardItemModel, column: cint, order: cint): void =
  fcQStandardItemModel_sort(self.h, column, cint(order))

proc itemFromIndex*(self: gen_qstandarditemmodel_types.QStandardItemModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qstandarditemmodel_types.QStandardItem =
  gen_qstandarditemmodel_types.QStandardItem(h: fcQStandardItemModel_itemFromIndex(self.h, index.h), owned: false)

proc indexFromItem*(self: gen_qstandarditemmodel_types.QStandardItemModel, item: gen_qstandarditemmodel_types.QStandardItem): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQStandardItemModel_indexFromItem(self.h, item.h), owned: true)

proc item*(self: gen_qstandarditemmodel_types.QStandardItemModel, row: cint): gen_qstandarditemmodel_types.QStandardItem =
  gen_qstandarditemmodel_types.QStandardItem(h: fcQStandardItemModel_item(self.h, row), owned: false)

proc setItem*(self: gen_qstandarditemmodel_types.QStandardItemModel, row: cint, column: cint, item: gen_qstandarditemmodel_types.QStandardItem): void =
  fcQStandardItemModel_setItem(self.h, row, column, item.h)

proc setItem*(self: gen_qstandarditemmodel_types.QStandardItemModel, row: cint, item: gen_qstandarditemmodel_types.QStandardItem): void =
  fcQStandardItemModel_setItem2(self.h, row, item.h)

proc invisibleRootItem*(self: gen_qstandarditemmodel_types.QStandardItemModel): gen_qstandarditemmodel_types.QStandardItem =
  gen_qstandarditemmodel_types.QStandardItem(h: fcQStandardItemModel_invisibleRootItem(self.h), owned: false)

proc horizontalHeaderItem*(self: gen_qstandarditemmodel_types.QStandardItemModel, column: cint): gen_qstandarditemmodel_types.QStandardItem =
  gen_qstandarditemmodel_types.QStandardItem(h: fcQStandardItemModel_horizontalHeaderItem(self.h, column), owned: false)

proc setHorizontalHeaderItem*(self: gen_qstandarditemmodel_types.QStandardItemModel, column: cint, item: gen_qstandarditemmodel_types.QStandardItem): void =
  fcQStandardItemModel_setHorizontalHeaderItem(self.h, column, item.h)

proc verticalHeaderItem*(self: gen_qstandarditemmodel_types.QStandardItemModel, row: cint): gen_qstandarditemmodel_types.QStandardItem =
  gen_qstandarditemmodel_types.QStandardItem(h: fcQStandardItemModel_verticalHeaderItem(self.h, row), owned: false)

proc setVerticalHeaderItem*(self: gen_qstandarditemmodel_types.QStandardItemModel, row: cint, item: gen_qstandarditemmodel_types.QStandardItem): void =
  fcQStandardItemModel_setVerticalHeaderItem(self.h, row, item.h)

proc setHorizontalHeaderLabels*(self: gen_qstandarditemmodel_types.QStandardItemModel, labels: openArray[string]): void =
  var labels_CArray = newSeq[struct_miqt_string](len(labels))
  for i in 0..<len(labels):
    labels_CArray[i] = struct_miqt_string(data: if len(labels[i]) > 0: addr labels[i][0] else: nil, len: csize_t(len(labels[i])))

  fcQStandardItemModel_setHorizontalHeaderLabels(self.h, struct_miqt_array(len: csize_t(len(labels)), data: if len(labels) == 0: nil else: addr(labels_CArray[0])))

proc setVerticalHeaderLabels*(self: gen_qstandarditemmodel_types.QStandardItemModel, labels: openArray[string]): void =
  var labels_CArray = newSeq[struct_miqt_string](len(labels))
  for i in 0..<len(labels):
    labels_CArray[i] = struct_miqt_string(data: if len(labels[i]) > 0: addr labels[i][0] else: nil, len: csize_t(len(labels[i])))

  fcQStandardItemModel_setVerticalHeaderLabels(self.h, struct_miqt_array(len: csize_t(len(labels)), data: if len(labels) == 0: nil else: addr(labels_CArray[0])))

proc setRowCount*(self: gen_qstandarditemmodel_types.QStandardItemModel, rows: cint): void =
  fcQStandardItemModel_setRowCount(self.h, rows)

proc setColumnCount*(self: gen_qstandarditemmodel_types.QStandardItemModel, columns: cint): void =
  fcQStandardItemModel_setColumnCount(self.h, columns)

proc appendRow*(self: gen_qstandarditemmodel_types.QStandardItemModel, items: openArray[gen_qstandarditemmodel_types.QStandardItem]): void =
  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  fcQStandardItemModel_appendRow(self.h, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])))

proc appendColumn*(self: gen_qstandarditemmodel_types.QStandardItemModel, items: openArray[gen_qstandarditemmodel_types.QStandardItem]): void =
  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  fcQStandardItemModel_appendColumn(self.h, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])))

proc appendRow*(self: gen_qstandarditemmodel_types.QStandardItemModel, item: gen_qstandarditemmodel_types.QStandardItem): void =
  fcQStandardItemModel_appendRowWithItem(self.h, item.h)

proc insertRow*(self: gen_qstandarditemmodel_types.QStandardItemModel, row: cint, items: openArray[gen_qstandarditemmodel_types.QStandardItem]): void =
  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  fcQStandardItemModel_insertRow(self.h, row, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])))

proc insertColumn*(self: gen_qstandarditemmodel_types.QStandardItemModel, column: cint, items: openArray[gen_qstandarditemmodel_types.QStandardItem]): void =
  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  fcQStandardItemModel_insertColumn(self.h, column, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])))

proc insertRow*(self: gen_qstandarditemmodel_types.QStandardItemModel, row: cint, item: gen_qstandarditemmodel_types.QStandardItem): void =
  fcQStandardItemModel_insertRow2(self.h, row, item.h)

proc insertRow*(self: gen_qstandarditemmodel_types.QStandardItemModel, row: cint): bool =
  fcQStandardItemModel_insertRowWithRow(self.h, row)

proc insertColumn*(self: gen_qstandarditemmodel_types.QStandardItemModel, column: cint): bool =
  fcQStandardItemModel_insertColumnWithColumn(self.h, column)

proc takeItem*(self: gen_qstandarditemmodel_types.QStandardItemModel, row: cint): gen_qstandarditemmodel_types.QStandardItem =
  gen_qstandarditemmodel_types.QStandardItem(h: fcQStandardItemModel_takeItem(self.h, row), owned: false)

proc takeRow*(self: gen_qstandarditemmodel_types.QStandardItemModel, row: cint): seq[gen_qstandarditemmodel_types.QStandardItem] =
  var v_ma = fcQStandardItemModel_takeRow(self.h, row)
  var vx_ret = newSeq[gen_qstandarditemmodel_types.QStandardItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qstandarditemmodel_types.QStandardItem(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc takeColumn*(self: gen_qstandarditemmodel_types.QStandardItemModel, column: cint): seq[gen_qstandarditemmodel_types.QStandardItem] =
  var v_ma = fcQStandardItemModel_takeColumn(self.h, column)
  var vx_ret = newSeq[gen_qstandarditemmodel_types.QStandardItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qstandarditemmodel_types.QStandardItem(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc takeHorizontalHeaderItem*(self: gen_qstandarditemmodel_types.QStandardItemModel, column: cint): gen_qstandarditemmodel_types.QStandardItem =
  gen_qstandarditemmodel_types.QStandardItem(h: fcQStandardItemModel_takeHorizontalHeaderItem(self.h, column), owned: false)

proc takeVerticalHeaderItem*(self: gen_qstandarditemmodel_types.QStandardItemModel, row: cint): gen_qstandarditemmodel_types.QStandardItem =
  gen_qstandarditemmodel_types.QStandardItem(h: fcQStandardItemModel_takeVerticalHeaderItem(self.h, row), owned: false)

proc itemPrototype*(self: gen_qstandarditemmodel_types.QStandardItemModel): gen_qstandarditemmodel_types.QStandardItem =
  gen_qstandarditemmodel_types.QStandardItem(h: fcQStandardItemModel_itemPrototype(self.h), owned: false)

proc setItemPrototype*(self: gen_qstandarditemmodel_types.QStandardItemModel, item: gen_qstandarditemmodel_types.QStandardItem): void =
  fcQStandardItemModel_setItemPrototype(self.h, item.h)

proc findItems*(self: gen_qstandarditemmodel_types.QStandardItemModel, text: openArray[char]): seq[gen_qstandarditemmodel_types.QStandardItem] =
  var v_ma = fcQStandardItemModel_findItems(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))
  var vx_ret = newSeq[gen_qstandarditemmodel_types.QStandardItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qstandarditemmodel_types.QStandardItem(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc sortRole*(self: gen_qstandarditemmodel_types.QStandardItemModel): cint =
  fcQStandardItemModel_sortRole(self.h)

proc setSortRole*(self: gen_qstandarditemmodel_types.QStandardItemModel, role: cint): void =
  fcQStandardItemModel_setSortRole(self.h, role)

proc mimeTypes*(self: gen_qstandarditemmodel_types.QStandardItemModel): seq[string] =
  var v_ma = fcQStandardItemModel_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc mimeData*(self: gen_qstandarditemmodel_types.QStandardItemModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fcQStandardItemModel_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))), owned: false)

proc dropMimeData*(self: gen_qstandarditemmodel_types.QStandardItemModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQStandardItemModel_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc itemChanged*(self: gen_qstandarditemmodel_types.QStandardItemModel, item: gen_qstandarditemmodel_types.QStandardItem): void =
  fcQStandardItemModel_itemChanged(self.h, item.h)

type QStandardItemModelitemChangedSlot* = proc(item: gen_qstandarditemmodel_types.QStandardItem)
proc fcQStandardItemModel_slot_callback_itemChanged(slot: int, item: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QStandardItemModelitemChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qstandarditemmodel_types.QStandardItem(h: item, owned: false)

  nimfunc[](slotval1)

proc fcQStandardItemModel_slot_callback_itemChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QStandardItemModelitemChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onItemChanged*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModelitemChangedSlot) =
  var tmp = new QStandardItemModelitemChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_connect_itemChanged(self.h, cast[int](addr tmp[]), fcQStandardItemModel_slot_callback_itemChanged, fcQStandardItemModel_slot_callback_itemChanged_release)

proc tr*(_: type gen_qstandarditemmodel_types.QStandardItemModel, s: cstring, c: cstring): string =
  let v_ms = fcQStandardItemModel_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qstandarditemmodel_types.QStandardItemModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQStandardItemModel_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qstandarditemmodel_types.QStandardItemModel, s: cstring, c: cstring): string =
  let v_ms = fcQStandardItemModel_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qstandarditemmodel_types.QStandardItemModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQStandardItemModel_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc item*(self: gen_qstandarditemmodel_types.QStandardItemModel, row: cint, column: cint): gen_qstandarditemmodel_types.QStandardItem =
  gen_qstandarditemmodel_types.QStandardItem(h: fcQStandardItemModel_item2(self.h, row, column), owned: false)

proc insertRow*(self: gen_qstandarditemmodel_types.QStandardItemModel, row: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQStandardItemModel_insertRow22(self.h, row, parent.h)

proc insertColumn*(self: gen_qstandarditemmodel_types.QStandardItemModel, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQStandardItemModel_insertColumn2(self.h, column, parent.h)

proc takeItem*(self: gen_qstandarditemmodel_types.QStandardItemModel, row: cint, column: cint): gen_qstandarditemmodel_types.QStandardItem =
  gen_qstandarditemmodel_types.QStandardItem(h: fcQStandardItemModel_takeItem2(self.h, row, column), owned: false)

proc findItems*(self: gen_qstandarditemmodel_types.QStandardItemModel, text: openArray[char], flags: cint): seq[gen_qstandarditemmodel_types.QStandardItem] =
  var v_ma = fcQStandardItemModel_findItems2(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), cint(flags))
  var vx_ret = newSeq[gen_qstandarditemmodel_types.QStandardItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qstandarditemmodel_types.QStandardItem(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc findItems*(self: gen_qstandarditemmodel_types.QStandardItemModel, text: openArray[char], flags: cint, column: cint): seq[gen_qstandarditemmodel_types.QStandardItem] =
  var v_ma = fcQStandardItemModel_findItems3(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), cint(flags), column)
  var vx_ret = newSeq[gen_qstandarditemmodel_types.QStandardItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qstandarditemmodel_types.QStandardItem(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

type QStandardItemModelmetaObjectProc* = proc(self: QStandardItemModel): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QStandardItemModelmetacastProc* = proc(self: QStandardItemModel, param1: cstring): pointer {.raises: [], gcsafe.}
type QStandardItemModelmetacallProc* = proc(self: QStandardItemModel, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QStandardItemModelindexProc* = proc(self: QStandardItemModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QStandardItemModelparentProc* = proc(self: QStandardItemModel, child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QStandardItemModelrowCountProc* = proc(self: QStandardItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QStandardItemModelcolumnCountProc* = proc(self: QStandardItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QStandardItemModelhasChildrenProc* = proc(self: QStandardItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QStandardItemModelsiblingProc* = proc(self: QStandardItemModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QStandardItemModeldataProc* = proc(self: QStandardItemModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QStandardItemModelsetDataProc* = proc(self: QStandardItemModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool {.raises: [], gcsafe.}
type QStandardItemModelheaderDataProc* = proc(self: QStandardItemModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QStandardItemModelsetHeaderDataProc* = proc(self: QStandardItemModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool {.raises: [], gcsafe.}
type QStandardItemModelinsertRowsProc* = proc(self: QStandardItemModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QStandardItemModelinsertColumnsProc* = proc(self: QStandardItemModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QStandardItemModelremoveRowsProc* = proc(self: QStandardItemModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QStandardItemModelremoveColumnsProc* = proc(self: QStandardItemModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QStandardItemModelflagsProc* = proc(self: QStandardItemModel, index: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QStandardItemModelsupportedDropActionsProc* = proc(self: QStandardItemModel): cint {.raises: [], gcsafe.}
type QStandardItemModelitemDataProc* = proc(self: QStandardItemModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] {.raises: [], gcsafe.}
type QStandardItemModelsetItemDataProc* = proc(self: QStandardItemModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool {.raises: [], gcsafe.}
type QStandardItemModelsortProc* = proc(self: QStandardItemModel, column: cint, order: cint): void {.raises: [], gcsafe.}
type QStandardItemModelmimeTypesProc* = proc(self: QStandardItemModel): seq[string] {.raises: [], gcsafe.}
type QStandardItemModelmimeDataProc* = proc(self: QStandardItemModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData {.raises: [], gcsafe.}
type QStandardItemModeldropMimeDataProc* = proc(self: QStandardItemModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QStandardItemModelcanDropMimeDataProc* = proc(self: QStandardItemModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QStandardItemModelsupportedDragActionsProc* = proc(self: QStandardItemModel): cint {.raises: [], gcsafe.}
type QStandardItemModelmoveRowsProc* = proc(self: QStandardItemModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.raises: [], gcsafe.}
type QStandardItemModelmoveColumnsProc* = proc(self: QStandardItemModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.raises: [], gcsafe.}
type QStandardItemModelfetchMoreProc* = proc(self: QStandardItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QStandardItemModelcanFetchMoreProc* = proc(self: QStandardItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QStandardItemModelbuddyProc* = proc(self: QStandardItemModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QStandardItemModelmatchProc* = proc(self: QStandardItemModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] {.raises: [], gcsafe.}
type QStandardItemModelspanProc* = proc(self: QStandardItemModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QStandardItemModelroleNamesProc* = proc(self: QStandardItemModel): Table[cint,seq[byte]] {.raises: [], gcsafe.}
type QStandardItemModelsubmitProc* = proc(self: QStandardItemModel): bool {.raises: [], gcsafe.}
type QStandardItemModelrevertProc* = proc(self: QStandardItemModel): void {.raises: [], gcsafe.}
type QStandardItemModeleventProc* = proc(self: QStandardItemModel, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QStandardItemModeleventFilterProc* = proc(self: QStandardItemModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QStandardItemModeltimerEventProc* = proc(self: QStandardItemModel, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QStandardItemModelchildEventProc* = proc(self: QStandardItemModel, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QStandardItemModelcustomEventProc* = proc(self: QStandardItemModel, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QStandardItemModelconnectNotifyProc* = proc(self: QStandardItemModel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QStandardItemModeldisconnectNotifyProc* = proc(self: QStandardItemModel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QStandardItemModelVTable* {.inheritable, pure.} = object
  vtbl: cQStandardItemModelVTable
  metaObject*: QStandardItemModelmetaObjectProc
  metacast*: QStandardItemModelmetacastProc
  metacall*: QStandardItemModelmetacallProc
  index*: QStandardItemModelindexProc
  parent*: QStandardItemModelparentProc
  rowCount*: QStandardItemModelrowCountProc
  columnCount*: QStandardItemModelcolumnCountProc
  hasChildren*: QStandardItemModelhasChildrenProc
  sibling*: QStandardItemModelsiblingProc
  data*: QStandardItemModeldataProc
  setData*: QStandardItemModelsetDataProc
  headerData*: QStandardItemModelheaderDataProc
  setHeaderData*: QStandardItemModelsetHeaderDataProc
  insertRows*: QStandardItemModelinsertRowsProc
  insertColumns*: QStandardItemModelinsertColumnsProc
  removeRows*: QStandardItemModelremoveRowsProc
  removeColumns*: QStandardItemModelremoveColumnsProc
  flags*: QStandardItemModelflagsProc
  supportedDropActions*: QStandardItemModelsupportedDropActionsProc
  itemData*: QStandardItemModelitemDataProc
  setItemData*: QStandardItemModelsetItemDataProc
  sort*: QStandardItemModelsortProc
  mimeTypes*: QStandardItemModelmimeTypesProc
  mimeData*: QStandardItemModelmimeDataProc
  dropMimeData*: QStandardItemModeldropMimeDataProc
  canDropMimeData*: QStandardItemModelcanDropMimeDataProc
  supportedDragActions*: QStandardItemModelsupportedDragActionsProc
  moveRows*: QStandardItemModelmoveRowsProc
  moveColumns*: QStandardItemModelmoveColumnsProc
  fetchMore*: QStandardItemModelfetchMoreProc
  canFetchMore*: QStandardItemModelcanFetchMoreProc
  buddy*: QStandardItemModelbuddyProc
  match*: QStandardItemModelmatchProc
  span*: QStandardItemModelspanProc
  roleNames*: QStandardItemModelroleNamesProc
  submit*: QStandardItemModelsubmitProc
  revert*: QStandardItemModelrevertProc
  event*: QStandardItemModeleventProc
  eventFilter*: QStandardItemModeleventFilterProc
  timerEvent*: QStandardItemModeltimerEventProc
  childEvent*: QStandardItemModelchildEventProc
  customEvent*: QStandardItemModelcustomEventProc
  connectNotify*: QStandardItemModelconnectNotifyProc
  disconnectNotify*: QStandardItemModeldisconnectNotifyProc

proc QStandardItemModelmetaObject*(self: gen_qstandarditemmodel_types.QStandardItemModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStandardItemModel_virtualbase_metaObject(self.h), owned: false)

proc QStandardItemModelmetacast*(self: gen_qstandarditemmodel_types.QStandardItemModel, param1: cstring): pointer =
  fcQStandardItemModel_virtualbase_metacast(self.h, param1)

proc QStandardItemModelmetacall*(self: gen_qstandarditemmodel_types.QStandardItemModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQStandardItemModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QStandardItemModelindex*(self: gen_qstandarditemmodel_types.QStandardItemModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQStandardItemModel_virtualbase_index(self.h, row, column, parent.h), owned: true)

proc QStandardItemModelparent*(self: gen_qstandarditemmodel_types.QStandardItemModel, child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQStandardItemModel_virtualbase_parent(self.h, child.h), owned: true)

proc QStandardItemModelrowCount*(self: gen_qstandarditemmodel_types.QStandardItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQStandardItemModel_virtualbase_rowCount(self.h, parent.h)

proc QStandardItemModelcolumnCount*(self: gen_qstandarditemmodel_types.QStandardItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQStandardItemModel_virtualbase_columnCount(self.h, parent.h)

proc QStandardItemModelhasChildren*(self: gen_qstandarditemmodel_types.QStandardItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQStandardItemModel_virtualbase_hasChildren(self.h, parent.h)

proc QStandardItemModelsibling*(self: gen_qstandarditemmodel_types.QStandardItemModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQStandardItemModel_virtualbase_sibling(self.h, row, column, idx.h), owned: true)

proc QStandardItemModeldata*(self: gen_qstandarditemmodel_types.QStandardItemModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQStandardItemModel_virtualbase_data(self.h, index.h, role), owned: true)

proc QStandardItemModelsetData*(self: gen_qstandarditemmodel_types.QStandardItemModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQStandardItemModel_virtualbase_setData(self.h, index.h, value.h, role)

proc QStandardItemModelheaderData*(self: gen_qstandarditemmodel_types.QStandardItemModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQStandardItemModel_virtualbase_headerData(self.h, section, cint(orientation), role), owned: true)

proc QStandardItemModelsetHeaderData*(self: gen_qstandarditemmodel_types.QStandardItemModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQStandardItemModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

proc QStandardItemModelinsertRows*(self: gen_qstandarditemmodel_types.QStandardItemModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQStandardItemModel_virtualbase_insertRows(self.h, row, count, parent.h)

proc QStandardItemModelinsertColumns*(self: gen_qstandarditemmodel_types.QStandardItemModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQStandardItemModel_virtualbase_insertColumns(self.h, column, count, parent.h)

proc QStandardItemModelremoveRows*(self: gen_qstandarditemmodel_types.QStandardItemModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQStandardItemModel_virtualbase_removeRows(self.h, row, count, parent.h)

proc QStandardItemModelremoveColumns*(self: gen_qstandarditemmodel_types.QStandardItemModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQStandardItemModel_virtualbase_removeColumns(self.h, column, count, parent.h)

proc QStandardItemModelflags*(self: gen_qstandarditemmodel_types.QStandardItemModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fcQStandardItemModel_virtualbase_flags(self.h, index.h))

proc QStandardItemModelsupportedDropActions*(self: gen_qstandarditemmodel_types.QStandardItemModel): cint =
  cint(fcQStandardItemModel_virtualbase_supportedDropActions(self.h))

proc QStandardItemModelitemData*(self: gen_qstandarditemmodel_types.QStandardItemModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fcQStandardItemModel_virtualbase_itemData(self.h, index.h)
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

proc QStandardItemModelsetItemData*(self: gen_qstandarditemmodel_types.QStandardItemModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool =
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

  fcQStandardItemModel_virtualbase_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

proc QStandardItemModelsort*(self: gen_qstandarditemmodel_types.QStandardItemModel, column: cint, order: cint): void =
  fcQStandardItemModel_virtualbase_sort(self.h, column, cint(order))

proc QStandardItemModelmimeTypes*(self: gen_qstandarditemmodel_types.QStandardItemModel): seq[string] =
  var v_ma = fcQStandardItemModel_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc QStandardItemModelmimeData*(self: gen_qstandarditemmodel_types.QStandardItemModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fcQStandardItemModel_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))), owned: false)

proc QStandardItemModeldropMimeData*(self: gen_qstandarditemmodel_types.QStandardItemModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQStandardItemModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc QStandardItemModelcanDropMimeData*(self: gen_qstandarditemmodel_types.QStandardItemModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQStandardItemModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc QStandardItemModelsupportedDragActions*(self: gen_qstandarditemmodel_types.QStandardItemModel): cint =
  cint(fcQStandardItemModel_virtualbase_supportedDragActions(self.h))

proc QStandardItemModelmoveRows*(self: gen_qstandarditemmodel_types.QStandardItemModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQStandardItemModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

proc QStandardItemModelmoveColumns*(self: gen_qstandarditemmodel_types.QStandardItemModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQStandardItemModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

proc QStandardItemModelfetchMore*(self: gen_qstandarditemmodel_types.QStandardItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQStandardItemModel_virtualbase_fetchMore(self.h, parent.h)

proc QStandardItemModelcanFetchMore*(self: gen_qstandarditemmodel_types.QStandardItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQStandardItemModel_virtualbase_canFetchMore(self.h, parent.h)

proc QStandardItemModelbuddy*(self: gen_qstandarditemmodel_types.QStandardItemModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQStandardItemModel_virtualbase_buddy(self.h, index.h), owned: true)

proc QStandardItemModelmatch*(self: gen_qstandarditemmodel_types.QStandardItemModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQStandardItemModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc QStandardItemModelspan*(self: gen_qstandarditemmodel_types.QStandardItemModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQStandardItemModel_virtualbase_span(self.h, index.h), owned: true)

proc QStandardItemModelroleNames*(self: gen_qstandarditemmodel_types.QStandardItemModel): Table[cint,seq[byte]] =
  var v_mm = fcQStandardItemModel_virtualbase_roleNames(self.h)
  var vx_ret: Table[cint, seq[byte]]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[struct_miqt_string]](v_mm.values)
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

proc QStandardItemModelsubmit*(self: gen_qstandarditemmodel_types.QStandardItemModel): bool =
  fcQStandardItemModel_virtualbase_submit(self.h)

proc QStandardItemModelrevert*(self: gen_qstandarditemmodel_types.QStandardItemModel): void =
  fcQStandardItemModel_virtualbase_revert(self.h)

proc QStandardItemModelevent*(self: gen_qstandarditemmodel_types.QStandardItemModel, event: gen_qcoreevent_types.QEvent): bool =
  fcQStandardItemModel_virtualbase_event(self.h, event.h)

proc QStandardItemModeleventFilter*(self: gen_qstandarditemmodel_types.QStandardItemModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQStandardItemModel_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QStandardItemModeltimerEvent*(self: gen_qstandarditemmodel_types.QStandardItemModel, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQStandardItemModel_virtualbase_timerEvent(self.h, event.h)

proc QStandardItemModelchildEvent*(self: gen_qstandarditemmodel_types.QStandardItemModel, event: gen_qcoreevent_types.QChildEvent): void =
  fcQStandardItemModel_virtualbase_childEvent(self.h, event.h)

proc QStandardItemModelcustomEvent*(self: gen_qstandarditemmodel_types.QStandardItemModel, event: gen_qcoreevent_types.QEvent): void =
  fcQStandardItemModel_virtualbase_customEvent(self.h, event.h)

proc QStandardItemModelconnectNotify*(self: gen_qstandarditemmodel_types.QStandardItemModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQStandardItemModel_virtualbase_connectNotify(self.h, signal.h)

proc QStandardItemModeldisconnectNotify*(self: gen_qstandarditemmodel_types.QStandardItemModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQStandardItemModel_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQStandardItemModel_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStandardItemModelVTable](fcQStandardItemModel_vdata(self))
  let self = QStandardItemModel(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQStandardItemModel_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QStandardItemModelVTable](fcQStandardItemModel_vdata(self))
  let self = QStandardItemModel(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQStandardItemModel_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QStandardItemModelVTable](fcQStandardItemModel_vdata(self))
  let self = QStandardItemModel(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQStandardItemModel_vtable_callback_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStandardItemModelVTable](fcQStandardItemModel_vdata(self))
  let self = QStandardItemModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].index(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQStandardItemModel_vtable_callback_parent(self: pointer, child: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStandardItemModelVTable](fcQStandardItemModel_vdata(self))
  let self = QStandardItemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: child, owned: false)
  var virtualReturn = vtbl[].parent(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQStandardItemModel_vtable_callback_rowCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QStandardItemModelVTable](fcQStandardItemModel_vdata(self))
  let self = QStandardItemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].rowCount(self, slotval1)
  virtualReturn

proc fcQStandardItemModel_vtable_callback_columnCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QStandardItemModelVTable](fcQStandardItemModel_vdata(self))
  let self = QStandardItemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].columnCount(self, slotval1)
  virtualReturn

proc fcQStandardItemModel_vtable_callback_hasChildren(self: pointer, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStandardItemModelVTable](fcQStandardItemModel_vdata(self))
  let self = QStandardItemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].hasChildren(self, slotval1)
  virtualReturn

proc fcQStandardItemModel_vtable_callback_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStandardItemModelVTable](fcQStandardItemModel_vdata(self))
  let self = QStandardItemModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx, owned: false)
  var virtualReturn = vtbl[].sibling(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQStandardItemModel_vtable_callback_data(self: pointer, index: pointer, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QStandardItemModelVTable](fcQStandardItemModel_vdata(self))
  let self = QStandardItemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = role
  var virtualReturn = vtbl[].data(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQStandardItemModel_vtable_callback_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QStandardItemModelVTable](fcQStandardItemModel_vdata(self))
  let self = QStandardItemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval3 = role
  var virtualReturn = vtbl[].setData(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQStandardItemModel_vtable_callback_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QStandardItemModelVTable](fcQStandardItemModel_vdata(self))
  let self = QStandardItemModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = role
  var virtualReturn = vtbl[].headerData(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQStandardItemModel_vtable_callback_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QStandardItemModelVTable](fcQStandardItemModel_vdata(self))
  let self = QStandardItemModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval4 = role
  var virtualReturn = vtbl[].setHeaderData(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc fcQStandardItemModel_vtable_callback_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStandardItemModelVTable](fcQStandardItemModel_vdata(self))
  let self = QStandardItemModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].insertRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQStandardItemModel_vtable_callback_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStandardItemModelVTable](fcQStandardItemModel_vdata(self))
  let self = QStandardItemModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].insertColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQStandardItemModel_vtable_callback_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStandardItemModelVTable](fcQStandardItemModel_vdata(self))
  let self = QStandardItemModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].removeRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQStandardItemModel_vtable_callback_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStandardItemModelVTable](fcQStandardItemModel_vdata(self))
  let self = QStandardItemModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].removeColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQStandardItemModel_vtable_callback_flags(self: pointer, index: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QStandardItemModelVTable](fcQStandardItemModel_vdata(self))
  let self = QStandardItemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].flags(self, slotval1)
  cint(virtualReturn)

proc fcQStandardItemModel_vtable_callback_supportedDropActions(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QStandardItemModelVTable](fcQStandardItemModel_vdata(self))
  let self = QStandardItemModel(h: self)
  var virtualReturn = vtbl[].supportedDropActions(self)
  cint(virtualReturn)

proc fcQStandardItemModel_vtable_callback_itemData(self: pointer, index: pointer): struct_miqt_map {.cdecl.} =
  let vtbl = cast[ptr QStandardItemModelVTable](fcQStandardItemModel_vdata(self))
  let self = QStandardItemModel(h: self)
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

proc fcQStandardItemModel_vtable_callback_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl.} =
  let vtbl = cast[ptr QStandardItemModelVTable](fcQStandardItemModel_vdata(self))
  let self = QStandardItemModel(h: self)
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

proc fcQStandardItemModel_vtable_callback_sort(self: pointer, column: cint, order: cint): void {.cdecl.} =
  let vtbl = cast[ptr QStandardItemModelVTable](fcQStandardItemModel_vdata(self))
  let self = QStandardItemModel(h: self)
  let slotval1 = column
  let slotval2 = cint(order)
  vtbl[].sort(self, slotval1, slotval2)

proc fcQStandardItemModel_vtable_callback_mimeTypes(self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QStandardItemModelVTable](fcQStandardItemModel_vdata(self))
  let self = QStandardItemModel(h: self)
  var virtualReturn = vtbl[].mimeTypes(self)
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_miqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_miqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = cast[cstring](if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil)
    if len(virtualReturn[i]) > 0: copyMem(cast[pointer](virtualReturn_i_copy), addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQStandardItemModel_vtable_callback_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.cdecl.} =
  let vtbl = cast[ptr QStandardItemModelVTable](fcQStandardItemModel_vdata(self))
  let self = QStandardItemModel(h: self)
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

proc fcQStandardItemModel_vtable_callback_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStandardItemModelVTable](fcQStandardItemModel_vdata(self))
  let self = QStandardItemModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].dropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQStandardItemModel_vtable_callback_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStandardItemModelVTable](fcQStandardItemModel_vdata(self))
  let self = QStandardItemModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].canDropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQStandardItemModel_vtable_callback_supportedDragActions(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QStandardItemModelVTable](fcQStandardItemModel_vdata(self))
  let self = QStandardItemModel(h: self)
  var virtualReturn = vtbl[].supportedDragActions(self)
  cint(virtualReturn)

proc fcQStandardItemModel_vtable_callback_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QStandardItemModelVTable](fcQStandardItemModel_vdata(self))
  let self = QStandardItemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceRow
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = vtbl[].moveRows(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQStandardItemModel_vtable_callback_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QStandardItemModelVTable](fcQStandardItemModel_vdata(self))
  let self = QStandardItemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceColumn
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = vtbl[].moveColumns(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQStandardItemModel_vtable_callback_fetchMore(self: pointer, parent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStandardItemModelVTable](fcQStandardItemModel_vdata(self))
  let self = QStandardItemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  vtbl[].fetchMore(self, slotval1)

proc fcQStandardItemModel_vtable_callback_canFetchMore(self: pointer, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStandardItemModelVTable](fcQStandardItemModel_vdata(self))
  let self = QStandardItemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = vtbl[].canFetchMore(self, slotval1)
  virtualReturn

proc fcQStandardItemModel_vtable_callback_buddy(self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStandardItemModelVTable](fcQStandardItemModel_vdata(self))
  let self = QStandardItemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].buddy(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQStandardItemModel_vtable_callback_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QStandardItemModelVTable](fcQStandardItemModel_vdata(self))
  let self = QStandardItemModel(h: self)
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

proc fcQStandardItemModel_vtable_callback_span(self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStandardItemModelVTable](fcQStandardItemModel_vdata(self))
  let self = QStandardItemModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].span(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQStandardItemModel_vtable_callback_roleNames(self: pointer): struct_miqt_map {.cdecl.} =
  let vtbl = cast[ptr QStandardItemModelVTable](fcQStandardItemModel_vdata(self))
  let self = QStandardItemModel(h: self)
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

proc fcQStandardItemModel_vtable_callback_submit(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStandardItemModelVTable](fcQStandardItemModel_vdata(self))
  let self = QStandardItemModel(h: self)
  var virtualReturn = vtbl[].submit(self)
  virtualReturn

proc fcQStandardItemModel_vtable_callback_revert(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStandardItemModelVTable](fcQStandardItemModel_vdata(self))
  let self = QStandardItemModel(h: self)
  vtbl[].revert(self)

proc fcQStandardItemModel_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStandardItemModelVTable](fcQStandardItemModel_vdata(self))
  let self = QStandardItemModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQStandardItemModel_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStandardItemModelVTable](fcQStandardItemModel_vdata(self))
  let self = QStandardItemModel(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQStandardItemModel_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStandardItemModelVTable](fcQStandardItemModel_vdata(self))
  let self = QStandardItemModel(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQStandardItemModel_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStandardItemModelVTable](fcQStandardItemModel_vdata(self))
  let self = QStandardItemModel(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQStandardItemModel_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStandardItemModelVTable](fcQStandardItemModel_vdata(self))
  let self = QStandardItemModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQStandardItemModel_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStandardItemModelVTable](fcQStandardItemModel_vdata(self))
  let self = QStandardItemModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQStandardItemModel_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStandardItemModelVTable](fcQStandardItemModel_vdata(self))
  let self = QStandardItemModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQStandardItemModel* {.inheritable.} = ref object of QStandardItemModel
  vtbl*: cQStandardItemModelVTable

method metaObject*(self: VirtualQStandardItemModel): gen_qobjectdefs_types.QMetaObject {.base.} =
  QStandardItemModelmetaObject(self[])
method metacast*(self: VirtualQStandardItemModel, param1: cstring): pointer {.base.} =
  QStandardItemModelmetacast(self[], param1)
method metacall*(self: VirtualQStandardItemModel, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QStandardItemModelmetacall(self[], param1, param2, param3)
method index*(self: VirtualQStandardItemModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QStandardItemModelindex(self[], row, column, parent)
method parent*(self: VirtualQStandardItemModel, child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QStandardItemModelparent(self[], child)
method rowCount*(self: VirtualQStandardItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  QStandardItemModelrowCount(self[], parent)
method columnCount*(self: VirtualQStandardItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  QStandardItemModelcolumnCount(self[], parent)
method hasChildren*(self: VirtualQStandardItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QStandardItemModelhasChildren(self[], parent)
method sibling*(self: VirtualQStandardItemModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QStandardItemModelsibling(self[], row, column, idx)
method data*(self: VirtualQStandardItemModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant {.base.} =
  QStandardItemModeldata(self[], index, role)
method setData*(self: VirtualQStandardItemModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool {.base.} =
  QStandardItemModelsetData(self[], index, value, role)
method headerData*(self: VirtualQStandardItemModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant {.base.} =
  QStandardItemModelheaderData(self[], section, orientation, role)
method setHeaderData*(self: VirtualQStandardItemModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool {.base.} =
  QStandardItemModelsetHeaderData(self[], section, orientation, value, role)
method insertRows*(self: VirtualQStandardItemModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QStandardItemModelinsertRows(self[], row, count, parent)
method insertColumns*(self: VirtualQStandardItemModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QStandardItemModelinsertColumns(self[], column, count, parent)
method removeRows*(self: VirtualQStandardItemModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QStandardItemModelremoveRows(self[], row, count, parent)
method removeColumns*(self: VirtualQStandardItemModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QStandardItemModelremoveColumns(self[], column, count, parent)
method flags*(self: VirtualQStandardItemModel, index: gen_qabstractitemmodel_types.QModelIndex): cint {.base.} =
  QStandardItemModelflags(self[], index)
method supportedDropActions*(self: VirtualQStandardItemModel): cint {.base.} =
  QStandardItemModelsupportedDropActions(self[])
method itemData*(self: VirtualQStandardItemModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] {.base.} =
  QStandardItemModelitemData(self[], index)
method setItemData*(self: VirtualQStandardItemModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool {.base.} =
  QStandardItemModelsetItemData(self[], index, roles)
method sort*(self: VirtualQStandardItemModel, column: cint, order: cint): void {.base.} =
  QStandardItemModelsort(self[], column, order)
method mimeTypes*(self: VirtualQStandardItemModel): seq[string] {.base.} =
  QStandardItemModelmimeTypes(self[])
method mimeData*(self: VirtualQStandardItemModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData {.base.} =
  QStandardItemModelmimeData(self[], indexes)
method dropMimeData*(self: VirtualQStandardItemModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QStandardItemModeldropMimeData(self[], data, action, row, column, parent)
method canDropMimeData*(self: VirtualQStandardItemModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QStandardItemModelcanDropMimeData(self[], data, action, row, column, parent)
method supportedDragActions*(self: VirtualQStandardItemModel): cint {.base.} =
  QStandardItemModelsupportedDragActions(self[])
method moveRows*(self: VirtualQStandardItemModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.base.} =
  QStandardItemModelmoveRows(self[], sourceParent, sourceRow, count, destinationParent, destinationChild)
method moveColumns*(self: VirtualQStandardItemModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.base.} =
  QStandardItemModelmoveColumns(self[], sourceParent, sourceColumn, count, destinationParent, destinationChild)
method fetchMore*(self: VirtualQStandardItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QStandardItemModelfetchMore(self[], parent)
method canFetchMore*(self: VirtualQStandardItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QStandardItemModelcanFetchMore(self[], parent)
method buddy*(self: VirtualQStandardItemModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QStandardItemModelbuddy(self[], index)
method match*(self: VirtualQStandardItemModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] {.base.} =
  QStandardItemModelmatch(self[], start, role, value, hits, flags)
method span*(self: VirtualQStandardItemModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize {.base.} =
  QStandardItemModelspan(self[], index)
method roleNames*(self: VirtualQStandardItemModel): Table[cint,seq[byte]] {.base.} =
  QStandardItemModelroleNames(self[])
method submit*(self: VirtualQStandardItemModel): bool {.base.} =
  QStandardItemModelsubmit(self[])
method revert*(self: VirtualQStandardItemModel): void {.base.} =
  QStandardItemModelrevert(self[])
method event*(self: VirtualQStandardItemModel, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QStandardItemModelevent(self[], event)
method eventFilter*(self: VirtualQStandardItemModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QStandardItemModeleventFilter(self[], watched, event)
method timerEvent*(self: VirtualQStandardItemModel, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QStandardItemModeltimerEvent(self[], event)
method childEvent*(self: VirtualQStandardItemModel, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QStandardItemModelchildEvent(self[], event)
method customEvent*(self: VirtualQStandardItemModel, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QStandardItemModelcustomEvent(self[], event)
method connectNotify*(self: VirtualQStandardItemModel, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QStandardItemModelconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQStandardItemModel, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QStandardItemModeldisconnectNotify(self[], signal)

proc fcQStandardItemModel_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQStandardItemModel](fcQStandardItemModel_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQStandardItemModel_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQStandardItemModel](fcQStandardItemModel_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQStandardItemModel_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQStandardItemModel](fcQStandardItemModel_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQStandardItemModel_method_callback_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQStandardItemModel](fcQStandardItemModel_vdata(self))
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.index(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQStandardItemModel_method_callback_parent(self: pointer, child: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQStandardItemModel](fcQStandardItemModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: child, owned: false)
  var virtualReturn = inst.parent(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQStandardItemModel_method_callback_rowCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQStandardItemModel](fcQStandardItemModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.rowCount(slotval1)
  virtualReturn

proc fcQStandardItemModel_method_callback_columnCount(self: pointer, parent: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQStandardItemModel](fcQStandardItemModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.columnCount(slotval1)
  virtualReturn

proc fcQStandardItemModel_method_callback_hasChildren(self: pointer, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQStandardItemModel](fcQStandardItemModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.hasChildren(slotval1)
  virtualReturn

proc fcQStandardItemModel_method_callback_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQStandardItemModel](fcQStandardItemModel_vdata(self))
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx, owned: false)
  var virtualReturn = inst.sibling(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQStandardItemModel_method_callback_data(self: pointer, index: pointer, role: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQStandardItemModel](fcQStandardItemModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = role
  var virtualReturn = inst.data(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQStandardItemModel_method_callback_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl.} =
  let inst = cast[VirtualQStandardItemModel](fcQStandardItemModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval3 = role
  var virtualReturn = inst.setData(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQStandardItemModel_method_callback_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQStandardItemModel](fcQStandardItemModel_vdata(self))
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = role
  var virtualReturn = inst.headerData(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQStandardItemModel_method_callback_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl.} =
  let inst = cast[VirtualQStandardItemModel](fcQStandardItemModel_vdata(self))
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = gen_qvariant_types.QVariant(h: value, owned: false)
  let slotval4 = role
  var virtualReturn = inst.setHeaderData(slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc fcQStandardItemModel_method_callback_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQStandardItemModel](fcQStandardItemModel_vdata(self))
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.insertRows(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQStandardItemModel_method_callback_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQStandardItemModel](fcQStandardItemModel_vdata(self))
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.insertColumns(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQStandardItemModel_method_callback_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQStandardItemModel](fcQStandardItemModel_vdata(self))
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.removeRows(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQStandardItemModel_method_callback_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQStandardItemModel](fcQStandardItemModel_vdata(self))
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.removeColumns(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQStandardItemModel_method_callback_flags(self: pointer, index: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQStandardItemModel](fcQStandardItemModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.flags(slotval1)
  cint(virtualReturn)

proc fcQStandardItemModel_method_callback_supportedDropActions(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQStandardItemModel](fcQStandardItemModel_vdata(self))
  var virtualReturn = inst.supportedDropActions()
  cint(virtualReturn)

proc fcQStandardItemModel_method_callback_itemData(self: pointer, index: pointer): struct_miqt_map {.cdecl.} =
  let inst = cast[VirtualQStandardItemModel](fcQStandardItemModel_vdata(self))
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

proc fcQStandardItemModel_method_callback_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl.} =
  let inst = cast[VirtualQStandardItemModel](fcQStandardItemModel_vdata(self))
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

proc fcQStandardItemModel_method_callback_sort(self: pointer, column: cint, order: cint): void {.cdecl.} =
  let inst = cast[VirtualQStandardItemModel](fcQStandardItemModel_vdata(self))
  let slotval1 = column
  let slotval2 = cint(order)
  inst.sort(slotval1, slotval2)

proc fcQStandardItemModel_method_callback_mimeTypes(self: pointer): struct_miqt_array {.cdecl.} =
  let inst = cast[VirtualQStandardItemModel](fcQStandardItemModel_vdata(self))
  var virtualReturn = inst.mimeTypes()
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_miqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_miqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = cast[cstring](if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil)
    if len(virtualReturn[i]) > 0: copyMem(cast[pointer](virtualReturn_i_copy), addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQStandardItemModel_method_callback_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.cdecl.} =
  let inst = cast[VirtualQStandardItemModel](fcQStandardItemModel_vdata(self))
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

proc fcQStandardItemModel_method_callback_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQStandardItemModel](fcQStandardItemModel_vdata(self))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.dropMimeData(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQStandardItemModel_method_callback_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQStandardItemModel](fcQStandardItemModel_vdata(self))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.canDropMimeData(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQStandardItemModel_method_callback_supportedDragActions(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQStandardItemModel](fcQStandardItemModel_vdata(self))
  var virtualReturn = inst.supportedDragActions()
  cint(virtualReturn)

proc fcQStandardItemModel_method_callback_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let inst = cast[VirtualQStandardItemModel](fcQStandardItemModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceRow
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = inst.moveRows(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQStandardItemModel_method_callback_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let inst = cast[VirtualQStandardItemModel](fcQStandardItemModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent, owned: false)
  let slotval2 = sourceColumn
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent, owned: false)
  let slotval5 = destinationChild
  var virtualReturn = inst.moveColumns(slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc fcQStandardItemModel_method_callback_fetchMore(self: pointer, parent: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStandardItemModel](fcQStandardItemModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  inst.fetchMore(slotval1)

proc fcQStandardItemModel_method_callback_canFetchMore(self: pointer, parent: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQStandardItemModel](fcQStandardItemModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  var virtualReturn = inst.canFetchMore(slotval1)
  virtualReturn

proc fcQStandardItemModel_method_callback_buddy(self: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQStandardItemModel](fcQStandardItemModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.buddy(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQStandardItemModel_method_callback_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl.} =
  let inst = cast[VirtualQStandardItemModel](fcQStandardItemModel_vdata(self))
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

proc fcQStandardItemModel_method_callback_span(self: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQStandardItemModel](fcQStandardItemModel_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.span(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQStandardItemModel_method_callback_roleNames(self: pointer): struct_miqt_map {.cdecl.} =
  let inst = cast[VirtualQStandardItemModel](fcQStandardItemModel_vdata(self))
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

proc fcQStandardItemModel_method_callback_submit(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQStandardItemModel](fcQStandardItemModel_vdata(self))
  var virtualReturn = inst.submit()
  virtualReturn

proc fcQStandardItemModel_method_callback_revert(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStandardItemModel](fcQStandardItemModel_vdata(self))
  inst.revert()

proc fcQStandardItemModel_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQStandardItemModel](fcQStandardItemModel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQStandardItemModel_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQStandardItemModel](fcQStandardItemModel_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQStandardItemModel_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStandardItemModel](fcQStandardItemModel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQStandardItemModel_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStandardItemModel](fcQStandardItemModel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQStandardItemModel_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStandardItemModel](fcQStandardItemModel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQStandardItemModel_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStandardItemModel](fcQStandardItemModel_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQStandardItemModel_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStandardItemModel](fcQStandardItemModel_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc resetInternalData*(self: gen_qstandarditemmodel_types.QStandardItemModel): void =
  fcQStandardItemModel_protectedbase_resetInternalData(self.h)

proc createIndex*(self: gen_qstandarditemmodel_types.QStandardItemModel, row: cint, column: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQStandardItemModel_protectedbase_createIndex(self.h, row, column), owned: true)

proc encodeData*(self: gen_qstandarditemmodel_types.QStandardItemModel, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex], stream: gen_qdatastream_types.QDataStream): void =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  fcQStandardItemModel_protectedbase_encodeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0])), stream.h)

proc decodeData*(self: gen_qstandarditemmodel_types.QStandardItemModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex, stream: gen_qdatastream_types.QDataStream): bool =
  fcQStandardItemModel_protectedbase_decodeData(self.h, row, column, parent.h, stream.h)

proc beginInsertRows*(self: gen_qstandarditemmodel_types.QStandardItemModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQStandardItemModel_protectedbase_beginInsertRows(self.h, parent.h, first, last)

proc endInsertRows*(self: gen_qstandarditemmodel_types.QStandardItemModel): void =
  fcQStandardItemModel_protectedbase_endInsertRows(self.h)

proc beginRemoveRows*(self: gen_qstandarditemmodel_types.QStandardItemModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQStandardItemModel_protectedbase_beginRemoveRows(self.h, parent.h, first, last)

proc endRemoveRows*(self: gen_qstandarditemmodel_types.QStandardItemModel): void =
  fcQStandardItemModel_protectedbase_endRemoveRows(self.h)

proc beginMoveRows*(self: gen_qstandarditemmodel_types.QStandardItemModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationRow: cint): bool =
  fcQStandardItemModel_protectedbase_beginMoveRows(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationRow)

proc endMoveRows*(self: gen_qstandarditemmodel_types.QStandardItemModel): void =
  fcQStandardItemModel_protectedbase_endMoveRows(self.h)

proc beginInsertColumns*(self: gen_qstandarditemmodel_types.QStandardItemModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQStandardItemModel_protectedbase_beginInsertColumns(self.h, parent.h, first, last)

proc endInsertColumns*(self: gen_qstandarditemmodel_types.QStandardItemModel): void =
  fcQStandardItemModel_protectedbase_endInsertColumns(self.h)

proc beginRemoveColumns*(self: gen_qstandarditemmodel_types.QStandardItemModel, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQStandardItemModel_protectedbase_beginRemoveColumns(self.h, parent.h, first, last)

proc endRemoveColumns*(self: gen_qstandarditemmodel_types.QStandardItemModel): void =
  fcQStandardItemModel_protectedbase_endRemoveColumns(self.h)

proc beginMoveColumns*(self: gen_qstandarditemmodel_types.QStandardItemModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceFirst: cint, sourceLast: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationColumn: cint): bool =
  fcQStandardItemModel_protectedbase_beginMoveColumns(self.h, sourceParent.h, sourceFirst, sourceLast, destinationParent.h, destinationColumn)

proc endMoveColumns*(self: gen_qstandarditemmodel_types.QStandardItemModel): void =
  fcQStandardItemModel_protectedbase_endMoveColumns(self.h)

proc beginResetModel*(self: gen_qstandarditemmodel_types.QStandardItemModel): void =
  fcQStandardItemModel_protectedbase_beginResetModel(self.h)

proc endResetModel*(self: gen_qstandarditemmodel_types.QStandardItemModel): void =
  fcQStandardItemModel_protectedbase_endResetModel(self.h)

proc changePersistentIndex*(self: gen_qstandarditemmodel_types.QStandardItemModel, fromVal: gen_qabstractitemmodel_types.QModelIndex, to: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQStandardItemModel_protectedbase_changePersistentIndex(self.h, fromVal.h, to.h)

proc changePersistentIndexList*(self: gen_qstandarditemmodel_types.QStandardItemModel, fromVal: openArray[gen_qabstractitemmodel_types.QModelIndex], to: openArray[gen_qabstractitemmodel_types.QModelIndex]): void =
  var fromVal_CArray = newSeq[pointer](len(fromVal))
  for i in 0..<len(fromVal):
    fromVal_CArray[i] = fromVal[i].h

  var to_CArray = newSeq[pointer](len(to))
  for i in 0..<len(to):
    to_CArray[i] = to[i].h

  fcQStandardItemModel_protectedbase_changePersistentIndexList(self.h, struct_miqt_array(len: csize_t(len(fromVal)), data: if len(fromVal) == 0: nil else: addr(fromVal_CArray[0])), struct_miqt_array(len: csize_t(len(to)), data: if len(to) == 0: nil else: addr(to_CArray[0])))

proc persistentIndexList*(self: gen_qstandarditemmodel_types.QStandardItemModel): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQStandardItemModel_protectedbase_persistentIndexList(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc sender*(self: gen_qstandarditemmodel_types.QStandardItemModel): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQStandardItemModel_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qstandarditemmodel_types.QStandardItemModel): cint =
  fcQStandardItemModel_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qstandarditemmodel_types.QStandardItemModel, signal: cstring): cint =
  fcQStandardItemModel_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qstandarditemmodel_types.QStandardItemModel, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQStandardItemModel_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qstandarditemmodel_types.QStandardItemModel,
    vtbl: ref QStandardItemModelVTable = nil): gen_qstandarditemmodel_types.QStandardItemModel =
  let vtbl = if vtbl == nil: new QStandardItemModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QStandardItemModelVTable](fcQStandardItemModel_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQStandardItemModel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQStandardItemModel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQStandardItemModel_vtable_callback_metacall
  if not isNil(vtbl[].index):
    vtbl[].vtbl.index = fcQStandardItemModel_vtable_callback_index
  if not isNil(vtbl[].parent):
    vtbl[].vtbl.parent = fcQStandardItemModel_vtable_callback_parent
  if not isNil(vtbl[].rowCount):
    vtbl[].vtbl.rowCount = fcQStandardItemModel_vtable_callback_rowCount
  if not isNil(vtbl[].columnCount):
    vtbl[].vtbl.columnCount = fcQStandardItemModel_vtable_callback_columnCount
  if not isNil(vtbl[].hasChildren):
    vtbl[].vtbl.hasChildren = fcQStandardItemModel_vtable_callback_hasChildren
  if not isNil(vtbl[].sibling):
    vtbl[].vtbl.sibling = fcQStandardItemModel_vtable_callback_sibling
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = fcQStandardItemModel_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = fcQStandardItemModel_vtable_callback_setData
  if not isNil(vtbl[].headerData):
    vtbl[].vtbl.headerData = fcQStandardItemModel_vtable_callback_headerData
  if not isNil(vtbl[].setHeaderData):
    vtbl[].vtbl.setHeaderData = fcQStandardItemModel_vtable_callback_setHeaderData
  if not isNil(vtbl[].insertRows):
    vtbl[].vtbl.insertRows = fcQStandardItemModel_vtable_callback_insertRows
  if not isNil(vtbl[].insertColumns):
    vtbl[].vtbl.insertColumns = fcQStandardItemModel_vtable_callback_insertColumns
  if not isNil(vtbl[].removeRows):
    vtbl[].vtbl.removeRows = fcQStandardItemModel_vtable_callback_removeRows
  if not isNil(vtbl[].removeColumns):
    vtbl[].vtbl.removeColumns = fcQStandardItemModel_vtable_callback_removeColumns
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = fcQStandardItemModel_vtable_callback_flags
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = fcQStandardItemModel_vtable_callback_supportedDropActions
  if not isNil(vtbl[].itemData):
    vtbl[].vtbl.itemData = fcQStandardItemModel_vtable_callback_itemData
  if not isNil(vtbl[].setItemData):
    vtbl[].vtbl.setItemData = fcQStandardItemModel_vtable_callback_setItemData
  if not isNil(vtbl[].sort):
    vtbl[].vtbl.sort = fcQStandardItemModel_vtable_callback_sort
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = fcQStandardItemModel_vtable_callback_mimeTypes
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = fcQStandardItemModel_vtable_callback_mimeData
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = fcQStandardItemModel_vtable_callback_dropMimeData
  if not isNil(vtbl[].canDropMimeData):
    vtbl[].vtbl.canDropMimeData = fcQStandardItemModel_vtable_callback_canDropMimeData
  if not isNil(vtbl[].supportedDragActions):
    vtbl[].vtbl.supportedDragActions = fcQStandardItemModel_vtable_callback_supportedDragActions
  if not isNil(vtbl[].moveRows):
    vtbl[].vtbl.moveRows = fcQStandardItemModel_vtable_callback_moveRows
  if not isNil(vtbl[].moveColumns):
    vtbl[].vtbl.moveColumns = fcQStandardItemModel_vtable_callback_moveColumns
  if not isNil(vtbl[].fetchMore):
    vtbl[].vtbl.fetchMore = fcQStandardItemModel_vtable_callback_fetchMore
  if not isNil(vtbl[].canFetchMore):
    vtbl[].vtbl.canFetchMore = fcQStandardItemModel_vtable_callback_canFetchMore
  if not isNil(vtbl[].buddy):
    vtbl[].vtbl.buddy = fcQStandardItemModel_vtable_callback_buddy
  if not isNil(vtbl[].match):
    vtbl[].vtbl.match = fcQStandardItemModel_vtable_callback_match
  if not isNil(vtbl[].span):
    vtbl[].vtbl.span = fcQStandardItemModel_vtable_callback_span
  if not isNil(vtbl[].roleNames):
    vtbl[].vtbl.roleNames = fcQStandardItemModel_vtable_callback_roleNames
  if not isNil(vtbl[].submit):
    vtbl[].vtbl.submit = fcQStandardItemModel_vtable_callback_submit
  if not isNil(vtbl[].revert):
    vtbl[].vtbl.revert = fcQStandardItemModel_vtable_callback_revert
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQStandardItemModel_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQStandardItemModel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQStandardItemModel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQStandardItemModel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQStandardItemModel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQStandardItemModel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQStandardItemModel_vtable_callback_disconnectNotify
  gen_qstandarditemmodel_types.QStandardItemModel(h: fcQStandardItemModel_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qstandarditemmodel_types.QStandardItemModel,
    rows: cint, columns: cint,
    vtbl: ref QStandardItemModelVTable = nil): gen_qstandarditemmodel_types.QStandardItemModel =
  let vtbl = if vtbl == nil: new QStandardItemModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QStandardItemModelVTable](fcQStandardItemModel_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQStandardItemModel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQStandardItemModel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQStandardItemModel_vtable_callback_metacall
  if not isNil(vtbl[].index):
    vtbl[].vtbl.index = fcQStandardItemModel_vtable_callback_index
  if not isNil(vtbl[].parent):
    vtbl[].vtbl.parent = fcQStandardItemModel_vtable_callback_parent
  if not isNil(vtbl[].rowCount):
    vtbl[].vtbl.rowCount = fcQStandardItemModel_vtable_callback_rowCount
  if not isNil(vtbl[].columnCount):
    vtbl[].vtbl.columnCount = fcQStandardItemModel_vtable_callback_columnCount
  if not isNil(vtbl[].hasChildren):
    vtbl[].vtbl.hasChildren = fcQStandardItemModel_vtable_callback_hasChildren
  if not isNil(vtbl[].sibling):
    vtbl[].vtbl.sibling = fcQStandardItemModel_vtable_callback_sibling
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = fcQStandardItemModel_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = fcQStandardItemModel_vtable_callback_setData
  if not isNil(vtbl[].headerData):
    vtbl[].vtbl.headerData = fcQStandardItemModel_vtable_callback_headerData
  if not isNil(vtbl[].setHeaderData):
    vtbl[].vtbl.setHeaderData = fcQStandardItemModel_vtable_callback_setHeaderData
  if not isNil(vtbl[].insertRows):
    vtbl[].vtbl.insertRows = fcQStandardItemModel_vtable_callback_insertRows
  if not isNil(vtbl[].insertColumns):
    vtbl[].vtbl.insertColumns = fcQStandardItemModel_vtable_callback_insertColumns
  if not isNil(vtbl[].removeRows):
    vtbl[].vtbl.removeRows = fcQStandardItemModel_vtable_callback_removeRows
  if not isNil(vtbl[].removeColumns):
    vtbl[].vtbl.removeColumns = fcQStandardItemModel_vtable_callback_removeColumns
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = fcQStandardItemModel_vtable_callback_flags
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = fcQStandardItemModel_vtable_callback_supportedDropActions
  if not isNil(vtbl[].itemData):
    vtbl[].vtbl.itemData = fcQStandardItemModel_vtable_callback_itemData
  if not isNil(vtbl[].setItemData):
    vtbl[].vtbl.setItemData = fcQStandardItemModel_vtable_callback_setItemData
  if not isNil(vtbl[].sort):
    vtbl[].vtbl.sort = fcQStandardItemModel_vtable_callback_sort
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = fcQStandardItemModel_vtable_callback_mimeTypes
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = fcQStandardItemModel_vtable_callback_mimeData
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = fcQStandardItemModel_vtable_callback_dropMimeData
  if not isNil(vtbl[].canDropMimeData):
    vtbl[].vtbl.canDropMimeData = fcQStandardItemModel_vtable_callback_canDropMimeData
  if not isNil(vtbl[].supportedDragActions):
    vtbl[].vtbl.supportedDragActions = fcQStandardItemModel_vtable_callback_supportedDragActions
  if not isNil(vtbl[].moveRows):
    vtbl[].vtbl.moveRows = fcQStandardItemModel_vtable_callback_moveRows
  if not isNil(vtbl[].moveColumns):
    vtbl[].vtbl.moveColumns = fcQStandardItemModel_vtable_callback_moveColumns
  if not isNil(vtbl[].fetchMore):
    vtbl[].vtbl.fetchMore = fcQStandardItemModel_vtable_callback_fetchMore
  if not isNil(vtbl[].canFetchMore):
    vtbl[].vtbl.canFetchMore = fcQStandardItemModel_vtable_callback_canFetchMore
  if not isNil(vtbl[].buddy):
    vtbl[].vtbl.buddy = fcQStandardItemModel_vtable_callback_buddy
  if not isNil(vtbl[].match):
    vtbl[].vtbl.match = fcQStandardItemModel_vtable_callback_match
  if not isNil(vtbl[].span):
    vtbl[].vtbl.span = fcQStandardItemModel_vtable_callback_span
  if not isNil(vtbl[].roleNames):
    vtbl[].vtbl.roleNames = fcQStandardItemModel_vtable_callback_roleNames
  if not isNil(vtbl[].submit):
    vtbl[].vtbl.submit = fcQStandardItemModel_vtable_callback_submit
  if not isNil(vtbl[].revert):
    vtbl[].vtbl.revert = fcQStandardItemModel_vtable_callback_revert
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQStandardItemModel_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQStandardItemModel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQStandardItemModel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQStandardItemModel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQStandardItemModel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQStandardItemModel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQStandardItemModel_vtable_callback_disconnectNotify
  gen_qstandarditemmodel_types.QStandardItemModel(h: fcQStandardItemModel_new2(addr(vtbl[].vtbl), addr(vtbl[]), rows, columns), owned: true)

proc create*(T: type gen_qstandarditemmodel_types.QStandardItemModel,
    parent: gen_qobject_types.QObject,
    vtbl: ref QStandardItemModelVTable = nil): gen_qstandarditemmodel_types.QStandardItemModel =
  let vtbl = if vtbl == nil: new QStandardItemModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QStandardItemModelVTable](fcQStandardItemModel_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQStandardItemModel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQStandardItemModel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQStandardItemModel_vtable_callback_metacall
  if not isNil(vtbl[].index):
    vtbl[].vtbl.index = fcQStandardItemModel_vtable_callback_index
  if not isNil(vtbl[].parent):
    vtbl[].vtbl.parent = fcQStandardItemModel_vtable_callback_parent
  if not isNil(vtbl[].rowCount):
    vtbl[].vtbl.rowCount = fcQStandardItemModel_vtable_callback_rowCount
  if not isNil(vtbl[].columnCount):
    vtbl[].vtbl.columnCount = fcQStandardItemModel_vtable_callback_columnCount
  if not isNil(vtbl[].hasChildren):
    vtbl[].vtbl.hasChildren = fcQStandardItemModel_vtable_callback_hasChildren
  if not isNil(vtbl[].sibling):
    vtbl[].vtbl.sibling = fcQStandardItemModel_vtable_callback_sibling
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = fcQStandardItemModel_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = fcQStandardItemModel_vtable_callback_setData
  if not isNil(vtbl[].headerData):
    vtbl[].vtbl.headerData = fcQStandardItemModel_vtable_callback_headerData
  if not isNil(vtbl[].setHeaderData):
    vtbl[].vtbl.setHeaderData = fcQStandardItemModel_vtable_callback_setHeaderData
  if not isNil(vtbl[].insertRows):
    vtbl[].vtbl.insertRows = fcQStandardItemModel_vtable_callback_insertRows
  if not isNil(vtbl[].insertColumns):
    vtbl[].vtbl.insertColumns = fcQStandardItemModel_vtable_callback_insertColumns
  if not isNil(vtbl[].removeRows):
    vtbl[].vtbl.removeRows = fcQStandardItemModel_vtable_callback_removeRows
  if not isNil(vtbl[].removeColumns):
    vtbl[].vtbl.removeColumns = fcQStandardItemModel_vtable_callback_removeColumns
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = fcQStandardItemModel_vtable_callback_flags
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = fcQStandardItemModel_vtable_callback_supportedDropActions
  if not isNil(vtbl[].itemData):
    vtbl[].vtbl.itemData = fcQStandardItemModel_vtable_callback_itemData
  if not isNil(vtbl[].setItemData):
    vtbl[].vtbl.setItemData = fcQStandardItemModel_vtable_callback_setItemData
  if not isNil(vtbl[].sort):
    vtbl[].vtbl.sort = fcQStandardItemModel_vtable_callback_sort
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = fcQStandardItemModel_vtable_callback_mimeTypes
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = fcQStandardItemModel_vtable_callback_mimeData
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = fcQStandardItemModel_vtable_callback_dropMimeData
  if not isNil(vtbl[].canDropMimeData):
    vtbl[].vtbl.canDropMimeData = fcQStandardItemModel_vtable_callback_canDropMimeData
  if not isNil(vtbl[].supportedDragActions):
    vtbl[].vtbl.supportedDragActions = fcQStandardItemModel_vtable_callback_supportedDragActions
  if not isNil(vtbl[].moveRows):
    vtbl[].vtbl.moveRows = fcQStandardItemModel_vtable_callback_moveRows
  if not isNil(vtbl[].moveColumns):
    vtbl[].vtbl.moveColumns = fcQStandardItemModel_vtable_callback_moveColumns
  if not isNil(vtbl[].fetchMore):
    vtbl[].vtbl.fetchMore = fcQStandardItemModel_vtable_callback_fetchMore
  if not isNil(vtbl[].canFetchMore):
    vtbl[].vtbl.canFetchMore = fcQStandardItemModel_vtable_callback_canFetchMore
  if not isNil(vtbl[].buddy):
    vtbl[].vtbl.buddy = fcQStandardItemModel_vtable_callback_buddy
  if not isNil(vtbl[].match):
    vtbl[].vtbl.match = fcQStandardItemModel_vtable_callback_match
  if not isNil(vtbl[].span):
    vtbl[].vtbl.span = fcQStandardItemModel_vtable_callback_span
  if not isNil(vtbl[].roleNames):
    vtbl[].vtbl.roleNames = fcQStandardItemModel_vtable_callback_roleNames
  if not isNil(vtbl[].submit):
    vtbl[].vtbl.submit = fcQStandardItemModel_vtable_callback_submit
  if not isNil(vtbl[].revert):
    vtbl[].vtbl.revert = fcQStandardItemModel_vtable_callback_revert
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQStandardItemModel_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQStandardItemModel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQStandardItemModel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQStandardItemModel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQStandardItemModel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQStandardItemModel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQStandardItemModel_vtable_callback_disconnectNotify
  gen_qstandarditemmodel_types.QStandardItemModel(h: fcQStandardItemModel_new3(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qstandarditemmodel_types.QStandardItemModel,
    rows: cint, columns: cint, parent: gen_qobject_types.QObject,
    vtbl: ref QStandardItemModelVTable = nil): gen_qstandarditemmodel_types.QStandardItemModel =
  let vtbl = if vtbl == nil: new QStandardItemModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QStandardItemModelVTable](fcQStandardItemModel_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQStandardItemModel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQStandardItemModel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQStandardItemModel_vtable_callback_metacall
  if not isNil(vtbl[].index):
    vtbl[].vtbl.index = fcQStandardItemModel_vtable_callback_index
  if not isNil(vtbl[].parent):
    vtbl[].vtbl.parent = fcQStandardItemModel_vtable_callback_parent
  if not isNil(vtbl[].rowCount):
    vtbl[].vtbl.rowCount = fcQStandardItemModel_vtable_callback_rowCount
  if not isNil(vtbl[].columnCount):
    vtbl[].vtbl.columnCount = fcQStandardItemModel_vtable_callback_columnCount
  if not isNil(vtbl[].hasChildren):
    vtbl[].vtbl.hasChildren = fcQStandardItemModel_vtable_callback_hasChildren
  if not isNil(vtbl[].sibling):
    vtbl[].vtbl.sibling = fcQStandardItemModel_vtable_callback_sibling
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = fcQStandardItemModel_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = fcQStandardItemModel_vtable_callback_setData
  if not isNil(vtbl[].headerData):
    vtbl[].vtbl.headerData = fcQStandardItemModel_vtable_callback_headerData
  if not isNil(vtbl[].setHeaderData):
    vtbl[].vtbl.setHeaderData = fcQStandardItemModel_vtable_callback_setHeaderData
  if not isNil(vtbl[].insertRows):
    vtbl[].vtbl.insertRows = fcQStandardItemModel_vtable_callback_insertRows
  if not isNil(vtbl[].insertColumns):
    vtbl[].vtbl.insertColumns = fcQStandardItemModel_vtable_callback_insertColumns
  if not isNil(vtbl[].removeRows):
    vtbl[].vtbl.removeRows = fcQStandardItemModel_vtable_callback_removeRows
  if not isNil(vtbl[].removeColumns):
    vtbl[].vtbl.removeColumns = fcQStandardItemModel_vtable_callback_removeColumns
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = fcQStandardItemModel_vtable_callback_flags
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = fcQStandardItemModel_vtable_callback_supportedDropActions
  if not isNil(vtbl[].itemData):
    vtbl[].vtbl.itemData = fcQStandardItemModel_vtable_callback_itemData
  if not isNil(vtbl[].setItemData):
    vtbl[].vtbl.setItemData = fcQStandardItemModel_vtable_callback_setItemData
  if not isNil(vtbl[].sort):
    vtbl[].vtbl.sort = fcQStandardItemModel_vtable_callback_sort
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = fcQStandardItemModel_vtable_callback_mimeTypes
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = fcQStandardItemModel_vtable_callback_mimeData
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = fcQStandardItemModel_vtable_callback_dropMimeData
  if not isNil(vtbl[].canDropMimeData):
    vtbl[].vtbl.canDropMimeData = fcQStandardItemModel_vtable_callback_canDropMimeData
  if not isNil(vtbl[].supportedDragActions):
    vtbl[].vtbl.supportedDragActions = fcQStandardItemModel_vtable_callback_supportedDragActions
  if not isNil(vtbl[].moveRows):
    vtbl[].vtbl.moveRows = fcQStandardItemModel_vtable_callback_moveRows
  if not isNil(vtbl[].moveColumns):
    vtbl[].vtbl.moveColumns = fcQStandardItemModel_vtable_callback_moveColumns
  if not isNil(vtbl[].fetchMore):
    vtbl[].vtbl.fetchMore = fcQStandardItemModel_vtable_callback_fetchMore
  if not isNil(vtbl[].canFetchMore):
    vtbl[].vtbl.canFetchMore = fcQStandardItemModel_vtable_callback_canFetchMore
  if not isNil(vtbl[].buddy):
    vtbl[].vtbl.buddy = fcQStandardItemModel_vtable_callback_buddy
  if not isNil(vtbl[].match):
    vtbl[].vtbl.match = fcQStandardItemModel_vtable_callback_match
  if not isNil(vtbl[].span):
    vtbl[].vtbl.span = fcQStandardItemModel_vtable_callback_span
  if not isNil(vtbl[].roleNames):
    vtbl[].vtbl.roleNames = fcQStandardItemModel_vtable_callback_roleNames
  if not isNil(vtbl[].submit):
    vtbl[].vtbl.submit = fcQStandardItemModel_vtable_callback_submit
  if not isNil(vtbl[].revert):
    vtbl[].vtbl.revert = fcQStandardItemModel_vtable_callback_revert
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQStandardItemModel_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQStandardItemModel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQStandardItemModel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQStandardItemModel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQStandardItemModel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQStandardItemModel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQStandardItemModel_vtable_callback_disconnectNotify
  gen_qstandarditemmodel_types.QStandardItemModel(h: fcQStandardItemModel_new4(addr(vtbl[].vtbl), addr(vtbl[]), rows, columns, parent.h), owned: true)

const cQStandardItemModel_mvtbl = cQStandardItemModelVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQStandardItemModel()[])](self.fcQStandardItemModel_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQStandardItemModel_method_callback_metaObject,
  metacast: fcQStandardItemModel_method_callback_metacast,
  metacall: fcQStandardItemModel_method_callback_metacall,
  index: fcQStandardItemModel_method_callback_index,
  parent: fcQStandardItemModel_method_callback_parent,
  rowCount: fcQStandardItemModel_method_callback_rowCount,
  columnCount: fcQStandardItemModel_method_callback_columnCount,
  hasChildren: fcQStandardItemModel_method_callback_hasChildren,
  sibling: fcQStandardItemModel_method_callback_sibling,
  data: fcQStandardItemModel_method_callback_data,
  setData: fcQStandardItemModel_method_callback_setData,
  headerData: fcQStandardItemModel_method_callback_headerData,
  setHeaderData: fcQStandardItemModel_method_callback_setHeaderData,
  insertRows: fcQStandardItemModel_method_callback_insertRows,
  insertColumns: fcQStandardItemModel_method_callback_insertColumns,
  removeRows: fcQStandardItemModel_method_callback_removeRows,
  removeColumns: fcQStandardItemModel_method_callback_removeColumns,
  flags: fcQStandardItemModel_method_callback_flags,
  supportedDropActions: fcQStandardItemModel_method_callback_supportedDropActions,
  itemData: fcQStandardItemModel_method_callback_itemData,
  setItemData: fcQStandardItemModel_method_callback_setItemData,
  sort: fcQStandardItemModel_method_callback_sort,
  mimeTypes: fcQStandardItemModel_method_callback_mimeTypes,
  mimeData: fcQStandardItemModel_method_callback_mimeData,
  dropMimeData: fcQStandardItemModel_method_callback_dropMimeData,
  canDropMimeData: fcQStandardItemModel_method_callback_canDropMimeData,
  supportedDragActions: fcQStandardItemModel_method_callback_supportedDragActions,
  moveRows: fcQStandardItemModel_method_callback_moveRows,
  moveColumns: fcQStandardItemModel_method_callback_moveColumns,
  fetchMore: fcQStandardItemModel_method_callback_fetchMore,
  canFetchMore: fcQStandardItemModel_method_callback_canFetchMore,
  buddy: fcQStandardItemModel_method_callback_buddy,
  match: fcQStandardItemModel_method_callback_match,
  span: fcQStandardItemModel_method_callback_span,
  roleNames: fcQStandardItemModel_method_callback_roleNames,
  submit: fcQStandardItemModel_method_callback_submit,
  revert: fcQStandardItemModel_method_callback_revert,
  event: fcQStandardItemModel_method_callback_event,
  eventFilter: fcQStandardItemModel_method_callback_eventFilter,
  timerEvent: fcQStandardItemModel_method_callback_timerEvent,
  childEvent: fcQStandardItemModel_method_callback_childEvent,
  customEvent: fcQStandardItemModel_method_callback_customEvent,
  connectNotify: fcQStandardItemModel_method_callback_connectNotify,
  disconnectNotify: fcQStandardItemModel_method_callback_disconnectNotify,
)
proc create*(T: type gen_qstandarditemmodel_types.QStandardItemModel,
    inst: VirtualQStandardItemModel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQStandardItemModel_new(addr(cQStandardItemModel_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qstandarditemmodel_types.QStandardItemModel,
    rows: cint, columns: cint,
    inst: VirtualQStandardItemModel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQStandardItemModel_new2(addr(cQStandardItemModel_mvtbl), addr(inst[]), rows, columns)
  inst[].owned = true

proc create*(T: type gen_qstandarditemmodel_types.QStandardItemModel,
    parent: gen_qobject_types.QObject,
    inst: VirtualQStandardItemModel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQStandardItemModel_new3(addr(cQStandardItemModel_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qstandarditemmodel_types.QStandardItemModel,
    rows: cint, columns: cint, parent: gen_qobject_types.QObject,
    inst: VirtualQStandardItemModel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQStandardItemModel_new4(addr(cQStandardItemModel_mvtbl), addr(inst[]), rows, columns, parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qstandarditemmodel_types.QStandardItemModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStandardItemModel_staticMetaObject())
