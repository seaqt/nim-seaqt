import ./Qt6Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt6Gui")  & " -fPIC"
{.compile("gen_qstandarditemmodel.cpp", cflags).}


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

proc fcQStandardItem_new(): ptr cQStandardItem {.importc: "QStandardItem_new".}
proc fcQStandardItem_new2(text: struct_miqt_string): ptr cQStandardItem {.importc: "QStandardItem_new2".}
proc fcQStandardItem_new3(icon: pointer, text: struct_miqt_string): ptr cQStandardItem {.importc: "QStandardItem_new3".}
proc fcQStandardItem_new4(rows: cint): ptr cQStandardItem {.importc: "QStandardItem_new4".}
proc fcQStandardItem_new5(rows: cint, columns: cint): ptr cQStandardItem {.importc: "QStandardItem_new5".}
proc fcQStandardItem_data(self: pointer, role: cint): pointer {.importc: "QStandardItem_data".}
proc fcQStandardItem_multiData(self: pointer, roleDataSpan: pointer): void {.importc: "QStandardItem_multiData".}
proc fcQStandardItem_setData(self: pointer, value: pointer, role: cint): void {.importc: "QStandardItem_setData".}
proc fcQStandardItem_clearData(self: pointer, ): void {.importc: "QStandardItem_clearData".}
proc fcQStandardItem_text(self: pointer, ): struct_miqt_string {.importc: "QStandardItem_text".}
proc fcQStandardItem_setText(self: pointer, text: struct_miqt_string): void {.importc: "QStandardItem_setText".}
proc fcQStandardItem_icon(self: pointer, ): pointer {.importc: "QStandardItem_icon".}
proc fcQStandardItem_setIcon(self: pointer, icon: pointer): void {.importc: "QStandardItem_setIcon".}
proc fcQStandardItem_toolTip(self: pointer, ): struct_miqt_string {.importc: "QStandardItem_toolTip".}
proc fcQStandardItem_setToolTip(self: pointer, toolTip: struct_miqt_string): void {.importc: "QStandardItem_setToolTip".}
proc fcQStandardItem_statusTip(self: pointer, ): struct_miqt_string {.importc: "QStandardItem_statusTip".}
proc fcQStandardItem_setStatusTip(self: pointer, statusTip: struct_miqt_string): void {.importc: "QStandardItem_setStatusTip".}
proc fcQStandardItem_whatsThis(self: pointer, ): struct_miqt_string {.importc: "QStandardItem_whatsThis".}
proc fcQStandardItem_setWhatsThis(self: pointer, whatsThis: struct_miqt_string): void {.importc: "QStandardItem_setWhatsThis".}
proc fcQStandardItem_sizeHint(self: pointer, ): pointer {.importc: "QStandardItem_sizeHint".}
proc fcQStandardItem_setSizeHint(self: pointer, sizeHint: pointer): void {.importc: "QStandardItem_setSizeHint".}
proc fcQStandardItem_font(self: pointer, ): pointer {.importc: "QStandardItem_font".}
proc fcQStandardItem_setFont(self: pointer, font: pointer): void {.importc: "QStandardItem_setFont".}
proc fcQStandardItem_textAlignment(self: pointer, ): cint {.importc: "QStandardItem_textAlignment".}
proc fcQStandardItem_setTextAlignment(self: pointer, textAlignment: cint): void {.importc: "QStandardItem_setTextAlignment".}
proc fcQStandardItem_background(self: pointer, ): pointer {.importc: "QStandardItem_background".}
proc fcQStandardItem_setBackground(self: pointer, brush: pointer): void {.importc: "QStandardItem_setBackground".}
proc fcQStandardItem_foreground(self: pointer, ): pointer {.importc: "QStandardItem_foreground".}
proc fcQStandardItem_setForeground(self: pointer, brush: pointer): void {.importc: "QStandardItem_setForeground".}
proc fcQStandardItem_checkState(self: pointer, ): cint {.importc: "QStandardItem_checkState".}
proc fcQStandardItem_setCheckState(self: pointer, checkState: cint): void {.importc: "QStandardItem_setCheckState".}
proc fcQStandardItem_accessibleText(self: pointer, ): struct_miqt_string {.importc: "QStandardItem_accessibleText".}
proc fcQStandardItem_setAccessibleText(self: pointer, accessibleText: struct_miqt_string): void {.importc: "QStandardItem_setAccessibleText".}
proc fcQStandardItem_accessibleDescription(self: pointer, ): struct_miqt_string {.importc: "QStandardItem_accessibleDescription".}
proc fcQStandardItem_setAccessibleDescription(self: pointer, accessibleDescription: struct_miqt_string): void {.importc: "QStandardItem_setAccessibleDescription".}
proc fcQStandardItem_flags(self: pointer, ): cint {.importc: "QStandardItem_flags".}
proc fcQStandardItem_setFlags(self: pointer, flags: cint): void {.importc: "QStandardItem_setFlags".}
proc fcQStandardItem_isEnabled(self: pointer, ): bool {.importc: "QStandardItem_isEnabled".}
proc fcQStandardItem_setEnabled(self: pointer, enabled: bool): void {.importc: "QStandardItem_setEnabled".}
proc fcQStandardItem_isEditable(self: pointer, ): bool {.importc: "QStandardItem_isEditable".}
proc fcQStandardItem_setEditable(self: pointer, editable: bool): void {.importc: "QStandardItem_setEditable".}
proc fcQStandardItem_isSelectable(self: pointer, ): bool {.importc: "QStandardItem_isSelectable".}
proc fcQStandardItem_setSelectable(self: pointer, selectable: bool): void {.importc: "QStandardItem_setSelectable".}
proc fcQStandardItem_isCheckable(self: pointer, ): bool {.importc: "QStandardItem_isCheckable".}
proc fcQStandardItem_setCheckable(self: pointer, checkable: bool): void {.importc: "QStandardItem_setCheckable".}
proc fcQStandardItem_isAutoTristate(self: pointer, ): bool {.importc: "QStandardItem_isAutoTristate".}
proc fcQStandardItem_setAutoTristate(self: pointer, tristate: bool): void {.importc: "QStandardItem_setAutoTristate".}
proc fcQStandardItem_isUserTristate(self: pointer, ): bool {.importc: "QStandardItem_isUserTristate".}
proc fcQStandardItem_setUserTristate(self: pointer, tristate: bool): void {.importc: "QStandardItem_setUserTristate".}
proc fcQStandardItem_isDragEnabled(self: pointer, ): bool {.importc: "QStandardItem_isDragEnabled".}
proc fcQStandardItem_setDragEnabled(self: pointer, dragEnabled: bool): void {.importc: "QStandardItem_setDragEnabled".}
proc fcQStandardItem_isDropEnabled(self: pointer, ): bool {.importc: "QStandardItem_isDropEnabled".}
proc fcQStandardItem_setDropEnabled(self: pointer, dropEnabled: bool): void {.importc: "QStandardItem_setDropEnabled".}
proc fcQStandardItem_parent(self: pointer, ): pointer {.importc: "QStandardItem_parent".}
proc fcQStandardItem_row(self: pointer, ): cint {.importc: "QStandardItem_row".}
proc fcQStandardItem_column(self: pointer, ): cint {.importc: "QStandardItem_column".}
proc fcQStandardItem_index(self: pointer, ): pointer {.importc: "QStandardItem_index".}
proc fcQStandardItem_model(self: pointer, ): pointer {.importc: "QStandardItem_model".}
proc fcQStandardItem_rowCount(self: pointer, ): cint {.importc: "QStandardItem_rowCount".}
proc fcQStandardItem_setRowCount(self: pointer, rows: cint): void {.importc: "QStandardItem_setRowCount".}
proc fcQStandardItem_columnCount(self: pointer, ): cint {.importc: "QStandardItem_columnCount".}
proc fcQStandardItem_setColumnCount(self: pointer, columns: cint): void {.importc: "QStandardItem_setColumnCount".}
proc fcQStandardItem_hasChildren(self: pointer, ): bool {.importc: "QStandardItem_hasChildren".}
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
proc fcQStandardItem_clone(self: pointer, ): pointer {.importc: "QStandardItem_clone".}
proc fcQStandardItem_typeX(self: pointer, ): cint {.importc: "QStandardItem_type".}
proc fcQStandardItem_read(self: pointer, inVal: pointer): void {.importc: "QStandardItem_read".}
proc fcQStandardItem_write(self: pointer, outVal: pointer): void {.importc: "QStandardItem_write".}
proc fcQStandardItem_operatorLesser(self: pointer, other: pointer): bool {.importc: "QStandardItem_operatorLesser".}
proc fcQStandardItem_child2(self: pointer, row: cint, column: cint): pointer {.importc: "QStandardItem_child2".}
proc fcQStandardItem_takeChild2(self: pointer, row: cint, column: cint): pointer {.importc: "QStandardItem_takeChild2".}
proc fcQStandardItem_sortChildren2(self: pointer, column: cint, order: cint): void {.importc: "QStandardItem_sortChildren2".}
proc fQStandardItem_virtualbase_data(self: pointer, role: cint): pointer{.importc: "QStandardItem_virtualbase_data".}
proc fcQStandardItem_override_virtual_data(self: pointer, slot: int) {.importc: "QStandardItem_override_virtual_data".}
proc fQStandardItem_virtualbase_multiData(self: pointer, roleDataSpan: pointer): void{.importc: "QStandardItem_virtualbase_multiData".}
proc fcQStandardItem_override_virtual_multiData(self: pointer, slot: int) {.importc: "QStandardItem_override_virtual_multiData".}
proc fQStandardItem_virtualbase_setData(self: pointer, value: pointer, role: cint): void{.importc: "QStandardItem_virtualbase_setData".}
proc fcQStandardItem_override_virtual_setData(self: pointer, slot: int) {.importc: "QStandardItem_override_virtual_setData".}
proc fQStandardItem_virtualbase_clone(self: pointer, ): pointer{.importc: "QStandardItem_virtualbase_clone".}
proc fcQStandardItem_override_virtual_clone(self: pointer, slot: int) {.importc: "QStandardItem_override_virtual_clone".}
proc fQStandardItem_virtualbase_type(self: pointer, ): cint{.importc: "QStandardItem_virtualbase_type".}
proc fcQStandardItem_override_virtual_typeX(self: pointer, slot: int) {.importc: "QStandardItem_override_virtual_type".}
proc fQStandardItem_virtualbase_read(self: pointer, inVal: pointer): void{.importc: "QStandardItem_virtualbase_read".}
proc fcQStandardItem_override_virtual_read(self: pointer, slot: int) {.importc: "QStandardItem_override_virtual_read".}
proc fQStandardItem_virtualbase_write(self: pointer, outVal: pointer): void{.importc: "QStandardItem_virtualbase_write".}
proc fcQStandardItem_override_virtual_write(self: pointer, slot: int) {.importc: "QStandardItem_override_virtual_write".}
proc fQStandardItem_virtualbase_operatorLesser(self: pointer, other: pointer): bool{.importc: "QStandardItem_virtualbase_operatorLesser".}
proc fcQStandardItem_override_virtual_operatorLesser(self: pointer, slot: int) {.importc: "QStandardItem_override_virtual_operatorLesser".}
proc fcQStandardItem_delete(self: pointer) {.importc: "QStandardItem_delete".}
proc fcQStandardItemModel_new(): ptr cQStandardItemModel {.importc: "QStandardItemModel_new".}
proc fcQStandardItemModel_new2(rows: cint, columns: cint): ptr cQStandardItemModel {.importc: "QStandardItemModel_new2".}
proc fcQStandardItemModel_new3(parent: pointer): ptr cQStandardItemModel {.importc: "QStandardItemModel_new3".}
proc fcQStandardItemModel_new4(rows: cint, columns: cint, parent: pointer): ptr cQStandardItemModel {.importc: "QStandardItemModel_new4".}
proc fcQStandardItemModel_metaObject(self: pointer, ): pointer {.importc: "QStandardItemModel_metaObject".}
proc fcQStandardItemModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QStandardItemModel_metacast".}
proc fcQStandardItemModel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QStandardItemModel_metacall".}
proc fcQStandardItemModel_tr(s: cstring): struct_miqt_string {.importc: "QStandardItemModel_tr".}
proc fcQStandardItemModel_setItemRoleNames(self: pointer, roleNames: struct_miqt_map): void {.importc: "QStandardItemModel_setItemRoleNames".}
proc fcQStandardItemModel_roleNames(self: pointer, ): struct_miqt_map {.importc: "QStandardItemModel_roleNames".}
proc fcQStandardItemModel_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.importc: "QStandardItemModel_index".}
proc fcQStandardItemModel_parent(self: pointer, child: pointer): pointer {.importc: "QStandardItemModel_parent".}
proc fcQStandardItemModel_rowCount(self: pointer, parent: pointer): cint {.importc: "QStandardItemModel_rowCount".}
proc fcQStandardItemModel_columnCount(self: pointer, parent: pointer): cint {.importc: "QStandardItemModel_columnCount".}
proc fcQStandardItemModel_hasChildren(self: pointer, parent: pointer): bool {.importc: "QStandardItemModel_hasChildren".}
proc fcQStandardItemModel_data(self: pointer, index: pointer, role: cint): pointer {.importc: "QStandardItemModel_data".}
proc fcQStandardItemModel_multiData(self: pointer, index: pointer, roleDataSpan: pointer): void {.importc: "QStandardItemModel_multiData".}
proc fcQStandardItemModel_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.importc: "QStandardItemModel_setData".}
proc fcQStandardItemModel_clearItemData(self: pointer, index: pointer): bool {.importc: "QStandardItemModel_clearItemData".}
proc fcQStandardItemModel_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.importc: "QStandardItemModel_headerData".}
proc fcQStandardItemModel_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.importc: "QStandardItemModel_setHeaderData".}
proc fcQStandardItemModel_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QStandardItemModel_insertRows".}
proc fcQStandardItemModel_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QStandardItemModel_insertColumns".}
proc fcQStandardItemModel_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QStandardItemModel_removeRows".}
proc fcQStandardItemModel_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QStandardItemModel_removeColumns".}
proc fcQStandardItemModel_flags(self: pointer, index: pointer): cint {.importc: "QStandardItemModel_flags".}
proc fcQStandardItemModel_supportedDropActions(self: pointer, ): cint {.importc: "QStandardItemModel_supportedDropActions".}
proc fcQStandardItemModel_itemData(self: pointer, index: pointer): struct_miqt_map {.importc: "QStandardItemModel_itemData".}
proc fcQStandardItemModel_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.importc: "QStandardItemModel_setItemData".}
proc fcQStandardItemModel_clear(self: pointer, ): void {.importc: "QStandardItemModel_clear".}
proc fcQStandardItemModel_sort(self: pointer, column: cint, order: cint): void {.importc: "QStandardItemModel_sort".}
proc fcQStandardItemModel_itemFromIndex(self: pointer, index: pointer): pointer {.importc: "QStandardItemModel_itemFromIndex".}
proc fcQStandardItemModel_indexFromItem(self: pointer, item: pointer): pointer {.importc: "QStandardItemModel_indexFromItem".}
proc fcQStandardItemModel_item(self: pointer, row: cint): pointer {.importc: "QStandardItemModel_item".}
proc fcQStandardItemModel_setItem(self: pointer, row: cint, column: cint, item: pointer): void {.importc: "QStandardItemModel_setItem".}
proc fcQStandardItemModel_setItem2(self: pointer, row: cint, item: pointer): void {.importc: "QStandardItemModel_setItem2".}
proc fcQStandardItemModel_invisibleRootItem(self: pointer, ): pointer {.importc: "QStandardItemModel_invisibleRootItem".}
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
proc fcQStandardItemModel_itemPrototype(self: pointer, ): pointer {.importc: "QStandardItemModel_itemPrototype".}
proc fcQStandardItemModel_setItemPrototype(self: pointer, item: pointer): void {.importc: "QStandardItemModel_setItemPrototype".}
proc fcQStandardItemModel_findItems(self: pointer, text: struct_miqt_string): struct_miqt_array {.importc: "QStandardItemModel_findItems".}
proc fcQStandardItemModel_sortRole(self: pointer, ): cint {.importc: "QStandardItemModel_sortRole".}
proc fcQStandardItemModel_setSortRole(self: pointer, role: cint): void {.importc: "QStandardItemModel_setSortRole".}
proc fcQStandardItemModel_mimeTypes(self: pointer, ): struct_miqt_array {.importc: "QStandardItemModel_mimeTypes".}
proc fcQStandardItemModel_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.importc: "QStandardItemModel_mimeData".}
proc fcQStandardItemModel_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QStandardItemModel_dropMimeData".}
proc fcQStandardItemModel_itemChanged(self: pointer, item: pointer): void {.importc: "QStandardItemModel_itemChanged".}
proc fcQStandardItemModel_connect_itemChanged(self: pointer, slot: int) {.importc: "QStandardItemModel_connect_itemChanged".}
proc fcQStandardItemModel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QStandardItemModel_tr2".}
proc fcQStandardItemModel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QStandardItemModel_tr3".}
proc fcQStandardItemModel_item2(self: pointer, row: cint, column: cint): pointer {.importc: "QStandardItemModel_item2".}
proc fcQStandardItemModel_insertRow22(self: pointer, row: cint, parent: pointer): bool {.importc: "QStandardItemModel_insertRow22".}
proc fcQStandardItemModel_insertColumn2(self: pointer, column: cint, parent: pointer): bool {.importc: "QStandardItemModel_insertColumn2".}
proc fcQStandardItemModel_takeItem2(self: pointer, row: cint, column: cint): pointer {.importc: "QStandardItemModel_takeItem2".}
proc fcQStandardItemModel_findItems2(self: pointer, text: struct_miqt_string, flags: cint): struct_miqt_array {.importc: "QStandardItemModel_findItems2".}
proc fcQStandardItemModel_findItems3(self: pointer, text: struct_miqt_string, flags: cint, column: cint): struct_miqt_array {.importc: "QStandardItemModel_findItems3".}
proc fQStandardItemModel_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QStandardItemModel_virtualbase_metaObject".}
proc fcQStandardItemModel_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_metaObject".}
proc fQStandardItemModel_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QStandardItemModel_virtualbase_metacast".}
proc fcQStandardItemModel_override_virtual_metacast(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_metacast".}
proc fQStandardItemModel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QStandardItemModel_virtualbase_metacall".}
proc fcQStandardItemModel_override_virtual_metacall(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_metacall".}
proc fQStandardItemModel_virtualbase_roleNames(self: pointer, ): struct_miqt_map{.importc: "QStandardItemModel_virtualbase_roleNames".}
proc fcQStandardItemModel_override_virtual_roleNames(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_roleNames".}
proc fQStandardItemModel_virtualbase_index(self: pointer, row: cint, column: cint, parent: pointer): pointer{.importc: "QStandardItemModel_virtualbase_index".}
proc fcQStandardItemModel_override_virtual_index(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_index".}
proc fQStandardItemModel_virtualbase_parent(self: pointer, child: pointer): pointer{.importc: "QStandardItemModel_virtualbase_parent".}
proc fcQStandardItemModel_override_virtual_parent(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_parent".}
proc fQStandardItemModel_virtualbase_rowCount(self: pointer, parent: pointer): cint{.importc: "QStandardItemModel_virtualbase_rowCount".}
proc fcQStandardItemModel_override_virtual_rowCount(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_rowCount".}
proc fQStandardItemModel_virtualbase_columnCount(self: pointer, parent: pointer): cint{.importc: "QStandardItemModel_virtualbase_columnCount".}
proc fcQStandardItemModel_override_virtual_columnCount(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_columnCount".}
proc fQStandardItemModel_virtualbase_hasChildren(self: pointer, parent: pointer): bool{.importc: "QStandardItemModel_virtualbase_hasChildren".}
proc fcQStandardItemModel_override_virtual_hasChildren(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_hasChildren".}
proc fQStandardItemModel_virtualbase_data(self: pointer, index: pointer, role: cint): pointer{.importc: "QStandardItemModel_virtualbase_data".}
proc fcQStandardItemModel_override_virtual_data(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_data".}
proc fQStandardItemModel_virtualbase_multiData(self: pointer, index: pointer, roleDataSpan: pointer): void{.importc: "QStandardItemModel_virtualbase_multiData".}
proc fcQStandardItemModel_override_virtual_multiData(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_multiData".}
proc fQStandardItemModel_virtualbase_setData(self: pointer, index: pointer, value: pointer, role: cint): bool{.importc: "QStandardItemModel_virtualbase_setData".}
proc fcQStandardItemModel_override_virtual_setData(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_setData".}
proc fQStandardItemModel_virtualbase_clearItemData(self: pointer, index: pointer): bool{.importc: "QStandardItemModel_virtualbase_clearItemData".}
proc fcQStandardItemModel_override_virtual_clearItemData(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_clearItemData".}
proc fQStandardItemModel_virtualbase_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer{.importc: "QStandardItemModel_virtualbase_headerData".}
proc fcQStandardItemModel_override_virtual_headerData(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_headerData".}
proc fQStandardItemModel_virtualbase_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool{.importc: "QStandardItemModel_virtualbase_setHeaderData".}
proc fcQStandardItemModel_override_virtual_setHeaderData(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_setHeaderData".}
proc fQStandardItemModel_virtualbase_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool{.importc: "QStandardItemModel_virtualbase_insertRows".}
proc fcQStandardItemModel_override_virtual_insertRows(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_insertRows".}
proc fQStandardItemModel_virtualbase_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool{.importc: "QStandardItemModel_virtualbase_insertColumns".}
proc fcQStandardItemModel_override_virtual_insertColumns(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_insertColumns".}
proc fQStandardItemModel_virtualbase_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool{.importc: "QStandardItemModel_virtualbase_removeRows".}
proc fcQStandardItemModel_override_virtual_removeRows(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_removeRows".}
proc fQStandardItemModel_virtualbase_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool{.importc: "QStandardItemModel_virtualbase_removeColumns".}
proc fcQStandardItemModel_override_virtual_removeColumns(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_removeColumns".}
proc fQStandardItemModel_virtualbase_flags(self: pointer, index: pointer): cint{.importc: "QStandardItemModel_virtualbase_flags".}
proc fcQStandardItemModel_override_virtual_flags(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_flags".}
proc fQStandardItemModel_virtualbase_supportedDropActions(self: pointer, ): cint{.importc: "QStandardItemModel_virtualbase_supportedDropActions".}
proc fcQStandardItemModel_override_virtual_supportedDropActions(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_supportedDropActions".}
proc fQStandardItemModel_virtualbase_itemData(self: pointer, index: pointer): struct_miqt_map{.importc: "QStandardItemModel_virtualbase_itemData".}
proc fcQStandardItemModel_override_virtual_itemData(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_itemData".}
proc fQStandardItemModel_virtualbase_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool{.importc: "QStandardItemModel_virtualbase_setItemData".}
proc fcQStandardItemModel_override_virtual_setItemData(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_setItemData".}
proc fQStandardItemModel_virtualbase_sort(self: pointer, column: cint, order: cint): void{.importc: "QStandardItemModel_virtualbase_sort".}
proc fcQStandardItemModel_override_virtual_sort(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_sort".}
proc fQStandardItemModel_virtualbase_mimeTypes(self: pointer, ): struct_miqt_array{.importc: "QStandardItemModel_virtualbase_mimeTypes".}
proc fcQStandardItemModel_override_virtual_mimeTypes(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_mimeTypes".}
proc fQStandardItemModel_virtualbase_mimeData(self: pointer, indexes: struct_miqt_array): pointer{.importc: "QStandardItemModel_virtualbase_mimeData".}
proc fcQStandardItemModel_override_virtual_mimeData(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_mimeData".}
proc fQStandardItemModel_virtualbase_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool{.importc: "QStandardItemModel_virtualbase_dropMimeData".}
proc fcQStandardItemModel_override_virtual_dropMimeData(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_dropMimeData".}
proc fQStandardItemModel_virtualbase_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer{.importc: "QStandardItemModel_virtualbase_sibling".}
proc fcQStandardItemModel_override_virtual_sibling(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_sibling".}
proc fQStandardItemModel_virtualbase_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool{.importc: "QStandardItemModel_virtualbase_canDropMimeData".}
proc fcQStandardItemModel_override_virtual_canDropMimeData(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_canDropMimeData".}
proc fQStandardItemModel_virtualbase_supportedDragActions(self: pointer, ): cint{.importc: "QStandardItemModel_virtualbase_supportedDragActions".}
proc fcQStandardItemModel_override_virtual_supportedDragActions(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_supportedDragActions".}
proc fQStandardItemModel_virtualbase_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool{.importc: "QStandardItemModel_virtualbase_moveRows".}
proc fcQStandardItemModel_override_virtual_moveRows(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_moveRows".}
proc fQStandardItemModel_virtualbase_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool{.importc: "QStandardItemModel_virtualbase_moveColumns".}
proc fcQStandardItemModel_override_virtual_moveColumns(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_moveColumns".}
proc fQStandardItemModel_virtualbase_fetchMore(self: pointer, parent: pointer): void{.importc: "QStandardItemModel_virtualbase_fetchMore".}
proc fcQStandardItemModel_override_virtual_fetchMore(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_fetchMore".}
proc fQStandardItemModel_virtualbase_canFetchMore(self: pointer, parent: pointer): bool{.importc: "QStandardItemModel_virtualbase_canFetchMore".}
proc fcQStandardItemModel_override_virtual_canFetchMore(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_canFetchMore".}
proc fQStandardItemModel_virtualbase_buddy(self: pointer, index: pointer): pointer{.importc: "QStandardItemModel_virtualbase_buddy".}
proc fcQStandardItemModel_override_virtual_buddy(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_buddy".}
proc fQStandardItemModel_virtualbase_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array{.importc: "QStandardItemModel_virtualbase_match".}
proc fcQStandardItemModel_override_virtual_match(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_match".}
proc fQStandardItemModel_virtualbase_span(self: pointer, index: pointer): pointer{.importc: "QStandardItemModel_virtualbase_span".}
proc fcQStandardItemModel_override_virtual_span(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_span".}
proc fQStandardItemModel_virtualbase_submit(self: pointer, ): bool{.importc: "QStandardItemModel_virtualbase_submit".}
proc fcQStandardItemModel_override_virtual_submit(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_submit".}
proc fQStandardItemModel_virtualbase_revert(self: pointer, ): void{.importc: "QStandardItemModel_virtualbase_revert".}
proc fcQStandardItemModel_override_virtual_revert(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_revert".}
proc fQStandardItemModel_virtualbase_resetInternalData(self: pointer, ): void{.importc: "QStandardItemModel_virtualbase_resetInternalData".}
proc fcQStandardItemModel_override_virtual_resetInternalData(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_resetInternalData".}
proc fQStandardItemModel_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QStandardItemModel_virtualbase_event".}
proc fcQStandardItemModel_override_virtual_event(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_event".}
proc fQStandardItemModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QStandardItemModel_virtualbase_eventFilter".}
proc fcQStandardItemModel_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_eventFilter".}
proc fQStandardItemModel_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QStandardItemModel_virtualbase_timerEvent".}
proc fcQStandardItemModel_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_timerEvent".}
proc fQStandardItemModel_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QStandardItemModel_virtualbase_childEvent".}
proc fcQStandardItemModel_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_childEvent".}
proc fQStandardItemModel_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QStandardItemModel_virtualbase_customEvent".}
proc fcQStandardItemModel_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_customEvent".}
proc fQStandardItemModel_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QStandardItemModel_virtualbase_connectNotify".}
proc fcQStandardItemModel_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_connectNotify".}
proc fQStandardItemModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QStandardItemModel_virtualbase_disconnectNotify".}
proc fcQStandardItemModel_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_disconnectNotify".}
proc fcQStandardItemModel_staticMetaObject(): pointer {.importc: "QStandardItemModel_staticMetaObject".}
proc fcQStandardItemModel_delete(self: pointer) {.importc: "QStandardItemModel_delete".}


func init*(T: type gen_qstandarditemmodel_types.QStandardItem, h: ptr cQStandardItem): gen_qstandarditemmodel_types.QStandardItem =
  T(h: h)
proc create*(T: type gen_qstandarditemmodel_types.QStandardItem, ): gen_qstandarditemmodel_types.QStandardItem =
  gen_qstandarditemmodel_types.QStandardItem.init(fcQStandardItem_new())

proc create*(T: type gen_qstandarditemmodel_types.QStandardItem, text: string): gen_qstandarditemmodel_types.QStandardItem =
  gen_qstandarditemmodel_types.QStandardItem.init(fcQStandardItem_new2(struct_miqt_string(data: text, len: csize_t(len(text)))))

proc create*(T: type gen_qstandarditemmodel_types.QStandardItem, icon: gen_qicon_types.QIcon, text: string): gen_qstandarditemmodel_types.QStandardItem =
  gen_qstandarditemmodel_types.QStandardItem.init(fcQStandardItem_new3(icon.h, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc create*(T: type gen_qstandarditemmodel_types.QStandardItem, rows: cint): gen_qstandarditemmodel_types.QStandardItem =
  gen_qstandarditemmodel_types.QStandardItem.init(fcQStandardItem_new4(rows))

proc create*(T: type gen_qstandarditemmodel_types.QStandardItem, rows: cint, columns: cint): gen_qstandarditemmodel_types.QStandardItem =
  gen_qstandarditemmodel_types.QStandardItem.init(fcQStandardItem_new5(rows, columns))

proc data*(self: gen_qstandarditemmodel_types.QStandardItem, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQStandardItem_data(self.h, role))

proc multiData*(self: gen_qstandarditemmodel_types.QStandardItem, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void =
  fcQStandardItem_multiData(self.h, roleDataSpan.h)

proc setData*(self: gen_qstandarditemmodel_types.QStandardItem, value: gen_qvariant_types.QVariant, role: cint): void =
  fcQStandardItem_setData(self.h, value.h, role)

proc clearData*(self: gen_qstandarditemmodel_types.QStandardItem, ): void =
  fcQStandardItem_clearData(self.h)

proc text*(self: gen_qstandarditemmodel_types.QStandardItem, ): string =
  let v_ms = fcQStandardItem_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setText*(self: gen_qstandarditemmodel_types.QStandardItem, text: string): void =
  fcQStandardItem_setText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc icon*(self: gen_qstandarditemmodel_types.QStandardItem, ): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQStandardItem_icon(self.h))

proc setIcon*(self: gen_qstandarditemmodel_types.QStandardItem, icon: gen_qicon_types.QIcon): void =
  fcQStandardItem_setIcon(self.h, icon.h)

proc toolTip*(self: gen_qstandarditemmodel_types.QStandardItem, ): string =
  let v_ms = fcQStandardItem_toolTip(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setToolTip*(self: gen_qstandarditemmodel_types.QStandardItem, toolTip: string): void =
  fcQStandardItem_setToolTip(self.h, struct_miqt_string(data: toolTip, len: csize_t(len(toolTip))))

proc statusTip*(self: gen_qstandarditemmodel_types.QStandardItem, ): string =
  let v_ms = fcQStandardItem_statusTip(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setStatusTip*(self: gen_qstandarditemmodel_types.QStandardItem, statusTip: string): void =
  fcQStandardItem_setStatusTip(self.h, struct_miqt_string(data: statusTip, len: csize_t(len(statusTip))))

proc whatsThis*(self: gen_qstandarditemmodel_types.QStandardItem, ): string =
  let v_ms = fcQStandardItem_whatsThis(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setWhatsThis*(self: gen_qstandarditemmodel_types.QStandardItem, whatsThis: string): void =
  fcQStandardItem_setWhatsThis(self.h, struct_miqt_string(data: whatsThis, len: csize_t(len(whatsThis))))

proc sizeHint*(self: gen_qstandarditemmodel_types.QStandardItem, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQStandardItem_sizeHint(self.h))

proc setSizeHint*(self: gen_qstandarditemmodel_types.QStandardItem, sizeHint: gen_qsize_types.QSize): void =
  fcQStandardItem_setSizeHint(self.h, sizeHint.h)

proc font*(self: gen_qstandarditemmodel_types.QStandardItem, ): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQStandardItem_font(self.h))

proc setFont*(self: gen_qstandarditemmodel_types.QStandardItem, font: gen_qfont_types.QFont): void =
  fcQStandardItem_setFont(self.h, font.h)

proc textAlignment*(self: gen_qstandarditemmodel_types.QStandardItem, ): cint =
  cint(fcQStandardItem_textAlignment(self.h))

proc setTextAlignment*(self: gen_qstandarditemmodel_types.QStandardItem, textAlignment: cint): void =
  fcQStandardItem_setTextAlignment(self.h, cint(textAlignment))

proc background*(self: gen_qstandarditemmodel_types.QStandardItem, ): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQStandardItem_background(self.h))

proc setBackground*(self: gen_qstandarditemmodel_types.QStandardItem, brush: gen_qbrush_types.QBrush): void =
  fcQStandardItem_setBackground(self.h, brush.h)

proc foreground*(self: gen_qstandarditemmodel_types.QStandardItem, ): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQStandardItem_foreground(self.h))

proc setForeground*(self: gen_qstandarditemmodel_types.QStandardItem, brush: gen_qbrush_types.QBrush): void =
  fcQStandardItem_setForeground(self.h, brush.h)

proc checkState*(self: gen_qstandarditemmodel_types.QStandardItem, ): cint =
  cint(fcQStandardItem_checkState(self.h))

proc setCheckState*(self: gen_qstandarditemmodel_types.QStandardItem, checkState: cint): void =
  fcQStandardItem_setCheckState(self.h, cint(checkState))

proc accessibleText*(self: gen_qstandarditemmodel_types.QStandardItem, ): string =
  let v_ms = fcQStandardItem_accessibleText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setAccessibleText*(self: gen_qstandarditemmodel_types.QStandardItem, accessibleText: string): void =
  fcQStandardItem_setAccessibleText(self.h, struct_miqt_string(data: accessibleText, len: csize_t(len(accessibleText))))

proc accessibleDescription*(self: gen_qstandarditemmodel_types.QStandardItem, ): string =
  let v_ms = fcQStandardItem_accessibleDescription(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setAccessibleDescription*(self: gen_qstandarditemmodel_types.QStandardItem, accessibleDescription: string): void =
  fcQStandardItem_setAccessibleDescription(self.h, struct_miqt_string(data: accessibleDescription, len: csize_t(len(accessibleDescription))))

proc flags*(self: gen_qstandarditemmodel_types.QStandardItem, ): cint =
  cint(fcQStandardItem_flags(self.h))

proc setFlags*(self: gen_qstandarditemmodel_types.QStandardItem, flags: cint): void =
  fcQStandardItem_setFlags(self.h, cint(flags))

proc isEnabled*(self: gen_qstandarditemmodel_types.QStandardItem, ): bool =
  fcQStandardItem_isEnabled(self.h)

proc setEnabled*(self: gen_qstandarditemmodel_types.QStandardItem, enabled: bool): void =
  fcQStandardItem_setEnabled(self.h, enabled)

proc isEditable*(self: gen_qstandarditemmodel_types.QStandardItem, ): bool =
  fcQStandardItem_isEditable(self.h)

proc setEditable*(self: gen_qstandarditemmodel_types.QStandardItem, editable: bool): void =
  fcQStandardItem_setEditable(self.h, editable)

proc isSelectable*(self: gen_qstandarditemmodel_types.QStandardItem, ): bool =
  fcQStandardItem_isSelectable(self.h)

proc setSelectable*(self: gen_qstandarditemmodel_types.QStandardItem, selectable: bool): void =
  fcQStandardItem_setSelectable(self.h, selectable)

proc isCheckable*(self: gen_qstandarditemmodel_types.QStandardItem, ): bool =
  fcQStandardItem_isCheckable(self.h)

proc setCheckable*(self: gen_qstandarditemmodel_types.QStandardItem, checkable: bool): void =
  fcQStandardItem_setCheckable(self.h, checkable)

proc isAutoTristate*(self: gen_qstandarditemmodel_types.QStandardItem, ): bool =
  fcQStandardItem_isAutoTristate(self.h)

proc setAutoTristate*(self: gen_qstandarditemmodel_types.QStandardItem, tristate: bool): void =
  fcQStandardItem_setAutoTristate(self.h, tristate)

proc isUserTristate*(self: gen_qstandarditemmodel_types.QStandardItem, ): bool =
  fcQStandardItem_isUserTristate(self.h)

proc setUserTristate*(self: gen_qstandarditemmodel_types.QStandardItem, tristate: bool): void =
  fcQStandardItem_setUserTristate(self.h, tristate)

proc isDragEnabled*(self: gen_qstandarditemmodel_types.QStandardItem, ): bool =
  fcQStandardItem_isDragEnabled(self.h)

proc setDragEnabled*(self: gen_qstandarditemmodel_types.QStandardItem, dragEnabled: bool): void =
  fcQStandardItem_setDragEnabled(self.h, dragEnabled)

proc isDropEnabled*(self: gen_qstandarditemmodel_types.QStandardItem, ): bool =
  fcQStandardItem_isDropEnabled(self.h)

proc setDropEnabled*(self: gen_qstandarditemmodel_types.QStandardItem, dropEnabled: bool): void =
  fcQStandardItem_setDropEnabled(self.h, dropEnabled)

proc parent*(self: gen_qstandarditemmodel_types.QStandardItem, ): gen_qstandarditemmodel_types.QStandardItem =
  gen_qstandarditemmodel_types.QStandardItem(h: fcQStandardItem_parent(self.h))

proc row*(self: gen_qstandarditemmodel_types.QStandardItem, ): cint =
  fcQStandardItem_row(self.h)

proc column*(self: gen_qstandarditemmodel_types.QStandardItem, ): cint =
  fcQStandardItem_column(self.h)

proc index*(self: gen_qstandarditemmodel_types.QStandardItem, ): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQStandardItem_index(self.h))

proc model*(self: gen_qstandarditemmodel_types.QStandardItem, ): gen_qstandarditemmodel_types.QStandardItemModel =
  gen_qstandarditemmodel_types.QStandardItemModel(h: fcQStandardItem_model(self.h))

proc rowCount*(self: gen_qstandarditemmodel_types.QStandardItem, ): cint =
  fcQStandardItem_rowCount(self.h)

proc setRowCount*(self: gen_qstandarditemmodel_types.QStandardItem, rows: cint): void =
  fcQStandardItem_setRowCount(self.h, rows)

proc columnCount*(self: gen_qstandarditemmodel_types.QStandardItem, ): cint =
  fcQStandardItem_columnCount(self.h)

proc setColumnCount*(self: gen_qstandarditemmodel_types.QStandardItem, columns: cint): void =
  fcQStandardItem_setColumnCount(self.h, columns)

proc hasChildren*(self: gen_qstandarditemmodel_types.QStandardItem, ): bool =
  fcQStandardItem_hasChildren(self.h)

proc child*(self: gen_qstandarditemmodel_types.QStandardItem, row: cint): gen_qstandarditemmodel_types.QStandardItem =
  gen_qstandarditemmodel_types.QStandardItem(h: fcQStandardItem_child(self.h, row))

proc setChild*(self: gen_qstandarditemmodel_types.QStandardItem, row: cint, column: cint, item: gen_qstandarditemmodel_types.QStandardItem): void =
  fcQStandardItem_setChild(self.h, row, column, item.h)

proc setChild*(self: gen_qstandarditemmodel_types.QStandardItem, row: cint, item: gen_qstandarditemmodel_types.QStandardItem): void =
  fcQStandardItem_setChild2(self.h, row, item.h)

proc insertRow*(self: gen_qstandarditemmodel_types.QStandardItem, row: cint, items: seq[gen_qstandarditemmodel_types.QStandardItem]): void =
  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  fcQStandardItem_insertRow(self.h, row, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])))

proc insertColumn*(self: gen_qstandarditemmodel_types.QStandardItem, column: cint, items: seq[gen_qstandarditemmodel_types.QStandardItem]): void =
  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  fcQStandardItem_insertColumn(self.h, column, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])))

proc insertRows*(self: gen_qstandarditemmodel_types.QStandardItem, row: cint, items: seq[gen_qstandarditemmodel_types.QStandardItem]): void =
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

proc appendRow*(self: gen_qstandarditemmodel_types.QStandardItem, items: seq[gen_qstandarditemmodel_types.QStandardItem]): void =
  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  fcQStandardItem_appendRow(self.h, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])))

proc appendRows*(self: gen_qstandarditemmodel_types.QStandardItem, items: seq[gen_qstandarditemmodel_types.QStandardItem]): void =
  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  fcQStandardItem_appendRows(self.h, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])))

proc appendColumn*(self: gen_qstandarditemmodel_types.QStandardItem, items: seq[gen_qstandarditemmodel_types.QStandardItem]): void =
  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  fcQStandardItem_appendColumn(self.h, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])))

proc insertRow*(self: gen_qstandarditemmodel_types.QStandardItem, row: cint, item: gen_qstandarditemmodel_types.QStandardItem): void =
  fcQStandardItem_insertRow2(self.h, row, item.h)

proc appendRow*(self: gen_qstandarditemmodel_types.QStandardItem, item: gen_qstandarditemmodel_types.QStandardItem): void =
  fcQStandardItem_appendRowWithItem(self.h, item.h)

proc takeChild*(self: gen_qstandarditemmodel_types.QStandardItem, row: cint): gen_qstandarditemmodel_types.QStandardItem =
  gen_qstandarditemmodel_types.QStandardItem(h: fcQStandardItem_takeChild(self.h, row))

proc takeRow*(self: gen_qstandarditemmodel_types.QStandardItem, row: cint): seq[gen_qstandarditemmodel_types.QStandardItem] =
  var v_ma = fcQStandardItem_takeRow(self.h, row)
  var vx_ret = newSeq[gen_qstandarditemmodel_types.QStandardItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qstandarditemmodel_types.QStandardItem(h: v_outCast[i])
  vx_ret

proc takeColumn*(self: gen_qstandarditemmodel_types.QStandardItem, column: cint): seq[gen_qstandarditemmodel_types.QStandardItem] =
  var v_ma = fcQStandardItem_takeColumn(self.h, column)
  var vx_ret = newSeq[gen_qstandarditemmodel_types.QStandardItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qstandarditemmodel_types.QStandardItem(h: v_outCast[i])
  vx_ret

proc sortChildren*(self: gen_qstandarditemmodel_types.QStandardItem, column: cint): void =
  fcQStandardItem_sortChildren(self.h, column)

proc clone*(self: gen_qstandarditemmodel_types.QStandardItem, ): gen_qstandarditemmodel_types.QStandardItem =
  gen_qstandarditemmodel_types.QStandardItem(h: fcQStandardItem_clone(self.h))

proc typeX*(self: gen_qstandarditemmodel_types.QStandardItem, ): cint =
  fcQStandardItem_typeX(self.h)

proc read*(self: gen_qstandarditemmodel_types.QStandardItem, inVal: gen_qdatastream_types.QDataStream): void =
  fcQStandardItem_read(self.h, inVal.h)

proc write*(self: gen_qstandarditemmodel_types.QStandardItem, outVal: gen_qdatastream_types.QDataStream): void =
  fcQStandardItem_write(self.h, outVal.h)

proc operatorLesser*(self: gen_qstandarditemmodel_types.QStandardItem, other: gen_qstandarditemmodel_types.QStandardItem): bool =
  fcQStandardItem_operatorLesser(self.h, other.h)

proc child*(self: gen_qstandarditemmodel_types.QStandardItem, row: cint, column: cint): gen_qstandarditemmodel_types.QStandardItem =
  gen_qstandarditemmodel_types.QStandardItem(h: fcQStandardItem_child2(self.h, row, column))

proc takeChild*(self: gen_qstandarditemmodel_types.QStandardItem, row: cint, column: cint): gen_qstandarditemmodel_types.QStandardItem =
  gen_qstandarditemmodel_types.QStandardItem(h: fcQStandardItem_takeChild2(self.h, row, column))

proc sortChildren*(self: gen_qstandarditemmodel_types.QStandardItem, column: cint, order: cint): void =
  fcQStandardItem_sortChildren2(self.h, column, cint(order))

proc QStandardItemdata*(self: gen_qstandarditemmodel_types.QStandardItem, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQStandardItem_virtualbase_data(self.h, role))

type QStandardItemdataProc* = proc(role: cint): gen_qvariant_types.QVariant
proc ondata*(self: gen_qstandarditemmodel_types.QStandardItem, slot: QStandardItemdataProc) =
  # TODO check subclass
  var tmp = new QStandardItemdataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItem_override_virtual_data(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItem_data(self: ptr cQStandardItem, slot: int, role: cint): pointer {.exportc: "miqt_exec_callback_QStandardItem_data ".} =
  var nimfunc = cast[ptr QStandardItemdataProc](cast[pointer](slot))
  let slotval1 = role


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QStandardItemmultiData*(self: gen_qstandarditemmodel_types.QStandardItem, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void =
  fQStandardItem_virtualbase_multiData(self.h, roleDataSpan.h)

type QStandardItemmultiDataProc* = proc(roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void
proc onmultiData*(self: gen_qstandarditemmodel_types.QStandardItem, slot: QStandardItemmultiDataProc) =
  # TODO check subclass
  var tmp = new QStandardItemmultiDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItem_override_virtual_multiData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItem_multiData(self: ptr cQStandardItem, slot: int, roleDataSpan: pointer): void {.exportc: "miqt_exec_callback_QStandardItem_multiData ".} =
  var nimfunc = cast[ptr QStandardItemmultiDataProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelRoleDataSpan(h: roleDataSpan)


  nimfunc[](slotval1)
proc QStandardItemsetData*(self: gen_qstandarditemmodel_types.QStandardItem, value: gen_qvariant_types.QVariant, role: cint): void =
  fQStandardItem_virtualbase_setData(self.h, value.h, role)

type QStandardItemsetDataProc* = proc(value: gen_qvariant_types.QVariant, role: cint): void
proc onsetData*(self: gen_qstandarditemmodel_types.QStandardItem, slot: QStandardItemsetDataProc) =
  # TODO check subclass
  var tmp = new QStandardItemsetDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItem_override_virtual_setData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItem_setData(self: ptr cQStandardItem, slot: int, value: pointer, role: cint): void {.exportc: "miqt_exec_callback_QStandardItem_setData ".} =
  var nimfunc = cast[ptr QStandardItemsetDataProc](cast[pointer](slot))
  let slotval1 = gen_qvariant_types.QVariant(h: value)

  let slotval2 = role


  nimfunc[](slotval1, slotval2)
proc QStandardItemclone*(self: gen_qstandarditemmodel_types.QStandardItem, ): gen_qstandarditemmodel_types.QStandardItem =
  gen_qstandarditemmodel_types.QStandardItem(h: fQStandardItem_virtualbase_clone(self.h))

type QStandardItemcloneProc* = proc(): gen_qstandarditemmodel_types.QStandardItem
proc onclone*(self: gen_qstandarditemmodel_types.QStandardItem, slot: QStandardItemcloneProc) =
  # TODO check subclass
  var tmp = new QStandardItemcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItem_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItem_clone(self: ptr cQStandardItem, slot: int): pointer {.exportc: "miqt_exec_callback_QStandardItem_clone ".} =
  var nimfunc = cast[ptr QStandardItemcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QStandardItemtypeX*(self: gen_qstandarditemmodel_types.QStandardItem, ): cint =
  fQStandardItem_virtualbase_type(self.h)

type QStandardItemtypeXProc* = proc(): cint
proc ontypeX*(self: gen_qstandarditemmodel_types.QStandardItem, slot: QStandardItemtypeXProc) =
  # TODO check subclass
  var tmp = new QStandardItemtypeXProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItem_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItem_type(self: ptr cQStandardItem, slot: int): cint {.exportc: "miqt_exec_callback_QStandardItem_type ".} =
  var nimfunc = cast[ptr QStandardItemtypeXProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QStandardItemread*(self: gen_qstandarditemmodel_types.QStandardItem, inVal: gen_qdatastream_types.QDataStream): void =
  fQStandardItem_virtualbase_read(self.h, inVal.h)

type QStandardItemreadProc* = proc(inVal: gen_qdatastream_types.QDataStream): void
proc onread*(self: gen_qstandarditemmodel_types.QStandardItem, slot: QStandardItemreadProc) =
  # TODO check subclass
  var tmp = new QStandardItemreadProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItem_override_virtual_read(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItem_read(self: ptr cQStandardItem, slot: int, inVal: pointer): void {.exportc: "miqt_exec_callback_QStandardItem_read ".} =
  var nimfunc = cast[ptr QStandardItemreadProc](cast[pointer](slot))
  let slotval1 = gen_qdatastream_types.QDataStream(h: inVal)


  nimfunc[](slotval1)
proc QStandardItemwrite*(self: gen_qstandarditemmodel_types.QStandardItem, outVal: gen_qdatastream_types.QDataStream): void =
  fQStandardItem_virtualbase_write(self.h, outVal.h)

type QStandardItemwriteProc* = proc(outVal: gen_qdatastream_types.QDataStream): void
proc onwrite*(self: gen_qstandarditemmodel_types.QStandardItem, slot: QStandardItemwriteProc) =
  # TODO check subclass
  var tmp = new QStandardItemwriteProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItem_override_virtual_write(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItem_write(self: ptr cQStandardItem, slot: int, outVal: pointer): void {.exportc: "miqt_exec_callback_QStandardItem_write ".} =
  var nimfunc = cast[ptr QStandardItemwriteProc](cast[pointer](slot))
  let slotval1 = gen_qdatastream_types.QDataStream(h: outVal)


  nimfunc[](slotval1)
proc QStandardItemoperatorLesser*(self: gen_qstandarditemmodel_types.QStandardItem, other: gen_qstandarditemmodel_types.QStandardItem): bool =
  fQStandardItem_virtualbase_operatorLesser(self.h, other.h)

type QStandardItemoperatorLesserProc* = proc(other: gen_qstandarditemmodel_types.QStandardItem): bool
proc onoperatorLesser*(self: gen_qstandarditemmodel_types.QStandardItem, slot: QStandardItemoperatorLesserProc) =
  # TODO check subclass
  var tmp = new QStandardItemoperatorLesserProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItem_override_virtual_operatorLesser(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItem_operatorLesser(self: ptr cQStandardItem, slot: int, other: pointer): bool {.exportc: "miqt_exec_callback_QStandardItem_operatorLesser ".} =
  var nimfunc = cast[ptr QStandardItemoperatorLesserProc](cast[pointer](slot))
  let slotval1 = gen_qstandarditemmodel_types.QStandardItem(h: other)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc delete*(self: gen_qstandarditemmodel_types.QStandardItem) =
  fcQStandardItem_delete(self.h)

func init*(T: type gen_qstandarditemmodel_types.QStandardItemModel, h: ptr cQStandardItemModel): gen_qstandarditemmodel_types.QStandardItemModel =
  T(h: h)
proc create*(T: type gen_qstandarditemmodel_types.QStandardItemModel, ): gen_qstandarditemmodel_types.QStandardItemModel =
  gen_qstandarditemmodel_types.QStandardItemModel.init(fcQStandardItemModel_new())

proc create*(T: type gen_qstandarditemmodel_types.QStandardItemModel, rows: cint, columns: cint): gen_qstandarditemmodel_types.QStandardItemModel =
  gen_qstandarditemmodel_types.QStandardItemModel.init(fcQStandardItemModel_new2(rows, columns))

proc create*(T: type gen_qstandarditemmodel_types.QStandardItemModel, parent: gen_qobject_types.QObject): gen_qstandarditemmodel_types.QStandardItemModel =
  gen_qstandarditemmodel_types.QStandardItemModel.init(fcQStandardItemModel_new3(parent.h))

proc create*(T: type gen_qstandarditemmodel_types.QStandardItemModel, rows: cint, columns: cint, parent: gen_qobject_types.QObject): gen_qstandarditemmodel_types.QStandardItemModel =
  gen_qstandarditemmodel_types.QStandardItemModel.init(fcQStandardItemModel_new4(rows, columns, parent.h))

proc metaObject*(self: gen_qstandarditemmodel_types.QStandardItemModel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStandardItemModel_metaObject(self.h))

proc metacast*(self: gen_qstandarditemmodel_types.QStandardItemModel, param1: cstring): pointer =
  fcQStandardItemModel_metacast(self.h, param1)

proc metacall*(self: gen_qstandarditemmodel_types.QStandardItemModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQStandardItemModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qstandarditemmodel_types.QStandardItemModel, s: cstring): string =
  let v_ms = fcQStandardItemModel_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setItemRoleNames*(self: gen_qstandarditemmodel_types.QStandardItemModel, roleNames: Table[cint,seq[byte]]): void =
  var roleNames_Keys_CArray = newSeq[cint](len(roleNames))
  var roleNames_Values_CArray = newSeq[struct_miqt_string](len(roleNames))
  var roleNames_ctr = 0
  for roleNamesk, roleNamesv in roleNames:
    roleNames_Keys_CArray[roleNames_ctr] = roleNames_k
    roleNames_Values_CArray[roleNames_ctr] = struct_miqt_string(data: cast[cstring](if len(roleNames_v) == 0: nil else: unsafeAddr roleNames_v[0]), len: csize_t(len(roleNames_v)))
    roleNames_ctr += 1

  fcQStandardItemModel_setItemRoleNames(self.h, struct_miqt_map(len: csize_t(len(roleNames)),keys: if len(roleNames) == 0: nil else: addr(roleNames_Keys_CArray[0]), values: if len(roleNames) == 0: nil else: addr(roleNames_Values_CArray[0]),))

proc roleNames*(self: gen_qstandarditemmodel_types.QStandardItemModel, ): Table[cint,seq[byte]] =
  var v_mm = fcQStandardItemModel_roleNames(self.h)
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

proc index*(self: gen_qstandarditemmodel_types.QStandardItemModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQStandardItemModel_index(self.h, row, column, parent.h))

proc parent*(self: gen_qstandarditemmodel_types.QStandardItemModel, child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQStandardItemModel_parent(self.h, child.h))

proc rowCount*(self: gen_qstandarditemmodel_types.QStandardItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQStandardItemModel_rowCount(self.h, parent.h)

proc columnCount*(self: gen_qstandarditemmodel_types.QStandardItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQStandardItemModel_columnCount(self.h, parent.h)

proc hasChildren*(self: gen_qstandarditemmodel_types.QStandardItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQStandardItemModel_hasChildren(self.h, parent.h)

proc data*(self: gen_qstandarditemmodel_types.QStandardItemModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQStandardItemModel_data(self.h, index.h, role))

proc multiData*(self: gen_qstandarditemmodel_types.QStandardItemModel, index: gen_qabstractitemmodel_types.QModelIndex, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void =
  fcQStandardItemModel_multiData(self.h, index.h, roleDataSpan.h)

proc setData*(self: gen_qstandarditemmodel_types.QStandardItemModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQStandardItemModel_setData(self.h, index.h, value.h, role)

proc clearItemData*(self: gen_qstandarditemmodel_types.QStandardItemModel, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQStandardItemModel_clearItemData(self.h, index.h)

proc headerData*(self: gen_qstandarditemmodel_types.QStandardItemModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQStandardItemModel_headerData(self.h, section, cint(orientation), role))

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

proc supportedDropActions*(self: gen_qstandarditemmodel_types.QStandardItemModel, ): cint =
  cint(fcQStandardItemModel_supportedDropActions(self.h))

proc itemData*(self: gen_qstandarditemmodel_types.QStandardItemModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fcQStandardItemModel_itemData(self.h, index.h)
  var vx_ret: Table[cint, gen_qvariant_types.QVariant]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var v_entry_Value = gen_qvariant_types.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

proc setItemData*(self: gen_qstandarditemmodel_types.QStandardItemModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool =
  var roles_Keys_CArray = newSeq[cint](len(roles))
  var roles_Values_CArray = newSeq[pointer](len(roles))
  var roles_ctr = 0
  for rolesk, rolesv in roles:
    roles_Keys_CArray[roles_ctr] = roles_k
    roles_Values_CArray[roles_ctr] = roles_v.h
    roles_ctr += 1

  fcQStandardItemModel_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

proc clear*(self: gen_qstandarditemmodel_types.QStandardItemModel, ): void =
  fcQStandardItemModel_clear(self.h)

proc sort*(self: gen_qstandarditemmodel_types.QStandardItemModel, column: cint, order: cint): void =
  fcQStandardItemModel_sort(self.h, column, cint(order))

proc itemFromIndex*(self: gen_qstandarditemmodel_types.QStandardItemModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qstandarditemmodel_types.QStandardItem =
  gen_qstandarditemmodel_types.QStandardItem(h: fcQStandardItemModel_itemFromIndex(self.h, index.h))

proc indexFromItem*(self: gen_qstandarditemmodel_types.QStandardItemModel, item: gen_qstandarditemmodel_types.QStandardItem): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQStandardItemModel_indexFromItem(self.h, item.h))

proc item*(self: gen_qstandarditemmodel_types.QStandardItemModel, row: cint): gen_qstandarditemmodel_types.QStandardItem =
  gen_qstandarditemmodel_types.QStandardItem(h: fcQStandardItemModel_item(self.h, row))

proc setItem*(self: gen_qstandarditemmodel_types.QStandardItemModel, row: cint, column: cint, item: gen_qstandarditemmodel_types.QStandardItem): void =
  fcQStandardItemModel_setItem(self.h, row, column, item.h)

proc setItem*(self: gen_qstandarditemmodel_types.QStandardItemModel, row: cint, item: gen_qstandarditemmodel_types.QStandardItem): void =
  fcQStandardItemModel_setItem2(self.h, row, item.h)

proc invisibleRootItem*(self: gen_qstandarditemmodel_types.QStandardItemModel, ): gen_qstandarditemmodel_types.QStandardItem =
  gen_qstandarditemmodel_types.QStandardItem(h: fcQStandardItemModel_invisibleRootItem(self.h))

proc horizontalHeaderItem*(self: gen_qstandarditemmodel_types.QStandardItemModel, column: cint): gen_qstandarditemmodel_types.QStandardItem =
  gen_qstandarditemmodel_types.QStandardItem(h: fcQStandardItemModel_horizontalHeaderItem(self.h, column))

proc setHorizontalHeaderItem*(self: gen_qstandarditemmodel_types.QStandardItemModel, column: cint, item: gen_qstandarditemmodel_types.QStandardItem): void =
  fcQStandardItemModel_setHorizontalHeaderItem(self.h, column, item.h)

proc verticalHeaderItem*(self: gen_qstandarditemmodel_types.QStandardItemModel, row: cint): gen_qstandarditemmodel_types.QStandardItem =
  gen_qstandarditemmodel_types.QStandardItem(h: fcQStandardItemModel_verticalHeaderItem(self.h, row))

proc setVerticalHeaderItem*(self: gen_qstandarditemmodel_types.QStandardItemModel, row: cint, item: gen_qstandarditemmodel_types.QStandardItem): void =
  fcQStandardItemModel_setVerticalHeaderItem(self.h, row, item.h)

proc setHorizontalHeaderLabels*(self: gen_qstandarditemmodel_types.QStandardItemModel, labels: seq[string]): void =
  var labels_CArray = newSeq[struct_miqt_string](len(labels))
  for i in 0..<len(labels):
    labels_CArray[i] = struct_miqt_string(data: labels[i], len: csize_t(len(labels[i])))

  fcQStandardItemModel_setHorizontalHeaderLabels(self.h, struct_miqt_array(len: csize_t(len(labels)), data: if len(labels) == 0: nil else: addr(labels_CArray[0])))

proc setVerticalHeaderLabels*(self: gen_qstandarditemmodel_types.QStandardItemModel, labels: seq[string]): void =
  var labels_CArray = newSeq[struct_miqt_string](len(labels))
  for i in 0..<len(labels):
    labels_CArray[i] = struct_miqt_string(data: labels[i], len: csize_t(len(labels[i])))

  fcQStandardItemModel_setVerticalHeaderLabels(self.h, struct_miqt_array(len: csize_t(len(labels)), data: if len(labels) == 0: nil else: addr(labels_CArray[0])))

proc setRowCount*(self: gen_qstandarditemmodel_types.QStandardItemModel, rows: cint): void =
  fcQStandardItemModel_setRowCount(self.h, rows)

proc setColumnCount*(self: gen_qstandarditemmodel_types.QStandardItemModel, columns: cint): void =
  fcQStandardItemModel_setColumnCount(self.h, columns)

proc appendRow*(self: gen_qstandarditemmodel_types.QStandardItemModel, items: seq[gen_qstandarditemmodel_types.QStandardItem]): void =
  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  fcQStandardItemModel_appendRow(self.h, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])))

proc appendColumn*(self: gen_qstandarditemmodel_types.QStandardItemModel, items: seq[gen_qstandarditemmodel_types.QStandardItem]): void =
  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  fcQStandardItemModel_appendColumn(self.h, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])))

proc appendRow*(self: gen_qstandarditemmodel_types.QStandardItemModel, item: gen_qstandarditemmodel_types.QStandardItem): void =
  fcQStandardItemModel_appendRowWithItem(self.h, item.h)

proc insertRow*(self: gen_qstandarditemmodel_types.QStandardItemModel, row: cint, items: seq[gen_qstandarditemmodel_types.QStandardItem]): void =
  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  fcQStandardItemModel_insertRow(self.h, row, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])))

proc insertColumn*(self: gen_qstandarditemmodel_types.QStandardItemModel, column: cint, items: seq[gen_qstandarditemmodel_types.QStandardItem]): void =
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
  gen_qstandarditemmodel_types.QStandardItem(h: fcQStandardItemModel_takeItem(self.h, row))

proc takeRow*(self: gen_qstandarditemmodel_types.QStandardItemModel, row: cint): seq[gen_qstandarditemmodel_types.QStandardItem] =
  var v_ma = fcQStandardItemModel_takeRow(self.h, row)
  var vx_ret = newSeq[gen_qstandarditemmodel_types.QStandardItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qstandarditemmodel_types.QStandardItem(h: v_outCast[i])
  vx_ret

proc takeColumn*(self: gen_qstandarditemmodel_types.QStandardItemModel, column: cint): seq[gen_qstandarditemmodel_types.QStandardItem] =
  var v_ma = fcQStandardItemModel_takeColumn(self.h, column)
  var vx_ret = newSeq[gen_qstandarditemmodel_types.QStandardItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qstandarditemmodel_types.QStandardItem(h: v_outCast[i])
  vx_ret

proc takeHorizontalHeaderItem*(self: gen_qstandarditemmodel_types.QStandardItemModel, column: cint): gen_qstandarditemmodel_types.QStandardItem =
  gen_qstandarditemmodel_types.QStandardItem(h: fcQStandardItemModel_takeHorizontalHeaderItem(self.h, column))

proc takeVerticalHeaderItem*(self: gen_qstandarditemmodel_types.QStandardItemModel, row: cint): gen_qstandarditemmodel_types.QStandardItem =
  gen_qstandarditemmodel_types.QStandardItem(h: fcQStandardItemModel_takeVerticalHeaderItem(self.h, row))

proc itemPrototype*(self: gen_qstandarditemmodel_types.QStandardItemModel, ): gen_qstandarditemmodel_types.QStandardItem =
  gen_qstandarditemmodel_types.QStandardItem(h: fcQStandardItemModel_itemPrototype(self.h))

proc setItemPrototype*(self: gen_qstandarditemmodel_types.QStandardItemModel, item: gen_qstandarditemmodel_types.QStandardItem): void =
  fcQStandardItemModel_setItemPrototype(self.h, item.h)

proc findItems*(self: gen_qstandarditemmodel_types.QStandardItemModel, text: string): seq[gen_qstandarditemmodel_types.QStandardItem] =
  var v_ma = fcQStandardItemModel_findItems(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))
  var vx_ret = newSeq[gen_qstandarditemmodel_types.QStandardItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qstandarditemmodel_types.QStandardItem(h: v_outCast[i])
  vx_ret

proc sortRole*(self: gen_qstandarditemmodel_types.QStandardItemModel, ): cint =
  fcQStandardItemModel_sortRole(self.h)

proc setSortRole*(self: gen_qstandarditemmodel_types.QStandardItemModel, role: cint): void =
  fcQStandardItemModel_setSortRole(self.h, role)

proc mimeTypes*(self: gen_qstandarditemmodel_types.QStandardItemModel, ): seq[string] =
  var v_ma = fcQStandardItemModel_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc mimeData*(self: gen_qstandarditemmodel_types.QStandardItemModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fcQStandardItemModel_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))))

proc dropMimeData*(self: gen_qstandarditemmodel_types.QStandardItemModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQStandardItemModel_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc itemChanged*(self: gen_qstandarditemmodel_types.QStandardItemModel, item: gen_qstandarditemmodel_types.QStandardItem): void =
  fcQStandardItemModel_itemChanged(self.h, item.h)

type QStandardItemModelitemChangedSlot* = proc(item: gen_qstandarditemmodel_types.QStandardItem)
proc miqt_exec_callback_QStandardItemModel_itemChanged(slot: int, item: pointer) {.exportc.} =
  let nimfunc = cast[ptr QStandardItemModelitemChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qstandarditemmodel_types.QStandardItem(h: item)

  nimfunc[](slotval1)

proc onitemChanged*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModelitemChangedSlot) =
  var tmp = new QStandardItemModelitemChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_connect_itemChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qstandarditemmodel_types.QStandardItemModel, s: cstring, c: cstring): string =
  let v_ms = fcQStandardItemModel_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qstandarditemmodel_types.QStandardItemModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQStandardItemModel_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc item*(self: gen_qstandarditemmodel_types.QStandardItemModel, row: cint, column: cint): gen_qstandarditemmodel_types.QStandardItem =
  gen_qstandarditemmodel_types.QStandardItem(h: fcQStandardItemModel_item2(self.h, row, column))

proc insertRow*(self: gen_qstandarditemmodel_types.QStandardItemModel, row: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQStandardItemModel_insertRow22(self.h, row, parent.h)

proc insertColumn*(self: gen_qstandarditemmodel_types.QStandardItemModel, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQStandardItemModel_insertColumn2(self.h, column, parent.h)

proc takeItem*(self: gen_qstandarditemmodel_types.QStandardItemModel, row: cint, column: cint): gen_qstandarditemmodel_types.QStandardItem =
  gen_qstandarditemmodel_types.QStandardItem(h: fcQStandardItemModel_takeItem2(self.h, row, column))

proc findItems*(self: gen_qstandarditemmodel_types.QStandardItemModel, text: string, flags: cint): seq[gen_qstandarditemmodel_types.QStandardItem] =
  var v_ma = fcQStandardItemModel_findItems2(self.h, struct_miqt_string(data: text, len: csize_t(len(text))), cint(flags))
  var vx_ret = newSeq[gen_qstandarditemmodel_types.QStandardItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qstandarditemmodel_types.QStandardItem(h: v_outCast[i])
  vx_ret

proc findItems*(self: gen_qstandarditemmodel_types.QStandardItemModel, text: string, flags: cint, column: cint): seq[gen_qstandarditemmodel_types.QStandardItem] =
  var v_ma = fcQStandardItemModel_findItems3(self.h, struct_miqt_string(data: text, len: csize_t(len(text))), cint(flags), column)
  var vx_ret = newSeq[gen_qstandarditemmodel_types.QStandardItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qstandarditemmodel_types.QStandardItem(h: v_outCast[i])
  vx_ret

proc QStandardItemModelmetaObject*(self: gen_qstandarditemmodel_types.QStandardItemModel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQStandardItemModel_virtualbase_metaObject(self.h))

type QStandardItemModelmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModelmetaObjectProc) =
  # TODO check subclass
  var tmp = new QStandardItemModelmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_metaObject(self: ptr cQStandardItemModel, slot: int): pointer {.exportc: "miqt_exec_callback_QStandardItemModel_metaObject ".} =
  var nimfunc = cast[ptr QStandardItemModelmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QStandardItemModelmetacast*(self: gen_qstandarditemmodel_types.QStandardItemModel, param1: cstring): pointer =
  fQStandardItemModel_virtualbase_metacast(self.h, param1)

type QStandardItemModelmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModelmetacastProc) =
  # TODO check subclass
  var tmp = new QStandardItemModelmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_metacast(self: ptr cQStandardItemModel, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QStandardItemModel_metacast ".} =
  var nimfunc = cast[ptr QStandardItemModelmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QStandardItemModelmetacall*(self: gen_qstandarditemmodel_types.QStandardItemModel, param1: cint, param2: cint, param3: pointer): cint =
  fQStandardItemModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QStandardItemModelmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModelmetacallProc) =
  # TODO check subclass
  var tmp = new QStandardItemModelmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_metacall(self: ptr cQStandardItemModel, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QStandardItemModel_metacall ".} =
  var nimfunc = cast[ptr QStandardItemModelmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QStandardItemModelroleNames*(self: gen_qstandarditemmodel_types.QStandardItemModel, ): Table[cint,seq[byte]] =
  var v_mm = fQStandardItemModel_virtualbase_roleNames(self.h)
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

type QStandardItemModelroleNamesProc* = proc(): Table[cint,seq[byte]]
proc onroleNames*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModelroleNamesProc) =
  # TODO check subclass
  var tmp = new QStandardItemModelroleNamesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_roleNames(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_roleNames(self: ptr cQStandardItemModel, slot: int): struct_miqt_map {.exportc: "miqt_exec_callback_QStandardItemModel_roleNames ".} =
  var nimfunc = cast[ptr QStandardItemModelroleNamesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_Keys_CArray = newSeq[cint](len(virtualReturn))
  var virtualReturn_Values_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  var virtualReturn_ctr = 0
  for virtualReturnk, virtualReturnv in virtualReturn:
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_Values_CArray[virtualReturn_ctr] = struct_miqt_string(data: cast[cstring](if len(virtualReturn_v) == 0: nil else: unsafeAddr virtualReturn_v[0]), len: csize_t(len(virtualReturn_v)))
    virtualReturn_ctr += 1


  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)
proc QStandardItemModelindex*(self: gen_qstandarditemmodel_types.QStandardItemModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQStandardItemModel_virtualbase_index(self.h, row, column, parent.h))

type QStandardItemModelindexProc* = proc(row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onindex*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModelindexProc) =
  # TODO check subclass
  var tmp = new QStandardItemModelindexProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_index(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_index(self: ptr cQStandardItemModel, slot: int, row: cint, column: cint, parent: pointer): pointer {.exportc: "miqt_exec_callback_QStandardItemModel_index ".} =
  var nimfunc = cast[ptr QStandardItemModelindexProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = column

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QStandardItemModelparent*(self: gen_qstandarditemmodel_types.QStandardItemModel, child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQStandardItemModel_virtualbase_parent(self.h, child.h))

type QStandardItemModelparentProc* = proc(child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onparent*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModelparentProc) =
  # TODO check subclass
  var tmp = new QStandardItemModelparentProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_parent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_parent(self: ptr cQStandardItemModel, slot: int, child: pointer): pointer {.exportc: "miqt_exec_callback_QStandardItemModel_parent ".} =
  var nimfunc = cast[ptr QStandardItemModelparentProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: child)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QStandardItemModelrowCount*(self: gen_qstandarditemmodel_types.QStandardItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fQStandardItemModel_virtualbase_rowCount(self.h, parent.h)

type QStandardItemModelrowCountProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): cint
proc onrowCount*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModelrowCountProc) =
  # TODO check subclass
  var tmp = new QStandardItemModelrowCountProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_rowCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_rowCount(self: ptr cQStandardItemModel, slot: int, parent: pointer): cint {.exportc: "miqt_exec_callback_QStandardItemModel_rowCount ".} =
  var nimfunc = cast[ptr QStandardItemModelrowCountProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QStandardItemModelcolumnCount*(self: gen_qstandarditemmodel_types.QStandardItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fQStandardItemModel_virtualbase_columnCount(self.h, parent.h)

type QStandardItemModelcolumnCountProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): cint
proc oncolumnCount*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModelcolumnCountProc) =
  # TODO check subclass
  var tmp = new QStandardItemModelcolumnCountProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_columnCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_columnCount(self: ptr cQStandardItemModel, slot: int, parent: pointer): cint {.exportc: "miqt_exec_callback_QStandardItemModel_columnCount ".} =
  var nimfunc = cast[ptr QStandardItemModelcolumnCountProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QStandardItemModelhasChildren*(self: gen_qstandarditemmodel_types.QStandardItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQStandardItemModel_virtualbase_hasChildren(self.h, parent.h)

type QStandardItemModelhasChildrenProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc onhasChildren*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModelhasChildrenProc) =
  # TODO check subclass
  var tmp = new QStandardItemModelhasChildrenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_hasChildren(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_hasChildren(self: ptr cQStandardItemModel, slot: int, parent: pointer): bool {.exportc: "miqt_exec_callback_QStandardItemModel_hasChildren ".} =
  var nimfunc = cast[ptr QStandardItemModelhasChildrenProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QStandardItemModeldata*(self: gen_qstandarditemmodel_types.QStandardItemModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQStandardItemModel_virtualbase_data(self.h, index.h, role))

type QStandardItemModeldataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant
proc ondata*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModeldataProc) =
  # TODO check subclass
  var tmp = new QStandardItemModeldataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_data(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_data(self: ptr cQStandardItemModel, slot: int, index: pointer, role: cint): pointer {.exportc: "miqt_exec_callback_QStandardItemModel_data ".} =
  var nimfunc = cast[ptr QStandardItemModeldataProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = role


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QStandardItemModelmultiData*(self: gen_qstandarditemmodel_types.QStandardItemModel, index: gen_qabstractitemmodel_types.QModelIndex, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void =
  fQStandardItemModel_virtualbase_multiData(self.h, index.h, roleDataSpan.h)

type QStandardItemModelmultiDataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, roleDataSpan: gen_qabstractitemmodel_types.QModelRoleDataSpan): void
proc onmultiData*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModelmultiDataProc) =
  # TODO check subclass
  var tmp = new QStandardItemModelmultiDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_multiData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_multiData(self: ptr cQStandardItemModel, slot: int, index: pointer, roleDataSpan: pointer): void {.exportc: "miqt_exec_callback_QStandardItemModel_multiData ".} =
  var nimfunc = cast[ptr QStandardItemModelmultiDataProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = gen_qabstractitemmodel_types.QModelRoleDataSpan(h: roleDataSpan)


  nimfunc[](slotval1, slotval2)
proc QStandardItemModelsetData*(self: gen_qstandarditemmodel_types.QStandardItemModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fQStandardItemModel_virtualbase_setData(self.h, index.h, value.h, role)

type QStandardItemModelsetDataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool
proc onsetData*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModelsetDataProc) =
  # TODO check subclass
  var tmp = new QStandardItemModelsetDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_setData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_setData(self: ptr cQStandardItemModel, slot: int, index: pointer, value: pointer, role: cint): bool {.exportc: "miqt_exec_callback_QStandardItemModel_setData ".} =
  var nimfunc = cast[ptr QStandardItemModelsetDataProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = gen_qvariant_types.QVariant(h: value)

  let slotval3 = role


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QStandardItemModelclearItemData*(self: gen_qstandarditemmodel_types.QStandardItemModel, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQStandardItemModel_virtualbase_clearItemData(self.h, index.h)

type QStandardItemModelclearItemDataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): bool
proc onclearItemData*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModelclearItemDataProc) =
  # TODO check subclass
  var tmp = new QStandardItemModelclearItemDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_clearItemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_clearItemData(self: ptr cQStandardItemModel, slot: int, index: pointer): bool {.exportc: "miqt_exec_callback_QStandardItemModel_clearItemData ".} =
  var nimfunc = cast[ptr QStandardItemModelclearItemDataProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QStandardItemModelheaderData*(self: gen_qstandarditemmodel_types.QStandardItemModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQStandardItemModel_virtualbase_headerData(self.h, section, cint(orientation), role))

type QStandardItemModelheaderDataProc* = proc(section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant
proc onheaderData*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModelheaderDataProc) =
  # TODO check subclass
  var tmp = new QStandardItemModelheaderDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_headerData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_headerData(self: ptr cQStandardItemModel, slot: int, section: cint, orientation: cint, role: cint): pointer {.exportc: "miqt_exec_callback_QStandardItemModel_headerData ".} =
  var nimfunc = cast[ptr QStandardItemModelheaderDataProc](cast[pointer](slot))
  let slotval1 = section

  let slotval2 = cint(orientation)

  let slotval3 = role


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QStandardItemModelsetHeaderData*(self: gen_qstandarditemmodel_types.QStandardItemModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fQStandardItemModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

type QStandardItemModelsetHeaderDataProc* = proc(section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool
proc onsetHeaderData*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModelsetHeaderDataProc) =
  # TODO check subclass
  var tmp = new QStandardItemModelsetHeaderDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_setHeaderData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_setHeaderData(self: ptr cQStandardItemModel, slot: int, section: cint, orientation: cint, value: pointer, role: cint): bool {.exportc: "miqt_exec_callback_QStandardItemModel_setHeaderData ".} =
  var nimfunc = cast[ptr QStandardItemModelsetHeaderDataProc](cast[pointer](slot))
  let slotval1 = section

  let slotval2 = cint(orientation)

  let slotval3 = gen_qvariant_types.QVariant(h: value)

  let slotval4 = role


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc QStandardItemModelinsertRows*(self: gen_qstandarditemmodel_types.QStandardItemModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQStandardItemModel_virtualbase_insertRows(self.h, row, count, parent.h)

type QStandardItemModelinsertRowsProc* = proc(row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc oninsertRows*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModelinsertRowsProc) =
  # TODO check subclass
  var tmp = new QStandardItemModelinsertRowsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_insertRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_insertRows(self: ptr cQStandardItemModel, slot: int, row: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QStandardItemModel_insertRows ".} =
  var nimfunc = cast[ptr QStandardItemModelinsertRowsProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QStandardItemModelinsertColumns*(self: gen_qstandarditemmodel_types.QStandardItemModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQStandardItemModel_virtualbase_insertColumns(self.h, column, count, parent.h)

type QStandardItemModelinsertColumnsProc* = proc(column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc oninsertColumns*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModelinsertColumnsProc) =
  # TODO check subclass
  var tmp = new QStandardItemModelinsertColumnsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_insertColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_insertColumns(self: ptr cQStandardItemModel, slot: int, column: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QStandardItemModel_insertColumns ".} =
  var nimfunc = cast[ptr QStandardItemModelinsertColumnsProc](cast[pointer](slot))
  let slotval1 = column

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QStandardItemModelremoveRows*(self: gen_qstandarditemmodel_types.QStandardItemModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQStandardItemModel_virtualbase_removeRows(self.h, row, count, parent.h)

type QStandardItemModelremoveRowsProc* = proc(row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc onremoveRows*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModelremoveRowsProc) =
  # TODO check subclass
  var tmp = new QStandardItemModelremoveRowsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_removeRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_removeRows(self: ptr cQStandardItemModel, slot: int, row: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QStandardItemModel_removeRows ".} =
  var nimfunc = cast[ptr QStandardItemModelremoveRowsProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QStandardItemModelremoveColumns*(self: gen_qstandarditemmodel_types.QStandardItemModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQStandardItemModel_virtualbase_removeColumns(self.h, column, count, parent.h)

type QStandardItemModelremoveColumnsProc* = proc(column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc onremoveColumns*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModelremoveColumnsProc) =
  # TODO check subclass
  var tmp = new QStandardItemModelremoveColumnsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_removeColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_removeColumns(self: ptr cQStandardItemModel, slot: int, column: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QStandardItemModel_removeColumns ".} =
  var nimfunc = cast[ptr QStandardItemModelremoveColumnsProc](cast[pointer](slot))
  let slotval1 = column

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QStandardItemModelflags*(self: gen_qstandarditemmodel_types.QStandardItemModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fQStandardItemModel_virtualbase_flags(self.h, index.h))

type QStandardItemModelflagsProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): cint
proc onflags*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModelflagsProc) =
  # TODO check subclass
  var tmp = new QStandardItemModelflagsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_flags(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_flags(self: ptr cQStandardItemModel, slot: int, index: pointer): cint {.exportc: "miqt_exec_callback_QStandardItemModel_flags ".} =
  var nimfunc = cast[ptr QStandardItemModelflagsProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  cint(virtualReturn)
proc QStandardItemModelsupportedDropActions*(self: gen_qstandarditemmodel_types.QStandardItemModel, ): cint =
  cint(fQStandardItemModel_virtualbase_supportedDropActions(self.h))

type QStandardItemModelsupportedDropActionsProc* = proc(): cint
proc onsupportedDropActions*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModelsupportedDropActionsProc) =
  # TODO check subclass
  var tmp = new QStandardItemModelsupportedDropActionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_supportedDropActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_supportedDropActions(self: ptr cQStandardItemModel, slot: int): cint {.exportc: "miqt_exec_callback_QStandardItemModel_supportedDropActions ".} =
  var nimfunc = cast[ptr QStandardItemModelsupportedDropActionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QStandardItemModelitemData*(self: gen_qstandarditemmodel_types.QStandardItemModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fQStandardItemModel_virtualbase_itemData(self.h, index.h)
  var vx_ret: Table[cint, gen_qvariant_types.QVariant]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var v_entry_Value = gen_qvariant_types.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

type QStandardItemModelitemDataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant]
proc onitemData*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModelitemDataProc) =
  # TODO check subclass
  var tmp = new QStandardItemModelitemDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_itemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_itemData(self: ptr cQStandardItemModel, slot: int, index: pointer): struct_miqt_map {.exportc: "miqt_exec_callback_QStandardItemModel_itemData ".} =
  var nimfunc = cast[ptr QStandardItemModelitemDataProc](cast[pointer](slot))
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
proc QStandardItemModelsetItemData*(self: gen_qstandarditemmodel_types.QStandardItemModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool =
  var roles_Keys_CArray = newSeq[cint](len(roles))
  var roles_Values_CArray = newSeq[pointer](len(roles))
  var roles_ctr = 0
  for rolesk, rolesv in roles:
    roles_Keys_CArray[roles_ctr] = roles_k
    roles_Values_CArray[roles_ctr] = roles_v.h
    roles_ctr += 1

  fQStandardItemModel_virtualbase_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

type QStandardItemModelsetItemDataProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool
proc onsetItemData*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModelsetItemDataProc) =
  # TODO check subclass
  var tmp = new QStandardItemModelsetItemDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_setItemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_setItemData(self: ptr cQStandardItemModel, slot: int, index: pointer, roles: struct_miqt_map): bool {.exportc: "miqt_exec_callback_QStandardItemModel_setItemData ".} =
  var nimfunc = cast[ptr QStandardItemModelsetItemDataProc](cast[pointer](slot))
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
proc QStandardItemModelsort*(self: gen_qstandarditemmodel_types.QStandardItemModel, column: cint, order: cint): void =
  fQStandardItemModel_virtualbase_sort(self.h, column, cint(order))

type QStandardItemModelsortProc* = proc(column: cint, order: cint): void
proc onsort*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModelsortProc) =
  # TODO check subclass
  var tmp = new QStandardItemModelsortProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_sort(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_sort(self: ptr cQStandardItemModel, slot: int, column: cint, order: cint): void {.exportc: "miqt_exec_callback_QStandardItemModel_sort ".} =
  var nimfunc = cast[ptr QStandardItemModelsortProc](cast[pointer](slot))
  let slotval1 = column

  let slotval2 = cint(order)


  nimfunc[](slotval1, slotval2)
proc QStandardItemModelmimeTypes*(self: gen_qstandarditemmodel_types.QStandardItemModel, ): seq[string] =
  var v_ma = fQStandardItemModel_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QStandardItemModelmimeTypesProc* = proc(): seq[string]
proc onmimeTypes*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModelmimeTypesProc) =
  # TODO check subclass
  var tmp = new QStandardItemModelmimeTypesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_mimeTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_mimeTypes(self: ptr cQStandardItemModel, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QStandardItemModel_mimeTypes ".} =
  var nimfunc = cast[ptr QStandardItemModelmimeTypesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QStandardItemModelmimeData*(self: gen_qstandarditemmodel_types.QStandardItemModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fQStandardItemModel_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))))

type QStandardItemModelmimeDataProc* = proc(indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData
proc onmimeData*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModelmimeDataProc) =
  # TODO check subclass
  var tmp = new QStandardItemModelmimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_mimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_mimeData(self: ptr cQStandardItemModel, slot: int, indexes: struct_miqt_array): pointer {.exportc: "miqt_exec_callback_QStandardItemModel_mimeData ".} =
  var nimfunc = cast[ptr QStandardItemModelmimeDataProc](cast[pointer](slot))
  var vindexes_ma = indexes
  var vindexesx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(vindexes_ma.len))
  let vindexes_outCast = cast[ptr UncheckedArray[pointer]](vindexes_ma.data)
  for i in 0 ..< vindexes_ma.len:
    vindexesx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: vindexes_outCast[i])
  let slotval1 = vindexesx_ret


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QStandardItemModeldropMimeData*(self: gen_qstandarditemmodel_types.QStandardItemModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQStandardItemModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

type QStandardItemModeldropMimeDataProc* = proc(data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc ondropMimeData*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModeldropMimeDataProc) =
  # TODO check subclass
  var tmp = new QStandardItemModeldropMimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_dropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_dropMimeData(self: ptr cQStandardItemModel, slot: int, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QStandardItemModel_dropMimeData ".} =
  var nimfunc = cast[ptr QStandardItemModeldropMimeDataProc](cast[pointer](slot))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data)

  let slotval2 = cint(action)

  let slotval3 = row

  let slotval4 = column

  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QStandardItemModelsibling*(self: gen_qstandarditemmodel_types.QStandardItemModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQStandardItemModel_virtualbase_sibling(self.h, row, column, idx.h))

type QStandardItemModelsiblingProc* = proc(row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onsibling*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModelsiblingProc) =
  # TODO check subclass
  var tmp = new QStandardItemModelsiblingProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_sibling(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_sibling(self: ptr cQStandardItemModel, slot: int, row: cint, column: cint, idx: pointer): pointer {.exportc: "miqt_exec_callback_QStandardItemModel_sibling ".} =
  var nimfunc = cast[ptr QStandardItemModelsiblingProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = column

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QStandardItemModelcanDropMimeData*(self: gen_qstandarditemmodel_types.QStandardItemModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQStandardItemModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

type QStandardItemModelcanDropMimeDataProc* = proc(data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc oncanDropMimeData*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModelcanDropMimeDataProc) =
  # TODO check subclass
  var tmp = new QStandardItemModelcanDropMimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_canDropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_canDropMimeData(self: ptr cQStandardItemModel, slot: int, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QStandardItemModel_canDropMimeData ".} =
  var nimfunc = cast[ptr QStandardItemModelcanDropMimeDataProc](cast[pointer](slot))
  let slotval1 = gen_qmimedata_types.QMimeData(h: data)

  let slotval2 = cint(action)

  let slotval3 = row

  let slotval4 = column

  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QStandardItemModelsupportedDragActions*(self: gen_qstandarditemmodel_types.QStandardItemModel, ): cint =
  cint(fQStandardItemModel_virtualbase_supportedDragActions(self.h))

type QStandardItemModelsupportedDragActionsProc* = proc(): cint
proc onsupportedDragActions*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModelsupportedDragActionsProc) =
  # TODO check subclass
  var tmp = new QStandardItemModelsupportedDragActionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_supportedDragActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_supportedDragActions(self: ptr cQStandardItemModel, slot: int): cint {.exportc: "miqt_exec_callback_QStandardItemModel_supportedDragActions ".} =
  var nimfunc = cast[ptr QStandardItemModelsupportedDragActionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QStandardItemModelmoveRows*(self: gen_qstandarditemmodel_types.QStandardItemModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fQStandardItemModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

type QStandardItemModelmoveRowsProc* = proc(sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool
proc onmoveRows*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModelmoveRowsProc) =
  # TODO check subclass
  var tmp = new QStandardItemModelmoveRowsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_moveRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_moveRows(self: ptr cQStandardItemModel, slot: int, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.exportc: "miqt_exec_callback_QStandardItemModel_moveRows ".} =
  var nimfunc = cast[ptr QStandardItemModelmoveRowsProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent)

  let slotval2 = sourceRow

  let slotval3 = count

  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent)

  let slotval5 = destinationChild


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QStandardItemModelmoveColumns*(self: gen_qstandarditemmodel_types.QStandardItemModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fQStandardItemModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

type QStandardItemModelmoveColumnsProc* = proc(sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool
proc onmoveColumns*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModelmoveColumnsProc) =
  # TODO check subclass
  var tmp = new QStandardItemModelmoveColumnsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_moveColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_moveColumns(self: ptr cQStandardItemModel, slot: int, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.exportc: "miqt_exec_callback_QStandardItemModel_moveColumns ".} =
  var nimfunc = cast[ptr QStandardItemModelmoveColumnsProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent)

  let slotval2 = sourceColumn

  let slotval3 = count

  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent)

  let slotval5 = destinationChild


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc QStandardItemModelfetchMore*(self: gen_qstandarditemmodel_types.QStandardItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): void =
  fQStandardItemModel_virtualbase_fetchMore(self.h, parent.h)

type QStandardItemModelfetchMoreProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): void
proc onfetchMore*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModelfetchMoreProc) =
  # TODO check subclass
  var tmp = new QStandardItemModelfetchMoreProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_fetchMore(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_fetchMore(self: ptr cQStandardItemModel, slot: int, parent: pointer): void {.exportc: "miqt_exec_callback_QStandardItemModel_fetchMore ".} =
  var nimfunc = cast[ptr QStandardItemModelfetchMoreProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  nimfunc[](slotval1)
proc QStandardItemModelcanFetchMore*(self: gen_qstandarditemmodel_types.QStandardItemModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQStandardItemModel_virtualbase_canFetchMore(self.h, parent.h)

type QStandardItemModelcanFetchMoreProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex): bool
proc oncanFetchMore*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModelcanFetchMoreProc) =
  # TODO check subclass
  var tmp = new QStandardItemModelcanFetchMoreProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_canFetchMore(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_canFetchMore(self: ptr cQStandardItemModel, slot: int, parent: pointer): bool {.exportc: "miqt_exec_callback_QStandardItemModel_canFetchMore ".} =
  var nimfunc = cast[ptr QStandardItemModelcanFetchMoreProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QStandardItemModelbuddy*(self: gen_qstandarditemmodel_types.QStandardItemModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQStandardItemModel_virtualbase_buddy(self.h, index.h))

type QStandardItemModelbuddyProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex
proc onbuddy*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModelbuddyProc) =
  # TODO check subclass
  var tmp = new QStandardItemModelbuddyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_buddy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_buddy(self: ptr cQStandardItemModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QStandardItemModel_buddy ".} =
  var nimfunc = cast[ptr QStandardItemModelbuddyProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QStandardItemModelmatch*(self: gen_qstandarditemmodel_types.QStandardItemModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fQStandardItemModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  vx_ret

type QStandardItemModelmatchProc* = proc(start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex]
proc onmatch*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModelmatchProc) =
  # TODO check subclass
  var tmp = new QStandardItemModelmatchProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_match(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_match(self: ptr cQStandardItemModel, slot: int, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.exportc: "miqt_exec_callback_QStandardItemModel_match ".} =
  var nimfunc = cast[ptr QStandardItemModelmatchProc](cast[pointer](slot))
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
proc QStandardItemModelspan*(self: gen_qstandarditemmodel_types.QStandardItemModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQStandardItemModel_virtualbase_span(self.h, index.h))

type QStandardItemModelspanProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize
proc onspan*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModelspanProc) =
  # TODO check subclass
  var tmp = new QStandardItemModelspanProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_span(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_span(self: ptr cQStandardItemModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QStandardItemModel_span ".} =
  var nimfunc = cast[ptr QStandardItemModelspanProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QStandardItemModelsubmit*(self: gen_qstandarditemmodel_types.QStandardItemModel, ): bool =
  fQStandardItemModel_virtualbase_submit(self.h)

type QStandardItemModelsubmitProc* = proc(): bool
proc onsubmit*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModelsubmitProc) =
  # TODO check subclass
  var tmp = new QStandardItemModelsubmitProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_submit(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_submit(self: ptr cQStandardItemModel, slot: int): bool {.exportc: "miqt_exec_callback_QStandardItemModel_submit ".} =
  var nimfunc = cast[ptr QStandardItemModelsubmitProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QStandardItemModelrevert*(self: gen_qstandarditemmodel_types.QStandardItemModel, ): void =
  fQStandardItemModel_virtualbase_revert(self.h)

type QStandardItemModelrevertProc* = proc(): void
proc onrevert*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModelrevertProc) =
  # TODO check subclass
  var tmp = new QStandardItemModelrevertProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_revert(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_revert(self: ptr cQStandardItemModel, slot: int): void {.exportc: "miqt_exec_callback_QStandardItemModel_revert ".} =
  var nimfunc = cast[ptr QStandardItemModelrevertProc](cast[pointer](slot))

  nimfunc[]()
proc QStandardItemModelresetInternalData*(self: gen_qstandarditemmodel_types.QStandardItemModel, ): void =
  fQStandardItemModel_virtualbase_resetInternalData(self.h)

type QStandardItemModelresetInternalDataProc* = proc(): void
proc onresetInternalData*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModelresetInternalDataProc) =
  # TODO check subclass
  var tmp = new QStandardItemModelresetInternalDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_resetInternalData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_resetInternalData(self: ptr cQStandardItemModel, slot: int): void {.exportc: "miqt_exec_callback_QStandardItemModel_resetInternalData ".} =
  var nimfunc = cast[ptr QStandardItemModelresetInternalDataProc](cast[pointer](slot))

  nimfunc[]()
proc QStandardItemModelevent*(self: gen_qstandarditemmodel_types.QStandardItemModel, event: gen_qcoreevent_types.QEvent): bool =
  fQStandardItemModel_virtualbase_event(self.h, event.h)

type QStandardItemModeleventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModeleventProc) =
  # TODO check subclass
  var tmp = new QStandardItemModeleventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_event(self: ptr cQStandardItemModel, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QStandardItemModel_event ".} =
  var nimfunc = cast[ptr QStandardItemModeleventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QStandardItemModeleventFilter*(self: gen_qstandarditemmodel_types.QStandardItemModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQStandardItemModel_virtualbase_eventFilter(self.h, watched.h, event.h)

type QStandardItemModeleventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModeleventFilterProc) =
  # TODO check subclass
  var tmp = new QStandardItemModeleventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_eventFilter(self: ptr cQStandardItemModel, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QStandardItemModel_eventFilter ".} =
  var nimfunc = cast[ptr QStandardItemModeleventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QStandardItemModeltimerEvent*(self: gen_qstandarditemmodel_types.QStandardItemModel, event: gen_qcoreevent_types.QTimerEvent): void =
  fQStandardItemModel_virtualbase_timerEvent(self.h, event.h)

type QStandardItemModeltimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModeltimerEventProc) =
  # TODO check subclass
  var tmp = new QStandardItemModeltimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_timerEvent(self: ptr cQStandardItemModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStandardItemModel_timerEvent ".} =
  var nimfunc = cast[ptr QStandardItemModeltimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QStandardItemModelchildEvent*(self: gen_qstandarditemmodel_types.QStandardItemModel, event: gen_qcoreevent_types.QChildEvent): void =
  fQStandardItemModel_virtualbase_childEvent(self.h, event.h)

type QStandardItemModelchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModelchildEventProc) =
  # TODO check subclass
  var tmp = new QStandardItemModelchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_childEvent(self: ptr cQStandardItemModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStandardItemModel_childEvent ".} =
  var nimfunc = cast[ptr QStandardItemModelchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QStandardItemModelcustomEvent*(self: gen_qstandarditemmodel_types.QStandardItemModel, event: gen_qcoreevent_types.QEvent): void =
  fQStandardItemModel_virtualbase_customEvent(self.h, event.h)

type QStandardItemModelcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModelcustomEventProc) =
  # TODO check subclass
  var tmp = new QStandardItemModelcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_customEvent(self: ptr cQStandardItemModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStandardItemModel_customEvent ".} =
  var nimfunc = cast[ptr QStandardItemModelcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QStandardItemModelconnectNotify*(self: gen_qstandarditemmodel_types.QStandardItemModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQStandardItemModel_virtualbase_connectNotify(self.h, signal.h)

type QStandardItemModelconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModelconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QStandardItemModelconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_connectNotify(self: ptr cQStandardItemModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QStandardItemModel_connectNotify ".} =
  var nimfunc = cast[ptr QStandardItemModelconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QStandardItemModeldisconnectNotify*(self: gen_qstandarditemmodel_types.QStandardItemModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQStandardItemModel_virtualbase_disconnectNotify(self.h, signal.h)

type QStandardItemModeldisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qstandarditemmodel_types.QStandardItemModel, slot: QStandardItemModeldisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QStandardItemModeldisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_disconnectNotify(self: ptr cQStandardItemModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QStandardItemModel_disconnectNotify ".} =
  var nimfunc = cast[ptr QStandardItemModeldisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qstandarditemmodel_types.QStandardItemModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStandardItemModel_staticMetaObject())
proc delete*(self: gen_qstandarditemmodel_types.QStandardItemModel) =
  fcQStandardItemModel_delete(self.h)
