import ./Qt6Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt6Widgets")  & " -fPIC"
{.compile("gen_qtablewidget.cpp", cflags).}


type QTableWidgetItemItemTypeEnum* = distinct cint
template Type*(_: type QTableWidgetItemItemTypeEnum): untyped = 0
template UserType*(_: type QTableWidgetItemItemTypeEnum): untyped = 1000


import ./gen_qtablewidget_types
export gen_qtablewidget_types

import
  ../QtCore/gen_qabstractitemmodel_types,
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qdatastream_types,
  ../QtCore/gen_qitemselectionmodel_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qmimedata_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qbrush_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qfont_types,
  ../QtGui/gen_qicon_types,
  ../QtGui/gen_qpaintdevice_types,
  ../QtGui/gen_qpaintengine_types,
  ../QtGui/gen_qpainter_types,
  ../QtGui/gen_qregion_types,
  ./gen_qabstractitemdelegate_types,
  ./gen_qstyleoption_types,
  ./gen_qtableview,
  ./gen_qwidget_types
export
  gen_qabstractitemmodel_types,
  gen_qcoreevent_types,
  gen_qdatastream_types,
  gen_qitemselectionmodel_types,
  gen_qmetaobject_types,
  gen_qmimedata_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qrect_types,
  gen_qsize_types,
  gen_qvariant_types,
  gen_qbrush_types,
  gen_qevent_types,
  gen_qfont_types,
  gen_qicon_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qregion_types,
  gen_qabstractitemdelegate_types,
  gen_qstyleoption_types,
  gen_qtableview,
  gen_qwidget_types

type cQTableWidgetSelectionRange*{.exportc: "QTableWidgetSelectionRange", incompleteStruct.} = object
type cQTableWidgetItem*{.exportc: "QTableWidgetItem", incompleteStruct.} = object
type cQTableWidget*{.exportc: "QTableWidget", incompleteStruct.} = object

