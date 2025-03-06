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
{.compile("gen_qlistwidget.cpp", cflags).}


type QListWidgetItemItemTypeEnum* = distinct cint
template Type*(_: type QListWidgetItemItemTypeEnum): untyped = 0
template UserType*(_: type QListWidgetItemItemTypeEnum): untyped = 1000


import ./gen_qlistwidget_types
export gen_qlistwidget_types

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
  ./gen_qlistview,
  ./gen_qstyleoption_types,
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
  gen_qlistview,
  gen_qstyleoption_types,
  gen_qwidget_types

type cQListWidgetItem*{.exportc: "QListWidgetItem", incompleteStruct.} = object
type cQListWidget*{.exportc: "QListWidget", incompleteStruct.} = object

proc fcQListWidgetItem_new(): ptr cQListWidgetItem {.importc: "QListWidgetItem_new".}
proc fcQListWidgetItem_new2(text: struct_miqt_string): ptr cQListWidgetItem {.importc: "QListWidgetItem_new2".}
proc fcQListWidgetItem_new3(icon: pointer, text: struct_miqt_string): ptr cQListWidgetItem {.importc: "QListWidgetItem_new3".}
proc fcQListWidgetItem_new4(other: pointer): ptr cQListWidgetItem {.importc: "QListWidgetItem_new4".}
proc fcQListWidgetItem_new5(listview: pointer): ptr cQListWidgetItem {.importc: "QListWidgetItem_new5".}
proc fcQListWidgetItem_new6(listview: pointer, typeVal: cint): ptr cQListWidgetItem {.importc: "QListWidgetItem_new6".}
proc fcQListWidgetItem_new7(text: struct_miqt_string, listview: pointer): ptr cQListWidgetItem {.importc: "QListWidgetItem_new7".}
proc fcQListWidgetItem_new8(text: struct_miqt_string, listview: pointer, typeVal: cint): ptr cQListWidgetItem {.importc: "QListWidgetItem_new8".}
proc fcQListWidgetItem_new9(icon: pointer, text: struct_miqt_string, listview: pointer): ptr cQListWidgetItem {.importc: "QListWidgetItem_new9".}
proc fcQListWidgetItem_new10(icon: pointer, text: struct_miqt_string, listview: pointer, typeVal: cint): ptr cQListWidgetItem {.importc: "QListWidgetItem_new10".}
proc fcQListWidgetItem_clone(self: pointer, ): pointer {.importc: "QListWidgetItem_clone".}
proc fcQListWidgetItem_listWidget(self: pointer, ): pointer {.importc: "QListWidgetItem_listWidget".}
proc fcQListWidgetItem_setSelected(self: pointer, select: bool): void {.importc: "QListWidgetItem_setSelected".}
proc fcQListWidgetItem_isSelected(self: pointer, ): bool {.importc: "QListWidgetItem_isSelected".}
proc fcQListWidgetItem_setHidden(self: pointer, hide: bool): void {.importc: "QListWidgetItem_setHidden".}
proc fcQListWidgetItem_isHidden(self: pointer, ): bool {.importc: "QListWidgetItem_isHidden".}
proc fcQListWidgetItem_flags(self: pointer, ): cint {.importc: "QListWidgetItem_flags".}
proc fcQListWidgetItem_setFlags(self: pointer, flags: cint): void {.importc: "QListWidgetItem_setFlags".}
proc fcQListWidgetItem_text(self: pointer, ): struct_miqt_string {.importc: "QListWidgetItem_text".}
proc fcQListWidgetItem_setText(self: pointer, text: struct_miqt_string): void {.importc: "QListWidgetItem_setText".}
proc fcQListWidgetItem_icon(self: pointer, ): pointer {.importc: "QListWidgetItem_icon".}
proc fcQListWidgetItem_setIcon(self: pointer, icon: pointer): void {.importc: "QListWidgetItem_setIcon".}
proc fcQListWidgetItem_statusTip(self: pointer, ): struct_miqt_string {.importc: "QListWidgetItem_statusTip".}
proc fcQListWidgetItem_setStatusTip(self: pointer, statusTip: struct_miqt_string): void {.importc: "QListWidgetItem_setStatusTip".}
proc fcQListWidgetItem_toolTip(self: pointer, ): struct_miqt_string {.importc: "QListWidgetItem_toolTip".}
proc fcQListWidgetItem_setToolTip(self: pointer, toolTip: struct_miqt_string): void {.importc: "QListWidgetItem_setToolTip".}
proc fcQListWidgetItem_whatsThis(self: pointer, ): struct_miqt_string {.importc: "QListWidgetItem_whatsThis".}
proc fcQListWidgetItem_setWhatsThis(self: pointer, whatsThis: struct_miqt_string): void {.importc: "QListWidgetItem_setWhatsThis".}
proc fcQListWidgetItem_font(self: pointer, ): pointer {.importc: "QListWidgetItem_font".}
proc fcQListWidgetItem_setFont(self: pointer, font: pointer): void {.importc: "QListWidgetItem_setFont".}
proc fcQListWidgetItem_textAlignment(self: pointer, ): cint {.importc: "QListWidgetItem_textAlignment".}
proc fcQListWidgetItem_setTextAlignment(self: pointer, alignment: cint): void {.importc: "QListWidgetItem_setTextAlignment".}
proc fcQListWidgetItem_setTextAlignmentWithAlignment(self: pointer, alignment: cint): void {.importc: "QListWidgetItem_setTextAlignmentWithAlignment".}
proc fcQListWidgetItem_setTextAlignment2(self: pointer, alignment: cint): void {.importc: "QListWidgetItem_setTextAlignment2".}
proc fcQListWidgetItem_background(self: pointer, ): pointer {.importc: "QListWidgetItem_background".}
proc fcQListWidgetItem_setBackground(self: pointer, brush: pointer): void {.importc: "QListWidgetItem_setBackground".}
proc fcQListWidgetItem_foreground(self: pointer, ): pointer {.importc: "QListWidgetItem_foreground".}
proc fcQListWidgetItem_setForeground(self: pointer, brush: pointer): void {.importc: "QListWidgetItem_setForeground".}
proc fcQListWidgetItem_checkState(self: pointer, ): cint {.importc: "QListWidgetItem_checkState".}
proc fcQListWidgetItem_setCheckState(self: pointer, state: cint): void {.importc: "QListWidgetItem_setCheckState".}
proc fcQListWidgetItem_sizeHint(self: pointer, ): pointer {.importc: "QListWidgetItem_sizeHint".}
proc fcQListWidgetItem_setSizeHint(self: pointer, size: pointer): void {.importc: "QListWidgetItem_setSizeHint".}
proc fcQListWidgetItem_data(self: pointer, role: cint): pointer {.importc: "QListWidgetItem_data".}
proc fcQListWidgetItem_setData(self: pointer, role: cint, value: pointer): void {.importc: "QListWidgetItem_setData".}
proc fcQListWidgetItem_operatorLesser(self: pointer, other: pointer): bool {.importc: "QListWidgetItem_operatorLesser".}
proc fcQListWidgetItem_read(self: pointer, inVal: pointer): void {.importc: "QListWidgetItem_read".}
proc fcQListWidgetItem_write(self: pointer, outVal: pointer): void {.importc: "QListWidgetItem_write".}
proc fcQListWidgetItem_operatorAssign(self: pointer, other: pointer): void {.importc: "QListWidgetItem_operatorAssign".}
proc fcQListWidgetItem_typeX(self: pointer, ): cint {.importc: "QListWidgetItem_type".}
proc fQListWidgetItem_virtualbase_clone(self: pointer, ): pointer{.importc: "QListWidgetItem_virtualbase_clone".}
proc fcQListWidgetItem_override_virtual_clone(self: pointer, slot: int) {.importc: "QListWidgetItem_override_virtual_clone".}
proc fQListWidgetItem_virtualbase_data(self: pointer, role: cint): pointer{.importc: "QListWidgetItem_virtualbase_data".}
proc fcQListWidgetItem_override_virtual_data(self: pointer, slot: int) {.importc: "QListWidgetItem_override_virtual_data".}
proc fQListWidgetItem_virtualbase_setData(self: pointer, role: cint, value: pointer): void{.importc: "QListWidgetItem_virtualbase_setData".}
proc fcQListWidgetItem_override_virtual_setData(self: pointer, slot: int) {.importc: "QListWidgetItem_override_virtual_setData".}
proc fQListWidgetItem_virtualbase_operatorLesser(self: pointer, other: pointer): bool{.importc: "QListWidgetItem_virtualbase_operatorLesser".}
proc fcQListWidgetItem_override_virtual_operatorLesser(self: pointer, slot: int) {.importc: "QListWidgetItem_override_virtual_operatorLesser".}
proc fQListWidgetItem_virtualbase_read(self: pointer, inVal: pointer): void{.importc: "QListWidgetItem_virtualbase_read".}
proc fcQListWidgetItem_override_virtual_read(self: pointer, slot: int) {.importc: "QListWidgetItem_override_virtual_read".}
proc fQListWidgetItem_virtualbase_write(self: pointer, outVal: pointer): void{.importc: "QListWidgetItem_virtualbase_write".}
proc fcQListWidgetItem_override_virtual_write(self: pointer, slot: int) {.importc: "QListWidgetItem_override_virtual_write".}
proc fcQListWidgetItem_delete(self: pointer) {.importc: "QListWidgetItem_delete".}
proc fcQListWidget_new(parent: pointer): ptr cQListWidget {.importc: "QListWidget_new".}
proc fcQListWidget_new2(): ptr cQListWidget {.importc: "QListWidget_new2".}
proc fcQListWidget_metaObject(self: pointer, ): pointer {.importc: "QListWidget_metaObject".}
proc fcQListWidget_metacast(self: pointer, param1: cstring): pointer {.importc: "QListWidget_metacast".}
proc fcQListWidget_tr(s: cstring): struct_miqt_string {.importc: "QListWidget_tr".}
proc fcQListWidget_setSelectionModel(self: pointer, selectionModel: pointer): void {.importc: "QListWidget_setSelectionModel".}
proc fcQListWidget_item(self: pointer, row: cint): pointer {.importc: "QListWidget_item".}
proc fcQListWidget_row(self: pointer, item: pointer): cint {.importc: "QListWidget_row".}
proc fcQListWidget_insertItem(self: pointer, row: cint, item: pointer): void {.importc: "QListWidget_insertItem".}
proc fcQListWidget_insertItem2(self: pointer, row: cint, label: struct_miqt_string): void {.importc: "QListWidget_insertItem2".}
proc fcQListWidget_insertItems(self: pointer, row: cint, labels: struct_miqt_array): void {.importc: "QListWidget_insertItems".}
proc fcQListWidget_addItem(self: pointer, label: struct_miqt_string): void {.importc: "QListWidget_addItem".}
proc fcQListWidget_addItemWithItem(self: pointer, item: pointer): void {.importc: "QListWidget_addItemWithItem".}
proc fcQListWidget_addItems(self: pointer, labels: struct_miqt_array): void {.importc: "QListWidget_addItems".}
proc fcQListWidget_takeItem(self: pointer, row: cint): pointer {.importc: "QListWidget_takeItem".}
proc fcQListWidget_count(self: pointer, ): cint {.importc: "QListWidget_count".}
proc fcQListWidget_currentItem(self: pointer, ): pointer {.importc: "QListWidget_currentItem".}
proc fcQListWidget_setCurrentItem(self: pointer, item: pointer): void {.importc: "QListWidget_setCurrentItem".}
proc fcQListWidget_setCurrentItem2(self: pointer, item: pointer, command: cint): void {.importc: "QListWidget_setCurrentItem2".}
proc fcQListWidget_currentRow(self: pointer, ): cint {.importc: "QListWidget_currentRow".}
proc fcQListWidget_setCurrentRow(self: pointer, row: cint): void {.importc: "QListWidget_setCurrentRow".}
proc fcQListWidget_setCurrentRow2(self: pointer, row: cint, command: cint): void {.importc: "QListWidget_setCurrentRow2".}
proc fcQListWidget_itemAt(self: pointer, p: pointer): pointer {.importc: "QListWidget_itemAt".}
proc fcQListWidget_itemAt2(self: pointer, x: cint, y: cint): pointer {.importc: "QListWidget_itemAt2".}
proc fcQListWidget_visualItemRect(self: pointer, item: pointer): pointer {.importc: "QListWidget_visualItemRect".}
proc fcQListWidget_sortItems(self: pointer, ): void {.importc: "QListWidget_sortItems".}
proc fcQListWidget_setSortingEnabled(self: pointer, enable: bool): void {.importc: "QListWidget_setSortingEnabled".}
proc fcQListWidget_isSortingEnabled(self: pointer, ): bool {.importc: "QListWidget_isSortingEnabled".}
proc fcQListWidget_editItem(self: pointer, item: pointer): void {.importc: "QListWidget_editItem".}
proc fcQListWidget_openPersistentEditor(self: pointer, item: pointer): void {.importc: "QListWidget_openPersistentEditor".}
proc fcQListWidget_closePersistentEditor(self: pointer, item: pointer): void {.importc: "QListWidget_closePersistentEditor".}
proc fcQListWidget_isPersistentEditorOpen(self: pointer, item: pointer): bool {.importc: "QListWidget_isPersistentEditorOpen".}
proc fcQListWidget_itemWidget(self: pointer, item: pointer): pointer {.importc: "QListWidget_itemWidget".}
proc fcQListWidget_setItemWidget(self: pointer, item: pointer, widget: pointer): void {.importc: "QListWidget_setItemWidget".}
proc fcQListWidget_removeItemWidget(self: pointer, item: pointer): void {.importc: "QListWidget_removeItemWidget".}
proc fcQListWidget_selectedItems(self: pointer, ): struct_miqt_array {.importc: "QListWidget_selectedItems".}
proc fcQListWidget_findItems(self: pointer, text: struct_miqt_string, flags: cint): struct_miqt_array {.importc: "QListWidget_findItems".}
proc fcQListWidget_items(self: pointer, data: pointer): struct_miqt_array {.importc: "QListWidget_items".}
proc fcQListWidget_indexFromItem(self: pointer, item: pointer): pointer {.importc: "QListWidget_indexFromItem".}
proc fcQListWidget_itemFromIndex(self: pointer, index: pointer): pointer {.importc: "QListWidget_itemFromIndex".}
proc fcQListWidget_scrollToItem(self: pointer, item: pointer): void {.importc: "QListWidget_scrollToItem".}
proc fcQListWidget_clear(self: pointer, ): void {.importc: "QListWidget_clear".}
proc fcQListWidget_itemPressed(self: pointer, item: pointer): void {.importc: "QListWidget_itemPressed".}
proc fcQListWidget_connect_itemPressed(self: pointer, slot: int) {.importc: "QListWidget_connect_itemPressed".}
proc fcQListWidget_itemClicked(self: pointer, item: pointer): void {.importc: "QListWidget_itemClicked".}
proc fcQListWidget_connect_itemClicked(self: pointer, slot: int) {.importc: "QListWidget_connect_itemClicked".}
proc fcQListWidget_itemDoubleClicked(self: pointer, item: pointer): void {.importc: "QListWidget_itemDoubleClicked".}
proc fcQListWidget_connect_itemDoubleClicked(self: pointer, slot: int) {.importc: "QListWidget_connect_itemDoubleClicked".}
proc fcQListWidget_itemActivated(self: pointer, item: pointer): void {.importc: "QListWidget_itemActivated".}
proc fcQListWidget_connect_itemActivated(self: pointer, slot: int) {.importc: "QListWidget_connect_itemActivated".}
proc fcQListWidget_itemEntered(self: pointer, item: pointer): void {.importc: "QListWidget_itemEntered".}
proc fcQListWidget_connect_itemEntered(self: pointer, slot: int) {.importc: "QListWidget_connect_itemEntered".}
proc fcQListWidget_itemChanged(self: pointer, item: pointer): void {.importc: "QListWidget_itemChanged".}
proc fcQListWidget_connect_itemChanged(self: pointer, slot: int) {.importc: "QListWidget_connect_itemChanged".}
proc fcQListWidget_currentItemChanged(self: pointer, current: pointer, previous: pointer): void {.importc: "QListWidget_currentItemChanged".}
proc fcQListWidget_connect_currentItemChanged(self: pointer, slot: int) {.importc: "QListWidget_connect_currentItemChanged".}
proc fcQListWidget_currentTextChanged(self: pointer, currentText: struct_miqt_string): void {.importc: "QListWidget_currentTextChanged".}
proc fcQListWidget_connect_currentTextChanged(self: pointer, slot: int) {.importc: "QListWidget_connect_currentTextChanged".}
proc fcQListWidget_currentRowChanged(self: pointer, currentRow: cint): void {.importc: "QListWidget_currentRowChanged".}
proc fcQListWidget_connect_currentRowChanged(self: pointer, slot: int) {.importc: "QListWidget_connect_currentRowChanged".}
proc fcQListWidget_itemSelectionChanged(self: pointer, ): void {.importc: "QListWidget_itemSelectionChanged".}
proc fcQListWidget_connect_itemSelectionChanged(self: pointer, slot: int) {.importc: "QListWidget_connect_itemSelectionChanged".}
proc fcQListWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QListWidget_tr2".}
proc fcQListWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QListWidget_tr3".}
proc fcQListWidget_sortItems1(self: pointer, order: cint): void {.importc: "QListWidget_sortItems1".}
proc fcQListWidget_scrollToItem2(self: pointer, item: pointer, hint: cint): void {.importc: "QListWidget_scrollToItem2".}
proc fQListWidget_virtualbase_setSelectionModel(self: pointer, selectionModel: pointer): void{.importc: "QListWidget_virtualbase_setSelectionModel".}
proc fcQListWidget_override_virtual_setSelectionModel(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_setSelectionModel".}
proc fQListWidget_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QListWidget_virtualbase_dropEvent".}
proc fcQListWidget_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_dropEvent".}
proc fQListWidget_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QListWidget_virtualbase_event".}
proc fcQListWidget_override_virtual_event(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_event".}
proc fQListWidget_virtualbase_mimeTypes(self: pointer, ): struct_miqt_array{.importc: "QListWidget_virtualbase_mimeTypes".}
proc fcQListWidget_override_virtual_mimeTypes(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_mimeTypes".}
proc fQListWidget_virtualbase_mimeData(self: pointer, items: struct_miqt_array): pointer{.importc: "QListWidget_virtualbase_mimeData".}
proc fcQListWidget_override_virtual_mimeData(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_mimeData".}
proc fQListWidget_virtualbase_dropMimeData(self: pointer, index: cint, data: pointer, action: cint): bool{.importc: "QListWidget_virtualbase_dropMimeData".}
proc fcQListWidget_override_virtual_dropMimeData(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_dropMimeData".}
proc fQListWidget_virtualbase_supportedDropActions(self: pointer, ): cint{.importc: "QListWidget_virtualbase_supportedDropActions".}
proc fcQListWidget_override_virtual_supportedDropActions(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_supportedDropActions".}
proc fQListWidget_virtualbase_visualRect(self: pointer, index: pointer): pointer{.importc: "QListWidget_virtualbase_visualRect".}
proc fcQListWidget_override_virtual_visualRect(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_visualRect".}
proc fQListWidget_virtualbase_scrollTo(self: pointer, index: pointer, hint: cint): void{.importc: "QListWidget_virtualbase_scrollTo".}
proc fcQListWidget_override_virtual_scrollTo(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_scrollTo".}
proc fQListWidget_virtualbase_indexAt(self: pointer, p: pointer): pointer{.importc: "QListWidget_virtualbase_indexAt".}
proc fcQListWidget_override_virtual_indexAt(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_indexAt".}
proc fQListWidget_virtualbase_doItemsLayout(self: pointer, ): void{.importc: "QListWidget_virtualbase_doItemsLayout".}
proc fcQListWidget_override_virtual_doItemsLayout(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_doItemsLayout".}
proc fQListWidget_virtualbase_reset(self: pointer, ): void{.importc: "QListWidget_virtualbase_reset".}
proc fcQListWidget_override_virtual_reset(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_reset".}
proc fQListWidget_virtualbase_setRootIndex(self: pointer, index: pointer): void{.importc: "QListWidget_virtualbase_setRootIndex".}
proc fcQListWidget_override_virtual_setRootIndex(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_setRootIndex".}
proc fQListWidget_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void{.importc: "QListWidget_virtualbase_scrollContentsBy".}
proc fcQListWidget_override_virtual_scrollContentsBy(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_scrollContentsBy".}
proc fQListWidget_virtualbase_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void{.importc: "QListWidget_virtualbase_dataChanged".}
proc fcQListWidget_override_virtual_dataChanged(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_dataChanged".}
proc fQListWidget_virtualbase_rowsInserted(self: pointer, parent: pointer, start: cint, endVal: cint): void{.importc: "QListWidget_virtualbase_rowsInserted".}
proc fcQListWidget_override_virtual_rowsInserted(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_rowsInserted".}
proc fQListWidget_virtualbase_rowsAboutToBeRemoved(self: pointer, parent: pointer, start: cint, endVal: cint): void{.importc: "QListWidget_virtualbase_rowsAboutToBeRemoved".}
proc fcQListWidget_override_virtual_rowsAboutToBeRemoved(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_rowsAboutToBeRemoved".}
proc fQListWidget_virtualbase_mouseMoveEvent(self: pointer, e: pointer): void{.importc: "QListWidget_virtualbase_mouseMoveEvent".}
proc fcQListWidget_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_mouseMoveEvent".}
proc fQListWidget_virtualbase_mouseReleaseEvent(self: pointer, e: pointer): void{.importc: "QListWidget_virtualbase_mouseReleaseEvent".}
proc fcQListWidget_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_mouseReleaseEvent".}
proc fQListWidget_virtualbase_wheelEvent(self: pointer, e: pointer): void{.importc: "QListWidget_virtualbase_wheelEvent".}
proc fcQListWidget_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_wheelEvent".}
proc fQListWidget_virtualbase_timerEvent(self: pointer, e: pointer): void{.importc: "QListWidget_virtualbase_timerEvent".}
proc fcQListWidget_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_timerEvent".}
proc fQListWidget_virtualbase_resizeEvent(self: pointer, e: pointer): void{.importc: "QListWidget_virtualbase_resizeEvent".}
proc fcQListWidget_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_resizeEvent".}
proc fQListWidget_virtualbase_dragMoveEvent(self: pointer, e: pointer): void{.importc: "QListWidget_virtualbase_dragMoveEvent".}
proc fcQListWidget_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_dragMoveEvent".}
proc fQListWidget_virtualbase_dragLeaveEvent(self: pointer, e: pointer): void{.importc: "QListWidget_virtualbase_dragLeaveEvent".}
proc fcQListWidget_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_dragLeaveEvent".}
proc fQListWidget_virtualbase_startDrag(self: pointer, supportedActions: cint): void{.importc: "QListWidget_virtualbase_startDrag".}
proc fcQListWidget_override_virtual_startDrag(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_startDrag".}
proc fQListWidget_virtualbase_initViewItemOption(self: pointer, option: pointer): void{.importc: "QListWidget_virtualbase_initViewItemOption".}
proc fcQListWidget_override_virtual_initViewItemOption(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_initViewItemOption".}
proc fQListWidget_virtualbase_paintEvent(self: pointer, e: pointer): void{.importc: "QListWidget_virtualbase_paintEvent".}
proc fcQListWidget_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_paintEvent".}
proc fQListWidget_virtualbase_horizontalOffset(self: pointer, ): cint{.importc: "QListWidget_virtualbase_horizontalOffset".}
proc fcQListWidget_override_virtual_horizontalOffset(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_horizontalOffset".}
proc fQListWidget_virtualbase_verticalOffset(self: pointer, ): cint{.importc: "QListWidget_virtualbase_verticalOffset".}
proc fcQListWidget_override_virtual_verticalOffset(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_verticalOffset".}
proc fQListWidget_virtualbase_moveCursor(self: pointer, cursorAction: cint, modifiers: cint): pointer{.importc: "QListWidget_virtualbase_moveCursor".}
proc fcQListWidget_override_virtual_moveCursor(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_moveCursor".}
proc fQListWidget_virtualbase_setSelection(self: pointer, rect: pointer, command: cint): void{.importc: "QListWidget_virtualbase_setSelection".}
proc fcQListWidget_override_virtual_setSelection(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_setSelection".}
proc fQListWidget_virtualbase_visualRegionForSelection(self: pointer, selection: pointer): pointer{.importc: "QListWidget_virtualbase_visualRegionForSelection".}
proc fcQListWidget_override_virtual_visualRegionForSelection(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_visualRegionForSelection".}
proc fQListWidget_virtualbase_selectedIndexes(self: pointer, ): struct_miqt_array{.importc: "QListWidget_virtualbase_selectedIndexes".}
proc fcQListWidget_override_virtual_selectedIndexes(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_selectedIndexes".}
proc fQListWidget_virtualbase_updateGeometries(self: pointer, ): void{.importc: "QListWidget_virtualbase_updateGeometries".}
proc fcQListWidget_override_virtual_updateGeometries(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_updateGeometries".}
proc fQListWidget_virtualbase_isIndexHidden(self: pointer, index: pointer): bool{.importc: "QListWidget_virtualbase_isIndexHidden".}
proc fcQListWidget_override_virtual_isIndexHidden(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_isIndexHidden".}
proc fQListWidget_virtualbase_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void{.importc: "QListWidget_virtualbase_selectionChanged".}
proc fcQListWidget_override_virtual_selectionChanged(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_selectionChanged".}
proc fQListWidget_virtualbase_currentChanged(self: pointer, current: pointer, previous: pointer): void{.importc: "QListWidget_virtualbase_currentChanged".}
proc fcQListWidget_override_virtual_currentChanged(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_currentChanged".}
proc fQListWidget_virtualbase_viewportSizeHint(self: pointer, ): pointer{.importc: "QListWidget_virtualbase_viewportSizeHint".}
proc fcQListWidget_override_virtual_viewportSizeHint(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_viewportSizeHint".}
proc fQListWidget_virtualbase_keyboardSearch(self: pointer, search: struct_miqt_string): void{.importc: "QListWidget_virtualbase_keyboardSearch".}
proc fcQListWidget_override_virtual_keyboardSearch(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_keyboardSearch".}
proc fQListWidget_virtualbase_sizeHintForRow(self: pointer, row: cint): cint{.importc: "QListWidget_virtualbase_sizeHintForRow".}
proc fcQListWidget_override_virtual_sizeHintForRow(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_sizeHintForRow".}
proc fQListWidget_virtualbase_sizeHintForColumn(self: pointer, column: cint): cint{.importc: "QListWidget_virtualbase_sizeHintForColumn".}
proc fcQListWidget_override_virtual_sizeHintForColumn(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_sizeHintForColumn".}
proc fQListWidget_virtualbase_itemDelegateForIndex(self: pointer, index: pointer): pointer{.importc: "QListWidget_virtualbase_itemDelegateForIndex".}
proc fcQListWidget_override_virtual_itemDelegateForIndex(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_itemDelegateForIndex".}
proc fQListWidget_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QListWidget_virtualbase_inputMethodQuery".}
proc fcQListWidget_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_inputMethodQuery".}
proc fQListWidget_virtualbase_selectAll(self: pointer, ): void{.importc: "QListWidget_virtualbase_selectAll".}
proc fcQListWidget_override_virtual_selectAll(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_selectAll".}
proc fQListWidget_virtualbase_updateEditorData(self: pointer, ): void{.importc: "QListWidget_virtualbase_updateEditorData".}
proc fcQListWidget_override_virtual_updateEditorData(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_updateEditorData".}
proc fQListWidget_virtualbase_updateEditorGeometries(self: pointer, ): void{.importc: "QListWidget_virtualbase_updateEditorGeometries".}
proc fcQListWidget_override_virtual_updateEditorGeometries(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_updateEditorGeometries".}
proc fQListWidget_virtualbase_verticalScrollbarAction(self: pointer, action: cint): void{.importc: "QListWidget_virtualbase_verticalScrollbarAction".}
proc fcQListWidget_override_virtual_verticalScrollbarAction(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_verticalScrollbarAction".}
proc fQListWidget_virtualbase_horizontalScrollbarAction(self: pointer, action: cint): void{.importc: "QListWidget_virtualbase_horizontalScrollbarAction".}
proc fcQListWidget_override_virtual_horizontalScrollbarAction(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_horizontalScrollbarAction".}
proc fQListWidget_virtualbase_verticalScrollbarValueChanged(self: pointer, value: cint): void{.importc: "QListWidget_virtualbase_verticalScrollbarValueChanged".}
proc fcQListWidget_override_virtual_verticalScrollbarValueChanged(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_verticalScrollbarValueChanged".}
proc fQListWidget_virtualbase_horizontalScrollbarValueChanged(self: pointer, value: cint): void{.importc: "QListWidget_virtualbase_horizontalScrollbarValueChanged".}
proc fcQListWidget_override_virtual_horizontalScrollbarValueChanged(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_horizontalScrollbarValueChanged".}
proc fQListWidget_virtualbase_closeEditor(self: pointer, editor: pointer, hint: cint): void{.importc: "QListWidget_virtualbase_closeEditor".}
proc fcQListWidget_override_virtual_closeEditor(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_closeEditor".}
proc fQListWidget_virtualbase_commitData(self: pointer, editor: pointer): void{.importc: "QListWidget_virtualbase_commitData".}
proc fcQListWidget_override_virtual_commitData(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_commitData".}
proc fQListWidget_virtualbase_editorDestroyed(self: pointer, editor: pointer): void{.importc: "QListWidget_virtualbase_editorDestroyed".}
proc fcQListWidget_override_virtual_editorDestroyed(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_editorDestroyed".}
proc fQListWidget_virtualbase_edit2(self: pointer, index: pointer, trigger: cint, event: pointer): bool{.importc: "QListWidget_virtualbase_edit2".}
proc fcQListWidget_override_virtual_edit2(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_edit2".}
proc fQListWidget_virtualbase_selectionCommand(self: pointer, index: pointer, event: pointer): cint{.importc: "QListWidget_virtualbase_selectionCommand".}
proc fcQListWidget_override_virtual_selectionCommand(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_selectionCommand".}
proc fQListWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QListWidget_virtualbase_focusNextPrevChild".}
proc fcQListWidget_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_focusNextPrevChild".}
proc fQListWidget_virtualbase_viewportEvent(self: pointer, event: pointer): bool{.importc: "QListWidget_virtualbase_viewportEvent".}
proc fcQListWidget_override_virtual_viewportEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_viewportEvent".}
proc fQListWidget_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QListWidget_virtualbase_mousePressEvent".}
proc fcQListWidget_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_mousePressEvent".}
proc fQListWidget_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QListWidget_virtualbase_mouseDoubleClickEvent".}
proc fcQListWidget_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_mouseDoubleClickEvent".}
proc fQListWidget_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QListWidget_virtualbase_dragEnterEvent".}
proc fcQListWidget_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_dragEnterEvent".}
proc fQListWidget_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QListWidget_virtualbase_focusInEvent".}
proc fcQListWidget_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_focusInEvent".}
proc fQListWidget_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QListWidget_virtualbase_focusOutEvent".}
proc fcQListWidget_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_focusOutEvent".}
proc fQListWidget_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QListWidget_virtualbase_keyPressEvent".}
proc fcQListWidget_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_keyPressEvent".}
proc fQListWidget_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QListWidget_virtualbase_inputMethodEvent".}
proc fcQListWidget_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_inputMethodEvent".}
proc fQListWidget_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool{.importc: "QListWidget_virtualbase_eventFilter".}
proc fcQListWidget_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_eventFilter".}
proc fQListWidget_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QListWidget_virtualbase_minimumSizeHint".}
proc fcQListWidget_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_minimumSizeHint".}
proc fQListWidget_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QListWidget_virtualbase_sizeHint".}
proc fcQListWidget_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_sizeHint".}
proc fQListWidget_virtualbase_setupViewport(self: pointer, viewport: pointer): void{.importc: "QListWidget_virtualbase_setupViewport".}
proc fcQListWidget_override_virtual_setupViewport(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_setupViewport".}
proc fQListWidget_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QListWidget_virtualbase_contextMenuEvent".}
proc fcQListWidget_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_contextMenuEvent".}
proc fQListWidget_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QListWidget_virtualbase_changeEvent".}
proc fcQListWidget_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_changeEvent".}
proc fQListWidget_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QListWidget_virtualbase_initStyleOption".}
proc fcQListWidget_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_initStyleOption".}
proc fQListWidget_virtualbase_devType(self: pointer, ): cint{.importc: "QListWidget_virtualbase_devType".}
proc fcQListWidget_override_virtual_devType(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_devType".}
proc fQListWidget_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QListWidget_virtualbase_setVisible".}
proc fcQListWidget_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_setVisible".}
proc fQListWidget_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QListWidget_virtualbase_heightForWidth".}
proc fcQListWidget_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_heightForWidth".}
proc fQListWidget_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QListWidget_virtualbase_hasHeightForWidth".}
proc fcQListWidget_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_hasHeightForWidth".}
proc fQListWidget_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QListWidget_virtualbase_paintEngine".}
proc fcQListWidget_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_paintEngine".}
proc fQListWidget_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QListWidget_virtualbase_keyReleaseEvent".}
proc fcQListWidget_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_keyReleaseEvent".}
proc fQListWidget_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QListWidget_virtualbase_enterEvent".}
proc fcQListWidget_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_enterEvent".}
proc fQListWidget_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QListWidget_virtualbase_leaveEvent".}
proc fcQListWidget_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_leaveEvent".}
proc fQListWidget_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QListWidget_virtualbase_moveEvent".}
proc fcQListWidget_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_moveEvent".}
proc fQListWidget_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QListWidget_virtualbase_closeEvent".}
proc fcQListWidget_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_closeEvent".}
proc fQListWidget_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QListWidget_virtualbase_tabletEvent".}
proc fcQListWidget_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_tabletEvent".}
proc fQListWidget_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QListWidget_virtualbase_actionEvent".}
proc fcQListWidget_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_actionEvent".}
proc fQListWidget_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QListWidget_virtualbase_showEvent".}
proc fcQListWidget_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_showEvent".}
proc fQListWidget_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QListWidget_virtualbase_hideEvent".}
proc fcQListWidget_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_hideEvent".}
proc fQListWidget_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QListWidget_virtualbase_nativeEvent".}
proc fcQListWidget_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_nativeEvent".}
proc fQListWidget_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QListWidget_virtualbase_metric".}
proc fcQListWidget_override_virtual_metric(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_metric".}
proc fQListWidget_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QListWidget_virtualbase_initPainter".}
proc fcQListWidget_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_initPainter".}
proc fQListWidget_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QListWidget_virtualbase_redirected".}
proc fcQListWidget_override_virtual_redirected(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_redirected".}
proc fQListWidget_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QListWidget_virtualbase_sharedPainter".}
proc fcQListWidget_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_sharedPainter".}
proc fQListWidget_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QListWidget_virtualbase_childEvent".}
proc fcQListWidget_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_childEvent".}
proc fQListWidget_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QListWidget_virtualbase_customEvent".}
proc fcQListWidget_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_customEvent".}
proc fQListWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QListWidget_virtualbase_connectNotify".}
proc fcQListWidget_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_connectNotify".}
proc fQListWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QListWidget_virtualbase_disconnectNotify".}
proc fcQListWidget_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_disconnectNotify".}
proc fcQListWidget_delete(self: pointer) {.importc: "QListWidget_delete".}


func init*(T: type gen_qlistwidget_types.QListWidgetItem, h: ptr cQListWidgetItem): gen_qlistwidget_types.QListWidgetItem =
  T(h: h)
proc create*(T: type gen_qlistwidget_types.QListWidgetItem, ): gen_qlistwidget_types.QListWidgetItem =
  gen_qlistwidget_types.QListWidgetItem.init(fcQListWidgetItem_new())

proc create*(T: type gen_qlistwidget_types.QListWidgetItem, text: string): gen_qlistwidget_types.QListWidgetItem =
  gen_qlistwidget_types.QListWidgetItem.init(fcQListWidgetItem_new2(struct_miqt_string(data: text, len: csize_t(len(text)))))

proc create*(T: type gen_qlistwidget_types.QListWidgetItem, icon: gen_qicon_types.QIcon, text: string): gen_qlistwidget_types.QListWidgetItem =
  gen_qlistwidget_types.QListWidgetItem.init(fcQListWidgetItem_new3(icon.h, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc create*(T: type gen_qlistwidget_types.QListWidgetItem, other: gen_qlistwidget_types.QListWidgetItem): gen_qlistwidget_types.QListWidgetItem =
  gen_qlistwidget_types.QListWidgetItem.init(fcQListWidgetItem_new4(other.h))

proc create*(T: type gen_qlistwidget_types.QListWidgetItem, listview: gen_qlistwidget_types.QListWidget): gen_qlistwidget_types.QListWidgetItem =
  gen_qlistwidget_types.QListWidgetItem.init(fcQListWidgetItem_new5(listview.h))

proc create*(T: type gen_qlistwidget_types.QListWidgetItem, listview: gen_qlistwidget_types.QListWidget, typeVal: cint): gen_qlistwidget_types.QListWidgetItem =
  gen_qlistwidget_types.QListWidgetItem.init(fcQListWidgetItem_new6(listview.h, typeVal))

proc create*(T: type gen_qlistwidget_types.QListWidgetItem, text: string, listview: gen_qlistwidget_types.QListWidget): gen_qlistwidget_types.QListWidgetItem =
  gen_qlistwidget_types.QListWidgetItem.init(fcQListWidgetItem_new7(struct_miqt_string(data: text, len: csize_t(len(text))), listview.h))

proc create*(T: type gen_qlistwidget_types.QListWidgetItem, text: string, listview: gen_qlistwidget_types.QListWidget, typeVal: cint): gen_qlistwidget_types.QListWidgetItem =
  gen_qlistwidget_types.QListWidgetItem.init(fcQListWidgetItem_new8(struct_miqt_string(data: text, len: csize_t(len(text))), listview.h, typeVal))

proc create*(T: type gen_qlistwidget_types.QListWidgetItem, icon: gen_qicon_types.QIcon, text: string, listview: gen_qlistwidget_types.QListWidget): gen_qlistwidget_types.QListWidgetItem =
  gen_qlistwidget_types.QListWidgetItem.init(fcQListWidgetItem_new9(icon.h, struct_miqt_string(data: text, len: csize_t(len(text))), listview.h))

proc create*(T: type gen_qlistwidget_types.QListWidgetItem, icon: gen_qicon_types.QIcon, text: string, listview: gen_qlistwidget_types.QListWidget, typeVal: cint): gen_qlistwidget_types.QListWidgetItem =
  gen_qlistwidget_types.QListWidgetItem.init(fcQListWidgetItem_new10(icon.h, struct_miqt_string(data: text, len: csize_t(len(text))), listview.h, typeVal))

proc clone*(self: gen_qlistwidget_types.QListWidgetItem, ): gen_qlistwidget_types.QListWidgetItem =
  gen_qlistwidget_types.QListWidgetItem(h: fcQListWidgetItem_clone(self.h))

proc listWidget*(self: gen_qlistwidget_types.QListWidgetItem, ): gen_qlistwidget_types.QListWidget =
  gen_qlistwidget_types.QListWidget(h: fcQListWidgetItem_listWidget(self.h))

proc setSelected*(self: gen_qlistwidget_types.QListWidgetItem, select: bool): void =
  fcQListWidgetItem_setSelected(self.h, select)

proc isSelected*(self: gen_qlistwidget_types.QListWidgetItem, ): bool =
  fcQListWidgetItem_isSelected(self.h)

proc setHidden*(self: gen_qlistwidget_types.QListWidgetItem, hide: bool): void =
  fcQListWidgetItem_setHidden(self.h, hide)

proc isHidden*(self: gen_qlistwidget_types.QListWidgetItem, ): bool =
  fcQListWidgetItem_isHidden(self.h)

proc flags*(self: gen_qlistwidget_types.QListWidgetItem, ): cint =
  cint(fcQListWidgetItem_flags(self.h))

proc setFlags*(self: gen_qlistwidget_types.QListWidgetItem, flags: cint): void =
  fcQListWidgetItem_setFlags(self.h, cint(flags))

proc text*(self: gen_qlistwidget_types.QListWidgetItem, ): string =
  let v_ms = fcQListWidgetItem_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setText*(self: gen_qlistwidget_types.QListWidgetItem, text: string): void =
  fcQListWidgetItem_setText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc icon*(self: gen_qlistwidget_types.QListWidgetItem, ): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQListWidgetItem_icon(self.h))

proc setIcon*(self: gen_qlistwidget_types.QListWidgetItem, icon: gen_qicon_types.QIcon): void =
  fcQListWidgetItem_setIcon(self.h, icon.h)

proc statusTip*(self: gen_qlistwidget_types.QListWidgetItem, ): string =
  let v_ms = fcQListWidgetItem_statusTip(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setStatusTip*(self: gen_qlistwidget_types.QListWidgetItem, statusTip: string): void =
  fcQListWidgetItem_setStatusTip(self.h, struct_miqt_string(data: statusTip, len: csize_t(len(statusTip))))

proc toolTip*(self: gen_qlistwidget_types.QListWidgetItem, ): string =
  let v_ms = fcQListWidgetItem_toolTip(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setToolTip*(self: gen_qlistwidget_types.QListWidgetItem, toolTip: string): void =
  fcQListWidgetItem_setToolTip(self.h, struct_miqt_string(data: toolTip, len: csize_t(len(toolTip))))

proc whatsThis*(self: gen_qlistwidget_types.QListWidgetItem, ): string =
  let v_ms = fcQListWidgetItem_whatsThis(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setWhatsThis*(self: gen_qlistwidget_types.QListWidgetItem, whatsThis: string): void =
  fcQListWidgetItem_setWhatsThis(self.h, struct_miqt_string(data: whatsThis, len: csize_t(len(whatsThis))))

proc font*(self: gen_qlistwidget_types.QListWidgetItem, ): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQListWidgetItem_font(self.h))

proc setFont*(self: gen_qlistwidget_types.QListWidgetItem, font: gen_qfont_types.QFont): void =
  fcQListWidgetItem_setFont(self.h, font.h)

proc textAlignment*(self: gen_qlistwidget_types.QListWidgetItem, ): cint =
  fcQListWidgetItem_textAlignment(self.h)

proc setTextAlignment*(self: gen_qlistwidget_types.QListWidgetItem, alignment: cint): void =
  fcQListWidgetItem_setTextAlignment(self.h, alignment)

proc setTextAlignment2*(self: gen_qlistwidget_types.QListWidgetItem, alignment: cint): void =
  fcQListWidgetItem_setTextAlignmentWithAlignment(self.h, cint(alignment))

proc setTextAlignment3*(self: gen_qlistwidget_types.QListWidgetItem, alignment: cint): void =
  fcQListWidgetItem_setTextAlignment2(self.h, cint(alignment))

proc background*(self: gen_qlistwidget_types.QListWidgetItem, ): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQListWidgetItem_background(self.h))

proc setBackground*(self: gen_qlistwidget_types.QListWidgetItem, brush: gen_qbrush_types.QBrush): void =
  fcQListWidgetItem_setBackground(self.h, brush.h)

proc foreground*(self: gen_qlistwidget_types.QListWidgetItem, ): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQListWidgetItem_foreground(self.h))

proc setForeground*(self: gen_qlistwidget_types.QListWidgetItem, brush: gen_qbrush_types.QBrush): void =
  fcQListWidgetItem_setForeground(self.h, brush.h)

proc checkState*(self: gen_qlistwidget_types.QListWidgetItem, ): cint =
  cint(fcQListWidgetItem_checkState(self.h))

proc setCheckState*(self: gen_qlistwidget_types.QListWidgetItem, state: cint): void =
  fcQListWidgetItem_setCheckState(self.h, cint(state))

proc sizeHint*(self: gen_qlistwidget_types.QListWidgetItem, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQListWidgetItem_sizeHint(self.h))

proc setSizeHint*(self: gen_qlistwidget_types.QListWidgetItem, size: gen_qsize_types.QSize): void =
  fcQListWidgetItem_setSizeHint(self.h, size.h)

proc data*(self: gen_qlistwidget_types.QListWidgetItem, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQListWidgetItem_data(self.h, role))

proc setData*(self: gen_qlistwidget_types.QListWidgetItem, role: cint, value: gen_qvariant_types.QVariant): void =
  fcQListWidgetItem_setData(self.h, role, value.h)

proc operatorLesser*(self: gen_qlistwidget_types.QListWidgetItem, other: gen_qlistwidget_types.QListWidgetItem): bool =
  fcQListWidgetItem_operatorLesser(self.h, other.h)

proc read*(self: gen_qlistwidget_types.QListWidgetItem, inVal: gen_qdatastream_types.QDataStream): void =
  fcQListWidgetItem_read(self.h, inVal.h)

proc write*(self: gen_qlistwidget_types.QListWidgetItem, outVal: gen_qdatastream_types.QDataStream): void =
  fcQListWidgetItem_write(self.h, outVal.h)

proc operatorAssign*(self: gen_qlistwidget_types.QListWidgetItem, other: gen_qlistwidget_types.QListWidgetItem): void =
  fcQListWidgetItem_operatorAssign(self.h, other.h)

proc typeX*(self: gen_qlistwidget_types.QListWidgetItem, ): cint =
  fcQListWidgetItem_typeX(self.h)

proc QListWidgetItemclone*(self: gen_qlistwidget_types.QListWidgetItem, ): gen_qlistwidget_types.QListWidgetItem =
  gen_qlistwidget_types.QListWidgetItem(h: fQListWidgetItem_virtualbase_clone(self.h))

type QListWidgetItemcloneProc* = proc(): gen_qlistwidget_types.QListWidgetItem
proc onclone*(self: gen_qlistwidget_types.QListWidgetItem, slot: QListWidgetItemcloneProc) =
  # TODO check subclass
  var tmp = new QListWidgetItemcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidgetItem_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidgetItem_clone(self: ptr cQListWidgetItem, slot: int): pointer {.exportc: "miqt_exec_callback_QListWidgetItem_clone ".} =
  var nimfunc = cast[ptr QListWidgetItemcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QListWidgetItemdata*(self: gen_qlistwidget_types.QListWidgetItem, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQListWidgetItem_virtualbase_data(self.h, role))

type QListWidgetItemdataProc* = proc(role: cint): gen_qvariant_types.QVariant
proc ondata*(self: gen_qlistwidget_types.QListWidgetItem, slot: QListWidgetItemdataProc) =
  # TODO check subclass
  var tmp = new QListWidgetItemdataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidgetItem_override_virtual_data(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidgetItem_data(self: ptr cQListWidgetItem, slot: int, role: cint): pointer {.exportc: "miqt_exec_callback_QListWidgetItem_data ".} =
  var nimfunc = cast[ptr QListWidgetItemdataProc](cast[pointer](slot))
  let slotval1 = role


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QListWidgetItemsetData*(self: gen_qlistwidget_types.QListWidgetItem, role: cint, value: gen_qvariant_types.QVariant): void =
  fQListWidgetItem_virtualbase_setData(self.h, role, value.h)

type QListWidgetItemsetDataProc* = proc(role: cint, value: gen_qvariant_types.QVariant): void
proc onsetData*(self: gen_qlistwidget_types.QListWidgetItem, slot: QListWidgetItemsetDataProc) =
  # TODO check subclass
  var tmp = new QListWidgetItemsetDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidgetItem_override_virtual_setData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidgetItem_setData(self: ptr cQListWidgetItem, slot: int, role: cint, value: pointer): void {.exportc: "miqt_exec_callback_QListWidgetItem_setData ".} =
  var nimfunc = cast[ptr QListWidgetItemsetDataProc](cast[pointer](slot))
  let slotval1 = role

  let slotval2 = gen_qvariant_types.QVariant(h: value)


  nimfunc[](slotval1, slotval2)
proc QListWidgetItemoperatorLesser*(self: gen_qlistwidget_types.QListWidgetItem, other: gen_qlistwidget_types.QListWidgetItem): bool =
  fQListWidgetItem_virtualbase_operatorLesser(self.h, other.h)

type QListWidgetItemoperatorLesserProc* = proc(other: gen_qlistwidget_types.QListWidgetItem): bool
proc onoperatorLesser*(self: gen_qlistwidget_types.QListWidgetItem, slot: QListWidgetItemoperatorLesserProc) =
  # TODO check subclass
  var tmp = new QListWidgetItemoperatorLesserProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidgetItem_override_virtual_operatorLesser(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidgetItem_operatorLesser(self: ptr cQListWidgetItem, slot: int, other: pointer): bool {.exportc: "miqt_exec_callback_QListWidgetItem_operatorLesser ".} =
  var nimfunc = cast[ptr QListWidgetItemoperatorLesserProc](cast[pointer](slot))
  let slotval1 = gen_qlistwidget_types.QListWidgetItem(h: other)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QListWidgetItemread*(self: gen_qlistwidget_types.QListWidgetItem, inVal: gen_qdatastream_types.QDataStream): void =
  fQListWidgetItem_virtualbase_read(self.h, inVal.h)

type QListWidgetItemreadProc* = proc(inVal: gen_qdatastream_types.QDataStream): void
proc onread*(self: gen_qlistwidget_types.QListWidgetItem, slot: QListWidgetItemreadProc) =
  # TODO check subclass
  var tmp = new QListWidgetItemreadProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidgetItem_override_virtual_read(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidgetItem_read(self: ptr cQListWidgetItem, slot: int, inVal: pointer): void {.exportc: "miqt_exec_callback_QListWidgetItem_read ".} =
  var nimfunc = cast[ptr QListWidgetItemreadProc](cast[pointer](slot))
  let slotval1 = gen_qdatastream_types.QDataStream(h: inVal)


  nimfunc[](slotval1)
proc QListWidgetItemwrite*(self: gen_qlistwidget_types.QListWidgetItem, outVal: gen_qdatastream_types.QDataStream): void =
  fQListWidgetItem_virtualbase_write(self.h, outVal.h)

type QListWidgetItemwriteProc* = proc(outVal: gen_qdatastream_types.QDataStream): void
proc onwrite*(self: gen_qlistwidget_types.QListWidgetItem, slot: QListWidgetItemwriteProc) =
  # TODO check subclass
  var tmp = new QListWidgetItemwriteProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidgetItem_override_virtual_write(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidgetItem_write(self: ptr cQListWidgetItem, slot: int, outVal: pointer): void {.exportc: "miqt_exec_callback_QListWidgetItem_write ".} =
  var nimfunc = cast[ptr QListWidgetItemwriteProc](cast[pointer](slot))
  let slotval1 = gen_qdatastream_types.QDataStream(h: outVal)


  nimfunc[](slotval1)
proc delete*(self: gen_qlistwidget_types.QListWidgetItem) =
  fcQListWidgetItem_delete(self.h)

func init*(T: type gen_qlistwidget_types.QListWidget, h: ptr cQListWidget): gen_qlistwidget_types.QListWidget =
  T(h: h)
proc create*(T: type gen_qlistwidget_types.QListWidget, parent: gen_qwidget_types.QWidget): gen_qlistwidget_types.QListWidget =
  gen_qlistwidget_types.QListWidget.init(fcQListWidget_new(parent.h))

proc create*(T: type gen_qlistwidget_types.QListWidget, ): gen_qlistwidget_types.QListWidget =
  gen_qlistwidget_types.QListWidget.init(fcQListWidget_new2())

proc metaObject*(self: gen_qlistwidget_types.QListWidget, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQListWidget_metaObject(self.h))

proc metacast*(self: gen_qlistwidget_types.QListWidget, param1: cstring): pointer =
  fcQListWidget_metacast(self.h, param1)

proc tr*(_: type gen_qlistwidget_types.QListWidget, s: cstring): string =
  let v_ms = fcQListWidget_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSelectionModel*(self: gen_qlistwidget_types.QListWidget, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void =
  fcQListWidget_setSelectionModel(self.h, selectionModel.h)

proc item*(self: gen_qlistwidget_types.QListWidget, row: cint): gen_qlistwidget_types.QListWidgetItem =
  gen_qlistwidget_types.QListWidgetItem(h: fcQListWidget_item(self.h, row))

proc row*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem): cint =
  fcQListWidget_row(self.h, item.h)

proc insertItem*(self: gen_qlistwidget_types.QListWidget, row: cint, item: gen_qlistwidget_types.QListWidgetItem): void =
  fcQListWidget_insertItem(self.h, row, item.h)

proc insertItem*(self: gen_qlistwidget_types.QListWidget, row: cint, label: string): void =
  fcQListWidget_insertItem2(self.h, row, struct_miqt_string(data: label, len: csize_t(len(label))))

proc insertItems*(self: gen_qlistwidget_types.QListWidget, row: cint, labels: seq[string]): void =
  var labels_CArray = newSeq[struct_miqt_string](len(labels))
  for i in 0..<len(labels):
    labels_CArray[i] = struct_miqt_string(data: labels[i], len: csize_t(len(labels[i])))

  fcQListWidget_insertItems(self.h, row, struct_miqt_array(len: csize_t(len(labels)), data: if len(labels) == 0: nil else: addr(labels_CArray[0])))

proc addItem*(self: gen_qlistwidget_types.QListWidget, label: string): void =
  fcQListWidget_addItem(self.h, struct_miqt_string(data: label, len: csize_t(len(label))))

proc addItem*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem): void =
  fcQListWidget_addItemWithItem(self.h, item.h)

proc addItems*(self: gen_qlistwidget_types.QListWidget, labels: seq[string]): void =
  var labels_CArray = newSeq[struct_miqt_string](len(labels))
  for i in 0..<len(labels):
    labels_CArray[i] = struct_miqt_string(data: labels[i], len: csize_t(len(labels[i])))

  fcQListWidget_addItems(self.h, struct_miqt_array(len: csize_t(len(labels)), data: if len(labels) == 0: nil else: addr(labels_CArray[0])))

proc takeItem*(self: gen_qlistwidget_types.QListWidget, row: cint): gen_qlistwidget_types.QListWidgetItem =
  gen_qlistwidget_types.QListWidgetItem(h: fcQListWidget_takeItem(self.h, row))

proc count*(self: gen_qlistwidget_types.QListWidget, ): cint =
  fcQListWidget_count(self.h)

proc currentItem*(self: gen_qlistwidget_types.QListWidget, ): gen_qlistwidget_types.QListWidgetItem =
  gen_qlistwidget_types.QListWidgetItem(h: fcQListWidget_currentItem(self.h))

proc setCurrentItem*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem): void =
  fcQListWidget_setCurrentItem(self.h, item.h)

proc setCurrentItem*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem, command: cint): void =
  fcQListWidget_setCurrentItem2(self.h, item.h, cint(command))

proc currentRow*(self: gen_qlistwidget_types.QListWidget, ): cint =
  fcQListWidget_currentRow(self.h)

proc setCurrentRow*(self: gen_qlistwidget_types.QListWidget, row: cint): void =
  fcQListWidget_setCurrentRow(self.h, row)

proc setCurrentRow*(self: gen_qlistwidget_types.QListWidget, row: cint, command: cint): void =
  fcQListWidget_setCurrentRow2(self.h, row, cint(command))

proc itemAt*(self: gen_qlistwidget_types.QListWidget, p: gen_qpoint_types.QPoint): gen_qlistwidget_types.QListWidgetItem =
  gen_qlistwidget_types.QListWidgetItem(h: fcQListWidget_itemAt(self.h, p.h))

proc itemAt*(self: gen_qlistwidget_types.QListWidget, x: cint, y: cint): gen_qlistwidget_types.QListWidgetItem =
  gen_qlistwidget_types.QListWidgetItem(h: fcQListWidget_itemAt2(self.h, x, y))

proc visualItemRect*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQListWidget_visualItemRect(self.h, item.h))

proc sortItems*(self: gen_qlistwidget_types.QListWidget, ): void =
  fcQListWidget_sortItems(self.h)

proc setSortingEnabled*(self: gen_qlistwidget_types.QListWidget, enable: bool): void =
  fcQListWidget_setSortingEnabled(self.h, enable)

proc isSortingEnabled*(self: gen_qlistwidget_types.QListWidget, ): bool =
  fcQListWidget_isSortingEnabled(self.h)

proc editItem*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem): void =
  fcQListWidget_editItem(self.h, item.h)

proc openPersistentEditor*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem): void =
  fcQListWidget_openPersistentEditor(self.h, item.h)

proc closePersistentEditor*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem): void =
  fcQListWidget_closePersistentEditor(self.h, item.h)

proc isPersistentEditorOpen*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem): bool =
  fcQListWidget_isPersistentEditorOpen(self.h, item.h)

proc itemWidget*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQListWidget_itemWidget(self.h, item.h))

proc setItemWidget*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem, widget: gen_qwidget_types.QWidget): void =
  fcQListWidget_setItemWidget(self.h, item.h, widget.h)

proc removeItemWidget*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem): void =
  fcQListWidget_removeItemWidget(self.h, item.h)

proc selectedItems*(self: gen_qlistwidget_types.QListWidget, ): seq[gen_qlistwidget_types.QListWidgetItem] =
  var v_ma = fcQListWidget_selectedItems(self.h)
  var vx_ret = newSeq[gen_qlistwidget_types.QListWidgetItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qlistwidget_types.QListWidgetItem(h: v_outCast[i])
  vx_ret

proc findItems*(self: gen_qlistwidget_types.QListWidget, text: string, flags: cint): seq[gen_qlistwidget_types.QListWidgetItem] =
  var v_ma = fcQListWidget_findItems(self.h, struct_miqt_string(data: text, len: csize_t(len(text))), cint(flags))
  var vx_ret = newSeq[gen_qlistwidget_types.QListWidgetItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qlistwidget_types.QListWidgetItem(h: v_outCast[i])
  vx_ret

proc items*(self: gen_qlistwidget_types.QListWidget, data: gen_qmimedata_types.QMimeData): seq[gen_qlistwidget_types.QListWidgetItem] =
  var v_ma = fcQListWidget_items(self.h, data.h)
  var vx_ret = newSeq[gen_qlistwidget_types.QListWidgetItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qlistwidget_types.QListWidgetItem(h: v_outCast[i])
  vx_ret

proc indexFromItem*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQListWidget_indexFromItem(self.h, item.h))

proc itemFromIndex*(self: gen_qlistwidget_types.QListWidget, index: gen_qabstractitemmodel_types.QModelIndex): gen_qlistwidget_types.QListWidgetItem =
  gen_qlistwidget_types.QListWidgetItem(h: fcQListWidget_itemFromIndex(self.h, index.h))

proc scrollToItem*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem): void =
  fcQListWidget_scrollToItem(self.h, item.h)

proc clear*(self: gen_qlistwidget_types.QListWidget, ): void =
  fcQListWidget_clear(self.h)

proc itemPressed*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem): void =
  fcQListWidget_itemPressed(self.h, item.h)

type QListWidgetitemPressedSlot* = proc(item: gen_qlistwidget_types.QListWidgetItem)
proc miqt_exec_callback_QListWidget_itemPressed(slot: int, item: pointer) {.exportc.} =
  let nimfunc = cast[ptr QListWidgetitemPressedSlot](cast[pointer](slot))
  let slotval1 = gen_qlistwidget_types.QListWidgetItem(h: item)

  nimfunc[](slotval1)

proc onitemPressed*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetitemPressedSlot) =
  var tmp = new QListWidgetitemPressedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_connect_itemPressed(self.h, cast[int](addr tmp[]))

proc itemClicked*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem): void =
  fcQListWidget_itemClicked(self.h, item.h)

type QListWidgetitemClickedSlot* = proc(item: gen_qlistwidget_types.QListWidgetItem)
proc miqt_exec_callback_QListWidget_itemClicked(slot: int, item: pointer) {.exportc.} =
  let nimfunc = cast[ptr QListWidgetitemClickedSlot](cast[pointer](slot))
  let slotval1 = gen_qlistwidget_types.QListWidgetItem(h: item)

  nimfunc[](slotval1)

proc onitemClicked*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetitemClickedSlot) =
  var tmp = new QListWidgetitemClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_connect_itemClicked(self.h, cast[int](addr tmp[]))

proc itemDoubleClicked*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem): void =
  fcQListWidget_itemDoubleClicked(self.h, item.h)

type QListWidgetitemDoubleClickedSlot* = proc(item: gen_qlistwidget_types.QListWidgetItem)
proc miqt_exec_callback_QListWidget_itemDoubleClicked(slot: int, item: pointer) {.exportc.} =
  let nimfunc = cast[ptr QListWidgetitemDoubleClickedSlot](cast[pointer](slot))
  let slotval1 = gen_qlistwidget_types.QListWidgetItem(h: item)

  nimfunc[](slotval1)

proc onitemDoubleClicked*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetitemDoubleClickedSlot) =
  var tmp = new QListWidgetitemDoubleClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_connect_itemDoubleClicked(self.h, cast[int](addr tmp[]))

proc itemActivated*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem): void =
  fcQListWidget_itemActivated(self.h, item.h)

type QListWidgetitemActivatedSlot* = proc(item: gen_qlistwidget_types.QListWidgetItem)
proc miqt_exec_callback_QListWidget_itemActivated(slot: int, item: pointer) {.exportc.} =
  let nimfunc = cast[ptr QListWidgetitemActivatedSlot](cast[pointer](slot))
  let slotval1 = gen_qlistwidget_types.QListWidgetItem(h: item)

  nimfunc[](slotval1)

proc onitemActivated*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetitemActivatedSlot) =
  var tmp = new QListWidgetitemActivatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_connect_itemActivated(self.h, cast[int](addr tmp[]))

proc itemEntered*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem): void =
  fcQListWidget_itemEntered(self.h, item.h)

type QListWidgetitemEnteredSlot* = proc(item: gen_qlistwidget_types.QListWidgetItem)
proc miqt_exec_callback_QListWidget_itemEntered(slot: int, item: pointer) {.exportc.} =
  let nimfunc = cast[ptr QListWidgetitemEnteredSlot](cast[pointer](slot))
  let slotval1 = gen_qlistwidget_types.QListWidgetItem(h: item)

  nimfunc[](slotval1)

proc onitemEntered*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetitemEnteredSlot) =
  var tmp = new QListWidgetitemEnteredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_connect_itemEntered(self.h, cast[int](addr tmp[]))

proc itemChanged*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem): void =
  fcQListWidget_itemChanged(self.h, item.h)

type QListWidgetitemChangedSlot* = proc(item: gen_qlistwidget_types.QListWidgetItem)
proc miqt_exec_callback_QListWidget_itemChanged(slot: int, item: pointer) {.exportc.} =
  let nimfunc = cast[ptr QListWidgetitemChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qlistwidget_types.QListWidgetItem(h: item)

  nimfunc[](slotval1)

proc onitemChanged*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetitemChangedSlot) =
  var tmp = new QListWidgetitemChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_connect_itemChanged(self.h, cast[int](addr tmp[]))

proc currentItemChanged*(self: gen_qlistwidget_types.QListWidget, current: gen_qlistwidget_types.QListWidgetItem, previous: gen_qlistwidget_types.QListWidgetItem): void =
  fcQListWidget_currentItemChanged(self.h, current.h, previous.h)

type QListWidgetcurrentItemChangedSlot* = proc(current: gen_qlistwidget_types.QListWidgetItem, previous: gen_qlistwidget_types.QListWidgetItem)
proc miqt_exec_callback_QListWidget_currentItemChanged(slot: int, current: pointer, previous: pointer) {.exportc.} =
  let nimfunc = cast[ptr QListWidgetcurrentItemChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qlistwidget_types.QListWidgetItem(h: current)

  let slotval2 = gen_qlistwidget_types.QListWidgetItem(h: previous)

  nimfunc[](slotval1, slotval2)

proc oncurrentItemChanged*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetcurrentItemChangedSlot) =
  var tmp = new QListWidgetcurrentItemChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_connect_currentItemChanged(self.h, cast[int](addr tmp[]))

proc currentTextChanged*(self: gen_qlistwidget_types.QListWidget, currentText: string): void =
  fcQListWidget_currentTextChanged(self.h, struct_miqt_string(data: currentText, len: csize_t(len(currentText))))

type QListWidgetcurrentTextChangedSlot* = proc(currentText: string)
proc miqt_exec_callback_QListWidget_currentTextChanged(slot: int, currentText: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QListWidgetcurrentTextChangedSlot](cast[pointer](slot))
  let vcurrentText_ms = currentText
  let vcurrentTextx_ret = string.fromBytes(toOpenArrayByte(vcurrentText_ms.data, 0, int(vcurrentText_ms.len)-1))
  c_free(vcurrentText_ms.data)
  let slotval1 = vcurrentTextx_ret

  nimfunc[](slotval1)

proc oncurrentTextChanged*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetcurrentTextChangedSlot) =
  var tmp = new QListWidgetcurrentTextChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_connect_currentTextChanged(self.h, cast[int](addr tmp[]))

proc currentRowChanged*(self: gen_qlistwidget_types.QListWidget, currentRow: cint): void =
  fcQListWidget_currentRowChanged(self.h, currentRow)

type QListWidgetcurrentRowChangedSlot* = proc(currentRow: cint)
proc miqt_exec_callback_QListWidget_currentRowChanged(slot: int, currentRow: cint) {.exportc.} =
  let nimfunc = cast[ptr QListWidgetcurrentRowChangedSlot](cast[pointer](slot))
  let slotval1 = currentRow

  nimfunc[](slotval1)

proc oncurrentRowChanged*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetcurrentRowChangedSlot) =
  var tmp = new QListWidgetcurrentRowChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_connect_currentRowChanged(self.h, cast[int](addr tmp[]))

proc itemSelectionChanged*(self: gen_qlistwidget_types.QListWidget, ): void =
  fcQListWidget_itemSelectionChanged(self.h)

type QListWidgetitemSelectionChangedSlot* = proc()
proc miqt_exec_callback_QListWidget_itemSelectionChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QListWidgetitemSelectionChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onitemSelectionChanged*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetitemSelectionChangedSlot) =
  var tmp = new QListWidgetitemSelectionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_connect_itemSelectionChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qlistwidget_types.QListWidget, s: cstring, c: cstring): string =
  let v_ms = fcQListWidget_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qlistwidget_types.QListWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQListWidget_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sortItems*(self: gen_qlistwidget_types.QListWidget, order: cint): void =
  fcQListWidget_sortItems1(self.h, cint(order))

proc scrollToItem*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem, hint: cint): void =
  fcQListWidget_scrollToItem2(self.h, item.h, cint(hint))

proc QListWidgetsetSelectionModel*(self: gen_qlistwidget_types.QListWidget, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void =
  fQListWidget_virtualbase_setSelectionModel(self.h, selectionModel.h)

type QListWidgetsetSelectionModelProc* = proc(selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void
proc onsetSelectionModel*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetsetSelectionModelProc) =
  # TODO check subclass
  var tmp = new QListWidgetsetSelectionModelProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_setSelectionModel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_setSelectionModel(self: ptr cQListWidget, slot: int, selectionModel: pointer): void {.exportc: "miqt_exec_callback_QListWidget_setSelectionModel ".} =
  var nimfunc = cast[ptr QListWidgetsetSelectionModelProc](cast[pointer](slot))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelectionModel(h: selectionModel)


  nimfunc[](slotval1)
proc QListWidgetdropEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qevent_types.QDropEvent): void =
  fQListWidget_virtualbase_dropEvent(self.h, event.h)

type QListWidgetdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetdropEventProc) =
  # TODO check subclass
  var tmp = new QListWidgetdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_dropEvent(self: ptr cQListWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListWidget_dropEvent ".} =
  var nimfunc = cast[ptr QListWidgetdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QListWidgetevent*(self: gen_qlistwidget_types.QListWidget, e: gen_qcoreevent_types.QEvent): bool =
  fQListWidget_virtualbase_event(self.h, e.h)

type QListWidgeteventProc* = proc(e: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgeteventProc) =
  # TODO check subclass
  var tmp = new QListWidgeteventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_event(self: ptr cQListWidget, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QListWidget_event ".} =
  var nimfunc = cast[ptr QListWidgeteventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QListWidgetmimeTypes*(self: gen_qlistwidget_types.QListWidget, ): seq[string] =
  var v_ma = fQListWidget_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QListWidgetmimeTypesProc* = proc(): seq[string]
proc onmimeTypes*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetmimeTypesProc) =
  # TODO check subclass
  var tmp = new QListWidgetmimeTypesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_mimeTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_mimeTypes(self: ptr cQListWidget, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QListWidget_mimeTypes ".} =
  var nimfunc = cast[ptr QListWidgetmimeTypesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QListWidgetmimeData*(self: gen_qlistwidget_types.QListWidget, items: seq[gen_qlistwidget_types.QListWidgetItem]): gen_qmimedata_types.QMimeData =
  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  gen_qmimedata_types.QMimeData(h: fQListWidget_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0]))))

type QListWidgetmimeDataProc* = proc(items: seq[gen_qlistwidget_types.QListWidgetItem]): gen_qmimedata_types.QMimeData
proc onmimeData*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetmimeDataProc) =
  # TODO check subclass
  var tmp = new QListWidgetmimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_mimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_mimeData(self: ptr cQListWidget, slot: int, items: struct_miqt_array): pointer {.exportc: "miqt_exec_callback_QListWidget_mimeData ".} =
  var nimfunc = cast[ptr QListWidgetmimeDataProc](cast[pointer](slot))
  var vitems_ma = items
  var vitemsx_ret = newSeq[gen_qlistwidget_types.QListWidgetItem](int(vitems_ma.len))
  let vitems_outCast = cast[ptr UncheckedArray[pointer]](vitems_ma.data)
  for i in 0 ..< vitems_ma.len:
    vitemsx_ret[i] = gen_qlistwidget_types.QListWidgetItem(h: vitems_outCast[i])
  let slotval1 = vitemsx_ret


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QListWidgetdropMimeData*(self: gen_qlistwidget_types.QListWidget, index: cint, data: gen_qmimedata_types.QMimeData, action: cint): bool =
  fQListWidget_virtualbase_dropMimeData(self.h, index, data.h, cint(action))

type QListWidgetdropMimeDataProc* = proc(index: cint, data: gen_qmimedata_types.QMimeData, action: cint): bool
proc ondropMimeData*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetdropMimeDataProc) =
  # TODO check subclass
  var tmp = new QListWidgetdropMimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_dropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_dropMimeData(self: ptr cQListWidget, slot: int, index: cint, data: pointer, action: cint): bool {.exportc: "miqt_exec_callback_QListWidget_dropMimeData ".} =
  var nimfunc = cast[ptr QListWidgetdropMimeDataProc](cast[pointer](slot))
  let slotval1 = index

  let slotval2 = gen_qmimedata_types.QMimeData(h: data)

  let slotval3 = cint(action)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QListWidgetsupportedDropActions*(self: gen_qlistwidget_types.QListWidget, ): cint =
  cint(fQListWidget_virtualbase_supportedDropActions(self.h))

type QListWidgetsupportedDropActionsProc* = proc(): cint
proc onsupportedDropActions*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetsupportedDropActionsProc) =
  # TODO check subclass
  var tmp = new QListWidgetsupportedDropActionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_supportedDropActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_supportedDropActions(self: ptr cQListWidget, slot: int): cint {.exportc: "miqt_exec_callback_QListWidget_supportedDropActions ".} =
  var nimfunc = cast[ptr QListWidgetsupportedDropActionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QListWidgetvisualRect*(self: gen_qlistwidget_types.QListWidget, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fQListWidget_virtualbase_visualRect(self.h, index.h))

type QListWidgetvisualRectProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect
proc onvisualRect*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetvisualRectProc) =
  # TODO check subclass
  var tmp = new QListWidgetvisualRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_visualRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_visualRect(self: ptr cQListWidget, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QListWidget_visualRect ".} =
  var nimfunc = cast[ptr QListWidgetvisualRectProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QListWidgetscrollTo*(self: gen_qlistwidget_types.QListWidget, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void =
  fQListWidget_virtualbase_scrollTo(self.h, index.h, cint(hint))

type QListWidgetscrollToProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void
proc onscrollTo*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetscrollToProc) =
  # TODO check subclass
  var tmp = new QListWidgetscrollToProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_scrollTo(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_scrollTo(self: ptr cQListWidget, slot: int, index: pointer, hint: cint): void {.exportc: "miqt_exec_callback_QListWidget_scrollTo ".} =
  var nimfunc = cast[ptr QListWidgetscrollToProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = cint(hint)


  nimfunc[](slotval1, slotval2)
proc QListWidgetindexAt*(self: gen_qlistwidget_types.QListWidget, p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQListWidget_virtualbase_indexAt(self.h, p.h))

type QListWidgetindexAtProc* = proc(p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex
proc onindexAt*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetindexAtProc) =
  # TODO check subclass
  var tmp = new QListWidgetindexAtProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_indexAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_indexAt(self: ptr cQListWidget, slot: int, p: pointer): pointer {.exportc: "miqt_exec_callback_QListWidget_indexAt ".} =
  var nimfunc = cast[ptr QListWidgetindexAtProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: p)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QListWidgetdoItemsLayout*(self: gen_qlistwidget_types.QListWidget, ): void =
  fQListWidget_virtualbase_doItemsLayout(self.h)

type QListWidgetdoItemsLayoutProc* = proc(): void
proc ondoItemsLayout*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetdoItemsLayoutProc) =
  # TODO check subclass
  var tmp = new QListWidgetdoItemsLayoutProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_doItemsLayout(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_doItemsLayout(self: ptr cQListWidget, slot: int): void {.exportc: "miqt_exec_callback_QListWidget_doItemsLayout ".} =
  var nimfunc = cast[ptr QListWidgetdoItemsLayoutProc](cast[pointer](slot))

  nimfunc[]()
proc QListWidgetreset*(self: gen_qlistwidget_types.QListWidget, ): void =
  fQListWidget_virtualbase_reset(self.h)

type QListWidgetresetProc* = proc(): void
proc onreset*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetresetProc) =
  # TODO check subclass
  var tmp = new QListWidgetresetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_reset(self: ptr cQListWidget, slot: int): void {.exportc: "miqt_exec_callback_QListWidget_reset ".} =
  var nimfunc = cast[ptr QListWidgetresetProc](cast[pointer](slot))

  nimfunc[]()
proc QListWidgetsetRootIndex*(self: gen_qlistwidget_types.QListWidget, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fQListWidget_virtualbase_setRootIndex(self.h, index.h)

type QListWidgetsetRootIndexProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): void
proc onsetRootIndex*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetsetRootIndexProc) =
  # TODO check subclass
  var tmp = new QListWidgetsetRootIndexProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_setRootIndex(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_setRootIndex(self: ptr cQListWidget, slot: int, index: pointer): void {.exportc: "miqt_exec_callback_QListWidget_setRootIndex ".} =
  var nimfunc = cast[ptr QListWidgetsetRootIndexProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  nimfunc[](slotval1)
proc QListWidgetscrollContentsBy*(self: gen_qlistwidget_types.QListWidget, dx: cint, dy: cint): void =
  fQListWidget_virtualbase_scrollContentsBy(self.h, dx, dy)

type QListWidgetscrollContentsByProc* = proc(dx: cint, dy: cint): void
proc onscrollContentsBy*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetscrollContentsByProc) =
  # TODO check subclass
  var tmp = new QListWidgetscrollContentsByProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_scrollContentsBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_scrollContentsBy(self: ptr cQListWidget, slot: int, dx: cint, dy: cint): void {.exportc: "miqt_exec_callback_QListWidget_scrollContentsBy ".} =
  var nimfunc = cast[ptr QListWidgetscrollContentsByProc](cast[pointer](slot))
  let slotval1 = dx

  let slotval2 = dy


  nimfunc[](slotval1, slotval2)
proc QListWidgetdataChanged*(self: gen_qlistwidget_types.QListWidget, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: seq[cint]): void =
  var roles_CArray = newSeq[cint](len(roles))
  for i in 0..<len(roles):
    roles_CArray[i] = roles[i]

  fQListWidget_virtualbase_dataChanged(self.h, topLeft.h, bottomRight.h, struct_miqt_array(len: csize_t(len(roles)), data: if len(roles) == 0: nil else: addr(roles_CArray[0])))

type QListWidgetdataChangedProc* = proc(topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: seq[cint]): void
proc ondataChanged*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetdataChangedProc) =
  # TODO check subclass
  var tmp = new QListWidgetdataChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_dataChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_dataChanged(self: ptr cQListWidget, slot: int, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.exportc: "miqt_exec_callback_QListWidget_dataChanged ".} =
  var nimfunc = cast[ptr QListWidgetdataChangedProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: topLeft)

  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: bottomRight)

  var vroles_ma = roles
  var vrolesx_ret = newSeq[cint](int(vroles_ma.len))
  let vroles_outCast = cast[ptr UncheckedArray[cint]](vroles_ma.data)
  for i in 0 ..< vroles_ma.len:
    vrolesx_ret[i] = vroles_outCast[i]
  let slotval3 = vrolesx_ret


  nimfunc[](slotval1, slotval2, slotval3)
proc QListWidgetrowsInserted*(self: gen_qlistwidget_types.QListWidget, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fQListWidget_virtualbase_rowsInserted(self.h, parent.h, start, endVal)

type QListWidgetrowsInsertedProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void
proc onrowsInserted*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetrowsInsertedProc) =
  # TODO check subclass
  var tmp = new QListWidgetrowsInsertedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_rowsInserted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_rowsInserted(self: ptr cQListWidget, slot: int, parent: pointer, start: cint, endVal: cint): void {.exportc: "miqt_exec_callback_QListWidget_rowsInserted ".} =
  var nimfunc = cast[ptr QListWidgetrowsInsertedProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)

  let slotval2 = start

  let slotval3 = endVal


  nimfunc[](slotval1, slotval2, slotval3)
proc QListWidgetrowsAboutToBeRemoved*(self: gen_qlistwidget_types.QListWidget, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fQListWidget_virtualbase_rowsAboutToBeRemoved(self.h, parent.h, start, endVal)

type QListWidgetrowsAboutToBeRemovedProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void
proc onrowsAboutToBeRemoved*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetrowsAboutToBeRemovedProc) =
  # TODO check subclass
  var tmp = new QListWidgetrowsAboutToBeRemovedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_rowsAboutToBeRemoved(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_rowsAboutToBeRemoved(self: ptr cQListWidget, slot: int, parent: pointer, start: cint, endVal: cint): void {.exportc: "miqt_exec_callback_QListWidget_rowsAboutToBeRemoved ".} =
  var nimfunc = cast[ptr QListWidgetrowsAboutToBeRemovedProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)

  let slotval2 = start

  let slotval3 = endVal


  nimfunc[](slotval1, slotval2, slotval3)
proc QListWidgetmouseMoveEvent*(self: gen_qlistwidget_types.QListWidget, e: gen_qevent_types.QMouseEvent): void =
  fQListWidget_virtualbase_mouseMoveEvent(self.h, e.h)

type QListWidgetmouseMoveEventProc* = proc(e: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QListWidgetmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_mouseMoveEvent(self: ptr cQListWidget, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QListWidget_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QListWidgetmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)


  nimfunc[](slotval1)
proc QListWidgetmouseReleaseEvent*(self: gen_qlistwidget_types.QListWidget, e: gen_qevent_types.QMouseEvent): void =
  fQListWidget_virtualbase_mouseReleaseEvent(self.h, e.h)

type QListWidgetmouseReleaseEventProc* = proc(e: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QListWidgetmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_mouseReleaseEvent(self: ptr cQListWidget, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QListWidget_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QListWidgetmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)


  nimfunc[](slotval1)
proc QListWidgetwheelEvent*(self: gen_qlistwidget_types.QListWidget, e: gen_qevent_types.QWheelEvent): void =
  fQListWidget_virtualbase_wheelEvent(self.h, e.h)

type QListWidgetwheelEventProc* = proc(e: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetwheelEventProc) =
  # TODO check subclass
  var tmp = new QListWidgetwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_wheelEvent(self: ptr cQListWidget, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QListWidget_wheelEvent ".} =
  var nimfunc = cast[ptr QListWidgetwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: e)


  nimfunc[](slotval1)
proc QListWidgettimerEvent*(self: gen_qlistwidget_types.QListWidget, e: gen_qcoreevent_types.QTimerEvent): void =
  fQListWidget_virtualbase_timerEvent(self.h, e.h)

type QListWidgettimerEventProc* = proc(e: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgettimerEventProc) =
  # TODO check subclass
  var tmp = new QListWidgettimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_timerEvent(self: ptr cQListWidget, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QListWidget_timerEvent ".} =
  var nimfunc = cast[ptr QListWidgettimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: e)


  nimfunc[](slotval1)
proc QListWidgetresizeEvent*(self: gen_qlistwidget_types.QListWidget, e: gen_qevent_types.QResizeEvent): void =
  fQListWidget_virtualbase_resizeEvent(self.h, e.h)

type QListWidgetresizeEventProc* = proc(e: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetresizeEventProc) =
  # TODO check subclass
  var tmp = new QListWidgetresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_resizeEvent(self: ptr cQListWidget, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QListWidget_resizeEvent ".} =
  var nimfunc = cast[ptr QListWidgetresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: e)


  nimfunc[](slotval1)
proc QListWidgetdragMoveEvent*(self: gen_qlistwidget_types.QListWidget, e: gen_qevent_types.QDragMoveEvent): void =
  fQListWidget_virtualbase_dragMoveEvent(self.h, e.h)

type QListWidgetdragMoveEventProc* = proc(e: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QListWidgetdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_dragMoveEvent(self: ptr cQListWidget, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QListWidget_dragMoveEvent ".} =
  var nimfunc = cast[ptr QListWidgetdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: e)


  nimfunc[](slotval1)
proc QListWidgetdragLeaveEvent*(self: gen_qlistwidget_types.QListWidget, e: gen_qevent_types.QDragLeaveEvent): void =
  fQListWidget_virtualbase_dragLeaveEvent(self.h, e.h)

type QListWidgetdragLeaveEventProc* = proc(e: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QListWidgetdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_dragLeaveEvent(self: ptr cQListWidget, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QListWidget_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QListWidgetdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: e)


  nimfunc[](slotval1)
proc QListWidgetstartDrag*(self: gen_qlistwidget_types.QListWidget, supportedActions: cint): void =
  fQListWidget_virtualbase_startDrag(self.h, cint(supportedActions))

type QListWidgetstartDragProc* = proc(supportedActions: cint): void
proc onstartDrag*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetstartDragProc) =
  # TODO check subclass
  var tmp = new QListWidgetstartDragProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_startDrag(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_startDrag(self: ptr cQListWidget, slot: int, supportedActions: cint): void {.exportc: "miqt_exec_callback_QListWidget_startDrag ".} =
  var nimfunc = cast[ptr QListWidgetstartDragProc](cast[pointer](slot))
  let slotval1 = cint(supportedActions)


  nimfunc[](slotval1)
proc QListWidgetinitViewItemOption*(self: gen_qlistwidget_types.QListWidget, option: gen_qstyleoption_types.QStyleOptionViewItem): void =
  fQListWidget_virtualbase_initViewItemOption(self.h, option.h)

type QListWidgetinitViewItemOptionProc* = proc(option: gen_qstyleoption_types.QStyleOptionViewItem): void
proc oninitViewItemOption*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetinitViewItemOptionProc) =
  # TODO check subclass
  var tmp = new QListWidgetinitViewItemOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_initViewItemOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_initViewItemOption(self: ptr cQListWidget, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QListWidget_initViewItemOption ".} =
  var nimfunc = cast[ptr QListWidgetinitViewItemOptionProc](cast[pointer](slot))
  let slotval1 = gen_qstyleoption_types.QStyleOptionViewItem(h: option)


  nimfunc[](slotval1)
proc QListWidgetpaintEvent*(self: gen_qlistwidget_types.QListWidget, e: gen_qevent_types.QPaintEvent): void =
  fQListWidget_virtualbase_paintEvent(self.h, e.h)

type QListWidgetpaintEventProc* = proc(e: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetpaintEventProc) =
  # TODO check subclass
  var tmp = new QListWidgetpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_paintEvent(self: ptr cQListWidget, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QListWidget_paintEvent ".} =
  var nimfunc = cast[ptr QListWidgetpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: e)


  nimfunc[](slotval1)
proc QListWidgethorizontalOffset*(self: gen_qlistwidget_types.QListWidget, ): cint =
  fQListWidget_virtualbase_horizontalOffset(self.h)

type QListWidgethorizontalOffsetProc* = proc(): cint
proc onhorizontalOffset*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgethorizontalOffsetProc) =
  # TODO check subclass
  var tmp = new QListWidgethorizontalOffsetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_horizontalOffset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_horizontalOffset(self: ptr cQListWidget, slot: int): cint {.exportc: "miqt_exec_callback_QListWidget_horizontalOffset ".} =
  var nimfunc = cast[ptr QListWidgethorizontalOffsetProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QListWidgetverticalOffset*(self: gen_qlistwidget_types.QListWidget, ): cint =
  fQListWidget_virtualbase_verticalOffset(self.h)

type QListWidgetverticalOffsetProc* = proc(): cint
proc onverticalOffset*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetverticalOffsetProc) =
  # TODO check subclass
  var tmp = new QListWidgetverticalOffsetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_verticalOffset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_verticalOffset(self: ptr cQListWidget, slot: int): cint {.exportc: "miqt_exec_callback_QListWidget_verticalOffset ".} =
  var nimfunc = cast[ptr QListWidgetverticalOffsetProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QListWidgetmoveCursor*(self: gen_qlistwidget_types.QListWidget, cursorAction: cint, modifiers: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQListWidget_virtualbase_moveCursor(self.h, cint(cursorAction), cint(modifiers)))

type QListWidgetmoveCursorProc* = proc(cursorAction: cint, modifiers: cint): gen_qabstractitemmodel_types.QModelIndex
proc onmoveCursor*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetmoveCursorProc) =
  # TODO check subclass
  var tmp = new QListWidgetmoveCursorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_moveCursor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_moveCursor(self: ptr cQListWidget, slot: int, cursorAction: cint, modifiers: cint): pointer {.exportc: "miqt_exec_callback_QListWidget_moveCursor ".} =
  var nimfunc = cast[ptr QListWidgetmoveCursorProc](cast[pointer](slot))
  let slotval1 = cint(cursorAction)

  let slotval2 = cint(modifiers)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QListWidgetsetSelection*(self: gen_qlistwidget_types.QListWidget, rect: gen_qrect_types.QRect, command: cint): void =
  fQListWidget_virtualbase_setSelection(self.h, rect.h, cint(command))

type QListWidgetsetSelectionProc* = proc(rect: gen_qrect_types.QRect, command: cint): void
proc onsetSelection*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetsetSelectionProc) =
  # TODO check subclass
  var tmp = new QListWidgetsetSelectionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_setSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_setSelection(self: ptr cQListWidget, slot: int, rect: pointer, command: cint): void {.exportc: "miqt_exec_callback_QListWidget_setSelection ".} =
  var nimfunc = cast[ptr QListWidgetsetSelectionProc](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRect(h: rect)

  let slotval2 = cint(command)


  nimfunc[](slotval1, slotval2)
proc QListWidgetvisualRegionForSelection*(self: gen_qlistwidget_types.QListWidget, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fQListWidget_virtualbase_visualRegionForSelection(self.h, selection.h))

type QListWidgetvisualRegionForSelectionProc* = proc(selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion
proc onvisualRegionForSelection*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetvisualRegionForSelectionProc) =
  # TODO check subclass
  var tmp = new QListWidgetvisualRegionForSelectionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_visualRegionForSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_visualRegionForSelection(self: ptr cQListWidget, slot: int, selection: pointer): pointer {.exportc: "miqt_exec_callback_QListWidget_visualRegionForSelection ".} =
  var nimfunc = cast[ptr QListWidgetvisualRegionForSelectionProc](cast[pointer](slot))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QListWidgetselectedIndexes*(self: gen_qlistwidget_types.QListWidget, ): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fQListWidget_virtualbase_selectedIndexes(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  vx_ret

type QListWidgetselectedIndexesProc* = proc(): seq[gen_qabstractitemmodel_types.QModelIndex]
proc onselectedIndexes*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetselectedIndexesProc) =
  # TODO check subclass
  var tmp = new QListWidgetselectedIndexesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_selectedIndexes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_selectedIndexes(self: ptr cQListWidget, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QListWidget_selectedIndexes ".} =
  var nimfunc = cast[ptr QListWidgetselectedIndexesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[pointer](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QListWidgetupdateGeometries*(self: gen_qlistwidget_types.QListWidget, ): void =
  fQListWidget_virtualbase_updateGeometries(self.h)

type QListWidgetupdateGeometriesProc* = proc(): void
proc onupdateGeometries*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetupdateGeometriesProc) =
  # TODO check subclass
  var tmp = new QListWidgetupdateGeometriesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_updateGeometries(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_updateGeometries(self: ptr cQListWidget, slot: int): void {.exportc: "miqt_exec_callback_QListWidget_updateGeometries ".} =
  var nimfunc = cast[ptr QListWidgetupdateGeometriesProc](cast[pointer](slot))

  nimfunc[]()
proc QListWidgetisIndexHidden*(self: gen_qlistwidget_types.QListWidget, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQListWidget_virtualbase_isIndexHidden(self.h, index.h)

type QListWidgetisIndexHiddenProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): bool
proc onisIndexHidden*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetisIndexHiddenProc) =
  # TODO check subclass
  var tmp = new QListWidgetisIndexHiddenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_isIndexHidden(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_isIndexHidden(self: ptr cQListWidget, slot: int, index: pointer): bool {.exportc: "miqt_exec_callback_QListWidget_isIndexHidden ".} =
  var nimfunc = cast[ptr QListWidgetisIndexHiddenProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QListWidgetselectionChanged*(self: gen_qlistwidget_types.QListWidget, selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void =
  fQListWidget_virtualbase_selectionChanged(self.h, selected.h, deselected.h)

type QListWidgetselectionChangedProc* = proc(selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void
proc onselectionChanged*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetselectionChangedProc) =
  # TODO check subclass
  var tmp = new QListWidgetselectionChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_selectionChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_selectionChanged(self: ptr cQListWidget, slot: int, selected: pointer, deselected: pointer): void {.exportc: "miqt_exec_callback_QListWidget_selectionChanged ".} =
  var nimfunc = cast[ptr QListWidgetselectionChangedProc](cast[pointer](slot))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selected)

  let slotval2 = gen_qitemselectionmodel_types.QItemSelection(h: deselected)


  nimfunc[](slotval1, slotval2)
proc QListWidgetcurrentChanged*(self: gen_qlistwidget_types.QListWidget, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void =
  fQListWidget_virtualbase_currentChanged(self.h, current.h, previous.h)

type QListWidgetcurrentChangedProc* = proc(current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void
proc oncurrentChanged*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetcurrentChangedProc) =
  # TODO check subclass
  var tmp = new QListWidgetcurrentChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_currentChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_currentChanged(self: ptr cQListWidget, slot: int, current: pointer, previous: pointer): void {.exportc: "miqt_exec_callback_QListWidget_currentChanged ".} =
  var nimfunc = cast[ptr QListWidgetcurrentChangedProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: current)

  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: previous)


  nimfunc[](slotval1, slotval2)
proc QListWidgetviewportSizeHint*(self: gen_qlistwidget_types.QListWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQListWidget_virtualbase_viewportSizeHint(self.h))

type QListWidgetviewportSizeHintProc* = proc(): gen_qsize_types.QSize
proc onviewportSizeHint*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetviewportSizeHintProc) =
  # TODO check subclass
  var tmp = new QListWidgetviewportSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_viewportSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_viewportSizeHint(self: ptr cQListWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QListWidget_viewportSizeHint ".} =
  var nimfunc = cast[ptr QListWidgetviewportSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QListWidgetkeyboardSearch*(self: gen_qlistwidget_types.QListWidget, search: string): void =
  fQListWidget_virtualbase_keyboardSearch(self.h, struct_miqt_string(data: search, len: csize_t(len(search))))

type QListWidgetkeyboardSearchProc* = proc(search: string): void
proc onkeyboardSearch*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetkeyboardSearchProc) =
  # TODO check subclass
  var tmp = new QListWidgetkeyboardSearchProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_keyboardSearch(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_keyboardSearch(self: ptr cQListWidget, slot: int, search: struct_miqt_string): void {.exportc: "miqt_exec_callback_QListWidget_keyboardSearch ".} =
  var nimfunc = cast[ptr QListWidgetkeyboardSearchProc](cast[pointer](slot))
  let vsearch_ms = search
  let vsearchx_ret = string.fromBytes(toOpenArrayByte(vsearch_ms.data, 0, int(vsearch_ms.len)-1))
  c_free(vsearch_ms.data)
  let slotval1 = vsearchx_ret


  nimfunc[](slotval1)
proc QListWidgetsizeHintForRow*(self: gen_qlistwidget_types.QListWidget, row: cint): cint =
  fQListWidget_virtualbase_sizeHintForRow(self.h, row)

type QListWidgetsizeHintForRowProc* = proc(row: cint): cint
proc onsizeHintForRow*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetsizeHintForRowProc) =
  # TODO check subclass
  var tmp = new QListWidgetsizeHintForRowProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_sizeHintForRow(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_sizeHintForRow(self: ptr cQListWidget, slot: int, row: cint): cint {.exportc: "miqt_exec_callback_QListWidget_sizeHintForRow ".} =
  var nimfunc = cast[ptr QListWidgetsizeHintForRowProc](cast[pointer](slot))
  let slotval1 = row


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QListWidgetsizeHintForColumn*(self: gen_qlistwidget_types.QListWidget, column: cint): cint =
  fQListWidget_virtualbase_sizeHintForColumn(self.h, column)

type QListWidgetsizeHintForColumnProc* = proc(column: cint): cint
proc onsizeHintForColumn*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetsizeHintForColumnProc) =
  # TODO check subclass
  var tmp = new QListWidgetsizeHintForColumnProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_sizeHintForColumn(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_sizeHintForColumn(self: ptr cQListWidget, slot: int, column: cint): cint {.exportc: "miqt_exec_callback_QListWidget_sizeHintForColumn ".} =
  var nimfunc = cast[ptr QListWidgetsizeHintForColumnProc](cast[pointer](slot))
  let slotval1 = column


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QListWidgetitemDelegateForIndex*(self: gen_qlistwidget_types.QListWidget, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemdelegate_types.QAbstractItemDelegate =
  gen_qabstractitemdelegate_types.QAbstractItemDelegate(h: fQListWidget_virtualbase_itemDelegateForIndex(self.h, index.h))

type QListWidgetitemDelegateForIndexProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemdelegate_types.QAbstractItemDelegate
proc onitemDelegateForIndex*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetitemDelegateForIndexProc) =
  # TODO check subclass
  var tmp = new QListWidgetitemDelegateForIndexProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_itemDelegateForIndex(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_itemDelegateForIndex(self: ptr cQListWidget, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QListWidget_itemDelegateForIndex ".} =
  var nimfunc = cast[ptr QListWidgetitemDelegateForIndexProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QListWidgetinputMethodQuery*(self: gen_qlistwidget_types.QListWidget, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQListWidget_virtualbase_inputMethodQuery(self.h, cint(query)))

type QListWidgetinputMethodQueryProc* = proc(query: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QListWidgetinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_inputMethodQuery(self: ptr cQListWidget, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QListWidget_inputMethodQuery ".} =
  var nimfunc = cast[ptr QListWidgetinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(query)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QListWidgetselectAll*(self: gen_qlistwidget_types.QListWidget, ): void =
  fQListWidget_virtualbase_selectAll(self.h)

type QListWidgetselectAllProc* = proc(): void
proc onselectAll*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetselectAllProc) =
  # TODO check subclass
  var tmp = new QListWidgetselectAllProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_selectAll(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_selectAll(self: ptr cQListWidget, slot: int): void {.exportc: "miqt_exec_callback_QListWidget_selectAll ".} =
  var nimfunc = cast[ptr QListWidgetselectAllProc](cast[pointer](slot))

  nimfunc[]()
proc QListWidgetupdateEditorData*(self: gen_qlistwidget_types.QListWidget, ): void =
  fQListWidget_virtualbase_updateEditorData(self.h)

type QListWidgetupdateEditorDataProc* = proc(): void
proc onupdateEditorData*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetupdateEditorDataProc) =
  # TODO check subclass
  var tmp = new QListWidgetupdateEditorDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_updateEditorData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_updateEditorData(self: ptr cQListWidget, slot: int): void {.exportc: "miqt_exec_callback_QListWidget_updateEditorData ".} =
  var nimfunc = cast[ptr QListWidgetupdateEditorDataProc](cast[pointer](slot))

  nimfunc[]()
proc QListWidgetupdateEditorGeometries*(self: gen_qlistwidget_types.QListWidget, ): void =
  fQListWidget_virtualbase_updateEditorGeometries(self.h)

type QListWidgetupdateEditorGeometriesProc* = proc(): void
proc onupdateEditorGeometries*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetupdateEditorGeometriesProc) =
  # TODO check subclass
  var tmp = new QListWidgetupdateEditorGeometriesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_updateEditorGeometries(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_updateEditorGeometries(self: ptr cQListWidget, slot: int): void {.exportc: "miqt_exec_callback_QListWidget_updateEditorGeometries ".} =
  var nimfunc = cast[ptr QListWidgetupdateEditorGeometriesProc](cast[pointer](slot))

  nimfunc[]()
proc QListWidgetverticalScrollbarAction*(self: gen_qlistwidget_types.QListWidget, action: cint): void =
  fQListWidget_virtualbase_verticalScrollbarAction(self.h, action)

type QListWidgetverticalScrollbarActionProc* = proc(action: cint): void
proc onverticalScrollbarAction*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetverticalScrollbarActionProc) =
  # TODO check subclass
  var tmp = new QListWidgetverticalScrollbarActionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_verticalScrollbarAction(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_verticalScrollbarAction(self: ptr cQListWidget, slot: int, action: cint): void {.exportc: "miqt_exec_callback_QListWidget_verticalScrollbarAction ".} =
  var nimfunc = cast[ptr QListWidgetverticalScrollbarActionProc](cast[pointer](slot))
  let slotval1 = action


  nimfunc[](slotval1)
proc QListWidgethorizontalScrollbarAction*(self: gen_qlistwidget_types.QListWidget, action: cint): void =
  fQListWidget_virtualbase_horizontalScrollbarAction(self.h, action)

type QListWidgethorizontalScrollbarActionProc* = proc(action: cint): void
proc onhorizontalScrollbarAction*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgethorizontalScrollbarActionProc) =
  # TODO check subclass
  var tmp = new QListWidgethorizontalScrollbarActionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_horizontalScrollbarAction(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_horizontalScrollbarAction(self: ptr cQListWidget, slot: int, action: cint): void {.exportc: "miqt_exec_callback_QListWidget_horizontalScrollbarAction ".} =
  var nimfunc = cast[ptr QListWidgethorizontalScrollbarActionProc](cast[pointer](slot))
  let slotval1 = action


  nimfunc[](slotval1)
proc QListWidgetverticalScrollbarValueChanged*(self: gen_qlistwidget_types.QListWidget, value: cint): void =
  fQListWidget_virtualbase_verticalScrollbarValueChanged(self.h, value)

type QListWidgetverticalScrollbarValueChangedProc* = proc(value: cint): void
proc onverticalScrollbarValueChanged*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetverticalScrollbarValueChangedProc) =
  # TODO check subclass
  var tmp = new QListWidgetverticalScrollbarValueChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_verticalScrollbarValueChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_verticalScrollbarValueChanged(self: ptr cQListWidget, slot: int, value: cint): void {.exportc: "miqt_exec_callback_QListWidget_verticalScrollbarValueChanged ".} =
  var nimfunc = cast[ptr QListWidgetverticalScrollbarValueChangedProc](cast[pointer](slot))
  let slotval1 = value


  nimfunc[](slotval1)
proc QListWidgethorizontalScrollbarValueChanged*(self: gen_qlistwidget_types.QListWidget, value: cint): void =
  fQListWidget_virtualbase_horizontalScrollbarValueChanged(self.h, value)

type QListWidgethorizontalScrollbarValueChangedProc* = proc(value: cint): void
proc onhorizontalScrollbarValueChanged*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgethorizontalScrollbarValueChangedProc) =
  # TODO check subclass
  var tmp = new QListWidgethorizontalScrollbarValueChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_horizontalScrollbarValueChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_horizontalScrollbarValueChanged(self: ptr cQListWidget, slot: int, value: cint): void {.exportc: "miqt_exec_callback_QListWidget_horizontalScrollbarValueChanged ".} =
  var nimfunc = cast[ptr QListWidgethorizontalScrollbarValueChangedProc](cast[pointer](slot))
  let slotval1 = value


  nimfunc[](slotval1)
proc QListWidgetcloseEditor*(self: gen_qlistwidget_types.QListWidget, editor: gen_qwidget_types.QWidget, hint: cint): void =
  fQListWidget_virtualbase_closeEditor(self.h, editor.h, cint(hint))

type QListWidgetcloseEditorProc* = proc(editor: gen_qwidget_types.QWidget, hint: cint): void
proc oncloseEditor*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetcloseEditorProc) =
  # TODO check subclass
  var tmp = new QListWidgetcloseEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_closeEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_closeEditor(self: ptr cQListWidget, slot: int, editor: pointer, hint: cint): void {.exportc: "miqt_exec_callback_QListWidget_closeEditor ".} =
  var nimfunc = cast[ptr QListWidgetcloseEditorProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: editor)

  let slotval2 = cint(hint)


  nimfunc[](slotval1, slotval2)
proc QListWidgetcommitData*(self: gen_qlistwidget_types.QListWidget, editor: gen_qwidget_types.QWidget): void =
  fQListWidget_virtualbase_commitData(self.h, editor.h)

type QListWidgetcommitDataProc* = proc(editor: gen_qwidget_types.QWidget): void
proc oncommitData*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetcommitDataProc) =
  # TODO check subclass
  var tmp = new QListWidgetcommitDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_commitData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_commitData(self: ptr cQListWidget, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QListWidget_commitData ".} =
  var nimfunc = cast[ptr QListWidgetcommitDataProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: editor)


  nimfunc[](slotval1)
proc QListWidgeteditorDestroyed*(self: gen_qlistwidget_types.QListWidget, editor: gen_qobject_types.QObject): void =
  fQListWidget_virtualbase_editorDestroyed(self.h, editor.h)

type QListWidgeteditorDestroyedProc* = proc(editor: gen_qobject_types.QObject): void
proc oneditorDestroyed*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgeteditorDestroyedProc) =
  # TODO check subclass
  var tmp = new QListWidgeteditorDestroyedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_editorDestroyed(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_editorDestroyed(self: ptr cQListWidget, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QListWidget_editorDestroyed ".} =
  var nimfunc = cast[ptr QListWidgeteditorDestroyedProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: editor)


  nimfunc[](slotval1)
proc QListWidgetedit*(self: gen_qlistwidget_types.QListWidget, index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool =
  fQListWidget_virtualbase_edit2(self.h, index.h, cint(trigger), event.h)

type QListWidgetedit2Proc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool
proc onedit*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetedit2Proc) =
  # TODO check subclass
  var tmp = new QListWidgetedit2Proc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_edit2(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_edit2(self: ptr cQListWidget, slot: int, index: pointer, trigger: cint, event: pointer): bool {.exportc: "miqt_exec_callback_QListWidget_edit2 ".} =
  var nimfunc = cast[ptr QListWidgetedit2Proc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = cint(trigger)

  let slotval3 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QListWidgetselectionCommand*(self: gen_qlistwidget_types.QListWidget, index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint =
  cint(fQListWidget_virtualbase_selectionCommand(self.h, index.h, event.h))

type QListWidgetselectionCommandProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint
proc onselectionCommand*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetselectionCommandProc) =
  # TODO check subclass
  var tmp = new QListWidgetselectionCommandProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_selectionCommand(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_selectionCommand(self: ptr cQListWidget, slot: int, index: pointer, event: pointer): cint {.exportc: "miqt_exec_callback_QListWidget_selectionCommand ".} =
  var nimfunc = cast[ptr QListWidgetselectionCommandProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  cint(virtualReturn)
proc QListWidgetfocusNextPrevChild*(self: gen_qlistwidget_types.QListWidget, next: bool): bool =
  fQListWidget_virtualbase_focusNextPrevChild(self.h, next)

type QListWidgetfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QListWidgetfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_focusNextPrevChild(self: ptr cQListWidget, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QListWidget_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QListWidgetfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QListWidgetviewportEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qcoreevent_types.QEvent): bool =
  fQListWidget_virtualbase_viewportEvent(self.h, event.h)

type QListWidgetviewportEventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onviewportEvent*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetviewportEventProc) =
  # TODO check subclass
  var tmp = new QListWidgetviewportEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_viewportEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_viewportEvent(self: ptr cQListWidget, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QListWidget_viewportEvent ".} =
  var nimfunc = cast[ptr QListWidgetviewportEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QListWidgetmousePressEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qevent_types.QMouseEvent): void =
  fQListWidget_virtualbase_mousePressEvent(self.h, event.h)

type QListWidgetmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetmousePressEventProc) =
  # TODO check subclass
  var tmp = new QListWidgetmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_mousePressEvent(self: ptr cQListWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListWidget_mousePressEvent ".} =
  var nimfunc = cast[ptr QListWidgetmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QListWidgetmouseDoubleClickEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qevent_types.QMouseEvent): void =
  fQListWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QListWidgetmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QListWidgetmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_mouseDoubleClickEvent(self: ptr cQListWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListWidget_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QListWidgetmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QListWidgetdragEnterEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qevent_types.QDragEnterEvent): void =
  fQListWidget_virtualbase_dragEnterEvent(self.h, event.h)

type QListWidgetdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QListWidgetdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_dragEnterEvent(self: ptr cQListWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListWidget_dragEnterEvent ".} =
  var nimfunc = cast[ptr QListWidgetdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QListWidgetfocusInEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qevent_types.QFocusEvent): void =
  fQListWidget_virtualbase_focusInEvent(self.h, event.h)

type QListWidgetfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetfocusInEventProc) =
  # TODO check subclass
  var tmp = new QListWidgetfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_focusInEvent(self: ptr cQListWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListWidget_focusInEvent ".} =
  var nimfunc = cast[ptr QListWidgetfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QListWidgetfocusOutEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qevent_types.QFocusEvent): void =
  fQListWidget_virtualbase_focusOutEvent(self.h, event.h)

type QListWidgetfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QListWidgetfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_focusOutEvent(self: ptr cQListWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListWidget_focusOutEvent ".} =
  var nimfunc = cast[ptr QListWidgetfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QListWidgetkeyPressEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qevent_types.QKeyEvent): void =
  fQListWidget_virtualbase_keyPressEvent(self.h, event.h)

type QListWidgetkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QListWidgetkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_keyPressEvent(self: ptr cQListWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListWidget_keyPressEvent ".} =
  var nimfunc = cast[ptr QListWidgetkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QListWidgetinputMethodEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qevent_types.QInputMethodEvent): void =
  fQListWidget_virtualbase_inputMethodEvent(self.h, event.h)

type QListWidgetinputMethodEventProc* = proc(event: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QListWidgetinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_inputMethodEvent(self: ptr cQListWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListWidget_inputMethodEvent ".} =
  var nimfunc = cast[ptr QListWidgetinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)


  nimfunc[](slotval1)
proc QListWidgeteventFilter*(self: gen_qlistwidget_types.QListWidget, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQListWidget_virtualbase_eventFilter(self.h, objectVal.h, event.h)

type QListWidgeteventFilterProc* = proc(objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgeteventFilterProc) =
  # TODO check subclass
  var tmp = new QListWidgeteventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_eventFilter(self: ptr cQListWidget, slot: int, objectVal: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QListWidget_eventFilter ".} =
  var nimfunc = cast[ptr QListWidgeteventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: objectVal)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QListWidgetminimumSizeHint*(self: gen_qlistwidget_types.QListWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQListWidget_virtualbase_minimumSizeHint(self.h))

type QListWidgetminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QListWidgetminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_minimumSizeHint(self: ptr cQListWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QListWidget_minimumSizeHint ".} =
  var nimfunc = cast[ptr QListWidgetminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QListWidgetsizeHint*(self: gen_qlistwidget_types.QListWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQListWidget_virtualbase_sizeHint(self.h))

type QListWidgetsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetsizeHintProc) =
  # TODO check subclass
  var tmp = new QListWidgetsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_sizeHint(self: ptr cQListWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QListWidget_sizeHint ".} =
  var nimfunc = cast[ptr QListWidgetsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QListWidgetsetupViewport*(self: gen_qlistwidget_types.QListWidget, viewport: gen_qwidget_types.QWidget): void =
  fQListWidget_virtualbase_setupViewport(self.h, viewport.h)

type QListWidgetsetupViewportProc* = proc(viewport: gen_qwidget_types.QWidget): void
proc onsetupViewport*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetsetupViewportProc) =
  # TODO check subclass
  var tmp = new QListWidgetsetupViewportProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_setupViewport(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_setupViewport(self: ptr cQListWidget, slot: int, viewport: pointer): void {.exportc: "miqt_exec_callback_QListWidget_setupViewport ".} =
  var nimfunc = cast[ptr QListWidgetsetupViewportProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: viewport)


  nimfunc[](slotval1)
proc QListWidgetcontextMenuEvent*(self: gen_qlistwidget_types.QListWidget, param1: gen_qevent_types.QContextMenuEvent): void =
  fQListWidget_virtualbase_contextMenuEvent(self.h, param1.h)

type QListWidgetcontextMenuEventProc* = proc(param1: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QListWidgetcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_contextMenuEvent(self: ptr cQListWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QListWidget_contextMenuEvent ".} =
  var nimfunc = cast[ptr QListWidgetcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)


  nimfunc[](slotval1)
proc QListWidgetchangeEvent*(self: gen_qlistwidget_types.QListWidget, param1: gen_qcoreevent_types.QEvent): void =
  fQListWidget_virtualbase_changeEvent(self.h, param1.h)

type QListWidgetchangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetchangeEventProc) =
  # TODO check subclass
  var tmp = new QListWidgetchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_changeEvent(self: ptr cQListWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QListWidget_changeEvent ".} =
  var nimfunc = cast[ptr QListWidgetchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QListWidgetinitStyleOption*(self: gen_qlistwidget_types.QListWidget, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fQListWidget_virtualbase_initStyleOption(self.h, option.h)

type QListWidgetinitStyleOptionProc* = proc(option: gen_qstyleoption_types.QStyleOptionFrame): void
proc oninitStyleOption*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetinitStyleOptionProc) =
  # TODO check subclass
  var tmp = new QListWidgetinitStyleOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_initStyleOption(self: ptr cQListWidget, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QListWidget_initStyleOption ".} =
  var nimfunc = cast[ptr QListWidgetinitStyleOptionProc](cast[pointer](slot))
  let slotval1 = gen_qstyleoption_types.QStyleOptionFrame(h: option)


  nimfunc[](slotval1)
proc QListWidgetdevType*(self: gen_qlistwidget_types.QListWidget, ): cint =
  fQListWidget_virtualbase_devType(self.h)

type QListWidgetdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetdevTypeProc) =
  # TODO check subclass
  var tmp = new QListWidgetdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_devType(self: ptr cQListWidget, slot: int): cint {.exportc: "miqt_exec_callback_QListWidget_devType ".} =
  var nimfunc = cast[ptr QListWidgetdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QListWidgetsetVisible*(self: gen_qlistwidget_types.QListWidget, visible: bool): void =
  fQListWidget_virtualbase_setVisible(self.h, visible)

type QListWidgetsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetsetVisibleProc) =
  # TODO check subclass
  var tmp = new QListWidgetsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_setVisible(self: ptr cQListWidget, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QListWidget_setVisible ".} =
  var nimfunc = cast[ptr QListWidgetsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QListWidgetheightForWidth*(self: gen_qlistwidget_types.QListWidget, param1: cint): cint =
  fQListWidget_virtualbase_heightForWidth(self.h, param1)

type QListWidgetheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetheightForWidthProc) =
  # TODO check subclass
  var tmp = new QListWidgetheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_heightForWidth(self: ptr cQListWidget, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QListWidget_heightForWidth ".} =
  var nimfunc = cast[ptr QListWidgetheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QListWidgethasHeightForWidth*(self: gen_qlistwidget_types.QListWidget, ): bool =
  fQListWidget_virtualbase_hasHeightForWidth(self.h)

type QListWidgethasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgethasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QListWidgethasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_hasHeightForWidth(self: ptr cQListWidget, slot: int): bool {.exportc: "miqt_exec_callback_QListWidget_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QListWidgethasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QListWidgetpaintEngine*(self: gen_qlistwidget_types.QListWidget, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQListWidget_virtualbase_paintEngine(self.h))

type QListWidgetpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetpaintEngineProc) =
  # TODO check subclass
  var tmp = new QListWidgetpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_paintEngine(self: ptr cQListWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QListWidget_paintEngine ".} =
  var nimfunc = cast[ptr QListWidgetpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QListWidgetkeyReleaseEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qevent_types.QKeyEvent): void =
  fQListWidget_virtualbase_keyReleaseEvent(self.h, event.h)

type QListWidgetkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QListWidgetkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_keyReleaseEvent(self: ptr cQListWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListWidget_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QListWidgetkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QListWidgetenterEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qevent_types.QEnterEvent): void =
  fQListWidget_virtualbase_enterEvent(self.h, event.h)

type QListWidgetenterEventProc* = proc(event: gen_qevent_types.QEnterEvent): void
proc onenterEvent*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetenterEventProc) =
  # TODO check subclass
  var tmp = new QListWidgetenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_enterEvent(self: ptr cQListWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListWidget_enterEvent ".} =
  var nimfunc = cast[ptr QListWidgetenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)


  nimfunc[](slotval1)
proc QListWidgetleaveEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qcoreevent_types.QEvent): void =
  fQListWidget_virtualbase_leaveEvent(self.h, event.h)

type QListWidgetleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetleaveEventProc) =
  # TODO check subclass
  var tmp = new QListWidgetleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_leaveEvent(self: ptr cQListWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListWidget_leaveEvent ".} =
  var nimfunc = cast[ptr QListWidgetleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QListWidgetmoveEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qevent_types.QMoveEvent): void =
  fQListWidget_virtualbase_moveEvent(self.h, event.h)

type QListWidgetmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetmoveEventProc) =
  # TODO check subclass
  var tmp = new QListWidgetmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_moveEvent(self: ptr cQListWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListWidget_moveEvent ".} =
  var nimfunc = cast[ptr QListWidgetmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QListWidgetcloseEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qevent_types.QCloseEvent): void =
  fQListWidget_virtualbase_closeEvent(self.h, event.h)

type QListWidgetcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetcloseEventProc) =
  # TODO check subclass
  var tmp = new QListWidgetcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_closeEvent(self: ptr cQListWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListWidget_closeEvent ".} =
  var nimfunc = cast[ptr QListWidgetcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QListWidgettabletEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qevent_types.QTabletEvent): void =
  fQListWidget_virtualbase_tabletEvent(self.h, event.h)

type QListWidgettabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgettabletEventProc) =
  # TODO check subclass
  var tmp = new QListWidgettabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_tabletEvent(self: ptr cQListWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListWidget_tabletEvent ".} =
  var nimfunc = cast[ptr QListWidgettabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QListWidgetactionEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qevent_types.QActionEvent): void =
  fQListWidget_virtualbase_actionEvent(self.h, event.h)

type QListWidgetactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetactionEventProc) =
  # TODO check subclass
  var tmp = new QListWidgetactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_actionEvent(self: ptr cQListWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListWidget_actionEvent ".} =
  var nimfunc = cast[ptr QListWidgetactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QListWidgetshowEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qevent_types.QShowEvent): void =
  fQListWidget_virtualbase_showEvent(self.h, event.h)

type QListWidgetshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetshowEventProc) =
  # TODO check subclass
  var tmp = new QListWidgetshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_showEvent(self: ptr cQListWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListWidget_showEvent ".} =
  var nimfunc = cast[ptr QListWidgetshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QListWidgethideEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qevent_types.QHideEvent): void =
  fQListWidget_virtualbase_hideEvent(self.h, event.h)

type QListWidgethideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgethideEventProc) =
  # TODO check subclass
  var tmp = new QListWidgethideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_hideEvent(self: ptr cQListWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListWidget_hideEvent ".} =
  var nimfunc = cast[ptr QListWidgethideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QListWidgetnativeEvent*(self: gen_qlistwidget_types.QListWidget, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQListWidget_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QListWidgetnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetnativeEventProc) =
  # TODO check subclass
  var tmp = new QListWidgetnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_nativeEvent(self: ptr cQListWidget, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QListWidget_nativeEvent ".} =
  var nimfunc = cast[ptr QListWidgetnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QListWidgetmetric*(self: gen_qlistwidget_types.QListWidget, param1: cint): cint =
  fQListWidget_virtualbase_metric(self.h, cint(param1))

type QListWidgetmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetmetricProc) =
  # TODO check subclass
  var tmp = new QListWidgetmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_metric(self: ptr cQListWidget, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QListWidget_metric ".} =
  var nimfunc = cast[ptr QListWidgetmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QListWidgetinitPainter*(self: gen_qlistwidget_types.QListWidget, painter: gen_qpainter_types.QPainter): void =
  fQListWidget_virtualbase_initPainter(self.h, painter.h)

type QListWidgetinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetinitPainterProc) =
  # TODO check subclass
  var tmp = new QListWidgetinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_initPainter(self: ptr cQListWidget, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QListWidget_initPainter ".} =
  var nimfunc = cast[ptr QListWidgetinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QListWidgetredirected*(self: gen_qlistwidget_types.QListWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQListWidget_virtualbase_redirected(self.h, offset.h))

type QListWidgetredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetredirectedProc) =
  # TODO check subclass
  var tmp = new QListWidgetredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_redirected(self: ptr cQListWidget, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QListWidget_redirected ".} =
  var nimfunc = cast[ptr QListWidgetredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QListWidgetsharedPainter*(self: gen_qlistwidget_types.QListWidget, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQListWidget_virtualbase_sharedPainter(self.h))

type QListWidgetsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetsharedPainterProc) =
  # TODO check subclass
  var tmp = new QListWidgetsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_sharedPainter(self: ptr cQListWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QListWidget_sharedPainter ".} =
  var nimfunc = cast[ptr QListWidgetsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QListWidgetchildEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qcoreevent_types.QChildEvent): void =
  fQListWidget_virtualbase_childEvent(self.h, event.h)

type QListWidgetchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetchildEventProc) =
  # TODO check subclass
  var tmp = new QListWidgetchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_childEvent(self: ptr cQListWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListWidget_childEvent ".} =
  var nimfunc = cast[ptr QListWidgetchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QListWidgetcustomEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qcoreevent_types.QEvent): void =
  fQListWidget_virtualbase_customEvent(self.h, event.h)

type QListWidgetcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetcustomEventProc) =
  # TODO check subclass
  var tmp = new QListWidgetcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_customEvent(self: ptr cQListWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListWidget_customEvent ".} =
  var nimfunc = cast[ptr QListWidgetcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QListWidgetconnectNotify*(self: gen_qlistwidget_types.QListWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQListWidget_virtualbase_connectNotify(self.h, signal.h)

type QListWidgetconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QListWidgetconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_connectNotify(self: ptr cQListWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QListWidget_connectNotify ".} =
  var nimfunc = cast[ptr QListWidgetconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QListWidgetdisconnectNotify*(self: gen_qlistwidget_types.QListWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQListWidget_virtualbase_disconnectNotify(self.h, signal.h)

type QListWidgetdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QListWidgetdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_disconnectNotify(self: ptr cQListWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QListWidget_disconnectNotify ".} =
  var nimfunc = cast[ptr QListWidgetdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qlistwidget_types.QListWidget) =
  fcQListWidget_delete(self.h)
