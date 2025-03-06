import ./Qt5Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt5Widgets")  & " -fPIC"
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
  ../QtGui/gen_qcolor_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qfont_types,
  ../QtGui/gen_qicon_types,
  ../QtGui/gen_qpaintdevice_types,
  ../QtGui/gen_qpaintengine_types,
  ../QtGui/gen_qpainter_types,
  ../QtGui/gen_qregion_types,
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
  gen_qcolor_types,
  gen_qevent_types,
  gen_qfont_types,
  gen_qicon_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qregion_types,
  gen_qstyleoption_types,
  gen_qtableview,
  gen_qwidget_types

type cQTableWidgetSelectionRange*{.exportc: "QTableWidgetSelectionRange", incompleteStruct.} = object
type cQTableWidgetItem*{.exportc: "QTableWidgetItem", incompleteStruct.} = object
type cQTableWidget*{.exportc: "QTableWidget", incompleteStruct.} = object

proc fcQTableWidgetSelectionRange_new(): ptr cQTableWidgetSelectionRange {.importc: "QTableWidgetSelectionRange_new".}
proc fcQTableWidgetSelectionRange_new2(top: cint, left: cint, bottom: cint, right: cint): ptr cQTableWidgetSelectionRange {.importc: "QTableWidgetSelectionRange_new2".}
proc fcQTableWidgetSelectionRange_new3(other: pointer): ptr cQTableWidgetSelectionRange {.importc: "QTableWidgetSelectionRange_new3".}
proc fcQTableWidgetSelectionRange_operatorAssign(self: pointer, other: pointer): void {.importc: "QTableWidgetSelectionRange_operatorAssign".}
proc fcQTableWidgetSelectionRange_topRow(self: pointer, ): cint {.importc: "QTableWidgetSelectionRange_topRow".}
proc fcQTableWidgetSelectionRange_bottomRow(self: pointer, ): cint {.importc: "QTableWidgetSelectionRange_bottomRow".}
proc fcQTableWidgetSelectionRange_leftColumn(self: pointer, ): cint {.importc: "QTableWidgetSelectionRange_leftColumn".}
proc fcQTableWidgetSelectionRange_rightColumn(self: pointer, ): cint {.importc: "QTableWidgetSelectionRange_rightColumn".}
proc fcQTableWidgetSelectionRange_rowCount(self: pointer, ): cint {.importc: "QTableWidgetSelectionRange_rowCount".}
proc fcQTableWidgetSelectionRange_columnCount(self: pointer, ): cint {.importc: "QTableWidgetSelectionRange_columnCount".}
proc fcQTableWidgetSelectionRange_delete(self: pointer) {.importc: "QTableWidgetSelectionRange_delete".}
proc fcQTableWidgetItem_new(): ptr cQTableWidgetItem {.importc: "QTableWidgetItem_new".}
proc fcQTableWidgetItem_new2(text: struct_miqt_string): ptr cQTableWidgetItem {.importc: "QTableWidgetItem_new2".}
proc fcQTableWidgetItem_new3(icon: pointer, text: struct_miqt_string): ptr cQTableWidgetItem {.importc: "QTableWidgetItem_new3".}
proc fcQTableWidgetItem_new4(other: pointer): ptr cQTableWidgetItem {.importc: "QTableWidgetItem_new4".}
proc fcQTableWidgetItem_new5(typeVal: cint): ptr cQTableWidgetItem {.importc: "QTableWidgetItem_new5".}
proc fcQTableWidgetItem_new6(text: struct_miqt_string, typeVal: cint): ptr cQTableWidgetItem {.importc: "QTableWidgetItem_new6".}
proc fcQTableWidgetItem_new7(icon: pointer, text: struct_miqt_string, typeVal: cint): ptr cQTableWidgetItem {.importc: "QTableWidgetItem_new7".}
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
proc fcQTableWidgetItem_backgroundColor(self: pointer, ): pointer {.importc: "QTableWidgetItem_backgroundColor".}
proc fcQTableWidgetItem_setBackgroundColor(self: pointer, color: pointer): void {.importc: "QTableWidgetItem_setBackgroundColor".}
proc fcQTableWidgetItem_background(self: pointer, ): pointer {.importc: "QTableWidgetItem_background".}
proc fcQTableWidgetItem_setBackground(self: pointer, brush: pointer): void {.importc: "QTableWidgetItem_setBackground".}
proc fcQTableWidgetItem_textColor(self: pointer, ): pointer {.importc: "QTableWidgetItem_textColor".}
proc fcQTableWidgetItem_setTextColor(self: pointer, color: pointer): void {.importc: "QTableWidgetItem_setTextColor".}
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
proc fQTableWidgetItem_virtualbase_clone(self: pointer, ): pointer{.importc: "QTableWidgetItem_virtualbase_clone".}
proc fcQTableWidgetItem_override_virtual_clone(self: pointer, slot: int) {.importc: "QTableWidgetItem_override_virtual_clone".}
proc fQTableWidgetItem_virtualbase_data(self: pointer, role: cint): pointer{.importc: "QTableWidgetItem_virtualbase_data".}
proc fcQTableWidgetItem_override_virtual_data(self: pointer, slot: int) {.importc: "QTableWidgetItem_override_virtual_data".}
proc fQTableWidgetItem_virtualbase_setData(self: pointer, role: cint, value: pointer): void{.importc: "QTableWidgetItem_virtualbase_setData".}
proc fcQTableWidgetItem_override_virtual_setData(self: pointer, slot: int) {.importc: "QTableWidgetItem_override_virtual_setData".}
proc fQTableWidgetItem_virtualbase_operatorLesser(self: pointer, other: pointer): bool{.importc: "QTableWidgetItem_virtualbase_operatorLesser".}
proc fcQTableWidgetItem_override_virtual_operatorLesser(self: pointer, slot: int) {.importc: "QTableWidgetItem_override_virtual_operatorLesser".}
proc fQTableWidgetItem_virtualbase_read(self: pointer, inVal: pointer): void{.importc: "QTableWidgetItem_virtualbase_read".}
proc fcQTableWidgetItem_override_virtual_read(self: pointer, slot: int) {.importc: "QTableWidgetItem_override_virtual_read".}
proc fQTableWidgetItem_virtualbase_write(self: pointer, outVal: pointer): void{.importc: "QTableWidgetItem_virtualbase_write".}
proc fcQTableWidgetItem_override_virtual_write(self: pointer, slot: int) {.importc: "QTableWidgetItem_override_virtual_write".}
proc fcQTableWidgetItem_delete(self: pointer) {.importc: "QTableWidgetItem_delete".}
proc fcQTableWidget_new(parent: pointer): ptr cQTableWidget {.importc: "QTableWidget_new".}
proc fcQTableWidget_new2(): ptr cQTableWidget {.importc: "QTableWidget_new2".}
proc fcQTableWidget_new3(rows: cint, columns: cint): ptr cQTableWidget {.importc: "QTableWidget_new3".}
proc fcQTableWidget_new4(rows: cint, columns: cint, parent: pointer): ptr cQTableWidget {.importc: "QTableWidget_new4".}
proc fcQTableWidget_metaObject(self: pointer, ): pointer {.importc: "QTableWidget_metaObject".}
proc fcQTableWidget_metacast(self: pointer, param1: cstring): pointer {.importc: "QTableWidget_metacast".}
proc fcQTableWidget_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTableWidget_metacall".}
proc fcQTableWidget_tr(s: cstring): struct_miqt_string {.importc: "QTableWidget_tr".}
proc fcQTableWidget_trUtf8(s: cstring): struct_miqt_string {.importc: "QTableWidget_trUtf8".}
proc fcQTableWidget_setRowCount(self: pointer, rows: cint): void {.importc: "QTableWidget_setRowCount".}
proc fcQTableWidget_rowCount(self: pointer, ): cint {.importc: "QTableWidget_rowCount".}
proc fcQTableWidget_setColumnCount(self: pointer, columns: cint): void {.importc: "QTableWidget_setColumnCount".}
proc fcQTableWidget_columnCount(self: pointer, ): cint {.importc: "QTableWidget_columnCount".}
proc fcQTableWidget_row(self: pointer, item: pointer): cint {.importc: "QTableWidget_row".}
proc fcQTableWidget_column(self: pointer, item: pointer): cint {.importc: "QTableWidget_column".}
proc fcQTableWidget_item(self: pointer, row: cint, column: cint): pointer {.importc: "QTableWidget_item".}
proc fcQTableWidget_setItem(self: pointer, row: cint, column: cint, item: pointer): void {.importc: "QTableWidget_setItem".}
proc fcQTableWidget_takeItem(self: pointer, row: cint, column: cint): pointer {.importc: "QTableWidget_takeItem".}
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
proc fcQTableWidget_isItemSelected(self: pointer, item: pointer): bool {.importc: "QTableWidget_isItemSelected".}
proc fcQTableWidget_setItemSelected(self: pointer, item: pointer, select: bool): void {.importc: "QTableWidget_setItemSelected".}
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
proc fcQTableWidget_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QTableWidget_trUtf82".}
proc fcQTableWidget_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTableWidget_trUtf83".}
proc fcQTableWidget_sortItems2(self: pointer, column: cint, order: cint): void {.importc: "QTableWidget_sortItems2".}
proc fcQTableWidget_scrollToItem2(self: pointer, item: pointer, hint: cint): void {.importc: "QTableWidget_scrollToItem2".}
proc fQTableWidget_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QTableWidget_virtualbase_metaObject".}
proc fcQTableWidget_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_metaObject".}
proc fQTableWidget_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QTableWidget_virtualbase_metacast".}
proc fcQTableWidget_override_virtual_metacast(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_metacast".}
proc fQTableWidget_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QTableWidget_virtualbase_metacall".}
proc fcQTableWidget_override_virtual_metacall(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_metacall".}
proc fQTableWidget_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QTableWidget_virtualbase_event".}
proc fcQTableWidget_override_virtual_event(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_event".}
proc fQTableWidget_virtualbase_mimeTypes(self: pointer, ): struct_miqt_array{.importc: "QTableWidget_virtualbase_mimeTypes".}
proc fcQTableWidget_override_virtual_mimeTypes(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_mimeTypes".}
proc fQTableWidget_virtualbase_mimeData(self: pointer, items: struct_miqt_array): pointer{.importc: "QTableWidget_virtualbase_mimeData".}
proc fcQTableWidget_override_virtual_mimeData(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_mimeData".}
proc fQTableWidget_virtualbase_dropMimeData(self: pointer, row: cint, column: cint, data: pointer, action: cint): bool{.importc: "QTableWidget_virtualbase_dropMimeData".}
proc fcQTableWidget_override_virtual_dropMimeData(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_dropMimeData".}
proc fQTableWidget_virtualbase_supportedDropActions(self: pointer, ): cint{.importc: "QTableWidget_virtualbase_supportedDropActions".}
proc fcQTableWidget_override_virtual_supportedDropActions(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_supportedDropActions".}
proc fQTableWidget_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_dropEvent".}
proc fcQTableWidget_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_dropEvent".}
proc fQTableWidget_virtualbase_setRootIndex(self: pointer, index: pointer): void{.importc: "QTableWidget_virtualbase_setRootIndex".}
proc fcQTableWidget_override_virtual_setRootIndex(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_setRootIndex".}
proc fQTableWidget_virtualbase_setSelectionModel(self: pointer, selectionModel: pointer): void{.importc: "QTableWidget_virtualbase_setSelectionModel".}
proc fcQTableWidget_override_virtual_setSelectionModel(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_setSelectionModel".}
proc fQTableWidget_virtualbase_doItemsLayout(self: pointer, ): void{.importc: "QTableWidget_virtualbase_doItemsLayout".}
proc fcQTableWidget_override_virtual_doItemsLayout(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_doItemsLayout".}
proc fQTableWidget_virtualbase_visualRect(self: pointer, index: pointer): pointer{.importc: "QTableWidget_virtualbase_visualRect".}
proc fcQTableWidget_override_virtual_visualRect(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_visualRect".}
proc fQTableWidget_virtualbase_scrollTo(self: pointer, index: pointer, hint: cint): void{.importc: "QTableWidget_virtualbase_scrollTo".}
proc fcQTableWidget_override_virtual_scrollTo(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_scrollTo".}
proc fQTableWidget_virtualbase_indexAt(self: pointer, p: pointer): pointer{.importc: "QTableWidget_virtualbase_indexAt".}
proc fcQTableWidget_override_virtual_indexAt(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_indexAt".}
proc fQTableWidget_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void{.importc: "QTableWidget_virtualbase_scrollContentsBy".}
proc fcQTableWidget_override_virtual_scrollContentsBy(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_scrollContentsBy".}
proc fQTableWidget_virtualbase_viewOptions(self: pointer, ): pointer{.importc: "QTableWidget_virtualbase_viewOptions".}
proc fcQTableWidget_override_virtual_viewOptions(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_viewOptions".}
proc fQTableWidget_virtualbase_paintEvent(self: pointer, e: pointer): void{.importc: "QTableWidget_virtualbase_paintEvent".}
proc fcQTableWidget_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_paintEvent".}
proc fQTableWidget_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_timerEvent".}
proc fcQTableWidget_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_timerEvent".}
proc fQTableWidget_virtualbase_horizontalOffset(self: pointer, ): cint{.importc: "QTableWidget_virtualbase_horizontalOffset".}
proc fcQTableWidget_override_virtual_horizontalOffset(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_horizontalOffset".}
proc fQTableWidget_virtualbase_verticalOffset(self: pointer, ): cint{.importc: "QTableWidget_virtualbase_verticalOffset".}
proc fcQTableWidget_override_virtual_verticalOffset(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_verticalOffset".}
proc fQTableWidget_virtualbase_moveCursor(self: pointer, cursorAction: cint, modifiers: cint): pointer{.importc: "QTableWidget_virtualbase_moveCursor".}
proc fcQTableWidget_override_virtual_moveCursor(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_moveCursor".}
proc fQTableWidget_virtualbase_setSelection(self: pointer, rect: pointer, command: cint): void{.importc: "QTableWidget_virtualbase_setSelection".}
proc fcQTableWidget_override_virtual_setSelection(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_setSelection".}
proc fQTableWidget_virtualbase_visualRegionForSelection(self: pointer, selection: pointer): pointer{.importc: "QTableWidget_virtualbase_visualRegionForSelection".}
proc fcQTableWidget_override_virtual_visualRegionForSelection(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_visualRegionForSelection".}
proc fQTableWidget_virtualbase_selectedIndexes(self: pointer, ): struct_miqt_array{.importc: "QTableWidget_virtualbase_selectedIndexes".}
proc fcQTableWidget_override_virtual_selectedIndexes(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_selectedIndexes".}
proc fQTableWidget_virtualbase_updateGeometries(self: pointer, ): void{.importc: "QTableWidget_virtualbase_updateGeometries".}
proc fcQTableWidget_override_virtual_updateGeometries(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_updateGeometries".}
proc fQTableWidget_virtualbase_viewportSizeHint(self: pointer, ): pointer{.importc: "QTableWidget_virtualbase_viewportSizeHint".}
proc fcQTableWidget_override_virtual_viewportSizeHint(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_viewportSizeHint".}
proc fQTableWidget_virtualbase_sizeHintForRow(self: pointer, row: cint): cint{.importc: "QTableWidget_virtualbase_sizeHintForRow".}
proc fcQTableWidget_override_virtual_sizeHintForRow(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_sizeHintForRow".}
proc fQTableWidget_virtualbase_sizeHintForColumn(self: pointer, column: cint): cint{.importc: "QTableWidget_virtualbase_sizeHintForColumn".}
proc fcQTableWidget_override_virtual_sizeHintForColumn(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_sizeHintForColumn".}
proc fQTableWidget_virtualbase_verticalScrollbarAction(self: pointer, action: cint): void{.importc: "QTableWidget_virtualbase_verticalScrollbarAction".}
proc fcQTableWidget_override_virtual_verticalScrollbarAction(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_verticalScrollbarAction".}
proc fQTableWidget_virtualbase_horizontalScrollbarAction(self: pointer, action: cint): void{.importc: "QTableWidget_virtualbase_horizontalScrollbarAction".}
proc fcQTableWidget_override_virtual_horizontalScrollbarAction(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_horizontalScrollbarAction".}
proc fQTableWidget_virtualbase_isIndexHidden(self: pointer, index: pointer): bool{.importc: "QTableWidget_virtualbase_isIndexHidden".}
proc fcQTableWidget_override_virtual_isIndexHidden(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_isIndexHidden".}
proc fQTableWidget_virtualbase_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void{.importc: "QTableWidget_virtualbase_selectionChanged".}
proc fcQTableWidget_override_virtual_selectionChanged(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_selectionChanged".}
proc fQTableWidget_virtualbase_currentChanged(self: pointer, current: pointer, previous: pointer): void{.importc: "QTableWidget_virtualbase_currentChanged".}
proc fcQTableWidget_override_virtual_currentChanged(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_currentChanged".}
proc fQTableWidget_virtualbase_keyboardSearch(self: pointer, search: struct_miqt_string): void{.importc: "QTableWidget_virtualbase_keyboardSearch".}
proc fcQTableWidget_override_virtual_keyboardSearch(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_keyboardSearch".}
proc fQTableWidget_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QTableWidget_virtualbase_inputMethodQuery".}
proc fcQTableWidget_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_inputMethodQuery".}
proc fQTableWidget_virtualbase_reset(self: pointer, ): void{.importc: "QTableWidget_virtualbase_reset".}
proc fcQTableWidget_override_virtual_reset(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_reset".}
proc fQTableWidget_virtualbase_selectAll(self: pointer, ): void{.importc: "QTableWidget_virtualbase_selectAll".}
proc fcQTableWidget_override_virtual_selectAll(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_selectAll".}
proc fQTableWidget_virtualbase_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void{.importc: "QTableWidget_virtualbase_dataChanged".}
proc fcQTableWidget_override_virtual_dataChanged(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_dataChanged".}
proc fQTableWidget_virtualbase_rowsInserted(self: pointer, parent: pointer, start: cint, endVal: cint): void{.importc: "QTableWidget_virtualbase_rowsInserted".}
proc fcQTableWidget_override_virtual_rowsInserted(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_rowsInserted".}
proc fQTableWidget_virtualbase_rowsAboutToBeRemoved(self: pointer, parent: pointer, start: cint, endVal: cint): void{.importc: "QTableWidget_virtualbase_rowsAboutToBeRemoved".}
proc fcQTableWidget_override_virtual_rowsAboutToBeRemoved(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_rowsAboutToBeRemoved".}
proc fQTableWidget_virtualbase_updateEditorData(self: pointer, ): void{.importc: "QTableWidget_virtualbase_updateEditorData".}
proc fcQTableWidget_override_virtual_updateEditorData(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_updateEditorData".}
proc fQTableWidget_virtualbase_updateEditorGeometries(self: pointer, ): void{.importc: "QTableWidget_virtualbase_updateEditorGeometries".}
proc fcQTableWidget_override_virtual_updateEditorGeometries(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_updateEditorGeometries".}
proc fQTableWidget_virtualbase_verticalScrollbarValueChanged(self: pointer, value: cint): void{.importc: "QTableWidget_virtualbase_verticalScrollbarValueChanged".}
proc fcQTableWidget_override_virtual_verticalScrollbarValueChanged(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_verticalScrollbarValueChanged".}
proc fQTableWidget_virtualbase_horizontalScrollbarValueChanged(self: pointer, value: cint): void{.importc: "QTableWidget_virtualbase_horizontalScrollbarValueChanged".}
proc fcQTableWidget_override_virtual_horizontalScrollbarValueChanged(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_horizontalScrollbarValueChanged".}
proc fQTableWidget_virtualbase_closeEditor(self: pointer, editor: pointer, hint: cint): void{.importc: "QTableWidget_virtualbase_closeEditor".}
proc fcQTableWidget_override_virtual_closeEditor(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_closeEditor".}
proc fQTableWidget_virtualbase_commitData(self: pointer, editor: pointer): void{.importc: "QTableWidget_virtualbase_commitData".}
proc fcQTableWidget_override_virtual_commitData(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_commitData".}
proc fQTableWidget_virtualbase_editorDestroyed(self: pointer, editor: pointer): void{.importc: "QTableWidget_virtualbase_editorDestroyed".}
proc fcQTableWidget_override_virtual_editorDestroyed(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_editorDestroyed".}
proc fQTableWidget_virtualbase_edit2(self: pointer, index: pointer, trigger: cint, event: pointer): bool{.importc: "QTableWidget_virtualbase_edit2".}
proc fcQTableWidget_override_virtual_edit2(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_edit2".}
proc fQTableWidget_virtualbase_selectionCommand(self: pointer, index: pointer, event: pointer): cint{.importc: "QTableWidget_virtualbase_selectionCommand".}
proc fcQTableWidget_override_virtual_selectionCommand(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_selectionCommand".}
proc fQTableWidget_virtualbase_startDrag(self: pointer, supportedActions: cint): void{.importc: "QTableWidget_virtualbase_startDrag".}
proc fcQTableWidget_override_virtual_startDrag(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_startDrag".}
proc fQTableWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QTableWidget_virtualbase_focusNextPrevChild".}
proc fcQTableWidget_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_focusNextPrevChild".}
proc fQTableWidget_virtualbase_viewportEvent(self: pointer, event: pointer): bool{.importc: "QTableWidget_virtualbase_viewportEvent".}
proc fcQTableWidget_override_virtual_viewportEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_viewportEvent".}
proc fQTableWidget_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_mousePressEvent".}
proc fcQTableWidget_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_mousePressEvent".}
proc fQTableWidget_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_mouseMoveEvent".}
proc fcQTableWidget_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_mouseMoveEvent".}
proc fQTableWidget_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_mouseReleaseEvent".}
proc fcQTableWidget_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_mouseReleaseEvent".}
proc fQTableWidget_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_mouseDoubleClickEvent".}
proc fcQTableWidget_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_mouseDoubleClickEvent".}
proc fQTableWidget_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_dragEnterEvent".}
proc fcQTableWidget_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_dragEnterEvent".}
proc fQTableWidget_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_dragMoveEvent".}
proc fcQTableWidget_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_dragMoveEvent".}
proc fQTableWidget_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_dragLeaveEvent".}
proc fcQTableWidget_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_dragLeaveEvent".}
proc fQTableWidget_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_focusInEvent".}
proc fcQTableWidget_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_focusInEvent".}
proc fQTableWidget_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_focusOutEvent".}
proc fcQTableWidget_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_focusOutEvent".}
proc fQTableWidget_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_keyPressEvent".}
proc fcQTableWidget_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_keyPressEvent".}
proc fQTableWidget_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_resizeEvent".}
proc fcQTableWidget_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_resizeEvent".}
proc fQTableWidget_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_inputMethodEvent".}
proc fcQTableWidget_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_inputMethodEvent".}
proc fQTableWidget_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool{.importc: "QTableWidget_virtualbase_eventFilter".}
proc fcQTableWidget_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_eventFilter".}
proc fQTableWidget_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QTableWidget_virtualbase_minimumSizeHint".}
proc fcQTableWidget_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_minimumSizeHint".}
proc fQTableWidget_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QTableWidget_virtualbase_sizeHint".}
proc fcQTableWidget_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_sizeHint".}
proc fQTableWidget_virtualbase_setupViewport(self: pointer, viewport: pointer): void{.importc: "QTableWidget_virtualbase_setupViewport".}
proc fcQTableWidget_override_virtual_setupViewport(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_setupViewport".}
proc fQTableWidget_virtualbase_wheelEvent(self: pointer, param1: pointer): void{.importc: "QTableWidget_virtualbase_wheelEvent".}
proc fcQTableWidget_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_wheelEvent".}
proc fQTableWidget_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QTableWidget_virtualbase_contextMenuEvent".}
proc fcQTableWidget_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_contextMenuEvent".}
proc fQTableWidget_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QTableWidget_virtualbase_changeEvent".}
proc fcQTableWidget_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_changeEvent".}
proc fQTableWidget_virtualbase_devType(self: pointer, ): cint{.importc: "QTableWidget_virtualbase_devType".}
proc fcQTableWidget_override_virtual_devType(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_devType".}
proc fQTableWidget_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QTableWidget_virtualbase_setVisible".}
proc fcQTableWidget_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_setVisible".}
proc fQTableWidget_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QTableWidget_virtualbase_heightForWidth".}
proc fcQTableWidget_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_heightForWidth".}
proc fQTableWidget_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QTableWidget_virtualbase_hasHeightForWidth".}
proc fcQTableWidget_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_hasHeightForWidth".}
proc fQTableWidget_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QTableWidget_virtualbase_paintEngine".}
proc fcQTableWidget_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_paintEngine".}
proc fQTableWidget_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_keyReleaseEvent".}
proc fcQTableWidget_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_keyReleaseEvent".}
proc fQTableWidget_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_enterEvent".}
proc fcQTableWidget_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_enterEvent".}
proc fQTableWidget_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_leaveEvent".}
proc fcQTableWidget_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_leaveEvent".}
proc fQTableWidget_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_moveEvent".}
proc fcQTableWidget_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_moveEvent".}
proc fQTableWidget_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_closeEvent".}
proc fcQTableWidget_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_closeEvent".}
proc fQTableWidget_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_tabletEvent".}
proc fcQTableWidget_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_tabletEvent".}
proc fQTableWidget_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_actionEvent".}
proc fcQTableWidget_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_actionEvent".}
proc fQTableWidget_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_showEvent".}
proc fcQTableWidget_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_showEvent".}
proc fQTableWidget_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_hideEvent".}
proc fcQTableWidget_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_hideEvent".}
proc fQTableWidget_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QTableWidget_virtualbase_nativeEvent".}
proc fcQTableWidget_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_nativeEvent".}
proc fQTableWidget_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QTableWidget_virtualbase_metric".}
proc fcQTableWidget_override_virtual_metric(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_metric".}
proc fQTableWidget_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QTableWidget_virtualbase_initPainter".}
proc fcQTableWidget_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_initPainter".}
proc fQTableWidget_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QTableWidget_virtualbase_redirected".}
proc fcQTableWidget_override_virtual_redirected(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_redirected".}
proc fQTableWidget_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QTableWidget_virtualbase_sharedPainter".}
proc fcQTableWidget_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_sharedPainter".}
proc fQTableWidget_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_childEvent".}
proc fcQTableWidget_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_childEvent".}
proc fQTableWidget_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_customEvent".}
proc fcQTableWidget_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_customEvent".}
proc fQTableWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QTableWidget_virtualbase_connectNotify".}
proc fcQTableWidget_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_connectNotify".}
proc fQTableWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QTableWidget_virtualbase_disconnectNotify".}
proc fcQTableWidget_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_disconnectNotify".}
proc fcQTableWidget_staticMetaObject(): pointer {.importc: "QTableWidget_staticMetaObject".}
proc fcQTableWidget_delete(self: pointer) {.importc: "QTableWidget_delete".}


func init*(T: type gen_qtablewidget_types.QTableWidgetSelectionRange, h: ptr cQTableWidgetSelectionRange): gen_qtablewidget_types.QTableWidgetSelectionRange =
  T(h: h)
proc create*(T: type gen_qtablewidget_types.QTableWidgetSelectionRange, ): gen_qtablewidget_types.QTableWidgetSelectionRange =
  gen_qtablewidget_types.QTableWidgetSelectionRange.init(fcQTableWidgetSelectionRange_new())

proc create*(T: type gen_qtablewidget_types.QTableWidgetSelectionRange, top: cint, left: cint, bottom: cint, right: cint): gen_qtablewidget_types.QTableWidgetSelectionRange =
  gen_qtablewidget_types.QTableWidgetSelectionRange.init(fcQTableWidgetSelectionRange_new2(top, left, bottom, right))

proc create*(T: type gen_qtablewidget_types.QTableWidgetSelectionRange, other: gen_qtablewidget_types.QTableWidgetSelectionRange): gen_qtablewidget_types.QTableWidgetSelectionRange =
  gen_qtablewidget_types.QTableWidgetSelectionRange.init(fcQTableWidgetSelectionRange_new3(other.h))

proc operatorAssign*(self: gen_qtablewidget_types.QTableWidgetSelectionRange, other: gen_qtablewidget_types.QTableWidgetSelectionRange): void =
  fcQTableWidgetSelectionRange_operatorAssign(self.h, other.h)

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

proc delete*(self: gen_qtablewidget_types.QTableWidgetSelectionRange) =
  fcQTableWidgetSelectionRange_delete(self.h)

func init*(T: type gen_qtablewidget_types.QTableWidgetItem, h: ptr cQTableWidgetItem): gen_qtablewidget_types.QTableWidgetItem =
  T(h: h)
proc create*(T: type gen_qtablewidget_types.QTableWidgetItem, ): gen_qtablewidget_types.QTableWidgetItem =
  gen_qtablewidget_types.QTableWidgetItem.init(fcQTableWidgetItem_new())

proc create*(T: type gen_qtablewidget_types.QTableWidgetItem, text: string): gen_qtablewidget_types.QTableWidgetItem =
  gen_qtablewidget_types.QTableWidgetItem.init(fcQTableWidgetItem_new2(struct_miqt_string(data: text, len: csize_t(len(text)))))

proc create*(T: type gen_qtablewidget_types.QTableWidgetItem, icon: gen_qicon_types.QIcon, text: string): gen_qtablewidget_types.QTableWidgetItem =
  gen_qtablewidget_types.QTableWidgetItem.init(fcQTableWidgetItem_new3(icon.h, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc create*(T: type gen_qtablewidget_types.QTableWidgetItem, other: gen_qtablewidget_types.QTableWidgetItem): gen_qtablewidget_types.QTableWidgetItem =
  gen_qtablewidget_types.QTableWidgetItem.init(fcQTableWidgetItem_new4(other.h))

proc create*(T: type gen_qtablewidget_types.QTableWidgetItem, typeVal: cint): gen_qtablewidget_types.QTableWidgetItem =
  gen_qtablewidget_types.QTableWidgetItem.init(fcQTableWidgetItem_new5(typeVal))

proc create*(T: type gen_qtablewidget_types.QTableWidgetItem, text: string, typeVal: cint): gen_qtablewidget_types.QTableWidgetItem =
  gen_qtablewidget_types.QTableWidgetItem.init(fcQTableWidgetItem_new6(struct_miqt_string(data: text, len: csize_t(len(text))), typeVal))

proc create*(T: type gen_qtablewidget_types.QTableWidgetItem, icon: gen_qicon_types.QIcon, text: string, typeVal: cint): gen_qtablewidget_types.QTableWidgetItem =
  gen_qtablewidget_types.QTableWidgetItem.init(fcQTableWidgetItem_new7(icon.h, struct_miqt_string(data: text, len: csize_t(len(text))), typeVal))

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

proc backgroundColor*(self: gen_qtablewidget_types.QTableWidgetItem, ): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQTableWidgetItem_backgroundColor(self.h))

proc setBackgroundColor*(self: gen_qtablewidget_types.QTableWidgetItem, color: gen_qcolor_types.QColor): void =
  fcQTableWidgetItem_setBackgroundColor(self.h, color.h)

proc background*(self: gen_qtablewidget_types.QTableWidgetItem, ): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQTableWidgetItem_background(self.h))

proc setBackground*(self: gen_qtablewidget_types.QTableWidgetItem, brush: gen_qbrush_types.QBrush): void =
  fcQTableWidgetItem_setBackground(self.h, brush.h)

proc textColor*(self: gen_qtablewidget_types.QTableWidgetItem, ): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQTableWidgetItem_textColor(self.h))

proc setTextColor*(self: gen_qtablewidget_types.QTableWidgetItem, color: gen_qcolor_types.QColor): void =
  fcQTableWidgetItem_setTextColor(self.h, color.h)

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

proc QTableWidgetItemclone*(self: gen_qtablewidget_types.QTableWidgetItem, ): gen_qtablewidget_types.QTableWidgetItem =
  gen_qtablewidget_types.QTableWidgetItem(h: fQTableWidgetItem_virtualbase_clone(self.h))

type QTableWidgetItemcloneProc* = proc(): gen_qtablewidget_types.QTableWidgetItem
proc onclone*(self: gen_qtablewidget_types.QTableWidgetItem, slot: QTableWidgetItemcloneProc) =
  # TODO check subclass
  var tmp = new QTableWidgetItemcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidgetItem_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidgetItem_clone(self: ptr cQTableWidgetItem, slot: int): pointer {.exportc: "miqt_exec_callback_QTableWidgetItem_clone ".} =
  var nimfunc = cast[ptr QTableWidgetItemcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTableWidgetItemdata*(self: gen_qtablewidget_types.QTableWidgetItem, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQTableWidgetItem_virtualbase_data(self.h, role))

type QTableWidgetItemdataProc* = proc(role: cint): gen_qvariant_types.QVariant
proc ondata*(self: gen_qtablewidget_types.QTableWidgetItem, slot: QTableWidgetItemdataProc) =
  # TODO check subclass
  var tmp = new QTableWidgetItemdataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidgetItem_override_virtual_data(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidgetItem_data(self: ptr cQTableWidgetItem, slot: int, role: cint): pointer {.exportc: "miqt_exec_callback_QTableWidgetItem_data ".} =
  var nimfunc = cast[ptr QTableWidgetItemdataProc](cast[pointer](slot))
  let slotval1 = role


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QTableWidgetItemsetData*(self: gen_qtablewidget_types.QTableWidgetItem, role: cint, value: gen_qvariant_types.QVariant): void =
  fQTableWidgetItem_virtualbase_setData(self.h, role, value.h)

type QTableWidgetItemsetDataProc* = proc(role: cint, value: gen_qvariant_types.QVariant): void
proc onsetData*(self: gen_qtablewidget_types.QTableWidgetItem, slot: QTableWidgetItemsetDataProc) =
  # TODO check subclass
  var tmp = new QTableWidgetItemsetDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidgetItem_override_virtual_setData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidgetItem_setData(self: ptr cQTableWidgetItem, slot: int, role: cint, value: pointer): void {.exportc: "miqt_exec_callback_QTableWidgetItem_setData ".} =
  var nimfunc = cast[ptr QTableWidgetItemsetDataProc](cast[pointer](slot))
  let slotval1 = role

  let slotval2 = gen_qvariant_types.QVariant(h: value)


  nimfunc[](slotval1, slotval2)
proc QTableWidgetItemoperatorLesser*(self: gen_qtablewidget_types.QTableWidgetItem, other: gen_qtablewidget_types.QTableWidgetItem): bool =
  fQTableWidgetItem_virtualbase_operatorLesser(self.h, other.h)

type QTableWidgetItemoperatorLesserProc* = proc(other: gen_qtablewidget_types.QTableWidgetItem): bool
proc onoperatorLesser*(self: gen_qtablewidget_types.QTableWidgetItem, slot: QTableWidgetItemoperatorLesserProc) =
  # TODO check subclass
  var tmp = new QTableWidgetItemoperatorLesserProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidgetItem_override_virtual_operatorLesser(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidgetItem_operatorLesser(self: ptr cQTableWidgetItem, slot: int, other: pointer): bool {.exportc: "miqt_exec_callback_QTableWidgetItem_operatorLesser ".} =
  var nimfunc = cast[ptr QTableWidgetItemoperatorLesserProc](cast[pointer](slot))
  let slotval1 = gen_qtablewidget_types.QTableWidgetItem(h: other)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTableWidgetItemread*(self: gen_qtablewidget_types.QTableWidgetItem, inVal: gen_qdatastream_types.QDataStream): void =
  fQTableWidgetItem_virtualbase_read(self.h, inVal.h)

type QTableWidgetItemreadProc* = proc(inVal: gen_qdatastream_types.QDataStream): void
proc onread*(self: gen_qtablewidget_types.QTableWidgetItem, slot: QTableWidgetItemreadProc) =
  # TODO check subclass
  var tmp = new QTableWidgetItemreadProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidgetItem_override_virtual_read(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidgetItem_read(self: ptr cQTableWidgetItem, slot: int, inVal: pointer): void {.exportc: "miqt_exec_callback_QTableWidgetItem_read ".} =
  var nimfunc = cast[ptr QTableWidgetItemreadProc](cast[pointer](slot))
  let slotval1 = gen_qdatastream_types.QDataStream(h: inVal)


  nimfunc[](slotval1)
proc QTableWidgetItemwrite*(self: gen_qtablewidget_types.QTableWidgetItem, outVal: gen_qdatastream_types.QDataStream): void =
  fQTableWidgetItem_virtualbase_write(self.h, outVal.h)

type QTableWidgetItemwriteProc* = proc(outVal: gen_qdatastream_types.QDataStream): void
proc onwrite*(self: gen_qtablewidget_types.QTableWidgetItem, slot: QTableWidgetItemwriteProc) =
  # TODO check subclass
  var tmp = new QTableWidgetItemwriteProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidgetItem_override_virtual_write(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidgetItem_write(self: ptr cQTableWidgetItem, slot: int, outVal: pointer): void {.exportc: "miqt_exec_callback_QTableWidgetItem_write ".} =
  var nimfunc = cast[ptr QTableWidgetItemwriteProc](cast[pointer](slot))
  let slotval1 = gen_qdatastream_types.QDataStream(h: outVal)


  nimfunc[](slotval1)
proc delete*(self: gen_qtablewidget_types.QTableWidgetItem) =
  fcQTableWidgetItem_delete(self.h)

func init*(T: type gen_qtablewidget_types.QTableWidget, h: ptr cQTableWidget): gen_qtablewidget_types.QTableWidget =
  T(h: h)
proc create*(T: type gen_qtablewidget_types.QTableWidget, parent: gen_qwidget_types.QWidget): gen_qtablewidget_types.QTableWidget =
  gen_qtablewidget_types.QTableWidget.init(fcQTableWidget_new(parent.h))

proc create*(T: type gen_qtablewidget_types.QTableWidget, ): gen_qtablewidget_types.QTableWidget =
  gen_qtablewidget_types.QTableWidget.init(fcQTableWidget_new2())

proc create*(T: type gen_qtablewidget_types.QTableWidget, rows: cint, columns: cint): gen_qtablewidget_types.QTableWidget =
  gen_qtablewidget_types.QTableWidget.init(fcQTableWidget_new3(rows, columns))

proc create*(T: type gen_qtablewidget_types.QTableWidget, rows: cint, columns: cint, parent: gen_qwidget_types.QWidget): gen_qtablewidget_types.QTableWidget =
  gen_qtablewidget_types.QTableWidget.init(fcQTableWidget_new4(rows, columns, parent.h))

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

proc trUtf8*(_: type gen_qtablewidget_types.QTableWidget, s: cstring): string =
  let v_ms = fcQTableWidget_trUtf8(s)
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

proc isItemSelected*(self: gen_qtablewidget_types.QTableWidget, item: gen_qtablewidget_types.QTableWidgetItem): bool =
  fcQTableWidget_isItemSelected(self.h, item.h)

proc setItemSelected*(self: gen_qtablewidget_types.QTableWidget, item: gen_qtablewidget_types.QTableWidgetItem, select: bool): void =
  fcQTableWidget_setItemSelected(self.h, item.h, select)

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
proc miqt_exec_callback_QTableWidget_itemPressed(slot: int, item: pointer) {.exportc.} =
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
proc miqt_exec_callback_QTableWidget_itemClicked(slot: int, item: pointer) {.exportc.} =
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
proc miqt_exec_callback_QTableWidget_itemDoubleClicked(slot: int, item: pointer) {.exportc.} =
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
proc miqt_exec_callback_QTableWidget_itemActivated(slot: int, item: pointer) {.exportc.} =
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
proc miqt_exec_callback_QTableWidget_itemEntered(slot: int, item: pointer) {.exportc.} =
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
proc miqt_exec_callback_QTableWidget_itemChanged(slot: int, item: pointer) {.exportc.} =
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
proc miqt_exec_callback_QTableWidget_currentItemChanged(slot: int, current: pointer, previous: pointer) {.exportc.} =
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
proc miqt_exec_callback_QTableWidget_itemSelectionChanged(slot: int) {.exportc.} =
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
proc miqt_exec_callback_QTableWidget_cellPressed(slot: int, row: cint, column: cint) {.exportc.} =
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
proc miqt_exec_callback_QTableWidget_cellClicked(slot: int, row: cint, column: cint) {.exportc.} =
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
proc miqt_exec_callback_QTableWidget_cellDoubleClicked(slot: int, row: cint, column: cint) {.exportc.} =
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
proc miqt_exec_callback_QTableWidget_cellActivated(slot: int, row: cint, column: cint) {.exportc.} =
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
proc miqt_exec_callback_QTableWidget_cellEntered(slot: int, row: cint, column: cint) {.exportc.} =
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
proc miqt_exec_callback_QTableWidget_cellChanged(slot: int, row: cint, column: cint) {.exportc.} =
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
proc miqt_exec_callback_QTableWidget_currentCellChanged(slot: int, currentRow: cint, currentColumn: cint, previousRow: cint, previousColumn: cint) {.exportc.} =
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

proc trUtf8*(_: type gen_qtablewidget_types.QTableWidget, s: cstring, c: cstring): string =
  let v_ms = fcQTableWidget_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtablewidget_types.QTableWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTableWidget_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sortItems*(self: gen_qtablewidget_types.QTableWidget, column: cint, order: cint): void =
  fcQTableWidget_sortItems2(self.h, column, cint(order))

proc scrollToItem*(self: gen_qtablewidget_types.QTableWidget, item: gen_qtablewidget_types.QTableWidgetItem, hint: cint): void =
  fcQTableWidget_scrollToItem2(self.h, item.h, cint(hint))

proc QTableWidgetmetaObject*(self: gen_qtablewidget_types.QTableWidget, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQTableWidget_virtualbase_metaObject(self.h))

type QTableWidgetmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetmetaObjectProc) =
  # TODO check subclass
  var tmp = new QTableWidgetmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_metaObject(self: ptr cQTableWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QTableWidget_metaObject ".} =
  var nimfunc = cast[ptr QTableWidgetmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTableWidgetmetacast*(self: gen_qtablewidget_types.QTableWidget, param1: cstring): pointer =
  fQTableWidget_virtualbase_metacast(self.h, param1)

type QTableWidgetmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetmetacastProc) =
  # TODO check subclass
  var tmp = new QTableWidgetmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_metacast(self: ptr cQTableWidget, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QTableWidget_metacast ".} =
  var nimfunc = cast[ptr QTableWidgetmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTableWidgetmetacall*(self: gen_qtablewidget_types.QTableWidget, param1: cint, param2: cint, param3: pointer): cint =
  fQTableWidget_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QTableWidgetmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetmetacallProc) =
  # TODO check subclass
  var tmp = new QTableWidgetmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_metacall(self: ptr cQTableWidget, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QTableWidget_metacall ".} =
  var nimfunc = cast[ptr QTableWidgetmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QTableWidgetevent*(self: gen_qtablewidget_types.QTableWidget, e: gen_qcoreevent_types.QEvent): bool =
  fQTableWidget_virtualbase_event(self.h, e.h)

type QTableWidgeteventProc* = proc(e: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgeteventProc) =
  # TODO check subclass
  var tmp = new QTableWidgeteventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_event(self: ptr cQTableWidget, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QTableWidget_event ".} =
  var nimfunc = cast[ptr QTableWidgeteventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTableWidgetmimeTypes*(self: gen_qtablewidget_types.QTableWidget, ): seq[string] =
  var v_ma = fQTableWidget_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QTableWidgetmimeTypesProc* = proc(): seq[string]
proc onmimeTypes*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetmimeTypesProc) =
  # TODO check subclass
  var tmp = new QTableWidgetmimeTypesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_mimeTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_mimeTypes(self: ptr cQTableWidget, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QTableWidget_mimeTypes ".} =
  var nimfunc = cast[ptr QTableWidgetmimeTypesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QTableWidgetmimeData*(self: gen_qtablewidget_types.QTableWidget, items: seq[gen_qtablewidget_types.QTableWidgetItem]): gen_qmimedata_types.QMimeData =
  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  gen_qmimedata_types.QMimeData(h: fQTableWidget_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0]))))

type QTableWidgetmimeDataProc* = proc(items: seq[gen_qtablewidget_types.QTableWidgetItem]): gen_qmimedata_types.QMimeData
proc onmimeData*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetmimeDataProc) =
  # TODO check subclass
  var tmp = new QTableWidgetmimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_mimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_mimeData(self: ptr cQTableWidget, slot: int, items: struct_miqt_array): pointer {.exportc: "miqt_exec_callback_QTableWidget_mimeData ".} =
  var nimfunc = cast[ptr QTableWidgetmimeDataProc](cast[pointer](slot))
  var vitems_ma = items
  var vitemsx_ret = newSeq[gen_qtablewidget_types.QTableWidgetItem](int(vitems_ma.len))
  let vitems_outCast = cast[ptr UncheckedArray[pointer]](vitems_ma.data)
  for i in 0 ..< vitems_ma.len:
    vitemsx_ret[i] = gen_qtablewidget_types.QTableWidgetItem(h: vitems_outCast[i])
  let slotval1 = vitemsx_ret


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QTableWidgetdropMimeData*(self: gen_qtablewidget_types.QTableWidget, row: cint, column: cint, data: gen_qmimedata_types.QMimeData, action: cint): bool =
  fQTableWidget_virtualbase_dropMimeData(self.h, row, column, data.h, cint(action))

type QTableWidgetdropMimeDataProc* = proc(row: cint, column: cint, data: gen_qmimedata_types.QMimeData, action: cint): bool
proc ondropMimeData*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetdropMimeDataProc) =
  # TODO check subclass
  var tmp = new QTableWidgetdropMimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_dropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_dropMimeData(self: ptr cQTableWidget, slot: int, row: cint, column: cint, data: pointer, action: cint): bool {.exportc: "miqt_exec_callback_QTableWidget_dropMimeData ".} =
  var nimfunc = cast[ptr QTableWidgetdropMimeDataProc](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = column

  let slotval3 = gen_qmimedata_types.QMimeData(h: data)

  let slotval4 = cint(action)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc QTableWidgetsupportedDropActions*(self: gen_qtablewidget_types.QTableWidget, ): cint =
  cint(fQTableWidget_virtualbase_supportedDropActions(self.h))

type QTableWidgetsupportedDropActionsProc* = proc(): cint
proc onsupportedDropActions*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetsupportedDropActionsProc) =
  # TODO check subclass
  var tmp = new QTableWidgetsupportedDropActionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_supportedDropActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_supportedDropActions(self: ptr cQTableWidget, slot: int): cint {.exportc: "miqt_exec_callback_QTableWidget_supportedDropActions ".} =
  var nimfunc = cast[ptr QTableWidgetsupportedDropActionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QTableWidgetdropEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qevent_types.QDropEvent): void =
  fQTableWidget_virtualbase_dropEvent(self.h, event.h)

type QTableWidgetdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetdropEventProc) =
  # TODO check subclass
  var tmp = new QTableWidgetdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_dropEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_dropEvent ".} =
  var nimfunc = cast[ptr QTableWidgetdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QTableWidgetsetRootIndex*(self: gen_qtablewidget_types.QTableWidget, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fQTableWidget_virtualbase_setRootIndex(self.h, index.h)

type QTableWidgetsetRootIndexProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): void
proc onsetRootIndex*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetsetRootIndexProc) =
  # TODO check subclass
  var tmp = new QTableWidgetsetRootIndexProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_setRootIndex(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_setRootIndex(self: ptr cQTableWidget, slot: int, index: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_setRootIndex ".} =
  var nimfunc = cast[ptr QTableWidgetsetRootIndexProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  nimfunc[](slotval1)
proc QTableWidgetsetSelectionModel*(self: gen_qtablewidget_types.QTableWidget, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void =
  fQTableWidget_virtualbase_setSelectionModel(self.h, selectionModel.h)

type QTableWidgetsetSelectionModelProc* = proc(selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void
proc onsetSelectionModel*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetsetSelectionModelProc) =
  # TODO check subclass
  var tmp = new QTableWidgetsetSelectionModelProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_setSelectionModel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_setSelectionModel(self: ptr cQTableWidget, slot: int, selectionModel: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_setSelectionModel ".} =
  var nimfunc = cast[ptr QTableWidgetsetSelectionModelProc](cast[pointer](slot))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelectionModel(h: selectionModel)


  nimfunc[](slotval1)
proc QTableWidgetdoItemsLayout*(self: gen_qtablewidget_types.QTableWidget, ): void =
  fQTableWidget_virtualbase_doItemsLayout(self.h)

type QTableWidgetdoItemsLayoutProc* = proc(): void
proc ondoItemsLayout*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetdoItemsLayoutProc) =
  # TODO check subclass
  var tmp = new QTableWidgetdoItemsLayoutProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_doItemsLayout(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_doItemsLayout(self: ptr cQTableWidget, slot: int): void {.exportc: "miqt_exec_callback_QTableWidget_doItemsLayout ".} =
  var nimfunc = cast[ptr QTableWidgetdoItemsLayoutProc](cast[pointer](slot))

  nimfunc[]()
proc QTableWidgetvisualRect*(self: gen_qtablewidget_types.QTableWidget, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fQTableWidget_virtualbase_visualRect(self.h, index.h))

type QTableWidgetvisualRectProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect
proc onvisualRect*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetvisualRectProc) =
  # TODO check subclass
  var tmp = new QTableWidgetvisualRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_visualRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_visualRect(self: ptr cQTableWidget, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QTableWidget_visualRect ".} =
  var nimfunc = cast[ptr QTableWidgetvisualRectProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QTableWidgetscrollTo*(self: gen_qtablewidget_types.QTableWidget, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void =
  fQTableWidget_virtualbase_scrollTo(self.h, index.h, cint(hint))

type QTableWidgetscrollToProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void
proc onscrollTo*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetscrollToProc) =
  # TODO check subclass
  var tmp = new QTableWidgetscrollToProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_scrollTo(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_scrollTo(self: ptr cQTableWidget, slot: int, index: pointer, hint: cint): void {.exportc: "miqt_exec_callback_QTableWidget_scrollTo ".} =
  var nimfunc = cast[ptr QTableWidgetscrollToProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = cint(hint)


  nimfunc[](slotval1, slotval2)
proc QTableWidgetindexAt*(self: gen_qtablewidget_types.QTableWidget, p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQTableWidget_virtualbase_indexAt(self.h, p.h))

type QTableWidgetindexAtProc* = proc(p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex
proc onindexAt*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetindexAtProc) =
  # TODO check subclass
  var tmp = new QTableWidgetindexAtProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_indexAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_indexAt(self: ptr cQTableWidget, slot: int, p: pointer): pointer {.exportc: "miqt_exec_callback_QTableWidget_indexAt ".} =
  var nimfunc = cast[ptr QTableWidgetindexAtProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: p)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QTableWidgetscrollContentsBy*(self: gen_qtablewidget_types.QTableWidget, dx: cint, dy: cint): void =
  fQTableWidget_virtualbase_scrollContentsBy(self.h, dx, dy)

type QTableWidgetscrollContentsByProc* = proc(dx: cint, dy: cint): void
proc onscrollContentsBy*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetscrollContentsByProc) =
  # TODO check subclass
  var tmp = new QTableWidgetscrollContentsByProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_scrollContentsBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_scrollContentsBy(self: ptr cQTableWidget, slot: int, dx: cint, dy: cint): void {.exportc: "miqt_exec_callback_QTableWidget_scrollContentsBy ".} =
  var nimfunc = cast[ptr QTableWidgetscrollContentsByProc](cast[pointer](slot))
  let slotval1 = dx

  let slotval2 = dy


  nimfunc[](slotval1, slotval2)
proc QTableWidgetviewOptions*(self: gen_qtablewidget_types.QTableWidget, ): gen_qstyleoption_types.QStyleOptionViewItem =
  gen_qstyleoption_types.QStyleOptionViewItem(h: fQTableWidget_virtualbase_viewOptions(self.h))

type QTableWidgetviewOptionsProc* = proc(): gen_qstyleoption_types.QStyleOptionViewItem
proc onviewOptions*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetviewOptionsProc) =
  # TODO check subclass
  var tmp = new QTableWidgetviewOptionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_viewOptions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_viewOptions(self: ptr cQTableWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QTableWidget_viewOptions ".} =
  var nimfunc = cast[ptr QTableWidgetviewOptionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTableWidgetpaintEvent*(self: gen_qtablewidget_types.QTableWidget, e: gen_qevent_types.QPaintEvent): void =
  fQTableWidget_virtualbase_paintEvent(self.h, e.h)

type QTableWidgetpaintEventProc* = proc(e: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetpaintEventProc) =
  # TODO check subclass
  var tmp = new QTableWidgetpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_paintEvent(self: ptr cQTableWidget, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_paintEvent ".} =
  var nimfunc = cast[ptr QTableWidgetpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: e)


  nimfunc[](slotval1)
proc QTableWidgettimerEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qcoreevent_types.QTimerEvent): void =
  fQTableWidget_virtualbase_timerEvent(self.h, event.h)

type QTableWidgettimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgettimerEventProc) =
  # TODO check subclass
  var tmp = new QTableWidgettimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_timerEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_timerEvent ".} =
  var nimfunc = cast[ptr QTableWidgettimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QTableWidgethorizontalOffset*(self: gen_qtablewidget_types.QTableWidget, ): cint =
  fQTableWidget_virtualbase_horizontalOffset(self.h)

type QTableWidgethorizontalOffsetProc* = proc(): cint
proc onhorizontalOffset*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgethorizontalOffsetProc) =
  # TODO check subclass
  var tmp = new QTableWidgethorizontalOffsetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_horizontalOffset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_horizontalOffset(self: ptr cQTableWidget, slot: int): cint {.exportc: "miqt_exec_callback_QTableWidget_horizontalOffset ".} =
  var nimfunc = cast[ptr QTableWidgethorizontalOffsetProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTableWidgetverticalOffset*(self: gen_qtablewidget_types.QTableWidget, ): cint =
  fQTableWidget_virtualbase_verticalOffset(self.h)

type QTableWidgetverticalOffsetProc* = proc(): cint
proc onverticalOffset*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetverticalOffsetProc) =
  # TODO check subclass
  var tmp = new QTableWidgetverticalOffsetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_verticalOffset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_verticalOffset(self: ptr cQTableWidget, slot: int): cint {.exportc: "miqt_exec_callback_QTableWidget_verticalOffset ".} =
  var nimfunc = cast[ptr QTableWidgetverticalOffsetProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTableWidgetmoveCursor*(self: gen_qtablewidget_types.QTableWidget, cursorAction: cint, modifiers: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQTableWidget_virtualbase_moveCursor(self.h, cint(cursorAction), cint(modifiers)))

type QTableWidgetmoveCursorProc* = proc(cursorAction: cint, modifiers: cint): gen_qabstractitemmodel_types.QModelIndex
proc onmoveCursor*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetmoveCursorProc) =
  # TODO check subclass
  var tmp = new QTableWidgetmoveCursorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_moveCursor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_moveCursor(self: ptr cQTableWidget, slot: int, cursorAction: cint, modifiers: cint): pointer {.exportc: "miqt_exec_callback_QTableWidget_moveCursor ".} =
  var nimfunc = cast[ptr QTableWidgetmoveCursorProc](cast[pointer](slot))
  let slotval1 = cint(cursorAction)

  let slotval2 = cint(modifiers)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QTableWidgetsetSelection*(self: gen_qtablewidget_types.QTableWidget, rect: gen_qrect_types.QRect, command: cint): void =
  fQTableWidget_virtualbase_setSelection(self.h, rect.h, cint(command))

type QTableWidgetsetSelectionProc* = proc(rect: gen_qrect_types.QRect, command: cint): void
proc onsetSelection*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetsetSelectionProc) =
  # TODO check subclass
  var tmp = new QTableWidgetsetSelectionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_setSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_setSelection(self: ptr cQTableWidget, slot: int, rect: pointer, command: cint): void {.exportc: "miqt_exec_callback_QTableWidget_setSelection ".} =
  var nimfunc = cast[ptr QTableWidgetsetSelectionProc](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRect(h: rect)

  let slotval2 = cint(command)


  nimfunc[](slotval1, slotval2)
proc QTableWidgetvisualRegionForSelection*(self: gen_qtablewidget_types.QTableWidget, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fQTableWidget_virtualbase_visualRegionForSelection(self.h, selection.h))

type QTableWidgetvisualRegionForSelectionProc* = proc(selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion
proc onvisualRegionForSelection*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetvisualRegionForSelectionProc) =
  # TODO check subclass
  var tmp = new QTableWidgetvisualRegionForSelectionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_visualRegionForSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_visualRegionForSelection(self: ptr cQTableWidget, slot: int, selection: pointer): pointer {.exportc: "miqt_exec_callback_QTableWidget_visualRegionForSelection ".} =
  var nimfunc = cast[ptr QTableWidgetvisualRegionForSelectionProc](cast[pointer](slot))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QTableWidgetselectedIndexes*(self: gen_qtablewidget_types.QTableWidget, ): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fQTableWidget_virtualbase_selectedIndexes(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  vx_ret

type QTableWidgetselectedIndexesProc* = proc(): seq[gen_qabstractitemmodel_types.QModelIndex]
proc onselectedIndexes*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetselectedIndexesProc) =
  # TODO check subclass
  var tmp = new QTableWidgetselectedIndexesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_selectedIndexes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_selectedIndexes(self: ptr cQTableWidget, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QTableWidget_selectedIndexes ".} =
  var nimfunc = cast[ptr QTableWidgetselectedIndexesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[pointer](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QTableWidgetupdateGeometries*(self: gen_qtablewidget_types.QTableWidget, ): void =
  fQTableWidget_virtualbase_updateGeometries(self.h)

type QTableWidgetupdateGeometriesProc* = proc(): void
proc onupdateGeometries*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetupdateGeometriesProc) =
  # TODO check subclass
  var tmp = new QTableWidgetupdateGeometriesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_updateGeometries(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_updateGeometries(self: ptr cQTableWidget, slot: int): void {.exportc: "miqt_exec_callback_QTableWidget_updateGeometries ".} =
  var nimfunc = cast[ptr QTableWidgetupdateGeometriesProc](cast[pointer](slot))

  nimfunc[]()
proc QTableWidgetviewportSizeHint*(self: gen_qtablewidget_types.QTableWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQTableWidget_virtualbase_viewportSizeHint(self.h))

type QTableWidgetviewportSizeHintProc* = proc(): gen_qsize_types.QSize
proc onviewportSizeHint*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetviewportSizeHintProc) =
  # TODO check subclass
  var tmp = new QTableWidgetviewportSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_viewportSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_viewportSizeHint(self: ptr cQTableWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QTableWidget_viewportSizeHint ".} =
  var nimfunc = cast[ptr QTableWidgetviewportSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTableWidgetsizeHintForRow*(self: gen_qtablewidget_types.QTableWidget, row: cint): cint =
  fQTableWidget_virtualbase_sizeHintForRow(self.h, row)

type QTableWidgetsizeHintForRowProc* = proc(row: cint): cint
proc onsizeHintForRow*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetsizeHintForRowProc) =
  # TODO check subclass
  var tmp = new QTableWidgetsizeHintForRowProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_sizeHintForRow(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_sizeHintForRow(self: ptr cQTableWidget, slot: int, row: cint): cint {.exportc: "miqt_exec_callback_QTableWidget_sizeHintForRow ".} =
  var nimfunc = cast[ptr QTableWidgetsizeHintForRowProc](cast[pointer](slot))
  let slotval1 = row


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTableWidgetsizeHintForColumn*(self: gen_qtablewidget_types.QTableWidget, column: cint): cint =
  fQTableWidget_virtualbase_sizeHintForColumn(self.h, column)

type QTableWidgetsizeHintForColumnProc* = proc(column: cint): cint
proc onsizeHintForColumn*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetsizeHintForColumnProc) =
  # TODO check subclass
  var tmp = new QTableWidgetsizeHintForColumnProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_sizeHintForColumn(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_sizeHintForColumn(self: ptr cQTableWidget, slot: int, column: cint): cint {.exportc: "miqt_exec_callback_QTableWidget_sizeHintForColumn ".} =
  var nimfunc = cast[ptr QTableWidgetsizeHintForColumnProc](cast[pointer](slot))
  let slotval1 = column


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTableWidgetverticalScrollbarAction*(self: gen_qtablewidget_types.QTableWidget, action: cint): void =
  fQTableWidget_virtualbase_verticalScrollbarAction(self.h, action)

type QTableWidgetverticalScrollbarActionProc* = proc(action: cint): void
proc onverticalScrollbarAction*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetverticalScrollbarActionProc) =
  # TODO check subclass
  var tmp = new QTableWidgetverticalScrollbarActionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_verticalScrollbarAction(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_verticalScrollbarAction(self: ptr cQTableWidget, slot: int, action: cint): void {.exportc: "miqt_exec_callback_QTableWidget_verticalScrollbarAction ".} =
  var nimfunc = cast[ptr QTableWidgetverticalScrollbarActionProc](cast[pointer](slot))
  let slotval1 = action


  nimfunc[](slotval1)
proc QTableWidgethorizontalScrollbarAction*(self: gen_qtablewidget_types.QTableWidget, action: cint): void =
  fQTableWidget_virtualbase_horizontalScrollbarAction(self.h, action)

type QTableWidgethorizontalScrollbarActionProc* = proc(action: cint): void
proc onhorizontalScrollbarAction*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgethorizontalScrollbarActionProc) =
  # TODO check subclass
  var tmp = new QTableWidgethorizontalScrollbarActionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_horizontalScrollbarAction(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_horizontalScrollbarAction(self: ptr cQTableWidget, slot: int, action: cint): void {.exportc: "miqt_exec_callback_QTableWidget_horizontalScrollbarAction ".} =
  var nimfunc = cast[ptr QTableWidgethorizontalScrollbarActionProc](cast[pointer](slot))
  let slotval1 = action


  nimfunc[](slotval1)
proc QTableWidgetisIndexHidden*(self: gen_qtablewidget_types.QTableWidget, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQTableWidget_virtualbase_isIndexHidden(self.h, index.h)

type QTableWidgetisIndexHiddenProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): bool
proc onisIndexHidden*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetisIndexHiddenProc) =
  # TODO check subclass
  var tmp = new QTableWidgetisIndexHiddenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_isIndexHidden(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_isIndexHidden(self: ptr cQTableWidget, slot: int, index: pointer): bool {.exportc: "miqt_exec_callback_QTableWidget_isIndexHidden ".} =
  var nimfunc = cast[ptr QTableWidgetisIndexHiddenProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTableWidgetselectionChanged*(self: gen_qtablewidget_types.QTableWidget, selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void =
  fQTableWidget_virtualbase_selectionChanged(self.h, selected.h, deselected.h)

type QTableWidgetselectionChangedProc* = proc(selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void
proc onselectionChanged*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetselectionChangedProc) =
  # TODO check subclass
  var tmp = new QTableWidgetselectionChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_selectionChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_selectionChanged(self: ptr cQTableWidget, slot: int, selected: pointer, deselected: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_selectionChanged ".} =
  var nimfunc = cast[ptr QTableWidgetselectionChangedProc](cast[pointer](slot))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selected)

  let slotval2 = gen_qitemselectionmodel_types.QItemSelection(h: deselected)


  nimfunc[](slotval1, slotval2)
proc QTableWidgetcurrentChanged*(self: gen_qtablewidget_types.QTableWidget, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void =
  fQTableWidget_virtualbase_currentChanged(self.h, current.h, previous.h)

type QTableWidgetcurrentChangedProc* = proc(current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void
proc oncurrentChanged*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetcurrentChangedProc) =
  # TODO check subclass
  var tmp = new QTableWidgetcurrentChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_currentChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_currentChanged(self: ptr cQTableWidget, slot: int, current: pointer, previous: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_currentChanged ".} =
  var nimfunc = cast[ptr QTableWidgetcurrentChangedProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: current)

  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: previous)


  nimfunc[](slotval1, slotval2)
proc QTableWidgetkeyboardSearch*(self: gen_qtablewidget_types.QTableWidget, search: string): void =
  fQTableWidget_virtualbase_keyboardSearch(self.h, struct_miqt_string(data: search, len: csize_t(len(search))))

type QTableWidgetkeyboardSearchProc* = proc(search: string): void
proc onkeyboardSearch*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetkeyboardSearchProc) =
  # TODO check subclass
  var tmp = new QTableWidgetkeyboardSearchProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_keyboardSearch(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_keyboardSearch(self: ptr cQTableWidget, slot: int, search: struct_miqt_string): void {.exportc: "miqt_exec_callback_QTableWidget_keyboardSearch ".} =
  var nimfunc = cast[ptr QTableWidgetkeyboardSearchProc](cast[pointer](slot))
  let vsearch_ms = search
  let vsearchx_ret = string.fromBytes(toOpenArrayByte(vsearch_ms.data, 0, int(vsearch_ms.len)-1))
  c_free(vsearch_ms.data)
  let slotval1 = vsearchx_ret


  nimfunc[](slotval1)
proc QTableWidgetinputMethodQuery*(self: gen_qtablewidget_types.QTableWidget, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQTableWidget_virtualbase_inputMethodQuery(self.h, cint(query)))

type QTableWidgetinputMethodQueryProc* = proc(query: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QTableWidgetinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_inputMethodQuery(self: ptr cQTableWidget, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QTableWidget_inputMethodQuery ".} =
  var nimfunc = cast[ptr QTableWidgetinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(query)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QTableWidgetreset*(self: gen_qtablewidget_types.QTableWidget, ): void =
  fQTableWidget_virtualbase_reset(self.h)

type QTableWidgetresetProc* = proc(): void
proc onreset*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetresetProc) =
  # TODO check subclass
  var tmp = new QTableWidgetresetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_reset(self: ptr cQTableWidget, slot: int): void {.exportc: "miqt_exec_callback_QTableWidget_reset ".} =
  var nimfunc = cast[ptr QTableWidgetresetProc](cast[pointer](slot))

  nimfunc[]()
proc QTableWidgetselectAll*(self: gen_qtablewidget_types.QTableWidget, ): void =
  fQTableWidget_virtualbase_selectAll(self.h)

type QTableWidgetselectAllProc* = proc(): void
proc onselectAll*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetselectAllProc) =
  # TODO check subclass
  var tmp = new QTableWidgetselectAllProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_selectAll(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_selectAll(self: ptr cQTableWidget, slot: int): void {.exportc: "miqt_exec_callback_QTableWidget_selectAll ".} =
  var nimfunc = cast[ptr QTableWidgetselectAllProc](cast[pointer](slot))

  nimfunc[]()
proc QTableWidgetdataChanged*(self: gen_qtablewidget_types.QTableWidget, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: seq[cint]): void =
  var roles_CArray = newSeq[cint](len(roles))
  for i in 0..<len(roles):
    roles_CArray[i] = roles[i]

  fQTableWidget_virtualbase_dataChanged(self.h, topLeft.h, bottomRight.h, struct_miqt_array(len: csize_t(len(roles)), data: if len(roles) == 0: nil else: addr(roles_CArray[0])))

type QTableWidgetdataChangedProc* = proc(topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: seq[cint]): void
proc ondataChanged*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetdataChangedProc) =
  # TODO check subclass
  var tmp = new QTableWidgetdataChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_dataChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_dataChanged(self: ptr cQTableWidget, slot: int, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.exportc: "miqt_exec_callback_QTableWidget_dataChanged ".} =
  var nimfunc = cast[ptr QTableWidgetdataChangedProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: topLeft)

  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: bottomRight)

  var vroles_ma = roles
  var vrolesx_ret = newSeq[cint](int(vroles_ma.len))
  let vroles_outCast = cast[ptr UncheckedArray[cint]](vroles_ma.data)
  for i in 0 ..< vroles_ma.len:
    vrolesx_ret[i] = vroles_outCast[i]
  let slotval3 = vrolesx_ret


  nimfunc[](slotval1, slotval2, slotval3)
proc QTableWidgetrowsInserted*(self: gen_qtablewidget_types.QTableWidget, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fQTableWidget_virtualbase_rowsInserted(self.h, parent.h, start, endVal)

type QTableWidgetrowsInsertedProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void
proc onrowsInserted*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetrowsInsertedProc) =
  # TODO check subclass
  var tmp = new QTableWidgetrowsInsertedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_rowsInserted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_rowsInserted(self: ptr cQTableWidget, slot: int, parent: pointer, start: cint, endVal: cint): void {.exportc: "miqt_exec_callback_QTableWidget_rowsInserted ".} =
  var nimfunc = cast[ptr QTableWidgetrowsInsertedProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)

  let slotval2 = start

  let slotval3 = endVal


  nimfunc[](slotval1, slotval2, slotval3)
proc QTableWidgetrowsAboutToBeRemoved*(self: gen_qtablewidget_types.QTableWidget, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fQTableWidget_virtualbase_rowsAboutToBeRemoved(self.h, parent.h, start, endVal)

type QTableWidgetrowsAboutToBeRemovedProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void
proc onrowsAboutToBeRemoved*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetrowsAboutToBeRemovedProc) =
  # TODO check subclass
  var tmp = new QTableWidgetrowsAboutToBeRemovedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_rowsAboutToBeRemoved(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_rowsAboutToBeRemoved(self: ptr cQTableWidget, slot: int, parent: pointer, start: cint, endVal: cint): void {.exportc: "miqt_exec_callback_QTableWidget_rowsAboutToBeRemoved ".} =
  var nimfunc = cast[ptr QTableWidgetrowsAboutToBeRemovedProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)

  let slotval2 = start

  let slotval3 = endVal


  nimfunc[](slotval1, slotval2, slotval3)
proc QTableWidgetupdateEditorData*(self: gen_qtablewidget_types.QTableWidget, ): void =
  fQTableWidget_virtualbase_updateEditorData(self.h)

type QTableWidgetupdateEditorDataProc* = proc(): void
proc onupdateEditorData*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetupdateEditorDataProc) =
  # TODO check subclass
  var tmp = new QTableWidgetupdateEditorDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_updateEditorData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_updateEditorData(self: ptr cQTableWidget, slot: int): void {.exportc: "miqt_exec_callback_QTableWidget_updateEditorData ".} =
  var nimfunc = cast[ptr QTableWidgetupdateEditorDataProc](cast[pointer](slot))

  nimfunc[]()
proc QTableWidgetupdateEditorGeometries*(self: gen_qtablewidget_types.QTableWidget, ): void =
  fQTableWidget_virtualbase_updateEditorGeometries(self.h)

type QTableWidgetupdateEditorGeometriesProc* = proc(): void
proc onupdateEditorGeometries*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetupdateEditorGeometriesProc) =
  # TODO check subclass
  var tmp = new QTableWidgetupdateEditorGeometriesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_updateEditorGeometries(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_updateEditorGeometries(self: ptr cQTableWidget, slot: int): void {.exportc: "miqt_exec_callback_QTableWidget_updateEditorGeometries ".} =
  var nimfunc = cast[ptr QTableWidgetupdateEditorGeometriesProc](cast[pointer](slot))

  nimfunc[]()
proc QTableWidgetverticalScrollbarValueChanged*(self: gen_qtablewidget_types.QTableWidget, value: cint): void =
  fQTableWidget_virtualbase_verticalScrollbarValueChanged(self.h, value)

type QTableWidgetverticalScrollbarValueChangedProc* = proc(value: cint): void
proc onverticalScrollbarValueChanged*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetverticalScrollbarValueChangedProc) =
  # TODO check subclass
  var tmp = new QTableWidgetverticalScrollbarValueChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_verticalScrollbarValueChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_verticalScrollbarValueChanged(self: ptr cQTableWidget, slot: int, value: cint): void {.exportc: "miqt_exec_callback_QTableWidget_verticalScrollbarValueChanged ".} =
  var nimfunc = cast[ptr QTableWidgetverticalScrollbarValueChangedProc](cast[pointer](slot))
  let slotval1 = value


  nimfunc[](slotval1)
proc QTableWidgethorizontalScrollbarValueChanged*(self: gen_qtablewidget_types.QTableWidget, value: cint): void =
  fQTableWidget_virtualbase_horizontalScrollbarValueChanged(self.h, value)

type QTableWidgethorizontalScrollbarValueChangedProc* = proc(value: cint): void
proc onhorizontalScrollbarValueChanged*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgethorizontalScrollbarValueChangedProc) =
  # TODO check subclass
  var tmp = new QTableWidgethorizontalScrollbarValueChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_horizontalScrollbarValueChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_horizontalScrollbarValueChanged(self: ptr cQTableWidget, slot: int, value: cint): void {.exportc: "miqt_exec_callback_QTableWidget_horizontalScrollbarValueChanged ".} =
  var nimfunc = cast[ptr QTableWidgethorizontalScrollbarValueChangedProc](cast[pointer](slot))
  let slotval1 = value


  nimfunc[](slotval1)
proc QTableWidgetcloseEditor*(self: gen_qtablewidget_types.QTableWidget, editor: gen_qwidget_types.QWidget, hint: cint): void =
  fQTableWidget_virtualbase_closeEditor(self.h, editor.h, cint(hint))

type QTableWidgetcloseEditorProc* = proc(editor: gen_qwidget_types.QWidget, hint: cint): void
proc oncloseEditor*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetcloseEditorProc) =
  # TODO check subclass
  var tmp = new QTableWidgetcloseEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_closeEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_closeEditor(self: ptr cQTableWidget, slot: int, editor: pointer, hint: cint): void {.exportc: "miqt_exec_callback_QTableWidget_closeEditor ".} =
  var nimfunc = cast[ptr QTableWidgetcloseEditorProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: editor)

  let slotval2 = cint(hint)


  nimfunc[](slotval1, slotval2)
proc QTableWidgetcommitData*(self: gen_qtablewidget_types.QTableWidget, editor: gen_qwidget_types.QWidget): void =
  fQTableWidget_virtualbase_commitData(self.h, editor.h)

type QTableWidgetcommitDataProc* = proc(editor: gen_qwidget_types.QWidget): void
proc oncommitData*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetcommitDataProc) =
  # TODO check subclass
  var tmp = new QTableWidgetcommitDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_commitData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_commitData(self: ptr cQTableWidget, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_commitData ".} =
  var nimfunc = cast[ptr QTableWidgetcommitDataProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: editor)


  nimfunc[](slotval1)
proc QTableWidgeteditorDestroyed*(self: gen_qtablewidget_types.QTableWidget, editor: gen_qobject_types.QObject): void =
  fQTableWidget_virtualbase_editorDestroyed(self.h, editor.h)

type QTableWidgeteditorDestroyedProc* = proc(editor: gen_qobject_types.QObject): void
proc oneditorDestroyed*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgeteditorDestroyedProc) =
  # TODO check subclass
  var tmp = new QTableWidgeteditorDestroyedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_editorDestroyed(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_editorDestroyed(self: ptr cQTableWidget, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_editorDestroyed ".} =
  var nimfunc = cast[ptr QTableWidgeteditorDestroyedProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: editor)


  nimfunc[](slotval1)
proc QTableWidgetedit*(self: gen_qtablewidget_types.QTableWidget, index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool =
  fQTableWidget_virtualbase_edit2(self.h, index.h, cint(trigger), event.h)

type QTableWidgetedit2Proc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool
proc onedit*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetedit2Proc) =
  # TODO check subclass
  var tmp = new QTableWidgetedit2Proc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_edit2(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_edit2(self: ptr cQTableWidget, slot: int, index: pointer, trigger: cint, event: pointer): bool {.exportc: "miqt_exec_callback_QTableWidget_edit2 ".} =
  var nimfunc = cast[ptr QTableWidgetedit2Proc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = cint(trigger)

  let slotval3 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QTableWidgetselectionCommand*(self: gen_qtablewidget_types.QTableWidget, index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint =
  cint(fQTableWidget_virtualbase_selectionCommand(self.h, index.h, event.h))

type QTableWidgetselectionCommandProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint
proc onselectionCommand*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetselectionCommandProc) =
  # TODO check subclass
  var tmp = new QTableWidgetselectionCommandProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_selectionCommand(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_selectionCommand(self: ptr cQTableWidget, slot: int, index: pointer, event: pointer): cint {.exportc: "miqt_exec_callback_QTableWidget_selectionCommand ".} =
  var nimfunc = cast[ptr QTableWidgetselectionCommandProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  cint(virtualReturn)
proc QTableWidgetstartDrag*(self: gen_qtablewidget_types.QTableWidget, supportedActions: cint): void =
  fQTableWidget_virtualbase_startDrag(self.h, cint(supportedActions))

type QTableWidgetstartDragProc* = proc(supportedActions: cint): void
proc onstartDrag*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetstartDragProc) =
  # TODO check subclass
  var tmp = new QTableWidgetstartDragProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_startDrag(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_startDrag(self: ptr cQTableWidget, slot: int, supportedActions: cint): void {.exportc: "miqt_exec_callback_QTableWidget_startDrag ".} =
  var nimfunc = cast[ptr QTableWidgetstartDragProc](cast[pointer](slot))
  let slotval1 = cint(supportedActions)


  nimfunc[](slotval1)
proc QTableWidgetfocusNextPrevChild*(self: gen_qtablewidget_types.QTableWidget, next: bool): bool =
  fQTableWidget_virtualbase_focusNextPrevChild(self.h, next)

type QTableWidgetfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QTableWidgetfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_focusNextPrevChild(self: ptr cQTableWidget, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QTableWidget_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QTableWidgetfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTableWidgetviewportEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qcoreevent_types.QEvent): bool =
  fQTableWidget_virtualbase_viewportEvent(self.h, event.h)

type QTableWidgetviewportEventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onviewportEvent*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetviewportEventProc) =
  # TODO check subclass
  var tmp = new QTableWidgetviewportEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_viewportEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_viewportEvent(self: ptr cQTableWidget, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QTableWidget_viewportEvent ".} =
  var nimfunc = cast[ptr QTableWidgetviewportEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTableWidgetmousePressEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qevent_types.QMouseEvent): void =
  fQTableWidget_virtualbase_mousePressEvent(self.h, event.h)

type QTableWidgetmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetmousePressEventProc) =
  # TODO check subclass
  var tmp = new QTableWidgetmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_mousePressEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_mousePressEvent ".} =
  var nimfunc = cast[ptr QTableWidgetmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QTableWidgetmouseMoveEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qevent_types.QMouseEvent): void =
  fQTableWidget_virtualbase_mouseMoveEvent(self.h, event.h)

type QTableWidgetmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QTableWidgetmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_mouseMoveEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QTableWidgetmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QTableWidgetmouseReleaseEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qevent_types.QMouseEvent): void =
  fQTableWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

type QTableWidgetmouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QTableWidgetmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_mouseReleaseEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QTableWidgetmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QTableWidgetmouseDoubleClickEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qevent_types.QMouseEvent): void =
  fQTableWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QTableWidgetmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QTableWidgetmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_mouseDoubleClickEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QTableWidgetmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QTableWidgetdragEnterEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qevent_types.QDragEnterEvent): void =
  fQTableWidget_virtualbase_dragEnterEvent(self.h, event.h)

type QTableWidgetdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QTableWidgetdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_dragEnterEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_dragEnterEvent ".} =
  var nimfunc = cast[ptr QTableWidgetdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QTableWidgetdragMoveEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qevent_types.QDragMoveEvent): void =
  fQTableWidget_virtualbase_dragMoveEvent(self.h, event.h)

type QTableWidgetdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QTableWidgetdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_dragMoveEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_dragMoveEvent ".} =
  var nimfunc = cast[ptr QTableWidgetdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QTableWidgetdragLeaveEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qevent_types.QDragLeaveEvent): void =
  fQTableWidget_virtualbase_dragLeaveEvent(self.h, event.h)

type QTableWidgetdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QTableWidgetdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_dragLeaveEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QTableWidgetdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QTableWidgetfocusInEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qevent_types.QFocusEvent): void =
  fQTableWidget_virtualbase_focusInEvent(self.h, event.h)

type QTableWidgetfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetfocusInEventProc) =
  # TODO check subclass
  var tmp = new QTableWidgetfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_focusInEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_focusInEvent ".} =
  var nimfunc = cast[ptr QTableWidgetfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QTableWidgetfocusOutEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qevent_types.QFocusEvent): void =
  fQTableWidget_virtualbase_focusOutEvent(self.h, event.h)

type QTableWidgetfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QTableWidgetfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_focusOutEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_focusOutEvent ".} =
  var nimfunc = cast[ptr QTableWidgetfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QTableWidgetkeyPressEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qevent_types.QKeyEvent): void =
  fQTableWidget_virtualbase_keyPressEvent(self.h, event.h)

type QTableWidgetkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QTableWidgetkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_keyPressEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_keyPressEvent ".} =
  var nimfunc = cast[ptr QTableWidgetkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QTableWidgetresizeEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qevent_types.QResizeEvent): void =
  fQTableWidget_virtualbase_resizeEvent(self.h, event.h)

type QTableWidgetresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetresizeEventProc) =
  # TODO check subclass
  var tmp = new QTableWidgetresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_resizeEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_resizeEvent ".} =
  var nimfunc = cast[ptr QTableWidgetresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QTableWidgetinputMethodEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qevent_types.QInputMethodEvent): void =
  fQTableWidget_virtualbase_inputMethodEvent(self.h, event.h)

type QTableWidgetinputMethodEventProc* = proc(event: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QTableWidgetinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_inputMethodEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_inputMethodEvent ".} =
  var nimfunc = cast[ptr QTableWidgetinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)


  nimfunc[](slotval1)
proc QTableWidgeteventFilter*(self: gen_qtablewidget_types.QTableWidget, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQTableWidget_virtualbase_eventFilter(self.h, objectVal.h, event.h)

type QTableWidgeteventFilterProc* = proc(objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgeteventFilterProc) =
  # TODO check subclass
  var tmp = new QTableWidgeteventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_eventFilter(self: ptr cQTableWidget, slot: int, objectVal: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QTableWidget_eventFilter ".} =
  var nimfunc = cast[ptr QTableWidgeteventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: objectVal)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QTableWidgetminimumSizeHint*(self: gen_qtablewidget_types.QTableWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQTableWidget_virtualbase_minimumSizeHint(self.h))

type QTableWidgetminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QTableWidgetminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_minimumSizeHint(self: ptr cQTableWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QTableWidget_minimumSizeHint ".} =
  var nimfunc = cast[ptr QTableWidgetminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTableWidgetsizeHint*(self: gen_qtablewidget_types.QTableWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQTableWidget_virtualbase_sizeHint(self.h))

type QTableWidgetsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetsizeHintProc) =
  # TODO check subclass
  var tmp = new QTableWidgetsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_sizeHint(self: ptr cQTableWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QTableWidget_sizeHint ".} =
  var nimfunc = cast[ptr QTableWidgetsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTableWidgetsetupViewport*(self: gen_qtablewidget_types.QTableWidget, viewport: gen_qwidget_types.QWidget): void =
  fQTableWidget_virtualbase_setupViewport(self.h, viewport.h)

type QTableWidgetsetupViewportProc* = proc(viewport: gen_qwidget_types.QWidget): void
proc onsetupViewport*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetsetupViewportProc) =
  # TODO check subclass
  var tmp = new QTableWidgetsetupViewportProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_setupViewport(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_setupViewport(self: ptr cQTableWidget, slot: int, viewport: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_setupViewport ".} =
  var nimfunc = cast[ptr QTableWidgetsetupViewportProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: viewport)


  nimfunc[](slotval1)
proc QTableWidgetwheelEvent*(self: gen_qtablewidget_types.QTableWidget, param1: gen_qevent_types.QWheelEvent): void =
  fQTableWidget_virtualbase_wheelEvent(self.h, param1.h)

type QTableWidgetwheelEventProc* = proc(param1: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetwheelEventProc) =
  # TODO check subclass
  var tmp = new QTableWidgetwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_wheelEvent(self: ptr cQTableWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_wheelEvent ".} =
  var nimfunc = cast[ptr QTableWidgetwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1)


  nimfunc[](slotval1)
proc QTableWidgetcontextMenuEvent*(self: gen_qtablewidget_types.QTableWidget, param1: gen_qevent_types.QContextMenuEvent): void =
  fQTableWidget_virtualbase_contextMenuEvent(self.h, param1.h)

type QTableWidgetcontextMenuEventProc* = proc(param1: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QTableWidgetcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_contextMenuEvent(self: ptr cQTableWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_contextMenuEvent ".} =
  var nimfunc = cast[ptr QTableWidgetcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)


  nimfunc[](slotval1)
proc QTableWidgetchangeEvent*(self: gen_qtablewidget_types.QTableWidget, param1: gen_qcoreevent_types.QEvent): void =
  fQTableWidget_virtualbase_changeEvent(self.h, param1.h)

type QTableWidgetchangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetchangeEventProc) =
  # TODO check subclass
  var tmp = new QTableWidgetchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_changeEvent(self: ptr cQTableWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_changeEvent ".} =
  var nimfunc = cast[ptr QTableWidgetchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QTableWidgetdevType*(self: gen_qtablewidget_types.QTableWidget, ): cint =
  fQTableWidget_virtualbase_devType(self.h)

type QTableWidgetdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetdevTypeProc) =
  # TODO check subclass
  var tmp = new QTableWidgetdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_devType(self: ptr cQTableWidget, slot: int): cint {.exportc: "miqt_exec_callback_QTableWidget_devType ".} =
  var nimfunc = cast[ptr QTableWidgetdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTableWidgetsetVisible*(self: gen_qtablewidget_types.QTableWidget, visible: bool): void =
  fQTableWidget_virtualbase_setVisible(self.h, visible)

type QTableWidgetsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetsetVisibleProc) =
  # TODO check subclass
  var tmp = new QTableWidgetsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_setVisible(self: ptr cQTableWidget, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QTableWidget_setVisible ".} =
  var nimfunc = cast[ptr QTableWidgetsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QTableWidgetheightForWidth*(self: gen_qtablewidget_types.QTableWidget, param1: cint): cint =
  fQTableWidget_virtualbase_heightForWidth(self.h, param1)

type QTableWidgetheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetheightForWidthProc) =
  # TODO check subclass
  var tmp = new QTableWidgetheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_heightForWidth(self: ptr cQTableWidget, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QTableWidget_heightForWidth ".} =
  var nimfunc = cast[ptr QTableWidgetheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTableWidgethasHeightForWidth*(self: gen_qtablewidget_types.QTableWidget, ): bool =
  fQTableWidget_virtualbase_hasHeightForWidth(self.h)

type QTableWidgethasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgethasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QTableWidgethasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_hasHeightForWidth(self: ptr cQTableWidget, slot: int): bool {.exportc: "miqt_exec_callback_QTableWidget_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QTableWidgethasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTableWidgetpaintEngine*(self: gen_qtablewidget_types.QTableWidget, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQTableWidget_virtualbase_paintEngine(self.h))

type QTableWidgetpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetpaintEngineProc) =
  # TODO check subclass
  var tmp = new QTableWidgetpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_paintEngine(self: ptr cQTableWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QTableWidget_paintEngine ".} =
  var nimfunc = cast[ptr QTableWidgetpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTableWidgetkeyReleaseEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qevent_types.QKeyEvent): void =
  fQTableWidget_virtualbase_keyReleaseEvent(self.h, event.h)

type QTableWidgetkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QTableWidgetkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_keyReleaseEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QTableWidgetkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QTableWidgetenterEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qcoreevent_types.QEvent): void =
  fQTableWidget_virtualbase_enterEvent(self.h, event.h)

type QTableWidgetenterEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onenterEvent*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetenterEventProc) =
  # TODO check subclass
  var tmp = new QTableWidgetenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_enterEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_enterEvent ".} =
  var nimfunc = cast[ptr QTableWidgetenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QTableWidgetleaveEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qcoreevent_types.QEvent): void =
  fQTableWidget_virtualbase_leaveEvent(self.h, event.h)

type QTableWidgetleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetleaveEventProc) =
  # TODO check subclass
  var tmp = new QTableWidgetleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_leaveEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_leaveEvent ".} =
  var nimfunc = cast[ptr QTableWidgetleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QTableWidgetmoveEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qevent_types.QMoveEvent): void =
  fQTableWidget_virtualbase_moveEvent(self.h, event.h)

type QTableWidgetmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetmoveEventProc) =
  # TODO check subclass
  var tmp = new QTableWidgetmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_moveEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_moveEvent ".} =
  var nimfunc = cast[ptr QTableWidgetmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QTableWidgetcloseEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qevent_types.QCloseEvent): void =
  fQTableWidget_virtualbase_closeEvent(self.h, event.h)

type QTableWidgetcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetcloseEventProc) =
  # TODO check subclass
  var tmp = new QTableWidgetcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_closeEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_closeEvent ".} =
  var nimfunc = cast[ptr QTableWidgetcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QTableWidgettabletEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qevent_types.QTabletEvent): void =
  fQTableWidget_virtualbase_tabletEvent(self.h, event.h)

type QTableWidgettabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgettabletEventProc) =
  # TODO check subclass
  var tmp = new QTableWidgettabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_tabletEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_tabletEvent ".} =
  var nimfunc = cast[ptr QTableWidgettabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QTableWidgetactionEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qevent_types.QActionEvent): void =
  fQTableWidget_virtualbase_actionEvent(self.h, event.h)

type QTableWidgetactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetactionEventProc) =
  # TODO check subclass
  var tmp = new QTableWidgetactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_actionEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_actionEvent ".} =
  var nimfunc = cast[ptr QTableWidgetactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QTableWidgetshowEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qevent_types.QShowEvent): void =
  fQTableWidget_virtualbase_showEvent(self.h, event.h)

type QTableWidgetshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetshowEventProc) =
  # TODO check subclass
  var tmp = new QTableWidgetshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_showEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_showEvent ".} =
  var nimfunc = cast[ptr QTableWidgetshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QTableWidgethideEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qevent_types.QHideEvent): void =
  fQTableWidget_virtualbase_hideEvent(self.h, event.h)

type QTableWidgethideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgethideEventProc) =
  # TODO check subclass
  var tmp = new QTableWidgethideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_hideEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_hideEvent ".} =
  var nimfunc = cast[ptr QTableWidgethideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QTableWidgetnativeEvent*(self: gen_qtablewidget_types.QTableWidget, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fQTableWidget_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QTableWidgetnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetnativeEventProc) =
  # TODO check subclass
  var tmp = new QTableWidgetnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_nativeEvent(self: ptr cQTableWidget, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QTableWidget_nativeEvent ".} =
  var nimfunc = cast[ptr QTableWidgetnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QTableWidgetmetric*(self: gen_qtablewidget_types.QTableWidget, param1: cint): cint =
  fQTableWidget_virtualbase_metric(self.h, cint(param1))

type QTableWidgetmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetmetricProc) =
  # TODO check subclass
  var tmp = new QTableWidgetmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_metric(self: ptr cQTableWidget, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QTableWidget_metric ".} =
  var nimfunc = cast[ptr QTableWidgetmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTableWidgetinitPainter*(self: gen_qtablewidget_types.QTableWidget, painter: gen_qpainter_types.QPainter): void =
  fQTableWidget_virtualbase_initPainter(self.h, painter.h)

type QTableWidgetinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetinitPainterProc) =
  # TODO check subclass
  var tmp = new QTableWidgetinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_initPainter(self: ptr cQTableWidget, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_initPainter ".} =
  var nimfunc = cast[ptr QTableWidgetinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QTableWidgetredirected*(self: gen_qtablewidget_types.QTableWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQTableWidget_virtualbase_redirected(self.h, offset.h))

type QTableWidgetredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetredirectedProc) =
  # TODO check subclass
  var tmp = new QTableWidgetredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_redirected(self: ptr cQTableWidget, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QTableWidget_redirected ".} =
  var nimfunc = cast[ptr QTableWidgetredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QTableWidgetsharedPainter*(self: gen_qtablewidget_types.QTableWidget, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQTableWidget_virtualbase_sharedPainter(self.h))

type QTableWidgetsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetsharedPainterProc) =
  # TODO check subclass
  var tmp = new QTableWidgetsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_sharedPainter(self: ptr cQTableWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QTableWidget_sharedPainter ".} =
  var nimfunc = cast[ptr QTableWidgetsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTableWidgetchildEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qcoreevent_types.QChildEvent): void =
  fQTableWidget_virtualbase_childEvent(self.h, event.h)

type QTableWidgetchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetchildEventProc) =
  # TODO check subclass
  var tmp = new QTableWidgetchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_childEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_childEvent ".} =
  var nimfunc = cast[ptr QTableWidgetchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QTableWidgetcustomEvent*(self: gen_qtablewidget_types.QTableWidget, event: gen_qcoreevent_types.QEvent): void =
  fQTableWidget_virtualbase_customEvent(self.h, event.h)

type QTableWidgetcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetcustomEventProc) =
  # TODO check subclass
  var tmp = new QTableWidgetcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_customEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_customEvent ".} =
  var nimfunc = cast[ptr QTableWidgetcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QTableWidgetconnectNotify*(self: gen_qtablewidget_types.QTableWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQTableWidget_virtualbase_connectNotify(self.h, signal.h)

type QTableWidgetconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QTableWidgetconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_connectNotify(self: ptr cQTableWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_connectNotify ".} =
  var nimfunc = cast[ptr QTableWidgetconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QTableWidgetdisconnectNotify*(self: gen_qtablewidget_types.QTableWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQTableWidget_virtualbase_disconnectNotify(self.h, signal.h)

type QTableWidgetdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qtablewidget_types.QTableWidget, slot: QTableWidgetdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QTableWidgetdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_disconnectNotify(self: ptr cQTableWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_disconnectNotify ".} =
  var nimfunc = cast[ptr QTableWidgetdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qtablewidget_types.QTableWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTableWidget_staticMetaObject())
proc delete*(self: gen_qtablewidget_types.QTableWidget) =
  fcQTableWidget_delete(self.h)