proc fcQTableWidgetSelectionRange_topRow(self: pointer, ): cint {.importc: "QTableWidgetSelectionRange_topRow".}
proc fcQTableWidgetSelectionRange_bottomRow(self: pointer, ): cint {.importc: "QTableWidgetSelectionRange_bottomRow".}
proc fcQTableWidgetSelectionRange_leftColumn(self: pointer, ): cint {.importc: "QTableWidgetSelectionRange_leftColumn".}
proc fcQTableWidgetSelectionRange_rightColumn(self: pointer, ): cint {.importc: "QTableWidgetSelectionRange_rightColumn".}
proc fcQTableWidgetSelectionRange_rowCount(self: pointer, ): cint {.importc: "QTableWidgetSelectionRange_rowCount".}
proc fcQTableWidgetSelectionRange_columnCount(self: pointer, ): cint {.importc: "QTableWidgetSelectionRange_columnCount".}
proc fcQTableWidgetSelectionRange_new(): ptr cQTableWidgetSelectionRange {.importc: "QTableWidgetSelectionRange_new".}
proc fcQTableWidgetSelectionRange_new2(top: cint, left: cint, bottom: cint, right: cint): ptr cQTableWidgetSelectionRange {.importc: "QTableWidgetSelectionRange_new2".}
proc fcQTableWidgetSelectionRange_delete(self: pointer) {.importc: "QTableWidgetSelectionRange_delete".}
proc fcQTableWidgetItem_clone(self: pointer, ): pointer {.importc: "QTableWidgetItem_clone".}
proc fcQTableWidgetItem_tableWidget(self: pointer, ): pointer {.importc: "QTableWidgetItem_tableWidget".}
proc fcQTableWidgetItem_row(self: pointer, ): cint {.importc: "QTableWidgetItem_row".}
proc fcQTableWidgetItem_column(self: pointer, ): cint {.importc: "QTableWidgetItem_column".}
proc fcQTableWidgetItem_setSelected(self: pointer, select: bool): void {.importc: "QTableWidgetItem_setSelected".}
proc fcQTableWidgetItem_isSelected(self: pointer, ): bool {.importc: "QTableWidgetItem_isSelected".}
proc fcQTableWidgetItem_flags(self: pointer, ): cint {.importc: "QTableWidgetItem_flags".}
proc fcQTableWidgetItem_setFlags(self: pointer, flags: cint): void {.importc: "QTableWidgetItem_setFlags".}
proc fcQTableWidgetItem_text(self: pointer, ): struct_miqt_string {.importc: "QTableWidgetItem_text".}
proc fcQTableWidgetItem_setText(self: pointer, text: struct_miqt_string): void {.importc: "QTableWidgetItem_setText".}
proc fcQTableWidgetItem_icon(self: pointer, ): pointer {.importc: "QTableWidgetItem_icon".}
proc fcQTableWidgetItem_setIcon(self: pointer, icon: pointer): void {.importc: "QTableWidgetItem_setIcon".}
proc fcQTableWidgetItem_statusTip(self: pointer, ): struct_miqt_string {.importc: "QTableWidgetItem_statusTip".}
proc fcQTableWidgetItem_setStatusTip(self: pointer, statusTip: struct_miqt_string): void {.importc: "QTableWidgetItem_setStatusTip".}
proc fcQTableWidgetItem_toolTip(self: pointer, ): struct_miqt_string {.importc: "QTableWidgetItem_toolTip".}
proc fcQTableWidgetItem_setToolTip(self: pointer, toolTip: struct_miqt_string): void {.importc: "QTableWidgetItem_setToolTip".}
proc fcQTableWidgetItem_whatsThis(self: pointer, ): struct_miqt_string {.importc: "QTableWidgetItem_whatsThis".}
proc fcQTableWidgetItem_setWhatsThis(self: pointer, whatsThis: struct_miqt_string): void {.importc: "QTableWidgetItem_setWhatsThis".}
proc fcQTableWidgetItem_font(self: pointer, ): pointer {.importc: "QTableWidgetItem_font".}
proc fcQTableWidgetItem_setFont(self: pointer, font: pointer): void {.importc: "QTableWidgetItem_setFont".}
proc fcQTableWidgetItem_textAlignment(self: pointer, ): cint {.importc: "QTableWidgetItem_textAlignment".}
proc fcQTableWidgetItem_setTextAlignment(self: pointer, alignment: cint): void {.importc: "QTableWidgetItem_setTextAlignment".}
proc fcQTableWidgetItem_setTextAlignmentWithAlignment(self: pointer, alignment: cint): void {.importc: "QTableWidgetItem_setTextAlignmentWithAlignment".}
proc fcQTableWidgetItem_setTextAlignment2(self: pointer, alignment: cint): void {.importc: "QTableWidgetItem_setTextAlignment2".}
proc fcQTableWidgetItem_background(self: pointer, ): pointer {.importc: "QTableWidgetItem_background".}
proc fcQTableWidgetItem_setBackground(self: pointer, brush: pointer): void {.importc: "QTableWidgetItem_setBackground".}
proc fcQTableWidgetItem_foreground(self: pointer, ): pointer {.importc: "QTableWidgetItem_foreground".}
proc fcQTableWidgetItem_setForeground(self: pointer, brush: pointer): void {.importc: "QTableWidgetItem_setForeground".}
proc fcQTableWidgetItem_checkState(self: pointer, ): cint {.importc: "QTableWidgetItem_checkState".}
proc fcQTableWidgetItem_setCheckState(self: pointer, state: cint): void {.importc: "QTableWidgetItem_setCheckState".}
proc fcQTableWidgetItem_sizeHint(self: pointer, ): pointer {.importc: "QTableWidgetItem_sizeHint".}
proc fcQTableWidgetItem_setSizeHint(self: pointer, size: pointer): void {.importc: "QTableWidgetItem_setSizeHint".}
proc fcQTableWidgetItem_data(self: pointer, role: cint): pointer {.importc: "QTableWidgetItem_data".}
proc fcQTableWidgetItem_setData(self: pointer, role: cint, value: pointer): void {.importc: "QTableWidgetItem_setData".}
proc fcQTableWidgetItem_operatorLesser(self: pointer, other: pointer): bool {.importc: "QTableWidgetItem_operatorLesser".}
proc fcQTableWidgetItem_read(self: pointer, inVal: pointer): void {.importc: "QTableWidgetItem_read".}
proc fcQTableWidgetItem_write(self: pointer, outVal: pointer): void {.importc: "QTableWidgetItem_write".}
proc fcQTableWidgetItem_operatorAssign(self: pointer, other: pointer): void {.importc: "QTableWidgetItem_operatorAssign".}
proc fcQTableWidgetItem_typeX(self: pointer, ): cint {.importc: "QTableWidgetItem_type".}
type cQTableWidgetItemVTable = object
  destructor*: proc(vtbl: ptr cQTableWidgetItemVTable, self: ptr cQTableWidgetItem) {.cdecl, raises:[], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  data*: proc(vtbl, self: pointer, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  setData*: proc(vtbl, self: pointer, role: cint, value: pointer): void {.cdecl, raises: [], gcsafe.}
  operatorLesser*: proc(vtbl, self: pointer, other: pointer): bool {.cdecl, raises: [], gcsafe.}
  read*: proc(vtbl, self: pointer, inVal: pointer): void {.cdecl, raises: [], gcsafe.}
  write*: proc(vtbl, self: pointer, outVal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQTableWidgetItem_virtualbase_clone(self: pointer, ): pointer {.importc: "QTableWidgetItem_virtualbase_clone".}
proc fcQTableWidgetItem_virtualbase_data(self: pointer, role: cint): pointer {.importc: "QTableWidgetItem_virtualbase_data".}
proc fcQTableWidgetItem_virtualbase_setData(self: pointer, role: cint, value: pointer): void {.importc: "QTableWidgetItem_virtualbase_setData".}
proc fcQTableWidgetItem_virtualbase_operatorLesser(self: pointer, other: pointer): bool {.importc: "QTableWidgetItem_virtualbase_operatorLesser".}
proc fcQTableWidgetItem_virtualbase_read(self: pointer, inVal: pointer): void {.importc: "QTableWidgetItem_virtualbase_read".}
proc fcQTableWidgetItem_virtualbase_write(self: pointer, outVal: pointer): void {.importc: "QTableWidgetItem_virtualbase_write".}
proc fcQTableWidgetItem_new(vtbl: pointer, ): ptr cQTableWidgetItem {.importc: "QTableWidgetItem_new".}
proc fcQTableWidgetItem_new2(vtbl: pointer, text: struct_miqt_string): ptr cQTableWidgetItem {.importc: "QTableWidgetItem_new2".}
proc fcQTableWidgetItem_new3(vtbl: pointer, icon: pointer, text: struct_miqt_string): ptr cQTableWidgetItem {.importc: "QTableWidgetItem_new3".}
proc fcQTableWidgetItem_new4(vtbl: pointer, other: pointer): ptr cQTableWidgetItem {.importc: "QTableWidgetItem_new4".}
proc fcQTableWidgetItem_new5(vtbl: pointer, typeVal: cint): ptr cQTableWidgetItem {.importc: "QTableWidgetItem_new5".}
proc fcQTableWidgetItem_new6(vtbl: pointer, text: struct_miqt_string, typeVal: cint): ptr cQTableWidgetItem {.importc: "QTableWidgetItem_new6".}
proc fcQTableWidgetItem_new7(vtbl: pointer, icon: pointer, text: struct_miqt_string, typeVal: cint): ptr cQTableWidgetItem {.importc: "QTableWidgetItem_new7".}
proc fcQTableWidgetItem_delete(self: pointer) {.importc: "QTableWidgetItem_delete".}
proc fcQTableWidget_metaObject(self: pointer, ): pointer {.importc: "QTableWidget_metaObject".}
proc fcQTableWidget_metacast(self: pointer, param1: cstring): pointer {.importc: "QTableWidget_metacast".}
proc fcQTableWidget_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTableWidget_metacall".}
proc fcQTableWidget_tr(s: cstring): struct_miqt_string {.importc: "QTableWidget_tr".}
proc fcQTableWidget_setRowCount(self: pointer, rows: cint): void {.importc: "QTableWidget_setRowCount".}
proc fcQTableWidget_rowCount(self: pointer, ): cint {.importc: "QTableWidget_rowCount".}
proc fcQTableWidget_setColumnCount(self: pointer, columns: cint): void {.importc: "QTableWidget_setColumnCount".}
proc fcQTableWidget_columnCount(self: pointer, ): cint {.importc: "QTableWidget_columnCount".}
proc fcQTableWidget_row(self: pointer, item: pointer): cint {.importc: "QTableWidget_row".}
proc fcQTableWidget_column(self: pointer, item: pointer): cint {.importc: "QTableWidget_column".}
proc fcQTableWidget_item(self: pointer, row: cint, column: cint): pointer {.importc: "QTableWidget_item".}
proc fcQTableWidget_setItem(self: pointer, row: cint, column: cint, item: pointer): void {.importc: "QTableWidget_setItem".}
proc fcQTableWidget_takeItem(self: pointer, row: cint, column: cint): pointer {.importc: "QTableWidget_takeItem".}
proc fcQTableWidget_items(self: pointer, data: pointer): struct_miqt_array {.importc: "QTableWidget_items".}
proc fcQTableWidget_indexFromItem(self: pointer, item: pointer): pointer {.importc: "QTableWidget_indexFromItem".}
proc fcQTableWidget_itemFromIndex(self: pointer, index: pointer): pointer {.importc: "QTableWidget_itemFromIndex".}
proc fcQTableWidget_verticalHeaderItem(self: pointer, row: cint): pointer {.importc: "QTableWidget_verticalHeaderItem".}
proc fcQTableWidget_setVerticalHeaderItem(self: pointer, row: cint, item: pointer): void {.importc: "QTableWidget_setVerticalHeaderItem".}
proc fcQTableWidget_takeVerticalHeaderItem(self: pointer, row: cint): pointer {.importc: "QTableWidget_takeVerticalHeaderItem".}
proc fcQTableWidget_horizontalHeaderItem(self: pointer, column: cint): pointer {.importc: "QTableWidget_horizontalHeaderItem".}
proc fcQTableWidget_setHorizontalHeaderItem(self: pointer, column: cint, item: pointer): void {.importc: "QTableWidget_setHorizontalHeaderItem".}
proc fcQTableWidget_takeHorizontalHeaderItem(self: pointer, column: cint): pointer {.importc: "QTableWidget_takeHorizontalHeaderItem".}
proc fcQTableWidget_setVerticalHeaderLabels(self: pointer, labels: struct_miqt_array): void {.importc: "QTableWidget_setVerticalHeaderLabels".}
proc fcQTableWidget_setHorizontalHeaderLabels(self: pointer, labels: struct_miqt_array): void {.importc: "QTableWidget_setHorizontalHeaderLabels".}
proc fcQTableWidget_currentRow(self: pointer, ): cint {.importc: "QTableWidget_currentRow".}
proc fcQTableWidget_currentColumn(self: pointer, ): cint {.importc: "QTableWidget_currentColumn".}
proc fcQTableWidget_currentItem(self: pointer, ): pointer {.importc: "QTableWidget_currentItem".}
proc fcQTableWidget_setCurrentItem(self: pointer, item: pointer): void {.importc: "QTableWidget_setCurrentItem".}
proc fcQTableWidget_setCurrentItem2(self: pointer, item: pointer, command: cint): void {.importc: "QTableWidget_setCurrentItem2".}
proc fcQTableWidget_setCurrentCell(self: pointer, row: cint, column: cint): void {.importc: "QTableWidget_setCurrentCell".}
proc fcQTableWidget_setCurrentCell2(self: pointer, row: cint, column: cint, command: cint): void {.importc: "QTableWidget_setCurrentCell2".}
proc fcQTableWidget_sortItems(self: pointer, column: cint): void {.importc: "QTableWidget_sortItems".}
proc fcQTableWidget_setSortingEnabled(self: pointer, enable: bool): void {.importc: "QTableWidget_setSortingEnabled".}
proc fcQTableWidget_isSortingEnabled(self: pointer, ): bool {.importc: "QTableWidget_isSortingEnabled".}
proc fcQTableWidget_editItem(self: pointer, item: pointer): void {.importc: "QTableWidget_editItem".}
proc fcQTableWidget_openPersistentEditor(self: pointer, item: pointer): void {.importc: "QTableWidget_openPersistentEditor".}
proc fcQTableWidget_closePersistentEditor(self: pointer, item: pointer): void {.importc: "QTableWidget_closePersistentEditor".}
proc fcQTableWidget_isPersistentEditorOpen(self: pointer, item: pointer): bool {.importc: "QTableWidget_isPersistentEditorOpen".}
proc fcQTableWidget_cellWidget(self: pointer, row: cint, column: cint): pointer {.importc: "QTableWidget_cellWidget".}
proc fcQTableWidget_setCellWidget(self: pointer, row: cint, column: cint, widget: pointer): void {.importc: "QTableWidget_setCellWidget".}
proc fcQTableWidget_removeCellWidget(self: pointer, row: cint, column: cint): void {.importc: "QTableWidget_removeCellWidget".}
proc fcQTableWidget_setRangeSelected(self: pointer, range: pointer, select: bool): void {.importc: "QTableWidget_setRangeSelected".}
proc fcQTableWidget_selectedRanges(self: pointer, ): struct_miqt_array {.importc: "QTableWidget_selectedRanges".}
proc fcQTableWidget_selectedItems(self: pointer, ): struct_miqt_array {.importc: "QTableWidget_selectedItems".}
proc fcQTableWidget_findItems(self: pointer, text: struct_miqt_string, flags: cint): struct_miqt_array {.importc: "QTableWidget_findItems".}
proc fcQTableWidget_visualRow(self: pointer, logicalRow: cint): cint {.importc: "QTableWidget_visualRow".}
proc fcQTableWidget_visualColumn(self: pointer, logicalColumn: cint): cint {.importc: "QTableWidget_visualColumn".}
proc fcQTableWidget_itemAt(self: pointer, p: pointer): pointer {.importc: "QTableWidget_itemAt".}
proc fcQTableWidget_itemAt2(self: pointer, x: cint, y: cint): pointer {.importc: "QTableWidget_itemAt2".}
proc fcQTableWidget_visualItemRect(self: pointer, item: pointer): pointer {.importc: "QTableWidget_visualItemRect".}
proc fcQTableWidget_itemPrototype(self: pointer, ): pointer {.importc: "QTableWidget_itemPrototype".}
proc fcQTableWidget_setItemPrototype(self: pointer, item: pointer): void {.importc: "QTableWidget_setItemPrototype".}
proc fcQTableWidget_scrollToItem(self: pointer, item: pointer): void {.importc: "QTableWidget_scrollToItem".}
proc fcQTableWidget_insertRow(self: pointer, row: cint): void {.importc: "QTableWidget_insertRow".}
proc fcQTableWidget_insertColumn(self: pointer, column: cint): void {.importc: "QTableWidget_insertColumn".}
proc fcQTableWidget_removeRow(self: pointer, row: cint): void {.importc: "QTableWidget_removeRow".}
proc fcQTableWidget_removeColumn(self: pointer, column: cint): void {.importc: "QTableWidget_removeColumn".}
proc fcQTableWidget_clear(self: pointer, ): void {.importc: "QTableWidget_clear".}
proc fcQTableWidget_clearContents(self: pointer, ): void {.importc: "QTableWidget_clearContents".}
proc fcQTableWidget_itemPressed(self: pointer, item: pointer): void {.importc: "QTableWidget_itemPressed".}
proc fcQTableWidget_connect_itemPressed(self: pointer, slot: int) {.importc: "QTableWidget_connect_itemPressed".}
proc fcQTableWidget_itemClicked(self: pointer, item: pointer): void {.importc: "QTableWidget_itemClicked".}
proc fcQTableWidget_connect_itemClicked(self: pointer, slot: int) {.importc: "QTableWidget_connect_itemClicked".}
proc fcQTableWidget_itemDoubleClicked(self: pointer, item: pointer): void {.importc: "QTableWidget_itemDoubleClicked".}
proc fcQTableWidget_connect_itemDoubleClicked(self: pointer, slot: int) {.importc: "QTableWidget_connect_itemDoubleClicked".}
proc fcQTableWidget_itemActivated(self: pointer, item: pointer): void {.importc: "QTableWidget_itemActivated".}
proc fcQTableWidget_connect_itemActivated(self: pointer, slot: int) {.importc: "QTableWidget_connect_itemActivated".}
proc fcQTableWidget_itemEntered(self: pointer, item: pointer): void {.importc: "QTableWidget_itemEntered".}
proc fcQTableWidget_connect_itemEntered(self: pointer, slot: int) {.importc: "QTableWidget_connect_itemEntered".}
proc fcQTableWidget_itemChanged(self: pointer, item: pointer): void {.importc: "QTableWidget_itemChanged".}
proc fcQTableWidget_connect_itemChanged(self: pointer, slot: int) {.importc: "QTableWidget_connect_itemChanged".}
proc fcQTableWidget_currentItemChanged(self: pointer, current: pointer, previous: pointer): void {.importc: "QTableWidget_currentItemChanged".}
proc fcQTableWidget_connect_currentItemChanged(self: pointer, slot: int) {.importc: "QTableWidget_connect_currentItemChanged".}
proc fcQTableWidget_itemSelectionChanged(self: pointer, ): void {.importc: "QTableWidget_itemSelectionChanged".}
proc fcQTableWidget_connect_itemSelectionChanged(self: pointer, slot: int) {.importc: "QTableWidget_connect_itemSelectionChanged".}
proc fcQTableWidget_cellPressed(self: pointer, row: cint, column: cint): void {.importc: "QTableWidget_cellPressed".}
proc fcQTableWidget_connect_cellPressed(self: pointer, slot: int) {.importc: "QTableWidget_connect_cellPressed".}
proc fcQTableWidget_cellClicked(self: pointer, row: cint, column: cint): void {.importc: "QTableWidget_cellClicked".}
proc fcQTableWidget_connect_cellClicked(self: pointer, slot: int) {.importc: "QTableWidget_connect_cellClicked".}
proc fcQTableWidget_cellDoubleClicked(self: pointer, row: cint, column: cint): void {.importc: "QTableWidget_cellDoubleClicked".}
proc fcQTableWidget_connect_cellDoubleClicked(self: pointer, slot: int) {.importc: "QTableWidget_connect_cellDoubleClicked".}
proc fcQTableWidget_cellActivated(self: pointer, row: cint, column: cint): void {.importc: "QTableWidget_cellActivated".}
proc fcQTableWidget_connect_cellActivated(self: pointer, slot: int) {.importc: "QTableWidget_connect_cellActivated".}
proc fcQTableWidget_cellEntered(self: pointer, row: cint, column: cint): void {.importc: "QTableWidget_cellEntered".}
proc fcQTableWidget_connect_cellEntered(self: pointer, slot: int) {.importc: "QTableWidget_connect_cellEntered".}
proc fcQTableWidget_cellChanged(self: pointer, row: cint, column: cint): void {.importc: "QTableWidget_cellChanged".}
proc fcQTableWidget_connect_cellChanged(self: pointer, slot: int) {.importc: "QTableWidget_connect_cellChanged".}
proc fcQTableWidget_currentCellChanged(self: pointer, currentRow: cint, currentColumn: cint, previousRow: cint, previousColumn: cint): void {.importc: "QTableWidget_currentCellChanged".}
proc fcQTableWidget_connect_currentCellChanged(self: pointer, slot: int) {.importc: "QTableWidget_connect_currentCellChanged".}
proc fcQTableWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTableWidget_tr2".}
proc fcQTableWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTableWidget_tr3".}
proc fcQTableWidget_sortItems2(self: pointer, column: cint, order: cint): void {.importc: "QTableWidget_sortItems2".}
proc fcQTableWidget_scrollToItem2(self: pointer, item: pointer, hint: cint): void {.importc: "QTableWidget_scrollToItem2".}
type cQTableWidgetVTable = object
  destructor*: proc(vtbl: ptr cQTableWidgetVTable, self: ptr cQTableWidget) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  mimeTypes*: proc(vtbl, self: pointer, ): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  mimeData*: proc(vtbl, self: pointer, items: struct_miqt_array): pointer {.cdecl, raises: [], gcsafe.}
  dropMimeData*: proc(vtbl, self: pointer, row: cint, column: cint, data: pointer, action: cint): bool {.cdecl, raises: [], gcsafe.}
  supportedDropActions*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  setRootIndex*: proc(vtbl, self: pointer, index: pointer): void {.cdecl, raises: [], gcsafe.}
  setSelectionModel*: proc(vtbl, self: pointer, selectionModel: pointer): void {.cdecl, raises: [], gcsafe.}
  doItemsLayout*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  visualRect*: proc(vtbl, self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  scrollTo*: proc(vtbl, self: pointer, index: pointer, hint: cint): void {.cdecl, raises: [], gcsafe.}
  indexAt*: proc(vtbl, self: pointer, p: pointer): pointer {.cdecl, raises: [], gcsafe.}
  scrollContentsBy*: proc(vtbl, self: pointer, dx: cint, dy: cint): void {.cdecl, raises: [], gcsafe.}
  initViewItemOption*: proc(vtbl, self: pointer, option: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  horizontalOffset*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  verticalOffset*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  moveCursor*: proc(vtbl, self: pointer, cursorAction: cint, modifiers: cint): pointer {.cdecl, raises: [], gcsafe.}
  setSelection*: proc(vtbl, self: pointer, rect: pointer, command: cint): void {.cdecl, raises: [], gcsafe.}
  visualRegionForSelection*: proc(vtbl, self: pointer, selection: pointer): pointer {.cdecl, raises: [], gcsafe.}
  selectedIndexes*: proc(vtbl, self: pointer, ): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  updateGeometries*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  viewportSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  sizeHintForRow*: proc(vtbl, self: pointer, row: cint): cint {.cdecl, raises: [], gcsafe.}
  sizeHintForColumn*: proc(vtbl, self: pointer, column: cint): cint {.cdecl, raises: [], gcsafe.}
  verticalScrollbarAction*: proc(vtbl, self: pointer, action: cint): void {.cdecl, raises: [], gcsafe.}
  horizontalScrollbarAction*: proc(vtbl, self: pointer, action: cint): void {.cdecl, raises: [], gcsafe.}
  isIndexHidden*: proc(vtbl, self: pointer, index: pointer): bool {.cdecl, raises: [], gcsafe.}
  selectionChanged*: proc(vtbl, self: pointer, selected: pointer, deselected: pointer): void {.cdecl, raises: [], gcsafe.}
  currentChanged*: proc(vtbl, self: pointer, current: pointer, previous: pointer): void {.cdecl, raises: [], gcsafe.}
  keyboardSearch*: proc(vtbl, self: pointer, search: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
  itemDelegateForIndex*: proc(vtbl, self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, query: cint): pointer {.cdecl, raises: [], gcsafe.}
  reset*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  selectAll*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  dataChanged*: proc(vtbl, self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.cdecl, raises: [], gcsafe.}
  rowsInserted*: proc(vtbl, self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl, raises: [], gcsafe.}
  rowsAboutToBeRemoved*: proc(vtbl, self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl, raises: [], gcsafe.}
  updateEditorData*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  updateEditorGeometries*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  verticalScrollbarValueChanged*: proc(vtbl, self: pointer, value: cint): void {.cdecl, raises: [], gcsafe.}
  horizontalScrollbarValueChanged*: proc(vtbl, self: pointer, value: cint): void {.cdecl, raises: [], gcsafe.}
  closeEditor*: proc(vtbl, self: pointer, editor: pointer, hint: cint): void {.cdecl, raises: [], gcsafe.}
  commitData*: proc(vtbl, self: pointer, editor: pointer): void {.cdecl, raises: [], gcsafe.}
  editorDestroyed*: proc(vtbl, self: pointer, editor: pointer): void {.cdecl, raises: [], gcsafe.}
  edit2*: proc(vtbl, self: pointer, index: pointer, trigger: cint, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  selectionCommand*: proc(vtbl, self: pointer, index: pointer, event: pointer): cint {.cdecl, raises: [], gcsafe.}
  startDrag*: proc(vtbl, self: pointer, supportedActions: cint): void {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(vtbl, self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  viewportEvent*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, objectVal: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setupViewport*: proc(vtbl, self: pointer, viewport: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  initStyleOption*: proc(vtbl, self: pointer, option: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQTableWidget_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QTableWidget_virtualbase_metaObject".}
proc fcQTableWidget_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QTableWidget_virtualbase_metacast".}
proc fcQTableWidget_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTableWidget_virtualbase_metacall".}
proc fcQTableWidget_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QTableWidget_virtualbase_event".}
proc fcQTableWidget_virtualbase_mimeTypes(self: pointer, ): struct_miqt_array {.importc: "QTableWidget_virtualbase_mimeTypes".}
proc fcQTableWidget_virtualbase_mimeData(self: pointer, items: struct_miqt_array): pointer {.importc: "QTableWidget_virtualbase_mimeData".}
proc fcQTableWidget_virtualbase_dropMimeData(self: pointer, row: cint, column: cint, data: pointer, action: cint): bool {.importc: "QTableWidget_virtualbase_dropMimeData".}
proc fcQTableWidget_virtualbase_supportedDropActions(self: pointer, ): cint {.importc: "QTableWidget_virtualbase_supportedDropActions".}
proc fcQTableWidget_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QTableWidget_virtualbase_dropEvent".}
proc fcQTableWidget_virtualbase_setRootIndex(self: pointer, index: pointer): void {.importc: "QTableWidget_virtualbase_setRootIndex".}
proc fcQTableWidget_virtualbase_setSelectionModel(self: pointer, selectionModel: pointer): void {.importc: "QTableWidget_virtualbase_setSelectionModel".}
proc fcQTableWidget_virtualbase_doItemsLayout(self: pointer, ): void {.importc: "QTableWidget_virtualbase_doItemsLayout".}
proc fcQTableWidget_virtualbase_visualRect(self: pointer, index: pointer): pointer {.importc: "QTableWidget_virtualbase_visualRect".}
proc fcQTableWidget_virtualbase_scrollTo(self: pointer, index: pointer, hint: cint): void {.importc: "QTableWidget_virtualbase_scrollTo".}
proc fcQTableWidget_virtualbase_indexAt(self: pointer, p: pointer): pointer {.importc: "QTableWidget_virtualbase_indexAt".}
proc fcQTableWidget_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.importc: "QTableWidget_virtualbase_scrollContentsBy".}
proc fcQTableWidget_virtualbase_initViewItemOption(self: pointer, option: pointer): void {.importc: "QTableWidget_virtualbase_initViewItemOption".}
proc fcQTableWidget_virtualbase_paintEvent(self: pointer, e: pointer): void {.importc: "QTableWidget_virtualbase_paintEvent".}
proc fcQTableWidget_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QTableWidget_virtualbase_timerEvent".}
proc fcQTableWidget_virtualbase_horizontalOffset(self: pointer, ): cint {.importc: "QTableWidget_virtualbase_horizontalOffset".}
proc fcQTableWidget_virtualbase_verticalOffset(self: pointer, ): cint {.importc: "QTableWidget_virtualbase_verticalOffset".}
proc fcQTableWidget_virtualbase_moveCursor(self: pointer, cursorAction: cint, modifiers: cint): pointer {.importc: "QTableWidget_virtualbase_moveCursor".}
proc fcQTableWidget_virtualbase_setSelection(self: pointer, rect: pointer, command: cint): void {.importc: "QTableWidget_virtualbase_setSelection".}
proc fcQTableWidget_virtualbase_visualRegionForSelection(self: pointer, selection: pointer): pointer {.importc: "QTableWidget_virtualbase_visualRegionForSelection".}
proc fcQTableWidget_virtualbase_selectedIndexes(self: pointer, ): struct_miqt_array {.importc: "QTableWidget_virtualbase_selectedIndexes".}
proc fcQTableWidget_virtualbase_updateGeometries(self: pointer, ): void {.importc: "QTableWidget_virtualbase_updateGeometries".}
proc fcQTableWidget_virtualbase_viewportSizeHint(self: pointer, ): pointer {.importc: "QTableWidget_virtualbase_viewportSizeHint".}
proc fcQTableWidget_virtualbase_sizeHintForRow(self: pointer, row: cint): cint {.importc: "QTableWidget_virtualbase_sizeHintForRow".}
proc fcQTableWidget_virtualbase_sizeHintForColumn(self: pointer, column: cint): cint {.importc: "QTableWidget_virtualbase_sizeHintForColumn".}
proc fcQTableWidget_virtualbase_verticalScrollbarAction(self: pointer, action: cint): void {.importc: "QTableWidget_virtualbase_verticalScrollbarAction".}
proc fcQTableWidget_virtualbase_horizontalScrollbarAction(self: pointer, action: cint): void {.importc: "QTableWidget_virtualbase_horizontalScrollbarAction".}
proc fcQTableWidget_virtualbase_isIndexHidden(self: pointer, index: pointer): bool {.importc: "QTableWidget_virtualbase_isIndexHidden".}
proc fcQTableWidget_virtualbase_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void {.importc: "QTableWidget_virtualbase_selectionChanged".}
proc fcQTableWidget_virtualbase_currentChanged(self: pointer, current: pointer, previous: pointer): void {.importc: "QTableWidget_virtualbase_currentChanged".}
proc fcQTableWidget_virtualbase_keyboardSearch(self: pointer, search: struct_miqt_string): void {.importc: "QTableWidget_virtualbase_keyboardSearch".}
proc fcQTableWidget_virtualbase_itemDelegateForIndex(self: pointer, index: pointer): pointer {.importc: "QTableWidget_virtualbase_itemDelegateForIndex".}
proc fcQTableWidget_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QTableWidget_virtualbase_inputMethodQuery".}
proc fcQTableWidget_virtualbase_reset(self: pointer, ): void {.importc: "QTableWidget_virtualbase_reset".}
proc fcQTableWidget_virtualbase_selectAll(self: pointer, ): void {.importc: "QTableWidget_virtualbase_selectAll".}
proc fcQTableWidget_virtualbase_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.importc: "QTableWidget_virtualbase_dataChanged".}
proc fcQTableWidget_virtualbase_rowsInserted(self: pointer, parent: pointer, start: cint, endVal: cint): void {.importc: "QTableWidget_virtualbase_rowsInserted".}
proc fcQTableWidget_virtualbase_rowsAboutToBeRemoved(self: pointer, parent: pointer, start: cint, endVal: cint): void {.importc: "QTableWidget_virtualbase_rowsAboutToBeRemoved".}
proc fcQTableWidget_virtualbase_updateEditorData(self: pointer, ): void {.importc: "QTableWidget_virtualbase_updateEditorData".}
proc fcQTableWidget_virtualbase_updateEditorGeometries(self: pointer, ): void {.importc: "QTableWidget_virtualbase_updateEditorGeometries".}
proc fcQTableWidget_virtualbase_verticalScrollbarValueChanged(self: pointer, value: cint): void {.importc: "QTableWidget_virtualbase_verticalScrollbarValueChanged".}
proc fcQTableWidget_virtualbase_horizontalScrollbarValueChanged(self: pointer, value: cint): void {.importc: "QTableWidget_virtualbase_horizontalScrollbarValueChanged".}
proc fcQTableWidget_virtualbase_closeEditor(self: pointer, editor: pointer, hint: cint): void {.importc: "QTableWidget_virtualbase_closeEditor".}
proc fcQTableWidget_virtualbase_commitData(self: pointer, editor: pointer): void {.importc: "QTableWidget_virtualbase_commitData".}
proc fcQTableWidget_virtualbase_editorDestroyed(self: pointer, editor: pointer): void {.importc: "QTableWidget_virtualbase_editorDestroyed".}
proc fcQTableWidget_virtualbase_edit2(self: pointer, index: pointer, trigger: cint, event: pointer): bool {.importc: "QTableWidget_virtualbase_edit2".}
proc fcQTableWidget_virtualbase_selectionCommand(self: pointer, index: pointer, event: pointer): cint {.importc: "QTableWidget_virtualbase_selectionCommand".}
proc fcQTableWidget_virtualbase_startDrag(self: pointer, supportedActions: cint): void {.importc: "QTableWidget_virtualbase_startDrag".}
proc fcQTableWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QTableWidget_virtualbase_focusNextPrevChild".}
proc fcQTableWidget_virtualbase_viewportEvent(self: pointer, event: pointer): bool {.importc: "QTableWidget_virtualbase_viewportEvent".}
proc fcQTableWidget_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QTableWidget_virtualbase_mousePressEvent".}
proc fcQTableWidget_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QTableWidget_virtualbase_mouseMoveEvent".}
proc fcQTableWidget_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QTableWidget_virtualbase_mouseReleaseEvent".}
proc fcQTableWidget_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QTableWidget_virtualbase_mouseDoubleClickEvent".}
proc fcQTableWidget_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QTableWidget_virtualbase_dragEnterEvent".}
proc fcQTableWidget_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QTableWidget_virtualbase_dragMoveEvent".}
proc fcQTableWidget_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QTableWidget_virtualbase_dragLeaveEvent".}
proc fcQTableWidget_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QTableWidget_virtualbase_focusInEvent".}
proc fcQTableWidget_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QTableWidget_virtualbase_focusOutEvent".}
proc fcQTableWidget_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QTableWidget_virtualbase_keyPressEvent".}
proc fcQTableWidget_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QTableWidget_virtualbase_resizeEvent".}
proc fcQTableWidget_virtualbase_inputMethodEvent(self: pointer, event: pointer): void {.importc: "QTableWidget_virtualbase_inputMethodEvent".}
proc fcQTableWidget_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool {.importc: "QTableWidget_virtualbase_eventFilter".}
proc fcQTableWidget_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QTableWidget_virtualbase_minimumSizeHint".}
proc fcQTableWidget_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QTableWidget_virtualbase_sizeHint".}
proc fcQTableWidget_virtualbase_setupViewport(self: pointer, viewport: pointer): void {.importc: "QTableWidget_virtualbase_setupViewport".}
proc fcQTableWidget_virtualbase_wheelEvent(self: pointer, param1: pointer): void {.importc: "QTableWidget_virtualbase_wheelEvent".}
proc fcQTableWidget_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void {.importc: "QTableWidget_virtualbase_contextMenuEvent".}
proc fcQTableWidget_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QTableWidget_virtualbase_changeEvent".}
proc fcQTableWidget_virtualbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QTableWidget_virtualbase_initStyleOption".}
proc fcQTableWidget_virtualbase_devType(self: pointer, ): cint {.importc: "QTableWidget_virtualbase_devType".}
proc fcQTableWidget_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QTableWidget_virtualbase_setVisible".}
proc fcQTableWidget_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QTableWidget_virtualbase_heightForWidth".}
proc fcQTableWidget_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QTableWidget_virtualbase_hasHeightForWidth".}
proc fcQTableWidget_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QTableWidget_virtualbase_paintEngine".}
proc fcQTableWidget_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QTableWidget_virtualbase_keyReleaseEvent".}
proc fcQTableWidget_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QTableWidget_virtualbase_enterEvent".}
proc fcQTableWidget_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QTableWidget_virtualbase_leaveEvent".}
proc fcQTableWidget_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QTableWidget_virtualbase_moveEvent".}
proc fcQTableWidget_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QTableWidget_virtualbase_closeEvent".}
proc fcQTableWidget_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QTableWidget_virtualbase_tabletEvent".}
proc fcQTableWidget_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QTableWidget_virtualbase_actionEvent".}
proc fcQTableWidget_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QTableWidget_virtualbase_showEvent".}
proc fcQTableWidget_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QTableWidget_virtualbase_hideEvent".}
proc fcQTableWidget_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QTableWidget_virtualbase_nativeEvent".}
proc fcQTableWidget_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QTableWidget_virtualbase_metric".}
proc fcQTableWidget_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QTableWidget_virtualbase_initPainter".}
proc fcQTableWidget_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QTableWidget_virtualbase_redirected".}
proc fcQTableWidget_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QTableWidget_virtualbase_sharedPainter".}
proc fcQTableWidget_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QTableWidget_virtualbase_childEvent".}
proc fcQTableWidget_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QTableWidget_virtualbase_customEvent".}
proc fcQTableWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QTableWidget_virtualbase_connectNotify".}
proc fcQTableWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QTableWidget_virtualbase_disconnectNotify".}
proc fcQTableWidget_new(vtbl: pointer, parent: pointer): ptr cQTableWidget {.importc: "QTableWidget_new".}
proc fcQTableWidget_new2(vtbl: pointer, ): ptr cQTableWidget {.importc: "QTableWidget_new2".}
proc fcQTableWidget_new3(vtbl: pointer, rows: cint, columns: cint): ptr cQTableWidget {.importc: "QTableWidget_new3".}
proc fcQTableWidget_new4(vtbl: pointer, rows: cint, columns: cint, parent: pointer): ptr cQTableWidget {.importc: "QTableWidget_new4".}
proc fcQTableWidget_staticMetaObject(): pointer {.importc: "QTableWidget_staticMetaObject".}
proc fcQTableWidget_delete(self: pointer) {.importc: "QTableWidget_delete".}

proc topRow*(self: gen_qtablewidget_types.QTableWidgetSelectionRange, ): cint =
  fcQTableWidgetSelectionRange_topRow(self.h)

proc bottomRow*(self: gen_qtablewidget_types.QTableWidgetSelectionRange, ): cint =
  fcQTableWidgetSelectionRange_bottomRow(self.h)

proc leftColumn*(self: gen_qtablewidget_types.QTableWidgetSelectionRange, ): cint =
  fcQTableWidgetSelectionRange_leftColumn(self.h)

proc rightColumn*(self: gen_qtablewidget_types.QTableWidgetSelectionRange, ): cint =
  fcQTableWidgetSelectionRange_rightColumn(self.h)

proc rowCount*(self: gen_qtablewidget_types.QTableWidgetSelectionRange, ): cint =
  fcQTableWidgetSelectionRange_rowCount(self.h)

proc columnCount*(self: gen_qtablewidget_types.QTableWidgetSelectionRange, ): cint =
  fcQTableWidgetSelectionRange_columnCount(self.h)

proc create*(T: type gen_qtablewidget_types.QTableWidgetSelectionRange): gen_qtablewidget_types.QTableWidgetSelectionRange =
  gen_qtablewidget_types.QTableWidgetSelectionRange(h: fcQTableWidgetSelectionRange_new())

proc create*(T: type gen_qtablewidget_types.QTableWidgetSelectionRange,
    top: cint, left: cint, bottom: cint, right: cint): gen_qtablewidget_types.QTableWidgetSelectionRange =
  gen_qtablewidget_types.QTableWidgetSelectionRange(h: fcQTableWidgetSelectionRange_new2(top, left, bottom, right))

proc delete*(self: gen_qtablewidget_types.QTableWidgetSelectionRange) =
  fcQTableWidgetSelectionRange_delete(self.h)
proc clone*(self: gen_qtablewidget_types.QTableWidgetItem, ): gen_qtablewidget_types.QTableWidgetItem =
  gen_qtablewidget_types.QTableWidgetItem(h: fcQTableWidgetItem_clone(self.h))

proc tableWidget*(self: gen_qtablewidget_types.QTableWidgetItem, ): gen_qtablewidget_types.QTableWidget =
  gen_qtablewidget_types.QTableWidget(h: fcQTableWidgetItem_tableWidget(self.h))

proc row*(self: gen_qtablewidget_types.QTableWidgetItem, ): cint =
  fcQTableWidgetItem_row(self.h)

proc column*(self: gen_qtablewidget_types.QTableWidgetItem, ): cint =
  fcQTableWidgetItem_column(self.h)

proc setSelected*(self: gen_qtablewidget_types.QTableWidgetItem, select: bool): void =
  fcQTableWidgetItem_setSelected(self.h, select)

proc isSelected*(self: gen_qtablewidget_types.QTableWidgetItem, ): bool =
  fcQTableWidgetItem_isSelected(self.h)

proc flags*(self: gen_qtablewidget_types.QTableWidgetItem, ): cint =
  cint(fcQTableWidgetItem_flags(self.h))

proc setFlags*(self: gen_qtablewidget_types.QTableWidgetItem, flags: cint): void =
  fcQTableWidgetItem_setFlags(self.h, cint(flags))

proc text*(self: gen_qtablewidget_types.QTableWidgetItem, ): string =
  let v_ms = fcQTableWidgetItem_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setText*(self: gen_qtablewidget_types.QTableWidgetItem, text: string): void =
  fcQTableWidgetItem_setText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc icon*(self: gen_qtablewidget_types.QTableWidgetItem, ): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQTableWidgetItem_icon(self.h))

proc setIcon*(self: gen_qtablewidget_types.QTableWidgetItem, icon: gen_qicon_types.QIcon): void =
  fcQTableWidgetItem_setIcon(self.h, icon.h)

proc statusTip*(self: gen_qtablewidget_types.QTableWidgetItem, ): string =
  let v_ms = fcQTableWidgetItem_statusTip(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setStatusTip*(self: gen_qtablewidget_types.QTableWidgetItem, statusTip: string): void =
  fcQTableWidgetItem_setStatusTip(self.h, struct_miqt_string(data: statusTip, len: csize_t(len(statusTip))))

proc toolTip*(self: gen_qtablewidget_types.QTableWidgetItem, ): string =
  let v_ms = fcQTableWidgetItem_toolTip(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setToolTip*(self: gen_qtablewidget_types.QTableWidgetItem, toolTip: string): void =
  fcQTableWidgetItem_setToolTip(self.h, struct_miqt_string(data: toolTip, len: csize_t(len(toolTip))))

proc whatsThis*(self: gen_qtablewidget_types.QTableWidgetItem, ): string =
  let v_ms = fcQTableWidgetItem_whatsThis(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setWhatsThis*(self: gen_qtablewidget_types.QTableWidgetItem, whatsThis: string): void =
  fcQTableWidgetItem_setWhatsThis(self.h, struct_miqt_string(data: whatsThis, len: csize_t(len(whatsThis))))

proc font*(self: gen_qtablewidget_types.QTableWidgetItem, ): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQTableWidgetItem_font(self.h))

proc setFont*(self: gen_qtablewidget_types.QTableWidgetItem, font: gen_qfont_types.QFont): void =
  fcQTableWidgetItem_setFont(self.h, font.h)

proc textAlignment*(self: gen_qtablewidget_types.QTableWidgetItem, ): cint =
  fcQTableWidgetItem_textAlignment(self.h)

proc setTextAlignment*(self: gen_qtablewidget_types.QTableWidgetItem, alignment: cint): void =
  fcQTableWidgetItem_setTextAlignment(self.h, alignment)

proc setTextAlignment2*(self: gen_qtablewidget_types.QTableWidgetItem, alignment: cint): void =
  fcQTableWidgetItem_setTextAlignmentWithAlignment(self.h, cint(alignment))

proc setTextAlignment3*(self: gen_qtablewidget_types.QTableWidgetItem, alignment: cint): void =
  fcQTableWidgetItem_setTextAlignment2(self.h, cint(alignment))

proc background*(self: gen_qtablewidget_types.QTableWidgetItem, ): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQTableWidgetItem_background(self.h))

proc setBackground*(self: gen_qtablewidget_types.QTableWidgetItem, brush: gen_qbrush_types.QBrush): void =
  fcQTableWidgetItem_setBackground(self.h, brush.h)

proc foreground*(self: gen_qtablewidget_types.QTableWidgetItem, ): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQTableWidgetItem_foreground(self.h))

proc setForeground*(self: gen_qtablewidget_types.QTableWidgetItem, brush: gen_qbrush_types.QBrush): void =
  fcQTableWidgetItem_setForeground(self.h, brush.h)

proc checkState*(self: gen_qtablewidget_types.QTableWidgetItem, ): cint =
  cint(fcQTableWidgetItem_checkState(self.h))

proc setCheckState*(self: gen_qtablewidget_types.QTableWidgetItem, state: cint): void =
  fcQTableWidgetItem_setCheckState(self.h, cint(state))

proc sizeHint*(self: gen_qtablewidget_types.QTableWidgetItem, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTableWidgetItem_sizeHint(self.h))

proc setSizeHint*(self: gen_qtablewidget_types.QTableWidgetItem, size: gen_qsize_types.QSize): void =
  fcQTableWidgetItem_setSizeHint(self.h, size.h)

proc data*(self: gen_qtablewidget_types.QTableWidgetItem, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQTableWidgetItem_data(self.h, role))

proc setData*(self: gen_qtablewidget_types.QTableWidgetItem, role: cint, value: gen_qvariant_types.QVariant): void =
  fcQTableWidgetItem_setData(self.h, role, value.h)

proc operatorLesser*(self: gen_qtablewidget_types.QTableWidgetItem, other: gen_qtablewidget_types.QTableWidgetItem): bool =
  fcQTableWidgetItem_operatorLesser(self.h, other.h)

proc read*(self: gen_qtablewidget_types.QTableWidgetItem, inVal: gen_qdatastream_types.QDataStream): void =
  fcQTableWidgetItem_read(self.h, inVal.h)

proc write*(self: gen_qtablewidget_types.QTableWidgetItem, outVal: gen_qdatastream_types.QDataStream): void =
  fcQTableWidgetItem_write(self.h, outVal.h)

proc operatorAssign*(self: gen_qtablewidget_types.QTableWidgetItem, other: gen_qtablewidget_types.QTableWidgetItem): void =
  fcQTableWidgetItem_operatorAssign(self.h, other.h)

proc typeX*(self: gen_qtablewidget_types.QTableWidgetItem, ): cint =
  fcQTableWidgetItem_typeX(self.h)

type QTableWidgetItemcloneProc* = proc(self: QTableWidgetItem): gen_qtablewidget_types.QTableWidgetItem {.raises: [], gcsafe.}
type QTableWidgetItemdataProc* = proc(self: QTableWidgetItem, role: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QTableWidgetItemsetDataProc* = proc(self: QTableWidgetItem, role: cint, value: gen_qvariant_types.QVariant): void {.raises: [], gcsafe.}
type QTableWidgetItemoperatorLesserProc* = proc(self: QTableWidgetItem, other: gen_qtablewidget_types.QTableWidgetItem): bool {.raises: [], gcsafe.}
type QTableWidgetItemreadProc* = proc(self: QTableWidgetItem, inVal: gen_qdatastream_types.QDataStream): void {.raises: [], gcsafe.}
type QTableWidgetItemwriteProc* = proc(self: QTableWidgetItem, outVal: gen_qdatastream_types.QDataStream): void {.raises: [], gcsafe.}
type QTableWidgetItemVTable* = object
  vtbl: cQTableWidgetItemVTable
  clone*: QTableWidgetItemcloneProc
  data*: QTableWidgetItemdataProc
  setData*: QTableWidgetItemsetDataProc
  operatorLesser*: QTableWidgetItemoperatorLesserProc
  read*: QTableWidgetItemreadProc
  write*: QTableWidgetItemwriteProc
proc QTableWidgetItemclone*(self: gen_qtablewidget_types.QTableWidgetItem, ): gen_qtablewidget_types.QTableWidgetItem =
  gen_qtablewidget_types.QTableWidgetItem(h: fcQTableWidgetItem_virtualbase_clone(self.h))

proc miqt_exec_callback_cQTableWidgetItem_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetItemVTable](vtbl)
  let self = QTableWidgetItem(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.h

proc QTableWidgetItemdata*(self: gen_qtablewidget_types.QTableWidgetItem, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQTableWidgetItem_virtualbase_data(self.h, role))

proc miqt_exec_callback_cQTableWidgetItem_data(vtbl: pointer, self: pointer, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetItemVTable](vtbl)
  let self = QTableWidgetItem(h: self)
  let slotval1 = role
  var virtualReturn = vtbl[].data(self, slotval1)
  virtualReturn.h

proc QTableWidgetItemsetData*(self: gen_qtablewidget_types.QTableWidgetItem, role: cint, value: gen_qvariant_types.QVariant): void =
  fcQTableWidgetItem_virtualbase_setData(self.h, role, value.h)

proc miqt_exec_callback_cQTableWidgetItem_setData(vtbl: pointer, self: pointer, role: cint, value: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetItemVTable](vtbl)
  let self = QTableWidgetItem(h: self)
  let slotval1 = role
  let slotval2 = gen_qvariant_types.QVariant(h: value)
  vtbl[].setData(self, slotval1, slotval2)

proc QTableWidgetItemoperatorLesser*(self: gen_qtablewidget_types.QTableWidgetItem, other: gen_qtablewidget_types.QTableWidgetItem): bool =
  fcQTableWidgetItem_virtualbase_operatorLesser(self.h, other.h)

proc miqt_exec_callback_cQTableWidgetItem_operatorLesser(vtbl: pointer, self: pointer, other: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetItemVTable](vtbl)
  let self = QTableWidgetItem(h: self)
  let slotval1 = gen_qtablewidget_types.QTableWidgetItem(h: other)
  var virtualReturn = vtbl[].operatorLesser(self, slotval1)
  virtualReturn

proc QTableWidgetItemread*(self: gen_qtablewidget_types.QTableWidgetItem, inVal: gen_qdatastream_types.QDataStream): void =
  fcQTableWidgetItem_virtualbase_read(self.h, inVal.h)

proc miqt_exec_callback_cQTableWidgetItem_read(vtbl: pointer, self: pointer, inVal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetItemVTable](vtbl)
  let self = QTableWidgetItem(h: self)
  let slotval1 = gen_qdatastream_types.QDataStream(h: inVal)
  vtbl[].read(self, slotval1)

proc QTableWidgetItemwrite*(self: gen_qtablewidget_types.QTableWidgetItem, outVal: gen_qdatastream_types.QDataStream): void =
  fcQTableWidgetItem_virtualbase_write(self.h, outVal.h)

proc miqt_exec_callback_cQTableWidgetItem_write(vtbl: pointer, self: pointer, outVal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetItemVTable](vtbl)
  let self = QTableWidgetItem(h: self)
  let slotval1 = gen_qdatastream_types.QDataStream(h: outVal)
  vtbl[].write(self, slotval1)

proc create*(T: type gen_qtablewidget_types.QTableWidgetItem,
    vtbl: ref QTableWidgetItemVTable = nil): gen_qtablewidget_types.QTableWidgetItem =
  let vtbl = if vtbl == nil: new QTableWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTableWidgetItemVTable, _: ptr cQTableWidgetItem) {.cdecl.} =
    let vtbl = cast[ref QTableWidgetItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQTableWidgetItem_clone
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQTableWidgetItem_data
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQTableWidgetItem_setData
  if not isNil(vtbl.operatorLesser):
    vtbl[].vtbl.operatorLesser = miqt_exec_callback_cQTableWidgetItem_operatorLesser
  if not isNil(vtbl.read):
    vtbl[].vtbl.read = miqt_exec_callback_cQTableWidgetItem_read
  if not isNil(vtbl.write):
    vtbl[].vtbl.write = miqt_exec_callback_cQTableWidgetItem_write
  gen_qtablewidget_types.QTableWidgetItem(h: fcQTableWidgetItem_new(addr(vtbl[]), ))

proc create*(T: type gen_qtablewidget_types.QTableWidgetItem,
    text: string,
    vtbl: ref QTableWidgetItemVTable = nil): gen_qtablewidget_types.QTableWidgetItem =
  let vtbl = if vtbl == nil: new QTableWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTableWidgetItemVTable, _: ptr cQTableWidgetItem) {.cdecl.} =
    let vtbl = cast[ref QTableWidgetItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQTableWidgetItem_clone
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQTableWidgetItem_data
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQTableWidgetItem_setData
  if not isNil(vtbl.operatorLesser):
    vtbl[].vtbl.operatorLesser = miqt_exec_callback_cQTableWidgetItem_operatorLesser
  if not isNil(vtbl.read):
    vtbl[].vtbl.read = miqt_exec_callback_cQTableWidgetItem_read
  if not isNil(vtbl.write):
    vtbl[].vtbl.write = miqt_exec_callback_cQTableWidgetItem_write
  gen_qtablewidget_types.QTableWidgetItem(h: fcQTableWidgetItem_new2(addr(vtbl[]), struct_miqt_string(data: text, len: csize_t(len(text)))))

proc create*(T: type gen_qtablewidget_types.QTableWidgetItem,
    icon: gen_qicon_types.QIcon, text: string,
    vtbl: ref QTableWidgetItemVTable = nil): gen_qtablewidget_types.QTableWidgetItem =
  let vtbl = if vtbl == nil: new QTableWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTableWidgetItemVTable, _: ptr cQTableWidgetItem) {.cdecl.} =
    let vtbl = cast[ref QTableWidgetItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQTableWidgetItem_clone
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQTableWidgetItem_data
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQTableWidgetItem_setData
  if not isNil(vtbl.operatorLesser):
    vtbl[].vtbl.operatorLesser = miqt_exec_callback_cQTableWidgetItem_operatorLesser
  if not isNil(vtbl.read):
    vtbl[].vtbl.read = miqt_exec_callback_cQTableWidgetItem_read
  if not isNil(vtbl.write):
    vtbl[].vtbl.write = miqt_exec_callback_cQTableWidgetItem_write
  gen_qtablewidget_types.QTableWidgetItem(h: fcQTableWidgetItem_new3(addr(vtbl[]), icon.h, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc create*(T: type gen_qtablewidget_types.QTableWidgetItem,
    other: gen_qtablewidget_types.QTableWidgetItem,
    vtbl: ref QTableWidgetItemVTable = nil): gen_qtablewidget_types.QTableWidgetItem =
  let vtbl = if vtbl == nil: new QTableWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTableWidgetItemVTable, _: ptr cQTableWidgetItem) {.cdecl.} =
    let vtbl = cast[ref QTableWidgetItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQTableWidgetItem_clone
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQTableWidgetItem_data
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQTableWidgetItem_setData
  if not isNil(vtbl.operatorLesser):
    vtbl[].vtbl.operatorLesser = miqt_exec_callback_cQTableWidgetItem_operatorLesser
  if not isNil(vtbl.read):
    vtbl[].vtbl.read = miqt_exec_callback_cQTableWidgetItem_read
  if not isNil(vtbl.write):
    vtbl[].vtbl.write = miqt_exec_callback_cQTableWidgetItem_write
  gen_qtablewidget_types.QTableWidgetItem(h: fcQTableWidgetItem_new4(addr(vtbl[]), other.h))

proc create*(T: type gen_qtablewidget_types.QTableWidgetItem,
    typeVal: cint,
    vtbl: ref QTableWidgetItemVTable = nil): gen_qtablewidget_types.QTableWidgetItem =
  let vtbl = if vtbl == nil: new QTableWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTableWidgetItemVTable, _: ptr cQTableWidgetItem) {.cdecl.} =
    let vtbl = cast[ref QTableWidgetItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQTableWidgetItem_clone
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQTableWidgetItem_data
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQTableWidgetItem_setData
  if not isNil(vtbl.operatorLesser):
    vtbl[].vtbl.operatorLesser = miqt_exec_callback_cQTableWidgetItem_operatorLesser
  if not isNil(vtbl.read):
    vtbl[].vtbl.read = miqt_exec_callback_cQTableWidgetItem_read
  if not isNil(vtbl.write):
    vtbl[].vtbl.write = miqt_exec_callback_cQTableWidgetItem_write
  gen_qtablewidget_types.QTableWidgetItem(h: fcQTableWidgetItem_new5(addr(vtbl[]), typeVal))

proc create*(T: type gen_qtablewidget_types.QTableWidgetItem,
    text: string, typeVal: cint,
    vtbl: ref QTableWidgetItemVTable = nil): gen_qtablewidget_types.QTableWidgetItem =
  let vtbl = if vtbl == nil: new QTableWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTableWidgetItemVTable, _: ptr cQTableWidgetItem) {.cdecl.} =
    let vtbl = cast[ref QTableWidgetItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQTableWidgetItem_clone
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQTableWidgetItem_data
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQTableWidgetItem_setData
  if not isNil(vtbl.operatorLesser):
    vtbl[].vtbl.operatorLesser = miqt_exec_callback_cQTableWidgetItem_operatorLesser
  if not isNil(vtbl.read):
    vtbl[].vtbl.read = miqt_exec_callback_cQTableWidgetItem_read
  if not isNil(vtbl.write):
    vtbl[].vtbl.write = miqt_exec_callback_cQTableWidgetItem_write
  gen_qtablewidget_types.QTableWidgetItem(h: fcQTableWidgetItem_new6(addr(vtbl[]), struct_miqt_string(data: text, len: csize_t(len(text))), typeVal))

proc create*(T: type gen_qtablewidget_types.QTableWidgetItem,
    icon: gen_qicon_types.QIcon, text: string, typeVal: cint,
    vtbl: ref QTableWidgetItemVTable = nil): gen_qtablewidget_types.QTableWidgetItem =
  let vtbl = if vtbl == nil: new QTableWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTableWidgetItemVTable, _: ptr cQTableWidgetItem) {.cdecl.} =
    let vtbl = cast[ref QTableWidgetItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQTableWidgetItem_clone
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQTableWidgetItem_data
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQTableWidgetItem_setData
  if not isNil(vtbl.operatorLesser):
    vtbl[].vtbl.operatorLesser = miqt_exec_callback_cQTableWidgetItem_operatorLesser
  if not isNil(vtbl.read):
    vtbl[].vtbl.read = miqt_exec_callback_cQTableWidgetItem_read
  if not isNil(vtbl.write):
    vtbl[].vtbl.write = miqt_exec_callback_cQTableWidgetItem_write
  gen_qtablewidget_types.QTableWidgetItem(h: fcQTableWidgetItem_new7(addr(vtbl[]), icon.h, struct_miqt_string(data: text, len: csize_t(len(text))), typeVal))

proc delete*(self: gen_qtablewidget_types.QTableWidgetItem) =
  fcQTableWidgetItem_delete(self.h)
proc metaObject*(self: gen_qtablewidget_types.QTableWidget, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTableWidget_metaObject(self.h))

proc metacast*(self: gen_qtablewidget_types.QTableWidget, param1: cstring): pointer =
  fcQTableWidget_metacast(self.h, param1)

proc metacall*(self: gen_qtablewidget_types.QTableWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQTableWidget_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qtablewidget_types.QTableWidget, s: cstring): string =
  let v_ms = fcQTableWidget_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setRowCount*(self: gen_qtablewidget_types.QTableWidget, rows: cint): void =
  fcQTableWidget_setRowCount(self.h, rows)

proc rowCount*(self: gen_qtablewidget_types.QTableWidget, ): cint =
  fcQTableWidget_rowCount(self.h)

proc setColumnCount*(self: gen_qtablewidget_types.QTableWidget, columns: cint): void =
  fcQTableWidget_setColumnCount(self.h, columns)

proc columnCount*(self: gen_qtablewidget_types.QTableWidget, ): cint =
  fcQTableWidget_columnCount(self.h)

proc row*(self: gen_qtablewidget_types.QTableWidget, item: gen_qtablewidget_types.QTableWidgetItem): cint =
  fcQTableWidget_row(self.h, item.h)

proc column*(self: gen_qtablewidget_types.QTableWidget, item: gen_qtablewidget_types.QTableWidgetItem): cint =
  fcQTableWidget_column(self.h, item.h)

proc item*(self: gen_qtablewidget_types.QTableWidget, row: cint, column: cint): gen_qtablewidget_types.QTableWidgetItem =
  gen_qtablewidget_types.QTableWidgetItem(h: fcQTableWidget_item(self.h, row, column))

proc setItem*(self: gen_qtablewidget_types.QTableWidget, row: cint, column: cint, item: gen_qtablewidget_types.QTableWidgetItem): void =
  fcQTableWidget_setItem(self.h, row, column, item.h)

proc takeItem*(self: gen_qtablewidget_types.QTableWidget, row: cint, column: cint): gen_qtablewidget_types.QTableWidgetItem =
  gen_qtablewidget_types.QTableWidgetItem(h: fcQTableWidget_takeItem(self.h, row, column))

proc items*(self: gen_qtablewidget_types.QTableWidget, data: gen_qmimedata_types.QMimeData): seq[gen_qtablewidget_types.QTableWidgetItem] =
  var v_ma = fcQTableWidget_items(self.h, data.h)
  var vx_ret = newSeq[gen_qtablewidget_types.QTableWidgetItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qtablewidget_types.QTableWidgetItem(h: v_outCast[i])
  vx_ret

proc indexFromItem*(self: gen_qtablewidget_types.QTableWidget, item: gen_qtablewidget_types.QTableWidgetItem): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTableWidget_indexFromItem(self.h, item.h))

proc itemFromIndex*(self: gen_qtablewidget_types.QTableWidget, index: gen_qabstractitemmodel_types.QModelIndex): gen_qtablewidget_types.QTableWidgetItem =
  gen_qtablewidget_types.QTableWidgetItem(h: fcQTableWidget_itemFromIndex(self.h, index.h))

proc verticalHeaderItem*(self: gen_qtablewidget_types.QTableWidget, row: cint): gen_qtablewidget_types.QTableWidgetItem =
  gen_qtablewidget_types.QTableWidgetItem(h: fcQTableWidget_verticalHeaderItem(self.h, row))

proc setVerticalHeaderItem*(self: gen_qtablewidget_types.QTableWidget, row: cint, item: gen_qtablewidget_types.QTableWidgetItem): void =
  fcQTableWidget_setVerticalHeaderItem(self.h, row, item.h)

proc takeVerticalHeaderItem*(self: gen_qtablewidget_types.QTableWidget, row: cint): gen_qtablewidget_types.QTableWidgetItem =
  gen_qtablewidget_types.QTableWidgetItem(h: fcQTableWidget_takeVerticalHeaderItem(self.h, row))

proc horizontalHeaderItem*(self: gen_qtablewidget_types.QTableWidget, column: cint): gen_qtablewidget_types.QTableWidgetItem =
  gen_qtablewidget_types.QTableWidgetItem(h: fcQTableWidget_horizontalHeaderItem(self.h, column))

proc setHorizontalHeaderItem*(self: gen_qtablewidget_types.QTableWidget, column: cint, item: gen_qtablewidget_types.QTableWidgetItem): void =
  fcQTableWidget_setHorizontalHeaderItem(self.h, column, item.h)

proc takeHorizontalHeaderItem*(self: gen_qtablewidget_types.QTableWidget, column: cint): gen_qtablewidget_types.QTableWidgetItem =
  gen_qtablewidget_types.QTableWidgetItem(h: fcQTableWidget_takeHorizontalHeaderItem(self.h, column))

proc setVerticalHeaderLabels*(self: gen_qtablewidget_types.QTableWidget, labels: seq[string]): void =
  var labels_CArray = newSeq[struct_miqt_string](len(labels))
  for i in 0..<len(labels):
    labels_CArray[i] = struct_miqt_string(data: labels[i], len: csize_t(len(labels[i])))

  fcQTableWidget_setVerticalHeaderLabels(self.h, struct_miqt_array(len: csize_t(len(labels)), data: if len(labels) == 0: nil else: addr(labels_CArray[0])))

proc setHorizontalHeaderLabels*(self: gen_qtablewidget_types.QTableWidget, labels: seq[string]): void =
  var labels_CArray = newSeq[struct_miqt_string](len(labels))
  for i in 0..<len(labels):
    labels_CArray[i] = struct_miqt_string(data: labels[i], len: csize_t(len(labels[i])))

  fcQTableWidget_setHorizontalHeaderLabels(self.h, struct_miqt_array(len: csize_t(len(labels)), data: if len(labels) == 0: nil else: addr(labels_CArray[0])))

proc currentRow*(self: gen_qtablewidget_types.QTableWidget, ): cint =
  fcQTableWidget_currentRow(self.h)

proc currentColumn*(self: gen_qtablewidget_types.QTableWidget, ): cint =
  fcQTableWidget_currentColumn(self.h)

proc currentItem*(self: gen_qtablewidget_types.QTableWidget, ): gen_qtablewidget_types.QTableWidgetItem =
  gen_qtablewidget_types.QTableWidgetItem(h: fcQTableWidget_currentItem(self.h))

proc setCurrentItem*(self: gen_qtablewidget_types.QTableWidget, item: gen_qtablewidget_types.QTableWidgetItem): void =
  fcQTableWidget_setCurrentItem(self.h, item.h)

proc setCurrentItem*(self: gen_qtablewidget_types.QTableWidget, item: gen_qtablewidget_types.QTableWidgetItem, command: cint): void =
  fcQTableWidget_setCurrentItem2(self.h, item.h, cint(command))

proc setCurrentCell*(self: gen_qtablewidget_types.QTableWidget, row: cint, column: cint): void =
  fcQTableWidget_setCurrentCell(self.h, row, column)

proc setCurrentCell*(self: gen_qtablewidget_types.QTableWidget, row: cint, column: cint, command: cint): void =
  fcQTableWidget_setCurrentCell2(self.h, row, column, cint(command))

proc sortItems*(self: gen_qtablewidget_types.QTableWidget, column: cint): void =
  fcQTableWidget_sortItems(self.h, column)

proc setSortingEnabled*(self: gen_qtablewidget_types.QTableWidget, enable: bool): void =
  fcQTableWidget_setSortingEnabled(self.h, enable)

proc isSortingEnabled*(self: gen_qtablewidget_types.QTableWidget, ): bool =
  fcQTableWidget_isSortingEnabled(self.h)

proc editItem*(self: gen_qtablewidget_types.QTableWidget, item: gen_qtablewidget_types.QTableWidgetItem): void =
  fcQTableWidget_editItem(self.h, item.h)

proc openPersistentEditor*(self: gen_qtablewidget_types.QTableWidget, item: gen_qtablewidget_types.QTableWidgetItem): void =
  fcQTableWidget_openPersistentEditor(self.h, item.h)

proc closePersistentEditor*(self: gen_qtablewidget_types.QTableWidget, item: gen_qtablewidget_types.QTableWidgetItem): void =
  fcQTableWidget_closePersistentEditor(self.h, item.h)

proc isPersistentEditorOpen*(self: gen_qtablewidget_types.QTableWidget, item: gen_qtablewidget_types.QTableWidgetItem): bool =
  fcQTableWidget_isPersistentEditorOpen(self.h, item.h)

proc cellWidget*(self: gen_qtablewidget_types.QTableWidget, row: cint, column: cint): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQTableWidget_cellWidget(self.h, row, column))

proc setCellWidget*(self: gen_qtablewidget_types.QTableWidget, row: cint, column: cint, widget: gen_qwidget_types.QWidget): void =
  fcQTableWidget_setCellWidget(self.h, row, column, widget.h)

proc removeCellWidget*(self: gen_qtablewidget_types.QTableWidget, row: cint, column: cint): void =
  fcQTableWidget_removeCellWidget(self.h, row, column)

proc setRangeSelected*(self: gen_qtablewidget_types.QTableWidget, range: gen_qtablewidget_types.QTableWidgetSelectionRange, select: bool): void =
  fcQTableWidget_setRangeSelected(self.h, range.h, select)

proc selectedRanges*(self: gen_qtablewidget_types.QTableWidget, ): seq[gen_qtablewidget_types.QTableWidgetSelectionRange] =
  var v_ma = fcQTableWidget_selectedRanges(self.h)
  var vx_ret = newSeq[gen_qtablewidget_types.QTableWidgetSelectionRange](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qtablewidget_types.QTableWidgetSelectionRange(h: v_outCast[i])
  vx_ret

proc selectedItems*(self: gen_qtablewidget_types.QTableWidget, ): seq[gen_qtablewidget_types.QTableWidgetItem] =
  var v_ma = fcQTableWidget_selectedItems(self.h)
  var vx_ret = newSeq[gen_qtablewidget_types.QTableWidgetItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qtablewidget_types.QTableWidgetItem(h: v_outCast[i])
  vx_ret

proc findItems*(self: gen_qtablewidget_types.QTableWidget, text: string, flags: cint): seq[gen_qtablewidget_types.QTableWidgetItem] =
  var v_ma = fcQTableWidget_findItems(self.h, struct_miqt_string(data: text, len: csize_t(len(text))), cint(flags))
  var vx_ret = newSeq[gen_qtablewidget_types.QTableWidgetItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qtablewidget_types.QTableWidgetItem(h: v_outCast[i])
  vx_ret

proc visualRow*(self: gen_qtablewidget_types.QTableWidget, logicalRow: cint): cint =
  fcQTableWidget_visualRow(self.h, logicalRow)

proc visualColumn*(self: gen_qtablewidget_types.QTableWidget, logicalColumn: cint): cint =
  fcQTableWidget_visualColumn(self.h, logicalColumn)

proc itemAt*(self: gen_qtablewidget_types.QTableWidget, p: gen_qpoint_types.QPoint): gen_qtablewidget_types.QTableWidgetItem =
  gen_qtablewidget_types.QTableWidgetItem(h: fcQTableWidget_itemAt(self.h, p.h))

proc itemAt*(self: gen_qtablewidget_types.QTableWidget, x: cint, y: cint): gen_qtablewidget_types.QTableWidgetItem =
  gen_qtablewidget_types.QTableWidgetItem(h: fcQTableWidget_itemAt2(self.h, x, y))

proc visualItemRect*(self: gen_qtablewidget_types.QTableWidget, item: gen_qtablewidget_types.QTableWidgetItem): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQTableWidget_visualItemRect(self.h, item.h))

proc itemPrototype*(self: gen_qtablewidget_types.QTableWidget, ): gen_qtablewidget_types.QTableWidgetItem =
  gen_qtablewidget_types.QTableWidgetItem(h: fcQTableWidget_itemPrototype(self.h))

proc setItemPrototype*(self: gen_qtablewidget_types.QTableWidget, item: gen_qtablewidget_types.QTableWidgetItem): void =
  fcQTableWidget_setItemPrototype(self.h, item.h)

proc scrollToItem*(self: gen_qtablewidget_types.QTableWidget, item: gen_qtablewidget_types.QTableWidgetItem): void =
  fcQTableWidget_scrollToItem(self.h, item.h)

proc insertRow*(self: gen_qtablewidget_types.QTableWidget, row: cint): void =
  fcQTableWidget_insertRow(self.h, row)

proc insertColumn*(self: gen_qtablewidget_types.QTableWidget, column: cint): void =
  fcQTableWidget_insertColumn(self.h, column)

proc removeRow*(self: gen_qtablewidget_types.QTableWidget, row: cint): void =
  fcQTableWidget_removeRow(self.h, row)

proc removeColumn*(self: gen_qtablewidget_types.QTableWidget, column: cint): void =
  fcQTableWidget_removeColumn(self.h, column)

proc clear*(self: gen_qtablewidget_types.QTableWidget, ): void =
  fcQTableWidget_clear(self.h)

proc clearContents*(self: gen_qtablewidget_types.QTableWidget, ): void =
  fcQTableWidget_clearContents(self.h)

proc itemPressed*(self: gen_qtablewidget_types.QTableWidget, item: gen_qtablewidget_types.QTableWidgetItem): void =
  fcQTableWidget_itemPressed(self.h, item.h)

type QTableWidgetitemPressedSlot* = proc(item: gen_qtablewidget_types.QTableWidgetItem)
proc miqt_exec_callback_cQTableWidget_itemPressed(slot: int, item: pointer) {.exportc: "miqt_exec_callback_QTableWidget_itemPressed".} =
  let nimfunc = cast[ptr QTableWidgetitemPressedSlot](cast[pointer](slot))
  let slotval1 = gen_qtablewidget_types.QTableWidgetItem(h: item)

  nimfunc[](slotval1)

proc onitemPressed*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetitemPressedSlot) =
  var tmp = new QTableWidgetitemPressedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_connect_itemPressed(self.h, cast[int](addr tmp[]))

proc itemClicked*(self: gen_qtablewidget_types.QTableWidget, item: gen_qtablewidget_types.QTableWidgetItem): void =
  fcQTableWidget_itemClicked(self.h, item.h)

type QTableWidgetitemClickedSlot* = proc(item: gen_qtablewidget_types.QTableWidgetItem)
proc miqt_exec_callback_cQTableWidget_itemClicked(slot: int, item: pointer) {.exportc: "miqt_exec_callback_QTableWidget_itemClicked".} =
  let nimfunc = cast[ptr QTableWidgetitemClickedSlot](cast[pointer](slot))
  let slotval1 = gen_qtablewidget_types.QTableWidgetItem(h: item)

  nimfunc[](slotval1)

proc onitemClicked*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetitemClickedSlot) =
  var tmp = new QTableWidgetitemClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_connect_itemClicked(self.h, cast[int](addr tmp[]))

proc itemDoubleClicked*(self: gen_qtablewidget_types.QTableWidget, item: gen_qtablewidget_types.QTableWidgetItem): void =
  fcQTableWidget_itemDoubleClicked(self.h, item.h)

type QTableWidgetitemDoubleClickedSlot* = proc(item: gen_qtablewidget_types.QTableWidgetItem)
proc miqt_exec_callback_cQTableWidget_itemDoubleClicked(slot: int, item: pointer) {.exportc: "miqt_exec_callback_QTableWidget_itemDoubleClicked".} =
  let nimfunc = cast[ptr QTableWidgetitemDoubleClickedSlot](cast[pointer](slot))
  let slotval1 = gen_qtablewidget_types.QTableWidgetItem(h: item)

  nimfunc[](slotval1)

proc onitemDoubleClicked*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetitemDoubleClickedSlot) =
  var tmp = new QTableWidgetitemDoubleClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_connect_itemDoubleClicked(self.h, cast[int](addr tmp[]))

proc itemActivated*(self: gen_qtablewidget_types.QTableWidget, item: gen_qtablewidget_types.QTableWidgetItem): void =
  fcQTableWidget_itemActivated(self.h, item.h)

type QTableWidgetitemActivatedSlot* = proc(item: gen_qtablewidget_types.QTableWidgetItem)
proc miqt_exec_callback_cQTableWidget_itemActivated(slot: int, item: pointer) {.exportc: "miqt_exec_callback_QTableWidget_itemActivated".} =
  let nimfunc = cast[ptr QTableWidgetitemActivatedSlot](cast[pointer](slot))
  let slotval1 = gen_qtablewidget_types.QTableWidgetItem(h: item)

  nimfunc[](slotval1)

proc onitemActivated*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetitemActivatedSlot) =
  var tmp = new QTableWidgetitemActivatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_connect_itemActivated(self.h, cast[int](addr tmp[]))

proc itemEntered*(self: gen_qtablewidget_types.QTableWidget, item: gen_qtablewidget_types.QTableWidgetItem): void =
  fcQTableWidget_itemEntered(self.h, item.h)

type QTableWidgetitemEnteredSlot* = proc(item: gen_qtablewidget_types.QTableWidgetItem)
proc miqt_exec_callback_cQTableWidget_itemEntered(slot: int, item: pointer) {.exportc: "miqt_exec_callback_QTableWidget_itemEntered".} =
  let nimfunc = cast[ptr QTableWidgetitemEnteredSlot](cast[pointer](slot))
  let slotval1 = gen_qtablewidget_types.QTableWidgetItem(h: item)

  nimfunc[](slotval1)

proc onitemEntered*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetitemEnteredSlot) =
  var tmp = new QTableWidgetitemEnteredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_connect_itemEntered(self.h, cast[int](addr tmp[]))

proc itemChanged*(self: gen_qtablewidget_types.QTableWidget, item: gen_qtablewidget_types.QTableWidgetItem): void =
  fcQTableWidget_itemChanged(self.h, item.h)

type QTableWidgetitemChangedSlot* = proc(item: gen_qtablewidget_types.QTableWidgetItem)
proc miqt_exec_callback_cQTableWidget_itemChanged(slot: int, item: pointer) {.exportc: "miqt_exec_callback_QTableWidget_itemChanged".} =
  let nimfunc = cast[ptr QTableWidgetitemChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qtablewidget_types.QTableWidgetItem(h: item)

  nimfunc[](slotval1)

proc onitemChanged*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetitemChangedSlot) =
  var tmp = new QTableWidgetitemChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_connect_itemChanged(self.h, cast[int](addr tmp[]))

proc currentItemChanged*(self: gen_qtablewidget_types.QTableWidget, current: gen_qtablewidget_types.QTableWidgetItem, previous: gen_qtablewidget_types.QTableWidgetItem): void =
  fcQTableWidget_currentItemChanged(self.h, current.h, previous.h)

type QTableWidgetcurrentItemChangedSlot* = proc(current: gen_qtablewidget_types.QTableWidgetItem, previous: gen_qtablewidget_types.QTableWidgetItem)
proc miqt_exec_callback_cQTableWidget_currentItemChanged(slot: int, current: pointer, previous: pointer) {.exportc: "miqt_exec_callback_QTableWidget_currentItemChanged".} =
  let nimfunc = cast[ptr QTableWidgetcurrentItemChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qtablewidget_types.QTableWidgetItem(h: current)

  let slotval2 = gen_qtablewidget_types.QTableWidgetItem(h: previous)

  nimfunc[](slotval1, slotval2)

proc oncurrentItemChanged*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetcurrentItemChangedSlot) =
  var tmp = new QTableWidgetcurrentItemChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_connect_currentItemChanged(self.h, cast[int](addr tmp[]))

proc itemSelectionChanged*(self: gen_qtablewidget_types.QTableWidget, ): void =
  fcQTableWidget_itemSelectionChanged(self.h)

type QTableWidgetitemSelectionChangedSlot* = proc()
proc miqt_exec_callback_cQTableWidget_itemSelectionChanged(slot: int) {.exportc: "miqt_exec_callback_QTableWidget_itemSelectionChanged".} =
  let nimfunc = cast[ptr QTableWidgetitemSelectionChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onitemSelectionChanged*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetitemSelectionChangedSlot) =
  var tmp = new QTableWidgetitemSelectionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_connect_itemSelectionChanged(self.h, cast[int](addr tmp[]))

proc cellPressed*(self: gen_qtablewidget_types.QTableWidget, row: cint, column: cint): void =
  fcQTableWidget_cellPressed(self.h, row, column)

type QTableWidgetcellPressedSlot* = proc(row: cint, column: cint)
proc miqt_exec_callback_cQTableWidget_cellPressed(slot: int, row: cint, column: cint) {.exportc: "miqt_exec_callback_QTableWidget_cellPressed".} =
  let nimfunc = cast[ptr QTableWidgetcellPressedSlot](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = column

  nimfunc[](slotval1, slotval2)

proc oncellPressed*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetcellPressedSlot) =
  var tmp = new QTableWidgetcellPressedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_connect_cellPressed(self.h, cast[int](addr tmp[]))

proc cellClicked*(self: gen_qtablewidget_types.QTableWidget, row: cint, column: cint): void =
  fcQTableWidget_cellClicked(self.h, row, column)

type QTableWidgetcellClickedSlot* = proc(row: cint, column: cint)
proc miqt_exec_callback_cQTableWidget_cellClicked(slot: int, row: cint, column: cint) {.exportc: "miqt_exec_callback_QTableWidget_cellClicked".} =
  let nimfunc = cast[ptr QTableWidgetcellClickedSlot](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = column

  nimfunc[](slotval1, slotval2)

proc oncellClicked*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetcellClickedSlot) =
  var tmp = new QTableWidgetcellClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_connect_cellClicked(self.h, cast[int](addr tmp[]))

proc cellDoubleClicked*(self: gen_qtablewidget_types.QTableWidget, row: cint, column: cint): void =
  fcQTableWidget_cellDoubleClicked(self.h, row, column)

type QTableWidgetcellDoubleClickedSlot* = proc(row: cint, column: cint)
proc miqt_exec_callback_cQTableWidget_cellDoubleClicked(slot: int, row: cint, column: cint) {.exportc: "miqt_exec_callback_QTableWidget_cellDoubleClicked".} =
  let nimfunc = cast[ptr QTableWidgetcellDoubleClickedSlot](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = column

  nimfunc[](slotval1, slotval2)

proc oncellDoubleClicked*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetcellDoubleClickedSlot) =
  var tmp = new QTableWidgetcellDoubleClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_connect_cellDoubleClicked(self.h, cast[int](addr tmp[]))

proc cellActivated*(self: gen_qtablewidget_types.QTableWidget, row: cint, column: cint): void =
  fcQTableWidget_cellActivated(self.h, row, column)

type QTableWidgetcellActivatedSlot* = proc(row: cint, column: cint)
proc miqt_exec_callback_cQTableWidget_cellActivated(slot: int, row: cint, column: cint) {.exportc: "miqt_exec_callback_QTableWidget_cellActivated".} =
  let nimfunc = cast[ptr QTableWidgetcellActivatedSlot](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = column

  nimfunc[](slotval1, slotval2)

proc oncellActivated*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetcellActivatedSlot) =
  var tmp = new QTableWidgetcellActivatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_connect_cellActivated(self.h, cast[int](addr tmp[]))

proc cellEntered*(self: gen_qtablewidget_types.QTableWidget, row: cint, column: cint): void =
  fcQTableWidget_cellEntered(self.h, row, column)

type QTableWidgetcellEnteredSlot* = proc(row: cint, column: cint)
proc miqt_exec_callback_cQTableWidget_cellEntered(slot: int, row: cint, column: cint) {.exportc: "miqt_exec_callback_QTableWidget_cellEntered".} =
  let nimfunc = cast[ptr QTableWidgetcellEnteredSlot](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = column

  nimfunc[](slotval1, slotval2)

proc oncellEntered*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetcellEnteredSlot) =
  var tmp = new QTableWidgetcellEnteredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_connect_cellEntered(self.h, cast[int](addr tmp[]))

proc cellChanged*(self: gen_qtablewidget_types.QTableWidget, row: cint, column: cint): void =
  fcQTableWidget_cellChanged(self.h, row, column)

type QTableWidgetcellChangedSlot* = proc(row: cint, column: cint)
proc miqt_exec_callback_cQTableWidget_cellChanged(slot: int, row: cint, column: cint) {.exportc: "miqt_exec_callback_QTableWidget_cellChanged".} =
  let nimfunc = cast[ptr QTableWidgetcellChangedSlot](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = column

  nimfunc[](slotval1, slotval2)

proc oncellChanged*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetcellChangedSlot) =
  var tmp = new QTableWidgetcellChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_connect_cellChanged(self.h, cast[int](addr tmp[]))

proc currentCellChanged*(self: gen_qtablewidget_types.QTableWidget, currentRow: cint, currentColumn: cint, previousRow: cint, previousColumn: cint): void =
  fcQTableWidget_currentCellChanged(self.h, currentRow, currentColumn, previousRow, previousColumn)

type QTableWidgetcurrentCellChangedSlot* = proc(currentRow: cint, currentColumn: cint, previousRow: cint, previousColumn: cint)
proc miqt_exec_callback_cQTableWidget_currentCellChanged(slot: int, currentRow: cint, currentColumn: cint, previousRow: cint, previousColumn: cint) {.exportc: "miqt_exec_callback_QTableWidget_currentCellChanged".} =
  let nimfunc = cast[ptr QTableWidgetcurrentCellChangedSlot](cast[pointer](slot))
  let slotval1 = currentRow

  let slotval2 = currentColumn

  let slotval3 = previousRow

  let slotval4 = previousColumn

  nimfunc[](slotval1, slotval2, slotval3, slotval4)

proc oncurrentCellChanged*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetcurrentCellChangedSlot) =
  var tmp = new QTableWidgetcurrentCellChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_connect_currentCellChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qtablewidget_types.QTableWidget, s: cstring, c: cstring): string =
  let v_ms = fcQTableWidget_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qtablewidget_types.QTableWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTableWidget_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sortItems*(self: gen_qtablewidget_types.QTableWidget, column: cint, order: cint): void =
  fcQTableWidget_sortItems2(self.h, column, cint(order))

proc scrollToItem*(self: gen_qtablewidget_types.QTableWidget, item: gen_qtablewidget_types.QTableWidgetItem, hint: cint): void =
  fcQTableWidget_scrollToItem2(self.h, item.h, cint(hint))

type QTableWidgetmetaObjectProc* = proc(self: QTableWidget): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QTableWidgetmetacastProc* = proc(self: QTableWidget, param1: cstring): pointer {.raises: [], gcsafe.}
type QTableWidgetmetacallProc* = proc(self: QTableWidget, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QTableWidgeteventProc* = proc(self: QTableWidget, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTableWidgetmimeTypesProc* = proc(self: QTableWidget): seq[string] {.raises: [], gcsafe.}
type QTableWidgetmimeDataProc* = proc(self: QTableWidget, items: seq[gen_qtablewidget_types.QTableWidgetItem]): gen_qmimedata_types.QMimeData {.raises: [], gcsafe.}
type QTableWidgetdropMimeDataProc* = proc(self: QTableWidget, row: cint, column: cint, data: gen_qmimedata_types.QMimeData, action: cint): bool {.raises: [], gcsafe.}
type QTableWidgetsupportedDropActionsProc* = proc(self: QTableWidget): cint {.raises: [], gcsafe.}
type QTableWidgetdropEventProc* = proc(self: QTableWidget, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QTableWidgetsetRootIndexProc* = proc(self: QTableWidget, index: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QTableWidgetsetSelectionModelProc* = proc(self: QTableWidget, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void {.raises: [], gcsafe.}
type QTableWidgetdoItemsLayoutProc* = proc(self: QTableWidget): void {.raises: [], gcsafe.}
type QTableWidgetvisualRectProc* = proc(self: QTableWidget, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect {.raises: [], gcsafe.}
type QTableWidgetscrollToProc* = proc(self: QTableWidget, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void {.raises: [], gcsafe.}
type QTableWidgetindexAtProc* = proc(self: QTableWidget, p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QTableWidgetscrollContentsByProc* = proc(self: QTableWidget, dx: cint, dy: cint): void {.raises: [], gcsafe.}
type QTableWidgetinitViewItemOptionProc* = proc(self: QTableWidget, option: gen_qstyleoption_types.QStyleOptionViewItem): void {.raises: [], gcsafe.}
type QTableWidgetpaintEventProc* = proc(self: QTableWidget, e: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QTableWidgettimerEventProc* = proc(self: QTableWidget, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QTableWidgethorizontalOffsetProc* = proc(self: QTableWidget): cint {.raises: [], gcsafe.}
type QTableWidgetverticalOffsetProc* = proc(self: QTableWidget): cint {.raises: [], gcsafe.}
type QTableWidgetmoveCursorProc* = proc(self: QTableWidget, cursorAction: cint, modifiers: cint): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QTableWidgetsetSelectionProc* = proc(self: QTableWidget, rect: gen_qrect_types.QRect, command: cint): void {.raises: [], gcsafe.}
type QTableWidgetvisualRegionForSelectionProc* = proc(self: QTableWidget, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion {.raises: [], gcsafe.}
type QTableWidgetselectedIndexesProc* = proc(self: QTableWidget): seq[gen_qabstractitemmodel_types.QModelIndex] {.raises: [], gcsafe.}
type QTableWidgetupdateGeometriesProc* = proc(self: QTableWidget): void {.raises: [], gcsafe.}
type QTableWidgetviewportSizeHintProc* = proc(self: QTableWidget): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QTableWidgetsizeHintForRowProc* = proc(self: QTableWidget, row: cint): cint {.raises: [], gcsafe.}
type QTableWidgetsizeHintForColumnProc* = proc(self: QTableWidget, column: cint): cint {.raises: [], gcsafe.}
type QTableWidgetverticalScrollbarActionProc* = proc(self: QTableWidget, action: cint): void {.raises: [], gcsafe.}
type QTableWidgethorizontalScrollbarActionProc* = proc(self: QTableWidget, action: cint): void {.raises: [], gcsafe.}
type QTableWidgetisIndexHiddenProc* = proc(self: QTableWidget, index: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QTableWidgetselectionChangedProc* = proc(self: QTableWidget, selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void {.raises: [], gcsafe.}
type QTableWidgetcurrentChangedProc* = proc(self: QTableWidget, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QTableWidgetkeyboardSearchProc* = proc(self: QTableWidget, search: string): void {.raises: [], gcsafe.}
type QTableWidgetitemDelegateForIndexProc* = proc(self: QTableWidget, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemdelegate_types.QAbstractItemDelegate {.raises: [], gcsafe.}
type QTableWidgetinputMethodQueryProc* = proc(self: QTableWidget, query: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QTableWidgetresetProc* = proc(self: QTableWidget): void {.raises: [], gcsafe.}
type QTableWidgetselectAllProc* = proc(self: QTableWidget): void {.raises: [], gcsafe.}
type QTableWidgetdataChangedProc* = proc(self: QTableWidget, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: seq[cint]): void {.raises: [], gcsafe.}
type QTableWidgetrowsInsertedProc* = proc(self: QTableWidget, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void {.raises: [], gcsafe.}
type QTableWidgetrowsAboutToBeRemovedProc* = proc(self: QTableWidget, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void {.raises: [], gcsafe.}
type QTableWidgetupdateEditorDataProc* = proc(self: QTableWidget): void {.raises: [], gcsafe.}
type QTableWidgetupdateEditorGeometriesProc* = proc(self: QTableWidget): void {.raises: [], gcsafe.}
type QTableWidgetverticalScrollbarValueChangedProc* = proc(self: QTableWidget, value: cint): void {.raises: [], gcsafe.}
type QTableWidgethorizontalScrollbarValueChangedProc* = proc(self: QTableWidget, value: cint): void {.raises: [], gcsafe.}
type QTableWidgetcloseEditorProc* = proc(self: QTableWidget, editor: gen_qwidget_types.QWidget, hint: cint): void {.raises: [], gcsafe.}
type QTableWidgetcommitDataProc* = proc(self: QTableWidget, editor: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QTableWidgeteditorDestroyedProc* = proc(self: QTableWidget, editor: gen_qobject_types.QObject): void {.raises: [], gcsafe.}
type QTableWidgetedit2Proc* = proc(self: QTableWidget, index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTableWidgetselectionCommandProc* = proc(self: QTableWidget, index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint {.raises: [], gcsafe.}
type QTableWidgetstartDragProc* = proc(self: QTableWidget, supportedActions: cint): void {.raises: [], gcsafe.}
type QTableWidgetfocusNextPrevChildProc* = proc(self: QTableWidget, next: bool): bool {.raises: [], gcsafe.}
type QTableWidgetviewportEventProc* = proc(self: QTableWidget, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTableWidgetmousePressEventProc* = proc(self: QTableWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QTableWidgetmouseMoveEventProc* = proc(self: QTableWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QTableWidgetmouseReleaseEventProc* = proc(self: QTableWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QTableWidgetmouseDoubleClickEventProc* = proc(self: QTableWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QTableWidgetdragEnterEventProc* = proc(self: QTableWidget, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QTableWidgetdragMoveEventProc* = proc(self: QTableWidget, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QTableWidgetdragLeaveEventProc* = proc(self: QTableWidget, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QTableWidgetfocusInEventProc* = proc(self: QTableWidget, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QTableWidgetfocusOutEventProc* = proc(self: QTableWidget, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QTableWidgetkeyPressEventProc* = proc(self: QTableWidget, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QTableWidgetresizeEventProc* = proc(self: QTableWidget, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QTableWidgetinputMethodEventProc* = proc(self: QTableWidget, event: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QTableWidgeteventFilterProc* = proc(self: QTableWidget, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTableWidgetminimumSizeHintProc* = proc(self: QTableWidget): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QTableWidgetsizeHintProc* = proc(self: QTableWidget): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QTableWidgetsetupViewportProc* = proc(self: QTableWidget, viewport: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QTableWidgetwheelEventProc* = proc(self: QTableWidget, param1: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QTableWidgetcontextMenuEventProc* = proc(self: QTableWidget, param1: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QTableWidgetchangeEventProc* = proc(self: QTableWidget, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTableWidgetinitStyleOptionProc* = proc(self: QTableWidget, option: gen_qstyleoption_types.QStyleOptionFrame): void {.raises: [], gcsafe.}
type QTableWidgetdevTypeProc* = proc(self: QTableWidget): cint {.raises: [], gcsafe.}
type QTableWidgetsetVisibleProc* = proc(self: QTableWidget, visible: bool): void {.raises: [], gcsafe.}
type QTableWidgetheightForWidthProc* = proc(self: QTableWidget, param1: cint): cint {.raises: [], gcsafe.}
type QTableWidgethasHeightForWidthProc* = proc(self: QTableWidget): bool {.raises: [], gcsafe.}
type QTableWidgetpaintEngineProc* = proc(self: QTableWidget): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QTableWidgetkeyReleaseEventProc* = proc(self: QTableWidget, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QTableWidgetenterEventProc* = proc(self: QTableWidget, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QTableWidgetleaveEventProc* = proc(self: QTableWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTableWidgetmoveEventProc* = proc(self: QTableWidget, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QTableWidgetcloseEventProc* = proc(self: QTableWidget, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QTableWidgettabletEventProc* = proc(self: QTableWidget, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QTableWidgetactionEventProc* = proc(self: QTableWidget, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QTableWidgetshowEventProc* = proc(self: QTableWidget, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QTableWidgethideEventProc* = proc(self: QTableWidget, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QTableWidgetnativeEventProc* = proc(self: QTableWidget, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QTableWidgetmetricProc* = proc(self: QTableWidget, param1: cint): cint {.raises: [], gcsafe.}
type QTableWidgetinitPainterProc* = proc(self: QTableWidget, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QTableWidgetredirectedProc* = proc(self: QTableWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QTableWidgetsharedPainterProc* = proc(self: QTableWidget): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QTableWidgetchildEventProc* = proc(self: QTableWidget, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QTableWidgetcustomEventProc* = proc(self: QTableWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTableWidgetconnectNotifyProc* = proc(self: QTableWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTableWidgetdisconnectNotifyProc* = proc(self: QTableWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTableWidgetVTable* = object
  vtbl: cQTableWidgetVTable
  metaObject*: QTableWidgetmetaObjectProc
  metacast*: QTableWidgetmetacastProc
  metacall*: QTableWidgetmetacallProc
  event*: QTableWidgeteventProc
  mimeTypes*: QTableWidgetmimeTypesProc
  mimeData*: QTableWidgetmimeDataProc
  dropMimeData*: QTableWidgetdropMimeDataProc
  supportedDropActions*: QTableWidgetsupportedDropActionsProc
  dropEvent*: QTableWidgetdropEventProc
  setRootIndex*: QTableWidgetsetRootIndexProc
  setSelectionModel*: QTableWidgetsetSelectionModelProc
  doItemsLayout*: QTableWidgetdoItemsLayoutProc
  visualRect*: QTableWidgetvisualRectProc
  scrollTo*: QTableWidgetscrollToProc
  indexAt*: QTableWidgetindexAtProc
  scrollContentsBy*: QTableWidgetscrollContentsByProc
  initViewItemOption*: QTableWidgetinitViewItemOptionProc
  paintEvent*: QTableWidgetpaintEventProc
  timerEvent*: QTableWidgettimerEventProc
  horizontalOffset*: QTableWidgethorizontalOffsetProc
  verticalOffset*: QTableWidgetverticalOffsetProc
  moveCursor*: QTableWidgetmoveCursorProc
  setSelection*: QTableWidgetsetSelectionProc
  visualRegionForSelection*: QTableWidgetvisualRegionForSelectionProc
  selectedIndexes*: QTableWidgetselectedIndexesProc
  updateGeometries*: QTableWidgetupdateGeometriesProc
  viewportSizeHint*: QTableWidgetviewportSizeHintProc
  sizeHintForRow*: QTableWidgetsizeHintForRowProc
  sizeHintForColumn*: QTableWidgetsizeHintForColumnProc
  verticalScrollbarAction*: QTableWidgetverticalScrollbarActionProc
  horizontalScrollbarAction*: QTableWidgethorizontalScrollbarActionProc
  isIndexHidden*: QTableWidgetisIndexHiddenProc
  selectionChanged*: QTableWidgetselectionChangedProc
  currentChanged*: QTableWidgetcurrentChangedProc
  keyboardSearch*: QTableWidgetkeyboardSearchProc
  itemDelegateForIndex*: QTableWidgetitemDelegateForIndexProc
  inputMethodQuery*: QTableWidgetinputMethodQueryProc
  reset*: QTableWidgetresetProc
  selectAll*: QTableWidgetselectAllProc
  dataChanged*: QTableWidgetdataChangedProc
  rowsInserted*: QTableWidgetrowsInsertedProc
  rowsAboutToBeRemoved*: QTableWidgetrowsAboutToBeRemovedProc
  updateEditorData*: QTableWidgetupdateEditorDataProc
  updateEditorGeometries*: QTableWidgetupdateEditorGeometriesProc
  verticalScrollbarValueChanged*: QTableWidgetverticalScrollbarValueChangedProc
  horizontalScrollbarValueChanged*: QTableWidgethorizontalScrollbarValueChangedProc
  closeEditor*: QTableWidgetcloseEditorProc
  commitData*: QTableWidgetcommitDataProc
  editorDestroyed*: QTableWidgeteditorDestroyedProc
  edit2*: QTableWidgetedit2Proc
  selectionCommand*: QTableWidgetselectionCommandProc
  startDrag*: QTableWidgetstartDragProc
  focusNextPrevChild*: QTableWidgetfocusNextPrevChildProc
  viewportEvent*: QTableWidgetviewportEventProc
  mousePressEvent*: QTableWidgetmousePressEventProc
  mouseMoveEvent*: QTableWidgetmouseMoveEventProc
  mouseReleaseEvent*: QTableWidgetmouseReleaseEventProc
  mouseDoubleClickEvent*: QTableWidgetmouseDoubleClickEventProc
  dragEnterEvent*: QTableWidgetdragEnterEventProc
  dragMoveEvent*: QTableWidgetdragMoveEventProc
  dragLeaveEvent*: QTableWidgetdragLeaveEventProc
  focusInEvent*: QTableWidgetfocusInEventProc
  focusOutEvent*: QTableWidgetfocusOutEventProc
  keyPressEvent*: QTableWidgetkeyPressEventProc
  resizeEvent*: QTableWidgetresizeEventProc
  inputMethodEvent*: QTableWidgetinputMethodEventProc
  eventFilter*: QTableWidgeteventFilterProc
  minimumSizeHint*: QTableWidgetminimumSizeHintProc
  sizeHint*: QTableWidgetsizeHintProc
  setupViewport*: QTableWidgetsetupViewportProc
  wheelEvent*: QTableWidgetwheelEventProc
  contextMenuEvent*: QTableWidgetcontextMenuEventProc
  changeEvent*: QTableWidgetchangeEventProc
  initStyleOption*: QTableWidgetinitStyleOptionProc
  devType*: QTableWidgetdevTypeProc
  setVisible*: QTableWidgetsetVisibleProc
  heightForWidth*: QTableWidgetheightForWidthProc
  hasHeightForWidth*: QTableWidgethasHeightForWidthProc
  paintEngine*: QTableWidgetpaintEngineProc
  keyReleaseEvent*: QTableWidgetkeyReleaseEventProc
  enterEvent*: QTableWidgetenterEventProc
  leaveEvent*: QTableWidgetleaveEventProc
  moveEvent*: QTableWidgetmoveEventProc
  closeEvent*: QTableWidgetcloseEventProc
  tabletEvent*: QTableWidgettabletEventProc
  actionEvent*: QTableWidgetactionEventProc
  showEvent*: QTableWidgetshowEventProc
  hideEvent*: QTableWidgethideEventProc
  nativeEvent*: QTableWidgetnativeEventProc
  metric*: QTableWidgetmetricProc
  initPainter*: QTableWidgetinitPainterProc
  redirected*: QTableWidgetredirectedProc
  sharedPainter*: QTableWidgetsharedPainterProc
  childEvent*: QTableWidgetchildEventProc
  customEvent*: QTableWidgetcustomEventProc
  connectNotify*: QTableWidgetconnectNotifyProc
  disconnectNotify*: QTableWidgetdisconnectNotifyProc
proc QTableWidgetmetaObject*(self: gen_qtablewidget_types.QTableWidget, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTableWidget_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQTableWidget_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QTableWidgetmetacast*(self: gen_qtablewidget_types.QTableWidget, param1: cstring): pointer =
  fcQTableWidget_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQTableWidget_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QTableWidgetmetacall*(self: gen_qtablewidget_types.QTableWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQTableWidget_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQTableWidget_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTableWidgetevent*(self: gen_qtablewidget_types.QTableWidget, e: gen_qcoreevent_types.QEvent): bool =
  fcQTableWidget_virtualbase_event(self.h, e.h)

proc miqt_exec_callback_cQTableWidget_event(vtbl: pointer, self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QTableWidgetmimeTypes*(self: gen_qtablewidget_types.QTableWidget, ): seq[string] =
  var v_ma = fcQTableWidget_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQTableWidget_mimeTypes(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  var virtualReturn = vtbl[].mimeTypes(self)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QTableWidgetmimeData*(self: gen_qtablewidget_types.QTableWidget, items: seq[gen_qtablewidget_types.QTableWidgetItem]): gen_qmimedata_types.QMimeData =
  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  gen_qmimedata_types.QMimeData(h: fcQTableWidget_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0]))))

proc miqt_exec_callback_cQTableWidget_mimeData(vtbl: pointer, self: pointer, items: struct_miqt_array): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  var vitems_ma = items
  var vitemsx_ret = newSeq[gen_qtablewidget_types.QTableWidgetItem](int(vitems_ma.len))
  let vitems_outCast = cast[ptr UncheckedArray[pointer]](vitems_ma.data)
  for i in 0 ..< vitems_ma.len:
    vitemsx_ret[i] = gen_qtablewidget_types.QTableWidgetItem(h: vitems_outCast[i])
  let slotval1 = vitemsx_ret
  var virtualReturn = vtbl[].mimeData(self, slotval1)
  virtualReturn.h

proc QTableWidgetdropMimeData*(self: gen_qtablewidget_types.QTableWidget, row: cint, column: cint, data: gen_qmimedata_types.QMimeData, action: cint): bool =
  fcQTableWidget_virtualbase_dropMimeData(self.h, row, column, data.h, cint(action))

proc miqt_exec_callback_cQTableWidget_dropMimeData(vtbl: pointer, self: pointer, row: cint, column: cint, data: pointer, action: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qmimedata_types.QMimeData(h: data)
  let slotval4 = cint(action)
  var virtualReturn = vtbl[].dropMimeData(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc QTableWidgetsupportedDropActions*(self: gen_qtablewidget_types.QTableWidget, ): cint =
  cint(fcQTableWidget_virtualbase_supportedDropActions(self.h))

proc miqt_exec_callback_cQTableWidget_supportedDropActions(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  var virtualReturn = vtbl[].supportedDropActions(self)
  cint(virtualReturn)

proc QTableWidgetdropEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qevent_types.QDropEvent): void =
  fcQTableWidget_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQTableWidget_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QTableWidgetsetRootIndex*(self: gen_qtablewidget_types.QTableWidget, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQTableWidget_virtualbase_setRootIndex(self.h, index.h)

proc miqt_exec_callback_cQTableWidget_setRootIndex(vtbl: pointer, self: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  vtbl[].setRootIndex(self, slotval1)

proc QTableWidgetsetSelectionModel*(self: gen_qtablewidget_types.QTableWidget, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void =
  fcQTableWidget_virtualbase_setSelectionModel(self.h, selectionModel.h)

proc miqt_exec_callback_cQTableWidget_setSelectionModel(vtbl: pointer, self: pointer, selectionModel: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelectionModel(h: selectionModel)
  vtbl[].setSelectionModel(self, slotval1)

proc QTableWidgetdoItemsLayout*(self: gen_qtablewidget_types.QTableWidget, ): void =
  fcQTableWidget_virtualbase_doItemsLayout(self.h)

proc miqt_exec_callback_cQTableWidget_doItemsLayout(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  vtbl[].doItemsLayout(self)

proc QTableWidgetvisualRect*(self: gen_qtablewidget_types.QTableWidget, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQTableWidget_virtualbase_visualRect(self.h, index.h))

proc miqt_exec_callback_cQTableWidget_visualRect(vtbl: pointer, self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].visualRect(self, slotval1)
  virtualReturn.h

proc QTableWidgetscrollTo*(self: gen_qtablewidget_types.QTableWidget, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void =
  fcQTableWidget_virtualbase_scrollTo(self.h, index.h, cint(hint))

proc miqt_exec_callback_cQTableWidget_scrollTo(vtbl: pointer, self: pointer, index: pointer, hint: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let slotval2 = cint(hint)
  vtbl[].scrollTo(self, slotval1, slotval2)

proc QTableWidgetindexAt*(self: gen_qtablewidget_types.QTableWidget, p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTableWidget_virtualbase_indexAt(self.h, p.h))

proc miqt_exec_callback_cQTableWidget_indexAt(vtbl: pointer, self: pointer, p: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: p)
  var virtualReturn = vtbl[].indexAt(self, slotval1)
  virtualReturn.h

proc QTableWidgetscrollContentsBy*(self: gen_qtablewidget_types.QTableWidget, dx: cint, dy: cint): void =
  fcQTableWidget_virtualbase_scrollContentsBy(self.h, dx, dy)

proc miqt_exec_callback_cQTableWidget_scrollContentsBy(vtbl: pointer, self: pointer, dx: cint, dy: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = dx
  let slotval2 = dy
  vtbl[].scrollContentsBy(self, slotval1, slotval2)

proc QTableWidgetinitViewItemOption*(self: gen_qtablewidget_types.QTableWidget, option: gen_qstyleoption_types.QStyleOptionViewItem): void =
  fcQTableWidget_virtualbase_initViewItemOption(self.h, option.h)

proc miqt_exec_callback_cQTableWidget_initViewItemOption(vtbl: pointer, self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionViewItem(h: option)
  vtbl[].initViewItemOption(self, slotval1)

proc QTableWidgetpaintEvent*(self: gen_qtablewidget_types.QTableWidget, e: gen_qevent_types.QPaintEvent): void =
  fcQTableWidget_virtualbase_paintEvent(self.h, e.h)

proc miqt_exec_callback_cQTableWidget_paintEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: e)
  vtbl[].paintEvent(self, slotval1)

proc QTableWidgettimerEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQTableWidget_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQTableWidget_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QTableWidgethorizontalOffset*(self: gen_qtablewidget_types.QTableWidget, ): cint =
  fcQTableWidget_virtualbase_horizontalOffset(self.h)

proc miqt_exec_callback_cQTableWidget_horizontalOffset(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  var virtualReturn = vtbl[].horizontalOffset(self)
  virtualReturn

proc QTableWidgetverticalOffset*(self: gen_qtablewidget_types.QTableWidget, ): cint =
  fcQTableWidget_virtualbase_verticalOffset(self.h)

proc miqt_exec_callback_cQTableWidget_verticalOffset(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  var virtualReturn = vtbl[].verticalOffset(self)
  virtualReturn

proc QTableWidgetmoveCursor*(self: gen_qtablewidget_types.QTableWidget, cursorAction: cint, modifiers: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTableWidget_virtualbase_moveCursor(self.h, cint(cursorAction), cint(modifiers)))

proc miqt_exec_callback_cQTableWidget_moveCursor(vtbl: pointer, self: pointer, cursorAction: cint, modifiers: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = cint(cursorAction)
  let slotval2 = cint(modifiers)
  var virtualReturn = vtbl[].moveCursor(self, slotval1, slotval2)
  virtualReturn.h

proc QTableWidgetsetSelection*(self: gen_qtablewidget_types.QTableWidget, rect: gen_qrect_types.QRect, command: cint): void =
  fcQTableWidget_virtualbase_setSelection(self.h, rect.h, cint(command))

proc miqt_exec_callback_cQTableWidget_setSelection(vtbl: pointer, self: pointer, rect: pointer, command: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qrect_types.QRect(h: rect)
  let slotval2 = cint(command)
  vtbl[].setSelection(self, slotval1, slotval2)

proc QTableWidgetvisualRegionForSelection*(self: gen_qtablewidget_types.QTableWidget, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQTableWidget_virtualbase_visualRegionForSelection(self.h, selection.h))

proc miqt_exec_callback_cQTableWidget_visualRegionForSelection(vtbl: pointer, self: pointer, selection: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection)
  var virtualReturn = vtbl[].visualRegionForSelection(self, slotval1)
  virtualReturn.h

proc QTableWidgetselectedIndexes*(self: gen_qtablewidget_types.QTableWidget, ): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQTableWidget_virtualbase_selectedIndexes(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  vx_ret

proc miqt_exec_callback_cQTableWidget_selectedIndexes(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  var virtualReturn = vtbl[].selectedIndexes(self)
  var virtualReturn_CArray = newSeq[pointer](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QTableWidgetupdateGeometries*(self: gen_qtablewidget_types.QTableWidget, ): void =
  fcQTableWidget_virtualbase_updateGeometries(self.h)

proc miqt_exec_callback_cQTableWidget_updateGeometries(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  vtbl[].updateGeometries(self)

proc QTableWidgetviewportSizeHint*(self: gen_qtablewidget_types.QTableWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTableWidget_virtualbase_viewportSizeHint(self.h))

proc miqt_exec_callback_cQTableWidget_viewportSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  var virtualReturn = vtbl[].viewportSizeHint(self)
  virtualReturn.h

proc QTableWidgetsizeHintForRow*(self: gen_qtablewidget_types.QTableWidget, row: cint): cint =
  fcQTableWidget_virtualbase_sizeHintForRow(self.h, row)

proc miqt_exec_callback_cQTableWidget_sizeHintForRow(vtbl: pointer, self: pointer, row: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = row
  var virtualReturn = vtbl[].sizeHintForRow(self, slotval1)
  virtualReturn

proc QTableWidgetsizeHintForColumn*(self: gen_qtablewidget_types.QTableWidget, column: cint): cint =
  fcQTableWidget_virtualbase_sizeHintForColumn(self.h, column)

proc miqt_exec_callback_cQTableWidget_sizeHintForColumn(vtbl: pointer, self: pointer, column: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = column
  var virtualReturn = vtbl[].sizeHintForColumn(self, slotval1)
  virtualReturn

proc QTableWidgetverticalScrollbarAction*(self: gen_qtablewidget_types.QTableWidget, action: cint): void =
  fcQTableWidget_virtualbase_verticalScrollbarAction(self.h, action)

proc miqt_exec_callback_cQTableWidget_verticalScrollbarAction(vtbl: pointer, self: pointer, action: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = action
  vtbl[].verticalScrollbarAction(self, slotval1)

proc QTableWidgethorizontalScrollbarAction*(self: gen_qtablewidget_types.QTableWidget, action: cint): void =
  fcQTableWidget_virtualbase_horizontalScrollbarAction(self.h, action)

proc miqt_exec_callback_cQTableWidget_horizontalScrollbarAction(vtbl: pointer, self: pointer, action: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = action
  vtbl[].horizontalScrollbarAction(self, slotval1)

proc QTableWidgetisIndexHidden*(self: gen_qtablewidget_types.QTableWidget, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQTableWidget_virtualbase_isIndexHidden(self.h, index.h)

proc miqt_exec_callback_cQTableWidget_isIndexHidden(vtbl: pointer, self: pointer, index: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].isIndexHidden(self, slotval1)
  virtualReturn

proc QTableWidgetselectionChanged*(self: gen_qtablewidget_types.QTableWidget, selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void =
  fcQTableWidget_virtualbase_selectionChanged(self.h, selected.h, deselected.h)

proc miqt_exec_callback_cQTableWidget_selectionChanged(vtbl: pointer, self: pointer, selected: pointer, deselected: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selected)
  let slotval2 = gen_qitemselectionmodel_types.QItemSelection(h: deselected)
  vtbl[].selectionChanged(self, slotval1, slotval2)

proc QTableWidgetcurrentChanged*(self: gen_qtablewidget_types.QTableWidget, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQTableWidget_virtualbase_currentChanged(self.h, current.h, previous.h)

proc miqt_exec_callback_cQTableWidget_currentChanged(vtbl: pointer, self: pointer, current: pointer, previous: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: current)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: previous)
  vtbl[].currentChanged(self, slotval1, slotval2)

proc QTableWidgetkeyboardSearch*(self: gen_qtablewidget_types.QTableWidget, search: string): void =
  fcQTableWidget_virtualbase_keyboardSearch(self.h, struct_miqt_string(data: search, len: csize_t(len(search))))

proc miqt_exec_callback_cQTableWidget_keyboardSearch(vtbl: pointer, self: pointer, search: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let vsearch_ms = search
  let vsearchx_ret = string.fromBytes(toOpenArrayByte(vsearch_ms.data, 0, int(vsearch_ms.len)-1))
  c_free(vsearch_ms.data)
  let slotval1 = vsearchx_ret
  vtbl[].keyboardSearch(self, slotval1)

proc QTableWidgetitemDelegateForIndex*(self: gen_qtablewidget_types.QTableWidget, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemdelegate_types.QAbstractItemDelegate =
  gen_qabstractitemdelegate_types.QAbstractItemDelegate(h: fcQTableWidget_virtualbase_itemDelegateForIndex(self.h, index.h))

proc miqt_exec_callback_cQTableWidget_itemDelegateForIndex(vtbl: pointer, self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].itemDelegateForIndex(self, slotval1)
  virtualReturn.h

proc QTableWidgetinputMethodQuery*(self: gen_qtablewidget_types.QTableWidget, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQTableWidget_virtualbase_inputMethodQuery(self.h, cint(query)))

proc miqt_exec_callback_cQTableWidget_inputMethodQuery(vtbl: pointer, self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = cint(query)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QTableWidgetreset*(self: gen_qtablewidget_types.QTableWidget, ): void =
  fcQTableWidget_virtualbase_reset(self.h)

proc miqt_exec_callback_cQTableWidget_reset(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  vtbl[].reset(self)

proc QTableWidgetselectAll*(self: gen_qtablewidget_types.QTableWidget, ): void =
  fcQTableWidget_virtualbase_selectAll(self.h)

proc miqt_exec_callback_cQTableWidget_selectAll(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  vtbl[].selectAll(self)

proc QTableWidgetdataChanged*(self: gen_qtablewidget_types.QTableWidget, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: seq[cint]): void =
  var roles_CArray = newSeq[cint](len(roles))
  for i in 0..<len(roles):
    roles_CArray[i] = roles[i]

  fcQTableWidget_virtualbase_dataChanged(self.h, topLeft.h, bottomRight.h, struct_miqt_array(len: csize_t(len(roles)), data: if len(roles) == 0: nil else: addr(roles_CArray[0])))

proc miqt_exec_callback_cQTableWidget_dataChanged(vtbl: pointer, self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: topLeft)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: bottomRight)
  var vroles_ma = roles
  var vrolesx_ret = newSeq[cint](int(vroles_ma.len))
  let vroles_outCast = cast[ptr UncheckedArray[cint]](vroles_ma.data)
  for i in 0 ..< vroles_ma.len:
    vrolesx_ret[i] = vroles_outCast[i]
  let slotval3 = vrolesx_ret
  vtbl[].dataChanged(self, slotval1, slotval2, slotval3)

proc QTableWidgetrowsInserted*(self: gen_qtablewidget_types.QTableWidget, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fcQTableWidget_virtualbase_rowsInserted(self.h, parent.h, start, endVal)

proc miqt_exec_callback_cQTableWidget_rowsInserted(vtbl: pointer, self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  let slotval2 = start
  let slotval3 = endVal
  vtbl[].rowsInserted(self, slotval1, slotval2, slotval3)

proc QTableWidgetrowsAboutToBeRemoved*(self: gen_qtablewidget_types.QTableWidget, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fcQTableWidget_virtualbase_rowsAboutToBeRemoved(self.h, parent.h, start, endVal)

proc miqt_exec_callback_cQTableWidget_rowsAboutToBeRemoved(vtbl: pointer, self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  let slotval2 = start
  let slotval3 = endVal
  vtbl[].rowsAboutToBeRemoved(self, slotval1, slotval2, slotval3)

proc QTableWidgetupdateEditorData*(self: gen_qtablewidget_types.QTableWidget, ): void =
  fcQTableWidget_virtualbase_updateEditorData(self.h)

proc miqt_exec_callback_cQTableWidget_updateEditorData(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  vtbl[].updateEditorData(self)

proc QTableWidgetupdateEditorGeometries*(self: gen_qtablewidget_types.QTableWidget, ): void =
  fcQTableWidget_virtualbase_updateEditorGeometries(self.h)

proc miqt_exec_callback_cQTableWidget_updateEditorGeometries(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  vtbl[].updateEditorGeometries(self)

proc QTableWidgetverticalScrollbarValueChanged*(self: gen_qtablewidget_types.QTableWidget, value: cint): void =
  fcQTableWidget_virtualbase_verticalScrollbarValueChanged(self.h, value)

proc miqt_exec_callback_cQTableWidget_verticalScrollbarValueChanged(vtbl: pointer, self: pointer, value: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = value
  vtbl[].verticalScrollbarValueChanged(self, slotval1)

proc QTableWidgethorizontalScrollbarValueChanged*(self: gen_qtablewidget_types.QTableWidget, value: cint): void =
  fcQTableWidget_virtualbase_horizontalScrollbarValueChanged(self.h, value)

proc miqt_exec_callback_cQTableWidget_horizontalScrollbarValueChanged(vtbl: pointer, self: pointer, value: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = value
  vtbl[].horizontalScrollbarValueChanged(self, slotval1)

proc QTableWidgetcloseEditor*(self: gen_qtablewidget_types.QTableWidget, editor: gen_qwidget_types.QWidget, hint: cint): void =
  fcQTableWidget_virtualbase_closeEditor(self.h, editor.h, cint(hint))

proc miqt_exec_callback_cQTableWidget_closeEditor(vtbl: pointer, self: pointer, editor: pointer, hint: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor)
  let slotval2 = cint(hint)
  vtbl[].closeEditor(self, slotval1, slotval2)

proc QTableWidgetcommitData*(self: gen_qtablewidget_types.QTableWidget, editor: gen_qwidget_types.QWidget): void =
  fcQTableWidget_virtualbase_commitData(self.h, editor.h)

proc miqt_exec_callback_cQTableWidget_commitData(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor)
  vtbl[].commitData(self, slotval1)

proc QTableWidgeteditorDestroyed*(self: gen_qtablewidget_types.QTableWidget, editor: gen_qobject_types.QObject): void =
  fcQTableWidget_virtualbase_editorDestroyed(self.h, editor.h)

proc miqt_exec_callback_cQTableWidget_editorDestroyed(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qobject_types.QObject(h: editor)
  vtbl[].editorDestroyed(self, slotval1)

proc QTableWidgetedit*(self: gen_qtablewidget_types.QTableWidget, index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool =
  fcQTableWidget_virtualbase_edit2(self.h, index.h, cint(trigger), event.h)

proc miqt_exec_callback_cQTableWidget_edit2(vtbl: pointer, self: pointer, index: pointer, trigger: cint, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let slotval2 = cint(trigger)
  let slotval3 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].edit2(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTableWidgetselectionCommand*(self: gen_qtablewidget_types.QTableWidget, index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint =
  cint(fcQTableWidget_virtualbase_selectionCommand(self.h, index.h, event.h))

proc miqt_exec_callback_cQTableWidget_selectionCommand(vtbl: pointer, self: pointer, index: pointer, event: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].selectionCommand(self, slotval1, slotval2)
  cint(virtualReturn)

proc QTableWidgetstartDrag*(self: gen_qtablewidget_types.QTableWidget, supportedActions: cint): void =
  fcQTableWidget_virtualbase_startDrag(self.h, cint(supportedActions))

proc miqt_exec_callback_cQTableWidget_startDrag(vtbl: pointer, self: pointer, supportedActions: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = cint(supportedActions)
  vtbl[].startDrag(self, slotval1)

proc QTableWidgetfocusNextPrevChild*(self: gen_qtablewidget_types.QTableWidget, next: bool): bool =
  fcQTableWidget_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQTableWidget_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QTableWidgetviewportEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qcoreevent_types.QEvent): bool =
  fcQTableWidget_virtualbase_viewportEvent(self.h, event.h)

proc miqt_exec_callback_cQTableWidget_viewportEvent(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].viewportEvent(self, slotval1)
  virtualReturn

proc QTableWidgetmousePressEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQTableWidget_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQTableWidget_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QTableWidgetmouseMoveEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQTableWidget_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQTableWidget_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QTableWidgetmouseReleaseEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQTableWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQTableWidget_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QTableWidgetmouseDoubleClickEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQTableWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQTableWidget_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QTableWidgetdragEnterEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qevent_types.QDragEnterEvent): void =
  fcQTableWidget_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQTableWidget_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QTableWidgetdragMoveEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qevent_types.QDragMoveEvent): void =
  fcQTableWidget_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQTableWidget_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QTableWidgetdragLeaveEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQTableWidget_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQTableWidget_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QTableWidgetfocusInEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQTableWidget_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQTableWidget_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QTableWidgetfocusOutEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQTableWidget_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQTableWidget_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QTableWidgetkeyPressEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQTableWidget_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQTableWidget_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyPressEvent(self, slotval1)

proc QTableWidgetresizeEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qevent_types.QResizeEvent): void =
  fcQTableWidget_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQTableWidget_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)
  vtbl[].resizeEvent(self, slotval1)

proc QTableWidgetinputMethodEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qevent_types.QInputMethodEvent): void =
  fcQTableWidget_virtualbase_inputMethodEvent(self.h, event.h)

proc miqt_exec_callback_cQTableWidget_inputMethodEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)
  vtbl[].inputMethodEvent(self, slotval1)

proc QTableWidgeteventFilter*(self: gen_qtablewidget_types.QTableWidget, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQTableWidget_virtualbase_eventFilter(self.h, objectVal.h, event.h)

proc miqt_exec_callback_cQTableWidget_eventFilter(vtbl: pointer, self: pointer, objectVal: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qobject_types.QObject(h: objectVal)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QTableWidgetminimumSizeHint*(self: gen_qtablewidget_types.QTableWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTableWidget_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQTableWidget_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QTableWidgetsizeHint*(self: gen_qtablewidget_types.QTableWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTableWidget_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQTableWidget_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QTableWidgetsetupViewport*(self: gen_qtablewidget_types.QTableWidget, viewport: gen_qwidget_types.QWidget): void =
  fcQTableWidget_virtualbase_setupViewport(self.h, viewport.h)

proc miqt_exec_callback_cQTableWidget_setupViewport(vtbl: pointer, self: pointer, viewport: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: viewport)
  vtbl[].setupViewport(self, slotval1)

proc QTableWidgetwheelEvent*(self: gen_qtablewidget_types.QTableWidget, param1: gen_qevent_types.QWheelEvent): void =
  fcQTableWidget_virtualbase_wheelEvent(self.h, param1.h)

proc miqt_exec_callback_cQTableWidget_wheelEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1)
  vtbl[].wheelEvent(self, slotval1)

proc QTableWidgetcontextMenuEvent*(self: gen_qtablewidget_types.QTableWidget, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQTableWidget_virtualbase_contextMenuEvent(self.h, param1.h)

proc miqt_exec_callback_cQTableWidget_contextMenuEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)
  vtbl[].contextMenuEvent(self, slotval1)

proc QTableWidgetchangeEvent*(self: gen_qtablewidget_types.QTableWidget, param1: gen_qcoreevent_types.QEvent): void =
  fcQTableWidget_virtualbase_changeEvent(self.h, param1.h)

proc miqt_exec_callback_cQTableWidget_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  vtbl[].changeEvent(self, slotval1)

proc QTableWidgetinitStyleOption*(self: gen_qtablewidget_types.QTableWidget, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fcQTableWidget_virtualbase_initStyleOption(self.h, option.h)

proc miqt_exec_callback_cQTableWidget_initStyleOption(vtbl: pointer, self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionFrame(h: option)
  vtbl[].initStyleOption(self, slotval1)

proc QTableWidgetdevType*(self: gen_qtablewidget_types.QTableWidget, ): cint =
  fcQTableWidget_virtualbase_devType(self.h)

proc miqt_exec_callback_cQTableWidget_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QTableWidgetsetVisible*(self: gen_qtablewidget_types.QTableWidget, visible: bool): void =
  fcQTableWidget_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQTableWidget_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QTableWidgetheightForWidth*(self: gen_qtablewidget_types.QTableWidget, param1: cint): cint =
  fcQTableWidget_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQTableWidget_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QTableWidgethasHeightForWidth*(self: gen_qtablewidget_types.QTableWidget, ): bool =
  fcQTableWidget_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQTableWidget_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QTableWidgetpaintEngine*(self: gen_qtablewidget_types.QTableWidget, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQTableWidget_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQTableWidget_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QTableWidgetkeyReleaseEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQTableWidget_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQTableWidget_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QTableWidgetenterEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qevent_types.QEnterEvent): void =
  fcQTableWidget_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQTableWidget_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QTableWidgetleaveEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQTableWidget_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQTableWidget_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QTableWidgetmoveEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qevent_types.QMoveEvent): void =
  fcQTableWidget_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQTableWidget_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QTableWidgetcloseEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qevent_types.QCloseEvent): void =
  fcQTableWidget_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQTableWidget_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QTableWidgettabletEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qevent_types.QTabletEvent): void =
  fcQTableWidget_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQTableWidget_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QTableWidgetactionEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qevent_types.QActionEvent): void =
  fcQTableWidget_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQTableWidget_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QTableWidgetshowEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qevent_types.QShowEvent): void =
  fcQTableWidget_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQTableWidget_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  vtbl[].showEvent(self, slotval1)

proc QTableWidgethideEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qevent_types.QHideEvent): void =
  fcQTableWidget_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQTableWidget_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QTableWidgetnativeEvent*(self: gen_qtablewidget_types.QTableWidget, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fcQTableWidget_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQTableWidget_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTableWidgetmetric*(self: gen_qtablewidget_types.QTableWidget, param1: cint): cint =
  fcQTableWidget_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQTableWidget_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QTableWidgetinitPainter*(self: gen_qtablewidget_types.QTableWidget, painter: gen_qpainter_types.QPainter): void =
  fcQTableWidget_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQTableWidget_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QTableWidgetredirected*(self: gen_qtablewidget_types.QTableWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQTableWidget_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQTableWidget_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QTableWidgetsharedPainter*(self: gen_qtablewidget_types.QTableWidget, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQTableWidget_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQTableWidget_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QTableWidgetchildEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qcoreevent_types.QChildEvent): void =
  fcQTableWidget_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQTableWidget_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QTableWidgetcustomEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQTableWidget_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQTableWidget_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QTableWidgetconnectNotify*(self: gen_qtablewidget_types.QTableWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTableWidget_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQTableWidget_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QTableWidgetdisconnectNotify*(self: gen_qtablewidget_types.QTableWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTableWidget_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQTableWidget_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableWidgetVTable](vtbl)
  let self = QTableWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qtablewidget_types.QTableWidget,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QTableWidgetVTable = nil): gen_qtablewidget_types.QTableWidget =
  let vtbl = if vtbl == nil: new QTableWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTableWidgetVTable, _: ptr cQTableWidget) {.cdecl.} =
    let vtbl = cast[ref QTableWidgetVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQTableWidget_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQTableWidget_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQTableWidget_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQTableWidget_event
  if not isNil(vtbl.mimeTypes):
    vtbl[].vtbl.mimeTypes = miqt_exec_callback_cQTableWidget_mimeTypes
  if not isNil(vtbl.mimeData):
    vtbl[].vtbl.mimeData = miqt_exec_callback_cQTableWidget_mimeData
  if not isNil(vtbl.dropMimeData):
    vtbl[].vtbl.dropMimeData = miqt_exec_callback_cQTableWidget_dropMimeData
  if not isNil(vtbl.supportedDropActions):
    vtbl[].vtbl.supportedDropActions = miqt_exec_callback_cQTableWidget_supportedDropActions
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQTableWidget_dropEvent
  if not isNil(vtbl.setRootIndex):
    vtbl[].vtbl.setRootIndex = miqt_exec_callback_cQTableWidget_setRootIndex
  if not isNil(vtbl.setSelectionModel):
    vtbl[].vtbl.setSelectionModel = miqt_exec_callback_cQTableWidget_setSelectionModel
  if not isNil(vtbl.doItemsLayout):
    vtbl[].vtbl.doItemsLayout = miqt_exec_callback_cQTableWidget_doItemsLayout
  if not isNil(vtbl.visualRect):
    vtbl[].vtbl.visualRect = miqt_exec_callback_cQTableWidget_visualRect
  if not isNil(vtbl.scrollTo):
    vtbl[].vtbl.scrollTo = miqt_exec_callback_cQTableWidget_scrollTo
  if not isNil(vtbl.indexAt):
    vtbl[].vtbl.indexAt = miqt_exec_callback_cQTableWidget_indexAt
  if not isNil(vtbl.scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = miqt_exec_callback_cQTableWidget_scrollContentsBy
  if not isNil(vtbl.initViewItemOption):
    vtbl[].vtbl.initViewItemOption = miqt_exec_callback_cQTableWidget_initViewItemOption
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQTableWidget_paintEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQTableWidget_timerEvent
  if not isNil(vtbl.horizontalOffset):
    vtbl[].vtbl.horizontalOffset = miqt_exec_callback_cQTableWidget_horizontalOffset
  if not isNil(vtbl.verticalOffset):
    vtbl[].vtbl.verticalOffset = miqt_exec_callback_cQTableWidget_verticalOffset
  if not isNil(vtbl.moveCursor):
    vtbl[].vtbl.moveCursor = miqt_exec_callback_cQTableWidget_moveCursor
  if not isNil(vtbl.setSelection):
    vtbl[].vtbl.setSelection = miqt_exec_callback_cQTableWidget_setSelection
  if not isNil(vtbl.visualRegionForSelection):
    vtbl[].vtbl.visualRegionForSelection = miqt_exec_callback_cQTableWidget_visualRegionForSelection
  if not isNil(vtbl.selectedIndexes):
    vtbl[].vtbl.selectedIndexes = miqt_exec_callback_cQTableWidget_selectedIndexes
  if not isNil(vtbl.updateGeometries):
    vtbl[].vtbl.updateGeometries = miqt_exec_callback_cQTableWidget_updateGeometries
  if not isNil(vtbl.viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = miqt_exec_callback_cQTableWidget_viewportSizeHint
  if not isNil(vtbl.sizeHintForRow):
    vtbl[].vtbl.sizeHintForRow = miqt_exec_callback_cQTableWidget_sizeHintForRow
  if not isNil(vtbl.sizeHintForColumn):
    vtbl[].vtbl.sizeHintForColumn = miqt_exec_callback_cQTableWidget_sizeHintForColumn
  if not isNil(vtbl.verticalScrollbarAction):
    vtbl[].vtbl.verticalScrollbarAction = miqt_exec_callback_cQTableWidget_verticalScrollbarAction
  if not isNil(vtbl.horizontalScrollbarAction):
    vtbl[].vtbl.horizontalScrollbarAction = miqt_exec_callback_cQTableWidget_horizontalScrollbarAction
  if not isNil(vtbl.isIndexHidden):
    vtbl[].vtbl.isIndexHidden = miqt_exec_callback_cQTableWidget_isIndexHidden
  if not isNil(vtbl.selectionChanged):
    vtbl[].vtbl.selectionChanged = miqt_exec_callback_cQTableWidget_selectionChanged
  if not isNil(vtbl.currentChanged):
    vtbl[].vtbl.currentChanged = miqt_exec_callback_cQTableWidget_currentChanged
  if not isNil(vtbl.keyboardSearch):
    vtbl[].vtbl.keyboardSearch = miqt_exec_callback_cQTableWidget_keyboardSearch
  if not isNil(vtbl.itemDelegateForIndex):
    vtbl[].vtbl.itemDelegateForIndex = miqt_exec_callback_cQTableWidget_itemDelegateForIndex
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQTableWidget_inputMethodQuery
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQTableWidget_reset
  if not isNil(vtbl.selectAll):
    vtbl[].vtbl.selectAll = miqt_exec_callback_cQTableWidget_selectAll
  if not isNil(vtbl.dataChanged):
    vtbl[].vtbl.dataChanged = miqt_exec_callback_cQTableWidget_dataChanged
  if not isNil(vtbl.rowsInserted):
    vtbl[].vtbl.rowsInserted = miqt_exec_callback_cQTableWidget_rowsInserted
  if not isNil(vtbl.rowsAboutToBeRemoved):
    vtbl[].vtbl.rowsAboutToBeRemoved = miqt_exec_callback_cQTableWidget_rowsAboutToBeRemoved
  if not isNil(vtbl.updateEditorData):
    vtbl[].vtbl.updateEditorData = miqt_exec_callback_cQTableWidget_updateEditorData
  if not isNil(vtbl.updateEditorGeometries):
    vtbl[].vtbl.updateEditorGeometries = miqt_exec_callback_cQTableWidget_updateEditorGeometries
  if not isNil(vtbl.verticalScrollbarValueChanged):
    vtbl[].vtbl.verticalScrollbarValueChanged = miqt_exec_callback_cQTableWidget_verticalScrollbarValueChanged
  if not isNil(vtbl.horizontalScrollbarValueChanged):
    vtbl[].vtbl.horizontalScrollbarValueChanged = miqt_exec_callback_cQTableWidget_horizontalScrollbarValueChanged
  if not isNil(vtbl.closeEditor):
    vtbl[].vtbl.closeEditor = miqt_exec_callback_cQTableWidget_closeEditor
  if not isNil(vtbl.commitData):
    vtbl[].vtbl.commitData = miqt_exec_callback_cQTableWidget_commitData
  if not isNil(vtbl.editorDestroyed):
    vtbl[].vtbl.editorDestroyed = miqt_exec_callback_cQTableWidget_editorDestroyed
  if not isNil(vtbl.edit2):
    vtbl[].vtbl.edit2 = miqt_exec_callback_cQTableWidget_edit2
  if not isNil(vtbl.selectionCommand):
    vtbl[].vtbl.selectionCommand = miqt_exec_callback_cQTableWidget_selectionCommand
  if not isNil(vtbl.startDrag):
    vtbl[].vtbl.startDrag = miqt_exec_callback_cQTableWidget_startDrag
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQTableWidget_focusNextPrevChild
  if not isNil(vtbl.viewportEvent):
    vtbl[].vtbl.viewportEvent = miqt_exec_callback_cQTableWidget_viewportEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQTableWidget_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQTableWidget_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQTableWidget_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQTableWidget_mouseDoubleClickEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQTableWidget_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQTableWidget_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQTableWidget_dragLeaveEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQTableWidget_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQTableWidget_focusOutEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQTableWidget_keyPressEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQTableWidget_resizeEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQTableWidget_inputMethodEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQTableWidget_eventFilter
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQTableWidget_minimumSizeHint
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQTableWidget_sizeHint
  if not isNil(vtbl.setupViewport):
    vtbl[].vtbl.setupViewport = miqt_exec_callback_cQTableWidget_setupViewport
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQTableWidget_wheelEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQTableWidget_contextMenuEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQTableWidget_changeEvent
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQTableWidget_initStyleOption
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQTableWidget_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQTableWidget_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQTableWidget_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQTableWidget_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQTableWidget_paintEngine
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQTableWidget_keyReleaseEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQTableWidget_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQTableWidget_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQTableWidget_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQTableWidget_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQTableWidget_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQTableWidget_actionEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQTableWidget_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQTableWidget_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQTableWidget_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQTableWidget_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQTableWidget_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQTableWidget_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQTableWidget_sharedPainter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQTableWidget_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQTableWidget_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQTableWidget_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQTableWidget_disconnectNotify
  gen_qtablewidget_types.QTableWidget(h: fcQTableWidget_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qtablewidget_types.QTableWidget,
    vtbl: ref QTableWidgetVTable = nil): gen_qtablewidget_types.QTableWidget =
  let vtbl = if vtbl == nil: new QTableWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTableWidgetVTable, _: ptr cQTableWidget) {.cdecl.} =
    let vtbl = cast[ref QTableWidgetVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQTableWidget_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQTableWidget_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQTableWidget_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQTableWidget_event
  if not isNil(vtbl.mimeTypes):
    vtbl[].vtbl.mimeTypes = miqt_exec_callback_cQTableWidget_mimeTypes
  if not isNil(vtbl.mimeData):
    vtbl[].vtbl.mimeData = miqt_exec_callback_cQTableWidget_mimeData
  if not isNil(vtbl.dropMimeData):
    vtbl[].vtbl.dropMimeData = miqt_exec_callback_cQTableWidget_dropMimeData
  if not isNil(vtbl.supportedDropActions):
    vtbl[].vtbl.supportedDropActions = miqt_exec_callback_cQTableWidget_supportedDropActions
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQTableWidget_dropEvent
  if not isNil(vtbl.setRootIndex):
    vtbl[].vtbl.setRootIndex = miqt_exec_callback_cQTableWidget_setRootIndex
  if not isNil(vtbl.setSelectionModel):
    vtbl[].vtbl.setSelectionModel = miqt_exec_callback_cQTableWidget_setSelectionModel
  if not isNil(vtbl.doItemsLayout):
    vtbl[].vtbl.doItemsLayout = miqt_exec_callback_cQTableWidget_doItemsLayout
  if not isNil(vtbl.visualRect):
    vtbl[].vtbl.visualRect = miqt_exec_callback_cQTableWidget_visualRect
  if not isNil(vtbl.scrollTo):
    vtbl[].vtbl.scrollTo = miqt_exec_callback_cQTableWidget_scrollTo
  if not isNil(vtbl.indexAt):
    vtbl[].vtbl.indexAt = miqt_exec_callback_cQTableWidget_indexAt
  if not isNil(vtbl.scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = miqt_exec_callback_cQTableWidget_scrollContentsBy
  if not isNil(vtbl.initViewItemOption):
    vtbl[].vtbl.initViewItemOption = miqt_exec_callback_cQTableWidget_initViewItemOption
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQTableWidget_paintEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQTableWidget_timerEvent
  if not isNil(vtbl.horizontalOffset):
    vtbl[].vtbl.horizontalOffset = miqt_exec_callback_cQTableWidget_horizontalOffset
  if not isNil(vtbl.verticalOffset):
    vtbl[].vtbl.verticalOffset = miqt_exec_callback_cQTableWidget_verticalOffset
  if not isNil(vtbl.moveCursor):
    vtbl[].vtbl.moveCursor = miqt_exec_callback_cQTableWidget_moveCursor
  if not isNil(vtbl.setSelection):
    vtbl[].vtbl.setSelection = miqt_exec_callback_cQTableWidget_setSelection
  if not isNil(vtbl.visualRegionForSelection):
    vtbl[].vtbl.visualRegionForSelection = miqt_exec_callback_cQTableWidget_visualRegionForSelection
  if not isNil(vtbl.selectedIndexes):
    vtbl[].vtbl.selectedIndexes = miqt_exec_callback_cQTableWidget_selectedIndexes
  if not isNil(vtbl.updateGeometries):
    vtbl[].vtbl.updateGeometries = miqt_exec_callback_cQTableWidget_updateGeometries
  if not isNil(vtbl.viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = miqt_exec_callback_cQTableWidget_viewportSizeHint
  if not isNil(vtbl.sizeHintForRow):
    vtbl[].vtbl.sizeHintForRow = miqt_exec_callback_cQTableWidget_sizeHintForRow
  if not isNil(vtbl.sizeHintForColumn):
    vtbl[].vtbl.sizeHintForColumn = miqt_exec_callback_cQTableWidget_sizeHintForColumn
  if not isNil(vtbl.verticalScrollbarAction):
    vtbl[].vtbl.verticalScrollbarAction = miqt_exec_callback_cQTableWidget_verticalScrollbarAction
  if not isNil(vtbl.horizontalScrollbarAction):
    vtbl[].vtbl.horizontalScrollbarAction = miqt_exec_callback_cQTableWidget_horizontalScrollbarAction
  if not isNil(vtbl.isIndexHidden):
    vtbl[].vtbl.isIndexHidden = miqt_exec_callback_cQTableWidget_isIndexHidden
  if not isNil(vtbl.selectionChanged):
    vtbl[].vtbl.selectionChanged = miqt_exec_callback_cQTableWidget_selectionChanged
  if not isNil(vtbl.currentChanged):
    vtbl[].vtbl.currentChanged = miqt_exec_callback_cQTableWidget_currentChanged
  if not isNil(vtbl.keyboardSearch):
    vtbl[].vtbl.keyboardSearch = miqt_exec_callback_cQTableWidget_keyboardSearch
  if not isNil(vtbl.itemDelegateForIndex):
    vtbl[].vtbl.itemDelegateForIndex = miqt_exec_callback_cQTableWidget_itemDelegateForIndex
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQTableWidget_inputMethodQuery
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQTableWidget_reset
  if not isNil(vtbl.selectAll):
    vtbl[].vtbl.selectAll = miqt_exec_callback_cQTableWidget_selectAll
  if not isNil(vtbl.dataChanged):
    vtbl[].vtbl.dataChanged = miqt_exec_callback_cQTableWidget_dataChanged
  if not isNil(vtbl.rowsInserted):
    vtbl[].vtbl.rowsInserted = miqt_exec_callback_cQTableWidget_rowsInserted
  if not isNil(vtbl.rowsAboutToBeRemoved):
    vtbl[].vtbl.rowsAboutToBeRemoved = miqt_exec_callback_cQTableWidget_rowsAboutToBeRemoved
  if not isNil(vtbl.updateEditorData):
    vtbl[].vtbl.updateEditorData = miqt_exec_callback_cQTableWidget_updateEditorData
  if not isNil(vtbl.updateEditorGeometries):
    vtbl[].vtbl.updateEditorGeometries = miqt_exec_callback_cQTableWidget_updateEditorGeometries
  if not isNil(vtbl.verticalScrollbarValueChanged):
    vtbl[].vtbl.verticalScrollbarValueChanged = miqt_exec_callback_cQTableWidget_verticalScrollbarValueChanged
  if not isNil(vtbl.horizontalScrollbarValueChanged):
    vtbl[].vtbl.horizontalScrollbarValueChanged = miqt_exec_callback_cQTableWidget_horizontalScrollbarValueChanged
  if not isNil(vtbl.closeEditor):
    vtbl[].vtbl.closeEditor = miqt_exec_callback_cQTableWidget_closeEditor
  if not isNil(vtbl.commitData):
    vtbl[].vtbl.commitData = miqt_exec_callback_cQTableWidget_commitData
  if not isNil(vtbl.editorDestroyed):
    vtbl[].vtbl.editorDestroyed = miqt_exec_callback_cQTableWidget_editorDestroyed
  if not isNil(vtbl.edit2):
    vtbl[].vtbl.edit2 = miqt_exec_callback_cQTableWidget_edit2
  if not isNil(vtbl.selectionCommand):
    vtbl[].vtbl.selectionCommand = miqt_exec_callback_cQTableWidget_selectionCommand
  if not isNil(vtbl.startDrag):
    vtbl[].vtbl.startDrag = miqt_exec_callback_cQTableWidget_startDrag
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQTableWidget_focusNextPrevChild
  if not isNil(vtbl.viewportEvent):
    vtbl[].vtbl.viewportEvent = miqt_exec_callback_cQTableWidget_viewportEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQTableWidget_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQTableWidget_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQTableWidget_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQTableWidget_mouseDoubleClickEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQTableWidget_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQTableWidget_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQTableWidget_dragLeaveEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQTableWidget_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQTableWidget_focusOutEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQTableWidget_keyPressEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQTableWidget_resizeEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQTableWidget_inputMethodEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQTableWidget_eventFilter
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQTableWidget_minimumSizeHint
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQTableWidget_sizeHint
  if not isNil(vtbl.setupViewport):
    vtbl[].vtbl.setupViewport = miqt_exec_callback_cQTableWidget_setupViewport
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQTableWidget_wheelEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQTableWidget_contextMenuEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQTableWidget_changeEvent
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQTableWidget_initStyleOption
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQTableWidget_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQTableWidget_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQTableWidget_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQTableWidget_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQTableWidget_paintEngine
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQTableWidget_keyReleaseEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQTableWidget_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQTableWidget_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQTableWidget_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQTableWidget_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQTableWidget_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQTableWidget_actionEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQTableWidget_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQTableWidget_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQTableWidget_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQTableWidget_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQTableWidget_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQTableWidget_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQTableWidget_sharedPainter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQTableWidget_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQTableWidget_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQTableWidget_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQTableWidget_disconnectNotify
  gen_qtablewidget_types.QTableWidget(h: fcQTableWidget_new2(addr(vtbl[]), ))

proc create*(T: type gen_qtablewidget_types.QTableWidget,
    rows: cint, columns: cint,
    vtbl: ref QTableWidgetVTable = nil): gen_qtablewidget_types.QTableWidget =
  let vtbl = if vtbl == nil: new QTableWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTableWidgetVTable, _: ptr cQTableWidget) {.cdecl.} =
    let vtbl = cast[ref QTableWidgetVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQTableWidget_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQTableWidget_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQTableWidget_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQTableWidget_event
  if not isNil(vtbl.mimeTypes):
    vtbl[].vtbl.mimeTypes = miqt_exec_callback_cQTableWidget_mimeTypes
  if not isNil(vtbl.mimeData):
    vtbl[].vtbl.mimeData = miqt_exec_callback_cQTableWidget_mimeData
  if not isNil(vtbl.dropMimeData):
    vtbl[].vtbl.dropMimeData = miqt_exec_callback_cQTableWidget_dropMimeData
  if not isNil(vtbl.supportedDropActions):
    vtbl[].vtbl.supportedDropActions = miqt_exec_callback_cQTableWidget_supportedDropActions
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQTableWidget_dropEvent
  if not isNil(vtbl.setRootIndex):
    vtbl[].vtbl.setRootIndex = miqt_exec_callback_cQTableWidget_setRootIndex
  if not isNil(vtbl.setSelectionModel):
    vtbl[].vtbl.setSelectionModel = miqt_exec_callback_cQTableWidget_setSelectionModel
  if not isNil(vtbl.doItemsLayout):
    vtbl[].vtbl.doItemsLayout = miqt_exec_callback_cQTableWidget_doItemsLayout
  if not isNil(vtbl.visualRect):
    vtbl[].vtbl.visualRect = miqt_exec_callback_cQTableWidget_visualRect
  if not isNil(vtbl.scrollTo):
    vtbl[].vtbl.scrollTo = miqt_exec_callback_cQTableWidget_scrollTo
  if not isNil(vtbl.indexAt):
    vtbl[].vtbl.indexAt = miqt_exec_callback_cQTableWidget_indexAt
  if not isNil(vtbl.scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = miqt_exec_callback_cQTableWidget_scrollContentsBy
  if not isNil(vtbl.initViewItemOption):
    vtbl[].vtbl.initViewItemOption = miqt_exec_callback_cQTableWidget_initViewItemOption
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQTableWidget_paintEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQTableWidget_timerEvent
  if not isNil(vtbl.horizontalOffset):
    vtbl[].vtbl.horizontalOffset = miqt_exec_callback_cQTableWidget_horizontalOffset
  if not isNil(vtbl.verticalOffset):
    vtbl[].vtbl.verticalOffset = miqt_exec_callback_cQTableWidget_verticalOffset
  if not isNil(vtbl.moveCursor):
    vtbl[].vtbl.moveCursor = miqt_exec_callback_cQTableWidget_moveCursor
  if not isNil(vtbl.setSelection):
    vtbl[].vtbl.setSelection = miqt_exec_callback_cQTableWidget_setSelection
  if not isNil(vtbl.visualRegionForSelection):
    vtbl[].vtbl.visualRegionForSelection = miqt_exec_callback_cQTableWidget_visualRegionForSelection
  if not isNil(vtbl.selectedIndexes):
    vtbl[].vtbl.selectedIndexes = miqt_exec_callback_cQTableWidget_selectedIndexes
  if not isNil(vtbl.updateGeometries):
    vtbl[].vtbl.updateGeometries = miqt_exec_callback_cQTableWidget_updateGeometries
  if not isNil(vtbl.viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = miqt_exec_callback_cQTableWidget_viewportSizeHint
  if not isNil(vtbl.sizeHintForRow):
    vtbl[].vtbl.sizeHintForRow = miqt_exec_callback_cQTableWidget_sizeHintForRow
  if not isNil(vtbl.sizeHintForColumn):
    vtbl[].vtbl.sizeHintForColumn = miqt_exec_callback_cQTableWidget_sizeHintForColumn
  if not isNil(vtbl.verticalScrollbarAction):
    vtbl[].vtbl.verticalScrollbarAction = miqt_exec_callback_cQTableWidget_verticalScrollbarAction
  if not isNil(vtbl.horizontalScrollbarAction):
    vtbl[].vtbl.horizontalScrollbarAction = miqt_exec_callback_cQTableWidget_horizontalScrollbarAction
  if not isNil(vtbl.isIndexHidden):
    vtbl[].vtbl.isIndexHidden = miqt_exec_callback_cQTableWidget_isIndexHidden
  if not isNil(vtbl.selectionChanged):
    vtbl[].vtbl.selectionChanged = miqt_exec_callback_cQTableWidget_selectionChanged
  if not isNil(vtbl.currentChanged):
    vtbl[].vtbl.currentChanged = miqt_exec_callback_cQTableWidget_currentChanged
  if not isNil(vtbl.keyboardSearch):
    vtbl[].vtbl.keyboardSearch = miqt_exec_callback_cQTableWidget_keyboardSearch
  if not isNil(vtbl.itemDelegateForIndex):
    vtbl[].vtbl.itemDelegateForIndex = miqt_exec_callback_cQTableWidget_itemDelegateForIndex
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQTableWidget_inputMethodQuery
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQTableWidget_reset
  if not isNil(vtbl.selectAll):
    vtbl[].vtbl.selectAll = miqt_exec_callback_cQTableWidget_selectAll
  if not isNil(vtbl.dataChanged):
    vtbl[].vtbl.dataChanged = miqt_exec_callback_cQTableWidget_dataChanged
  if not isNil(vtbl.rowsInserted):
    vtbl[].vtbl.rowsInserted = miqt_exec_callback_cQTableWidget_rowsInserted
  if not isNil(vtbl.rowsAboutToBeRemoved):
    vtbl[].vtbl.rowsAboutToBeRemoved = miqt_exec_callback_cQTableWidget_rowsAboutToBeRemoved
  if not isNil(vtbl.updateEditorData):
    vtbl[].vtbl.updateEditorData = miqt_exec_callback_cQTableWidget_updateEditorData
  if not isNil(vtbl.updateEditorGeometries):
    vtbl[].vtbl.updateEditorGeometries = miqt_exec_callback_cQTableWidget_updateEditorGeometries
  if not isNil(vtbl.verticalScrollbarValueChanged):
    vtbl[].vtbl.verticalScrollbarValueChanged = miqt_exec_callback_cQTableWidget_verticalScrollbarValueChanged
  if not isNil(vtbl.horizontalScrollbarValueChanged):
    vtbl[].vtbl.horizontalScrollbarValueChanged = miqt_exec_callback_cQTableWidget_horizontalScrollbarValueChanged
  if not isNil(vtbl.closeEditor):
    vtbl[].vtbl.closeEditor = miqt_exec_callback_cQTableWidget_closeEditor
  if not isNil(vtbl.commitData):
    vtbl[].vtbl.commitData = miqt_exec_callback_cQTableWidget_commitData
  if not isNil(vtbl.editorDestroyed):
    vtbl[].vtbl.editorDestroyed = miqt_exec_callback_cQTableWidget_editorDestroyed
  if not isNil(vtbl.edit2):
    vtbl[].vtbl.edit2 = miqt_exec_callback_cQTableWidget_edit2
  if not isNil(vtbl.selectionCommand):
    vtbl[].vtbl.selectionCommand = miqt_exec_callback_cQTableWidget_selectionCommand
  if not isNil(vtbl.startDrag):
    vtbl[].vtbl.startDrag = miqt_exec_callback_cQTableWidget_startDrag
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQTableWidget_focusNextPrevChild
  if not isNil(vtbl.viewportEvent):
    vtbl[].vtbl.viewportEvent = miqt_exec_callback_cQTableWidget_viewportEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQTableWidget_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQTableWidget_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQTableWidget_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQTableWidget_mouseDoubleClickEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQTableWidget_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQTableWidget_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQTableWidget_dragLeaveEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQTableWidget_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQTableWidget_focusOutEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQTableWidget_keyPressEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQTableWidget_resizeEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQTableWidget_inputMethodEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQTableWidget_eventFilter
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQTableWidget_minimumSizeHint
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQTableWidget_sizeHint
  if not isNil(vtbl.setupViewport):
    vtbl[].vtbl.setupViewport = miqt_exec_callback_cQTableWidget_setupViewport
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQTableWidget_wheelEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQTableWidget_contextMenuEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQTableWidget_changeEvent
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQTableWidget_initStyleOption
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQTableWidget_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQTableWidget_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQTableWidget_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQTableWidget_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQTableWidget_paintEngine
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQTableWidget_keyReleaseEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQTableWidget_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQTableWidget_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQTableWidget_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQTableWidget_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQTableWidget_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQTableWidget_actionEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQTableWidget_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQTableWidget_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQTableWidget_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQTableWidget_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQTableWidget_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQTableWidget_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQTableWidget_sharedPainter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQTableWidget_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQTableWidget_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQTableWidget_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQTableWidget_disconnectNotify
  gen_qtablewidget_types.QTableWidget(h: fcQTableWidget_new3(addr(vtbl[]), rows, columns))

proc create*(T: type gen_qtablewidget_types.QTableWidget,
    rows: cint, columns: cint, parent: gen_qwidget_types.QWidget,
    vtbl: ref QTableWidgetVTable = nil): gen_qtablewidget_types.QTableWidget =
  let vtbl = if vtbl == nil: new QTableWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTableWidgetVTable, _: ptr cQTableWidget) {.cdecl.} =
    let vtbl = cast[ref QTableWidgetVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQTableWidget_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQTableWidget_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQTableWidget_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQTableWidget_event
  if not isNil(vtbl.mimeTypes):
    vtbl[].vtbl.mimeTypes = miqt_exec_callback_cQTableWidget_mimeTypes
  if not isNil(vtbl.mimeData):
    vtbl[].vtbl.mimeData = miqt_exec_callback_cQTableWidget_mimeData
  if not isNil(vtbl.dropMimeData):
    vtbl[].vtbl.dropMimeData = miqt_exec_callback_cQTableWidget_dropMimeData
  if not isNil(vtbl.supportedDropActions):
    vtbl[].vtbl.supportedDropActions = miqt_exec_callback_cQTableWidget_supportedDropActions
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQTableWidget_dropEvent
  if not isNil(vtbl.setRootIndex):
    vtbl[].vtbl.setRootIndex = miqt_exec_callback_cQTableWidget_setRootIndex
  if not isNil(vtbl.setSelectionModel):
    vtbl[].vtbl.setSelectionModel = miqt_exec_callback_cQTableWidget_setSelectionModel
  if not isNil(vtbl.doItemsLayout):
    vtbl[].vtbl.doItemsLayout = miqt_exec_callback_cQTableWidget_doItemsLayout
  if not isNil(vtbl.visualRect):
    vtbl[].vtbl.visualRect = miqt_exec_callback_cQTableWidget_visualRect
  if not isNil(vtbl.scrollTo):
    vtbl[].vtbl.scrollTo = miqt_exec_callback_cQTableWidget_scrollTo
  if not isNil(vtbl.indexAt):
    vtbl[].vtbl.indexAt = miqt_exec_callback_cQTableWidget_indexAt
  if not isNil(vtbl.scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = miqt_exec_callback_cQTableWidget_scrollContentsBy
  if not isNil(vtbl.initViewItemOption):
    vtbl[].vtbl.initViewItemOption = miqt_exec_callback_cQTableWidget_initViewItemOption
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQTableWidget_paintEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQTableWidget_timerEvent
  if not isNil(vtbl.horizontalOffset):
    vtbl[].vtbl.horizontalOffset = miqt_exec_callback_cQTableWidget_horizontalOffset
  if not isNil(vtbl.verticalOffset):
    vtbl[].vtbl.verticalOffset = miqt_exec_callback_cQTableWidget_verticalOffset
  if not isNil(vtbl.moveCursor):
    vtbl[].vtbl.moveCursor = miqt_exec_callback_cQTableWidget_moveCursor
  if not isNil(vtbl.setSelection):
    vtbl[].vtbl.setSelection = miqt_exec_callback_cQTableWidget_setSelection
  if not isNil(vtbl.visualRegionForSelection):
    vtbl[].vtbl.visualRegionForSelection = miqt_exec_callback_cQTableWidget_visualRegionForSelection
  if not isNil(vtbl.selectedIndexes):
    vtbl[].vtbl.selectedIndexes = miqt_exec_callback_cQTableWidget_selectedIndexes
  if not isNil(vtbl.updateGeometries):
    vtbl[].vtbl.updateGeometries = miqt_exec_callback_cQTableWidget_updateGeometries
  if not isNil(vtbl.viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = miqt_exec_callback_cQTableWidget_viewportSizeHint
  if not isNil(vtbl.sizeHintForRow):
    vtbl[].vtbl.sizeHintForRow = miqt_exec_callback_cQTableWidget_sizeHintForRow
  if not isNil(vtbl.sizeHintForColumn):
    vtbl[].vtbl.sizeHintForColumn = miqt_exec_callback_cQTableWidget_sizeHintForColumn
  if not isNil(vtbl.verticalScrollbarAction):
    vtbl[].vtbl.verticalScrollbarAction = miqt_exec_callback_cQTableWidget_verticalScrollbarAction
  if not isNil(vtbl.horizontalScrollbarAction):
    vtbl[].vtbl.horizontalScrollbarAction = miqt_exec_callback_cQTableWidget_horizontalScrollbarAction
  if not isNil(vtbl.isIndexHidden):
    vtbl[].vtbl.isIndexHidden = miqt_exec_callback_cQTableWidget_isIndexHidden
  if not isNil(vtbl.selectionChanged):
    vtbl[].vtbl.selectionChanged = miqt_exec_callback_cQTableWidget_selectionChanged
  if not isNil(vtbl.currentChanged):
    vtbl[].vtbl.currentChanged = miqt_exec_callback_cQTableWidget_currentChanged
  if not isNil(vtbl.keyboardSearch):
    vtbl[].vtbl.keyboardSearch = miqt_exec_callback_cQTableWidget_keyboardSearch
  if not isNil(vtbl.itemDelegateForIndex):
    vtbl[].vtbl.itemDelegateForIndex = miqt_exec_callback_cQTableWidget_itemDelegateForIndex
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQTableWidget_inputMethodQuery
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQTableWidget_reset
  if not isNil(vtbl.selectAll):
    vtbl[].vtbl.selectAll = miqt_exec_callback_cQTableWidget_selectAll
  if not isNil(vtbl.dataChanged):
    vtbl[].vtbl.dataChanged = miqt_exec_callback_cQTableWidget_dataChanged
  if not isNil(vtbl.rowsInserted):
    vtbl[].vtbl.rowsInserted = miqt_exec_callback_cQTableWidget_rowsInserted
  if not isNil(vtbl.rowsAboutToBeRemoved):
    vtbl[].vtbl.rowsAboutToBeRemoved = miqt_exec_callback_cQTableWidget_rowsAboutToBeRemoved
  if not isNil(vtbl.updateEditorData):
    vtbl[].vtbl.updateEditorData = miqt_exec_callback_cQTableWidget_updateEditorData
  if not isNil(vtbl.updateEditorGeometries):
    vtbl[].vtbl.updateEditorGeometries = miqt_exec_callback_cQTableWidget_updateEditorGeometries
  if not isNil(vtbl.verticalScrollbarValueChanged):
    vtbl[].vtbl.verticalScrollbarValueChanged = miqt_exec_callback_cQTableWidget_verticalScrollbarValueChanged
  if not isNil(vtbl.horizontalScrollbarValueChanged):
    vtbl[].vtbl.horizontalScrollbarValueChanged = miqt_exec_callback_cQTableWidget_horizontalScrollbarValueChanged
  if not isNil(vtbl.closeEditor):
    vtbl[].vtbl.closeEditor = miqt_exec_callback_cQTableWidget_closeEditor
  if not isNil(vtbl.commitData):
    vtbl[].vtbl.commitData = miqt_exec_callback_cQTableWidget_commitData
  if not isNil(vtbl.editorDestroyed):
    vtbl[].vtbl.editorDestroyed = miqt_exec_callback_cQTableWidget_editorDestroyed
  if not isNil(vtbl.edit2):
    vtbl[].vtbl.edit2 = miqt_exec_callback_cQTableWidget_edit2
  if not isNil(vtbl.selectionCommand):
    vtbl[].vtbl.selectionCommand = miqt_exec_callback_cQTableWidget_selectionCommand
  if not isNil(vtbl.startDrag):
    vtbl[].vtbl.startDrag = miqt_exec_callback_cQTableWidget_startDrag
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQTableWidget_focusNextPrevChild
  if not isNil(vtbl.viewportEvent):
    vtbl[].vtbl.viewportEvent = miqt_exec_callback_cQTableWidget_viewportEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQTableWidget_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQTableWidget_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQTableWidget_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQTableWidget_mouseDoubleClickEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQTableWidget_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQTableWidget_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQTableWidget_dragLeaveEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQTableWidget_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQTableWidget_focusOutEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQTableWidget_keyPressEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQTableWidget_resizeEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQTableWidget_inputMethodEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQTableWidget_eventFilter
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQTableWidget_minimumSizeHint
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQTableWidget_sizeHint
  if not isNil(vtbl.setupViewport):
    vtbl[].vtbl.setupViewport = miqt_exec_callback_cQTableWidget_setupViewport
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQTableWidget_wheelEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQTableWidget_contextMenuEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQTableWidget_changeEvent
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQTableWidget_initStyleOption
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQTableWidget_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQTableWidget_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQTableWidget_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQTableWidget_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQTableWidget_paintEngine
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQTableWidget_keyReleaseEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQTableWidget_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQTableWidget_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQTableWidget_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQTableWidget_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQTableWidget_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQTableWidget_actionEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQTableWidget_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQTableWidget_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQTableWidget_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQTableWidget_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQTableWidget_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQTableWidget_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQTableWidget_sharedPainter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQTableWidget_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQTableWidget_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQTableWidget_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQTableWidget_disconnectNotify
  gen_qtablewidget_types.QTableWidget(h: fcQTableWidget_new4(addr(vtbl[]), rows, columns, parent.h))

proc staticMetaObject*(_: type gen_qtablewidget_types.QTableWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTableWidget_staticMetaObject())
proc delete*(self: gen_qtablewidget_types.QTableWidget) =
  fcQTableWidget_delete(self.h)
