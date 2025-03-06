import ./Qt5Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt5Widgets")  & " -fPIC"
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
  ../QtCore/gen_qmargins_types,
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
  ./gen_qlistview,
  ./gen_qstyleoption_types,
  ./gen_qwidget_types
export
  gen_qabstractitemmodel_types,
  gen_qcoreevent_types,
  gen_qdatastream_types,
  gen_qitemselectionmodel_types,
  gen_qmargins_types,
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
  gen_qlistview,
  gen_qstyleoption_types,
  gen_qwidget_types

type cQListWidgetItem*{.exportc: "QListWidgetItem", incompleteStruct.} = object
type cQListWidget*{.exportc: "QListWidget", incompleteStruct.} = object

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
proc fcQListWidgetItem_backgroundColor(self: pointer, ): pointer {.importc: "QListWidgetItem_backgroundColor".}
proc fcQListWidgetItem_setBackgroundColor(self: pointer, color: pointer): void {.importc: "QListWidgetItem_setBackgroundColor".}
proc fcQListWidgetItem_background(self: pointer, ): pointer {.importc: "QListWidgetItem_background".}
proc fcQListWidgetItem_setBackground(self: pointer, brush: pointer): void {.importc: "QListWidgetItem_setBackground".}
proc fcQListWidgetItem_textColor(self: pointer, ): pointer {.importc: "QListWidgetItem_textColor".}
proc fcQListWidgetItem_setTextColor(self: pointer, color: pointer): void {.importc: "QListWidgetItem_setTextColor".}
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
type cQListWidgetItemVTable = object
  destructor*: proc(vtbl: ptr cQListWidgetItemVTable, self: ptr cQListWidgetItem) {.cdecl, raises:[], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setBackgroundColor*: proc(vtbl, self: pointer, color: pointer): void {.cdecl, raises: [], gcsafe.}
  data*: proc(vtbl, self: pointer, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  setData*: proc(vtbl, self: pointer, role: cint, value: pointer): void {.cdecl, raises: [], gcsafe.}
  operatorLesser*: proc(vtbl, self: pointer, other: pointer): bool {.cdecl, raises: [], gcsafe.}
  read*: proc(vtbl, self: pointer, inVal: pointer): void {.cdecl, raises: [], gcsafe.}
  write*: proc(vtbl, self: pointer, outVal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQListWidgetItem_virtualbase_clone(self: pointer, ): pointer {.importc: "QListWidgetItem_virtualbase_clone".}
proc fcQListWidgetItem_virtualbase_setBackgroundColor(self: pointer, color: pointer): void {.importc: "QListWidgetItem_virtualbase_setBackgroundColor".}
proc fcQListWidgetItem_virtualbase_data(self: pointer, role: cint): pointer {.importc: "QListWidgetItem_virtualbase_data".}
proc fcQListWidgetItem_virtualbase_setData(self: pointer, role: cint, value: pointer): void {.importc: "QListWidgetItem_virtualbase_setData".}
proc fcQListWidgetItem_virtualbase_operatorLesser(self: pointer, other: pointer): bool {.importc: "QListWidgetItem_virtualbase_operatorLesser".}
proc fcQListWidgetItem_virtualbase_read(self: pointer, inVal: pointer): void {.importc: "QListWidgetItem_virtualbase_read".}
proc fcQListWidgetItem_virtualbase_write(self: pointer, outVal: pointer): void {.importc: "QListWidgetItem_virtualbase_write".}
proc fcQListWidgetItem_new(vtbl: pointer, ): ptr cQListWidgetItem {.importc: "QListWidgetItem_new".}
proc fcQListWidgetItem_new2(vtbl: pointer, text: struct_miqt_string): ptr cQListWidgetItem {.importc: "QListWidgetItem_new2".}
proc fcQListWidgetItem_new3(vtbl: pointer, icon: pointer, text: struct_miqt_string): ptr cQListWidgetItem {.importc: "QListWidgetItem_new3".}
proc fcQListWidgetItem_new4(vtbl: pointer, other: pointer): ptr cQListWidgetItem {.importc: "QListWidgetItem_new4".}
proc fcQListWidgetItem_new5(vtbl: pointer, listview: pointer): ptr cQListWidgetItem {.importc: "QListWidgetItem_new5".}
proc fcQListWidgetItem_new6(vtbl: pointer, listview: pointer, typeVal: cint): ptr cQListWidgetItem {.importc: "QListWidgetItem_new6".}
proc fcQListWidgetItem_new7(vtbl: pointer, text: struct_miqt_string, listview: pointer): ptr cQListWidgetItem {.importc: "QListWidgetItem_new7".}
proc fcQListWidgetItem_new8(vtbl: pointer, text: struct_miqt_string, listview: pointer, typeVal: cint): ptr cQListWidgetItem {.importc: "QListWidgetItem_new8".}
proc fcQListWidgetItem_new9(vtbl: pointer, icon: pointer, text: struct_miqt_string, listview: pointer): ptr cQListWidgetItem {.importc: "QListWidgetItem_new9".}
proc fcQListWidgetItem_new10(vtbl: pointer, icon: pointer, text: struct_miqt_string, listview: pointer, typeVal: cint): ptr cQListWidgetItem {.importc: "QListWidgetItem_new10".}
proc fcQListWidgetItem_delete(self: pointer) {.importc: "QListWidgetItem_delete".}
proc fcQListWidget_metaObject(self: pointer, ): pointer {.importc: "QListWidget_metaObject".}
proc fcQListWidget_metacast(self: pointer, param1: cstring): pointer {.importc: "QListWidget_metacast".}
proc fcQListWidget_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QListWidget_metacall".}
proc fcQListWidget_tr(s: cstring): struct_miqt_string {.importc: "QListWidget_tr".}
proc fcQListWidget_trUtf8(s: cstring): struct_miqt_string {.importc: "QListWidget_trUtf8".}
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
proc fcQListWidget_isItemSelected(self: pointer, item: pointer): bool {.importc: "QListWidget_isItemSelected".}
proc fcQListWidget_setItemSelected(self: pointer, item: pointer, select: bool): void {.importc: "QListWidget_setItemSelected".}
proc fcQListWidget_selectedItems(self: pointer, ): struct_miqt_array {.importc: "QListWidget_selectedItems".}
proc fcQListWidget_findItems(self: pointer, text: struct_miqt_string, flags: cint): struct_miqt_array {.importc: "QListWidget_findItems".}
proc fcQListWidget_isItemHidden(self: pointer, item: pointer): bool {.importc: "QListWidget_isItemHidden".}
proc fcQListWidget_setItemHidden(self: pointer, item: pointer, hide: bool): void {.importc: "QListWidget_setItemHidden".}
proc fcQListWidget_dropEvent(self: pointer, event: pointer): void {.importc: "QListWidget_dropEvent".}
proc fcQListWidget_scrollToItem(self: pointer, item: pointer): void {.importc: "QListWidget_scrollToItem".}
proc fcQListWidget_clear(self: pointer, ): void {.importc: "QListWidget_clear".}
proc fcQListWidget_itemPressed(self: pointer, item: pointer): void {.importc: "QListWidget_itemPressed".}
proc fcQListWidget_connect_itemPressed(self: pointer, slot: int, callback: proc (slot: int, item: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QListWidget_connect_itemPressed".}
proc fcQListWidget_itemClicked(self: pointer, item: pointer): void {.importc: "QListWidget_itemClicked".}
proc fcQListWidget_connect_itemClicked(self: pointer, slot: int, callback: proc (slot: int, item: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QListWidget_connect_itemClicked".}
proc fcQListWidget_itemDoubleClicked(self: pointer, item: pointer): void {.importc: "QListWidget_itemDoubleClicked".}
proc fcQListWidget_connect_itemDoubleClicked(self: pointer, slot: int, callback: proc (slot: int, item: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QListWidget_connect_itemDoubleClicked".}
proc fcQListWidget_itemActivated(self: pointer, item: pointer): void {.importc: "QListWidget_itemActivated".}
proc fcQListWidget_connect_itemActivated(self: pointer, slot: int, callback: proc (slot: int, item: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QListWidget_connect_itemActivated".}
proc fcQListWidget_itemEntered(self: pointer, item: pointer): void {.importc: "QListWidget_itemEntered".}
proc fcQListWidget_connect_itemEntered(self: pointer, slot: int, callback: proc (slot: int, item: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QListWidget_connect_itemEntered".}
proc fcQListWidget_itemChanged(self: pointer, item: pointer): void {.importc: "QListWidget_itemChanged".}
proc fcQListWidget_connect_itemChanged(self: pointer, slot: int, callback: proc (slot: int, item: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QListWidget_connect_itemChanged".}
proc fcQListWidget_currentItemChanged(self: pointer, current: pointer, previous: pointer): void {.importc: "QListWidget_currentItemChanged".}
proc fcQListWidget_connect_currentItemChanged(self: pointer, slot: int, callback: proc (slot: int, current: pointer, previous: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QListWidget_connect_currentItemChanged".}
proc fcQListWidget_currentTextChanged(self: pointer, currentText: struct_miqt_string): void {.importc: "QListWidget_currentTextChanged".}
proc fcQListWidget_connect_currentTextChanged(self: pointer, slot: int, callback: proc (slot: int, currentText: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QListWidget_connect_currentTextChanged".}
proc fcQListWidget_currentRowChanged(self: pointer, currentRow: cint): void {.importc: "QListWidget_currentRowChanged".}
proc fcQListWidget_connect_currentRowChanged(self: pointer, slot: int, callback: proc (slot: int, currentRow: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QListWidget_connect_currentRowChanged".}
proc fcQListWidget_itemSelectionChanged(self: pointer, ): void {.importc: "QListWidget_itemSelectionChanged".}
proc fcQListWidget_connect_itemSelectionChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QListWidget_connect_itemSelectionChanged".}
proc fcQListWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QListWidget_tr2".}
proc fcQListWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QListWidget_tr3".}
proc fcQListWidget_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QListWidget_trUtf82".}
proc fcQListWidget_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QListWidget_trUtf83".}
proc fcQListWidget_sortItems1(self: pointer, order: cint): void {.importc: "QListWidget_sortItems1".}
proc fcQListWidget_scrollToItem2(self: pointer, item: pointer, hint: cint): void {.importc: "QListWidget_scrollToItem2".}
type cQListWidgetVTable = object
  destructor*: proc(vtbl: ptr cQListWidgetVTable, self: ptr cQListWidget) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setSelectionModel*: proc(vtbl, self: pointer, selectionModel: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  mimeTypes*: proc(vtbl, self: pointer, ): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  mimeData*: proc(vtbl, self: pointer, items: struct_miqt_array): pointer {.cdecl, raises: [], gcsafe.}
  dropMimeData*: proc(vtbl, self: pointer, index: cint, data: pointer, action: cint): bool {.cdecl, raises: [], gcsafe.}
  supportedDropActions*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  visualRect*: proc(vtbl, self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  scrollTo*: proc(vtbl, self: pointer, index: pointer, hint: cint): void {.cdecl, raises: [], gcsafe.}
  indexAt*: proc(vtbl, self: pointer, p: pointer): pointer {.cdecl, raises: [], gcsafe.}
  doItemsLayout*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  reset*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  setRootIndex*: proc(vtbl, self: pointer, index: pointer): void {.cdecl, raises: [], gcsafe.}
  scrollContentsBy*: proc(vtbl, self: pointer, dx: cint, dy: cint): void {.cdecl, raises: [], gcsafe.}
  dataChanged*: proc(vtbl, self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.cdecl, raises: [], gcsafe.}
  rowsInserted*: proc(vtbl, self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl, raises: [], gcsafe.}
  rowsAboutToBeRemoved*: proc(vtbl, self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  startDrag*: proc(vtbl, self: pointer, supportedActions: cint): void {.cdecl, raises: [], gcsafe.}
  viewOptions*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  horizontalOffset*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  verticalOffset*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  moveCursor*: proc(vtbl, self: pointer, cursorAction: cint, modifiers: cint): pointer {.cdecl, raises: [], gcsafe.}
  setSelection*: proc(vtbl, self: pointer, rect: pointer, command: cint): void {.cdecl, raises: [], gcsafe.}
  visualRegionForSelection*: proc(vtbl, self: pointer, selection: pointer): pointer {.cdecl, raises: [], gcsafe.}
  selectedIndexes*: proc(vtbl, self: pointer, ): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  updateGeometries*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  isIndexHidden*: proc(vtbl, self: pointer, index: pointer): bool {.cdecl, raises: [], gcsafe.}
  selectionChanged*: proc(vtbl, self: pointer, selected: pointer, deselected: pointer): void {.cdecl, raises: [], gcsafe.}
  currentChanged*: proc(vtbl, self: pointer, current: pointer, previous: pointer): void {.cdecl, raises: [], gcsafe.}
  viewportSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  keyboardSearch*: proc(vtbl, self: pointer, search: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
  sizeHintForRow*: proc(vtbl, self: pointer, row: cint): cint {.cdecl, raises: [], gcsafe.}
  sizeHintForColumn*: proc(vtbl, self: pointer, column: cint): cint {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, query: cint): pointer {.cdecl, raises: [], gcsafe.}
  selectAll*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  updateEditorData*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  updateEditorGeometries*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  verticalScrollbarAction*: proc(vtbl, self: pointer, action: cint): void {.cdecl, raises: [], gcsafe.}
  horizontalScrollbarAction*: proc(vtbl, self: pointer, action: cint): void {.cdecl, raises: [], gcsafe.}
  verticalScrollbarValueChanged*: proc(vtbl, self: pointer, value: cint): void {.cdecl, raises: [], gcsafe.}
  horizontalScrollbarValueChanged*: proc(vtbl, self: pointer, value: cint): void {.cdecl, raises: [], gcsafe.}
  closeEditor*: proc(vtbl, self: pointer, editor: pointer, hint: cint): void {.cdecl, raises: [], gcsafe.}
  commitData*: proc(vtbl, self: pointer, editor: pointer): void {.cdecl, raises: [], gcsafe.}
  editorDestroyed*: proc(vtbl, self: pointer, editor: pointer): void {.cdecl, raises: [], gcsafe.}
  edit2*: proc(vtbl, self: pointer, index: pointer, trigger: cint, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  selectionCommand*: proc(vtbl, self: pointer, index: pointer, event: pointer): cint {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(vtbl, self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  viewportEvent*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, objectVal: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setupViewport*: proc(vtbl, self: pointer, viewport: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
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
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQListWidget_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QListWidget_virtualbase_metaObject".}
proc fcQListWidget_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QListWidget_virtualbase_metacast".}
proc fcQListWidget_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QListWidget_virtualbase_metacall".}
proc fcQListWidget_virtualbase_setSelectionModel(self: pointer, selectionModel: pointer): void {.importc: "QListWidget_virtualbase_setSelectionModel".}
proc fcQListWidget_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QListWidget_virtualbase_dropEvent".}
proc fcQListWidget_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QListWidget_virtualbase_event".}
proc fcQListWidget_virtualbase_mimeTypes(self: pointer, ): struct_miqt_array {.importc: "QListWidget_virtualbase_mimeTypes".}
proc fcQListWidget_virtualbase_mimeData(self: pointer, items: struct_miqt_array): pointer {.importc: "QListWidget_virtualbase_mimeData".}
proc fcQListWidget_virtualbase_dropMimeData(self: pointer, index: cint, data: pointer, action: cint): bool {.importc: "QListWidget_virtualbase_dropMimeData".}
proc fcQListWidget_virtualbase_supportedDropActions(self: pointer, ): cint {.importc: "QListWidget_virtualbase_supportedDropActions".}
proc fcQListWidget_virtualbase_visualRect(self: pointer, index: pointer): pointer {.importc: "QListWidget_virtualbase_visualRect".}
proc fcQListWidget_virtualbase_scrollTo(self: pointer, index: pointer, hint: cint): void {.importc: "QListWidget_virtualbase_scrollTo".}
proc fcQListWidget_virtualbase_indexAt(self: pointer, p: pointer): pointer {.importc: "QListWidget_virtualbase_indexAt".}
proc fcQListWidget_virtualbase_doItemsLayout(self: pointer, ): void {.importc: "QListWidget_virtualbase_doItemsLayout".}
proc fcQListWidget_virtualbase_reset(self: pointer, ): void {.importc: "QListWidget_virtualbase_reset".}
proc fcQListWidget_virtualbase_setRootIndex(self: pointer, index: pointer): void {.importc: "QListWidget_virtualbase_setRootIndex".}
proc fcQListWidget_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.importc: "QListWidget_virtualbase_scrollContentsBy".}
proc fcQListWidget_virtualbase_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.importc: "QListWidget_virtualbase_dataChanged".}
proc fcQListWidget_virtualbase_rowsInserted(self: pointer, parent: pointer, start: cint, endVal: cint): void {.importc: "QListWidget_virtualbase_rowsInserted".}
proc fcQListWidget_virtualbase_rowsAboutToBeRemoved(self: pointer, parent: pointer, start: cint, endVal: cint): void {.importc: "QListWidget_virtualbase_rowsAboutToBeRemoved".}
proc fcQListWidget_virtualbase_mouseMoveEvent(self: pointer, e: pointer): void {.importc: "QListWidget_virtualbase_mouseMoveEvent".}
proc fcQListWidget_virtualbase_mouseReleaseEvent(self: pointer, e: pointer): void {.importc: "QListWidget_virtualbase_mouseReleaseEvent".}
proc fcQListWidget_virtualbase_wheelEvent(self: pointer, e: pointer): void {.importc: "QListWidget_virtualbase_wheelEvent".}
proc fcQListWidget_virtualbase_timerEvent(self: pointer, e: pointer): void {.importc: "QListWidget_virtualbase_timerEvent".}
proc fcQListWidget_virtualbase_resizeEvent(self: pointer, e: pointer): void {.importc: "QListWidget_virtualbase_resizeEvent".}
proc fcQListWidget_virtualbase_dragMoveEvent(self: pointer, e: pointer): void {.importc: "QListWidget_virtualbase_dragMoveEvent".}
proc fcQListWidget_virtualbase_dragLeaveEvent(self: pointer, e: pointer): void {.importc: "QListWidget_virtualbase_dragLeaveEvent".}
proc fcQListWidget_virtualbase_startDrag(self: pointer, supportedActions: cint): void {.importc: "QListWidget_virtualbase_startDrag".}
proc fcQListWidget_virtualbase_viewOptions(self: pointer, ): pointer {.importc: "QListWidget_virtualbase_viewOptions".}
proc fcQListWidget_virtualbase_paintEvent(self: pointer, e: pointer): void {.importc: "QListWidget_virtualbase_paintEvent".}
proc fcQListWidget_virtualbase_horizontalOffset(self: pointer, ): cint {.importc: "QListWidget_virtualbase_horizontalOffset".}
proc fcQListWidget_virtualbase_verticalOffset(self: pointer, ): cint {.importc: "QListWidget_virtualbase_verticalOffset".}
proc fcQListWidget_virtualbase_moveCursor(self: pointer, cursorAction: cint, modifiers: cint): pointer {.importc: "QListWidget_virtualbase_moveCursor".}
proc fcQListWidget_virtualbase_setSelection(self: pointer, rect: pointer, command: cint): void {.importc: "QListWidget_virtualbase_setSelection".}
proc fcQListWidget_virtualbase_visualRegionForSelection(self: pointer, selection: pointer): pointer {.importc: "QListWidget_virtualbase_visualRegionForSelection".}
proc fcQListWidget_virtualbase_selectedIndexes(self: pointer, ): struct_miqt_array {.importc: "QListWidget_virtualbase_selectedIndexes".}
proc fcQListWidget_virtualbase_updateGeometries(self: pointer, ): void {.importc: "QListWidget_virtualbase_updateGeometries".}
proc fcQListWidget_virtualbase_isIndexHidden(self: pointer, index: pointer): bool {.importc: "QListWidget_virtualbase_isIndexHidden".}
proc fcQListWidget_virtualbase_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void {.importc: "QListWidget_virtualbase_selectionChanged".}
proc fcQListWidget_virtualbase_currentChanged(self: pointer, current: pointer, previous: pointer): void {.importc: "QListWidget_virtualbase_currentChanged".}
proc fcQListWidget_virtualbase_viewportSizeHint(self: pointer, ): pointer {.importc: "QListWidget_virtualbase_viewportSizeHint".}
proc fcQListWidget_virtualbase_keyboardSearch(self: pointer, search: struct_miqt_string): void {.importc: "QListWidget_virtualbase_keyboardSearch".}
proc fcQListWidget_virtualbase_sizeHintForRow(self: pointer, row: cint): cint {.importc: "QListWidget_virtualbase_sizeHintForRow".}
proc fcQListWidget_virtualbase_sizeHintForColumn(self: pointer, column: cint): cint {.importc: "QListWidget_virtualbase_sizeHintForColumn".}
proc fcQListWidget_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QListWidget_virtualbase_inputMethodQuery".}
proc fcQListWidget_virtualbase_selectAll(self: pointer, ): void {.importc: "QListWidget_virtualbase_selectAll".}
proc fcQListWidget_virtualbase_updateEditorData(self: pointer, ): void {.importc: "QListWidget_virtualbase_updateEditorData".}
proc fcQListWidget_virtualbase_updateEditorGeometries(self: pointer, ): void {.importc: "QListWidget_virtualbase_updateEditorGeometries".}
proc fcQListWidget_virtualbase_verticalScrollbarAction(self: pointer, action: cint): void {.importc: "QListWidget_virtualbase_verticalScrollbarAction".}
proc fcQListWidget_virtualbase_horizontalScrollbarAction(self: pointer, action: cint): void {.importc: "QListWidget_virtualbase_horizontalScrollbarAction".}
proc fcQListWidget_virtualbase_verticalScrollbarValueChanged(self: pointer, value: cint): void {.importc: "QListWidget_virtualbase_verticalScrollbarValueChanged".}
proc fcQListWidget_virtualbase_horizontalScrollbarValueChanged(self: pointer, value: cint): void {.importc: "QListWidget_virtualbase_horizontalScrollbarValueChanged".}
proc fcQListWidget_virtualbase_closeEditor(self: pointer, editor: pointer, hint: cint): void {.importc: "QListWidget_virtualbase_closeEditor".}
proc fcQListWidget_virtualbase_commitData(self: pointer, editor: pointer): void {.importc: "QListWidget_virtualbase_commitData".}
proc fcQListWidget_virtualbase_editorDestroyed(self: pointer, editor: pointer): void {.importc: "QListWidget_virtualbase_editorDestroyed".}
proc fcQListWidget_virtualbase_edit2(self: pointer, index: pointer, trigger: cint, event: pointer): bool {.importc: "QListWidget_virtualbase_edit2".}
proc fcQListWidget_virtualbase_selectionCommand(self: pointer, index: pointer, event: pointer): cint {.importc: "QListWidget_virtualbase_selectionCommand".}
proc fcQListWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QListWidget_virtualbase_focusNextPrevChild".}
proc fcQListWidget_virtualbase_viewportEvent(self: pointer, event: pointer): bool {.importc: "QListWidget_virtualbase_viewportEvent".}
proc fcQListWidget_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QListWidget_virtualbase_mousePressEvent".}
proc fcQListWidget_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QListWidget_virtualbase_mouseDoubleClickEvent".}
proc fcQListWidget_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QListWidget_virtualbase_dragEnterEvent".}
proc fcQListWidget_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QListWidget_virtualbase_focusInEvent".}
proc fcQListWidget_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QListWidget_virtualbase_focusOutEvent".}
proc fcQListWidget_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QListWidget_virtualbase_keyPressEvent".}
proc fcQListWidget_virtualbase_inputMethodEvent(self: pointer, event: pointer): void {.importc: "QListWidget_virtualbase_inputMethodEvent".}
proc fcQListWidget_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool {.importc: "QListWidget_virtualbase_eventFilter".}
proc fcQListWidget_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QListWidget_virtualbase_minimumSizeHint".}
proc fcQListWidget_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QListWidget_virtualbase_sizeHint".}
proc fcQListWidget_virtualbase_setupViewport(self: pointer, viewport: pointer): void {.importc: "QListWidget_virtualbase_setupViewport".}
proc fcQListWidget_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void {.importc: "QListWidget_virtualbase_contextMenuEvent".}
proc fcQListWidget_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QListWidget_virtualbase_changeEvent".}
proc fcQListWidget_virtualbase_devType(self: pointer, ): cint {.importc: "QListWidget_virtualbase_devType".}
proc fcQListWidget_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QListWidget_virtualbase_setVisible".}
proc fcQListWidget_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QListWidget_virtualbase_heightForWidth".}
proc fcQListWidget_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QListWidget_virtualbase_hasHeightForWidth".}
proc fcQListWidget_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QListWidget_virtualbase_paintEngine".}
proc fcQListWidget_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QListWidget_virtualbase_keyReleaseEvent".}
proc fcQListWidget_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QListWidget_virtualbase_enterEvent".}
proc fcQListWidget_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QListWidget_virtualbase_leaveEvent".}
proc fcQListWidget_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QListWidget_virtualbase_moveEvent".}
proc fcQListWidget_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QListWidget_virtualbase_closeEvent".}
proc fcQListWidget_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QListWidget_virtualbase_tabletEvent".}
proc fcQListWidget_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QListWidget_virtualbase_actionEvent".}
proc fcQListWidget_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QListWidget_virtualbase_showEvent".}
proc fcQListWidget_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QListWidget_virtualbase_hideEvent".}
proc fcQListWidget_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QListWidget_virtualbase_nativeEvent".}
proc fcQListWidget_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QListWidget_virtualbase_metric".}
proc fcQListWidget_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QListWidget_virtualbase_initPainter".}
proc fcQListWidget_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QListWidget_virtualbase_redirected".}
proc fcQListWidget_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QListWidget_virtualbase_sharedPainter".}
proc fcQListWidget_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QListWidget_virtualbase_childEvent".}
proc fcQListWidget_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QListWidget_virtualbase_customEvent".}
proc fcQListWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QListWidget_virtualbase_connectNotify".}
proc fcQListWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QListWidget_virtualbase_disconnectNotify".}
proc fcQListWidget_protectedbase_items(self: pointer, data: pointer): struct_miqt_array {.importc: "QListWidget_protectedbase_items".}
proc fcQListWidget_protectedbase_indexFromItem(self: pointer, item: pointer): pointer {.importc: "QListWidget_protectedbase_indexFromItem".}
proc fcQListWidget_protectedbase_indexFromItemWithItem(self: pointer, item: pointer): pointer {.importc: "QListWidget_protectedbase_indexFromItemWithItem".}
proc fcQListWidget_protectedbase_itemFromIndex(self: pointer, index: pointer): pointer {.importc: "QListWidget_protectedbase_itemFromIndex".}
proc fcQListWidget_protectedbase_resizeContents(self: pointer, width: cint, height: cint): void {.importc: "QListWidget_protectedbase_resizeContents".}
proc fcQListWidget_protectedbase_contentsSize(self: pointer, ): pointer {.importc: "QListWidget_protectedbase_contentsSize".}
proc fcQListWidget_protectedbase_rectForIndex(self: pointer, index: pointer): pointer {.importc: "QListWidget_protectedbase_rectForIndex".}
proc fcQListWidget_protectedbase_setPositionForIndex(self: pointer, position: pointer, index: pointer): void {.importc: "QListWidget_protectedbase_setPositionForIndex".}
proc fcQListWidget_protectedbase_setHorizontalStepsPerItem(self: pointer, steps: cint): void {.importc: "QListWidget_protectedbase_setHorizontalStepsPerItem".}
proc fcQListWidget_protectedbase_horizontalStepsPerItem(self: pointer, ): cint {.importc: "QListWidget_protectedbase_horizontalStepsPerItem".}
proc fcQListWidget_protectedbase_setVerticalStepsPerItem(self: pointer, steps: cint): void {.importc: "QListWidget_protectedbase_setVerticalStepsPerItem".}
proc fcQListWidget_protectedbase_verticalStepsPerItem(self: pointer, ): cint {.importc: "QListWidget_protectedbase_verticalStepsPerItem".}
proc fcQListWidget_protectedbase_state(self: pointer, ): cint {.importc: "QListWidget_protectedbase_state".}
proc fcQListWidget_protectedbase_setState(self: pointer, state: cint): void {.importc: "QListWidget_protectedbase_setState".}
proc fcQListWidget_protectedbase_scheduleDelayedItemsLayout(self: pointer, ): void {.importc: "QListWidget_protectedbase_scheduleDelayedItemsLayout".}
proc fcQListWidget_protectedbase_executeDelayedItemsLayout(self: pointer, ): void {.importc: "QListWidget_protectedbase_executeDelayedItemsLayout".}
proc fcQListWidget_protectedbase_setDirtyRegion(self: pointer, region: pointer): void {.importc: "QListWidget_protectedbase_setDirtyRegion".}
proc fcQListWidget_protectedbase_scrollDirtyRegion(self: pointer, dx: cint, dy: cint): void {.importc: "QListWidget_protectedbase_scrollDirtyRegion".}
proc fcQListWidget_protectedbase_dirtyRegionOffset(self: pointer, ): pointer {.importc: "QListWidget_protectedbase_dirtyRegionOffset".}
proc fcQListWidget_protectedbase_startAutoScroll(self: pointer, ): void {.importc: "QListWidget_protectedbase_startAutoScroll".}
proc fcQListWidget_protectedbase_stopAutoScroll(self: pointer, ): void {.importc: "QListWidget_protectedbase_stopAutoScroll".}
proc fcQListWidget_protectedbase_doAutoScroll(self: pointer, ): void {.importc: "QListWidget_protectedbase_doAutoScroll".}
proc fcQListWidget_protectedbase_dropIndicatorPosition(self: pointer, ): cint {.importc: "QListWidget_protectedbase_dropIndicatorPosition".}
proc fcQListWidget_protectedbase_setViewportMargins(self: pointer, left: cint, top: cint, right: cint, bottom: cint): void {.importc: "QListWidget_protectedbase_setViewportMargins".}
proc fcQListWidget_protectedbase_viewportMargins(self: pointer, ): pointer {.importc: "QListWidget_protectedbase_viewportMargins".}
proc fcQListWidget_protectedbase_drawFrame(self: pointer, param1: pointer): void {.importc: "QListWidget_protectedbase_drawFrame".}
proc fcQListWidget_protectedbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QListWidget_protectedbase_initStyleOption".}
proc fcQListWidget_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QListWidget_protectedbase_updateMicroFocus".}
proc fcQListWidget_protectedbase_create(self: pointer, ): void {.importc: "QListWidget_protectedbase_create".}
proc fcQListWidget_protectedbase_destroy(self: pointer, ): void {.importc: "QListWidget_protectedbase_destroy".}
proc fcQListWidget_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QListWidget_protectedbase_focusNextChild".}
proc fcQListWidget_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QListWidget_protectedbase_focusPreviousChild".}
proc fcQListWidget_protectedbase_sender(self: pointer, ): pointer {.importc: "QListWidget_protectedbase_sender".}
proc fcQListWidget_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QListWidget_protectedbase_senderSignalIndex".}
proc fcQListWidget_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QListWidget_protectedbase_receivers".}
proc fcQListWidget_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QListWidget_protectedbase_isSignalConnected".}
proc fcQListWidget_new(vtbl: pointer, parent: pointer): ptr cQListWidget {.importc: "QListWidget_new".}
proc fcQListWidget_new2(vtbl: pointer, ): ptr cQListWidget {.importc: "QListWidget_new2".}
proc fcQListWidget_staticMetaObject(): pointer {.importc: "QListWidget_staticMetaObject".}
proc fcQListWidget_delete(self: pointer) {.importc: "QListWidget_delete".}

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

proc backgroundColor*(self: gen_qlistwidget_types.QListWidgetItem, ): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQListWidgetItem_backgroundColor(self.h))

proc setBackgroundColor*(self: gen_qlistwidget_types.QListWidgetItem, color: gen_qcolor_types.QColor): void =
  fcQListWidgetItem_setBackgroundColor(self.h, color.h)

proc background*(self: gen_qlistwidget_types.QListWidgetItem, ): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQListWidgetItem_background(self.h))

proc setBackground*(self: gen_qlistwidget_types.QListWidgetItem, brush: gen_qbrush_types.QBrush): void =
  fcQListWidgetItem_setBackground(self.h, brush.h)

proc textColor*(self: gen_qlistwidget_types.QListWidgetItem, ): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQListWidgetItem_textColor(self.h))

proc setTextColor*(self: gen_qlistwidget_types.QListWidgetItem, color: gen_qcolor_types.QColor): void =
  fcQListWidgetItem_setTextColor(self.h, color.h)

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

type QListWidgetItemcloneProc* = proc(self: QListWidgetItem): gen_qlistwidget_types.QListWidgetItem {.raises: [], gcsafe.}
type QListWidgetItemsetBackgroundColorProc* = proc(self: QListWidgetItem, color: gen_qcolor_types.QColor): void {.raises: [], gcsafe.}
type QListWidgetItemdataProc* = proc(self: QListWidgetItem, role: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QListWidgetItemsetDataProc* = proc(self: QListWidgetItem, role: cint, value: gen_qvariant_types.QVariant): void {.raises: [], gcsafe.}
type QListWidgetItemoperatorLesserProc* = proc(self: QListWidgetItem, other: gen_qlistwidget_types.QListWidgetItem): bool {.raises: [], gcsafe.}
type QListWidgetItemreadProc* = proc(self: QListWidgetItem, inVal: gen_qdatastream_types.QDataStream): void {.raises: [], gcsafe.}
type QListWidgetItemwriteProc* = proc(self: QListWidgetItem, outVal: gen_qdatastream_types.QDataStream): void {.raises: [], gcsafe.}
type QListWidgetItemVTable* = object
  vtbl: cQListWidgetItemVTable
  clone*: QListWidgetItemcloneProc
  setBackgroundColor*: QListWidgetItemsetBackgroundColorProc
  data*: QListWidgetItemdataProc
  setData*: QListWidgetItemsetDataProc
  operatorLesser*: QListWidgetItemoperatorLesserProc
  read*: QListWidgetItemreadProc
  write*: QListWidgetItemwriteProc
proc QListWidgetItemclone*(self: gen_qlistwidget_types.QListWidgetItem, ): gen_qlistwidget_types.QListWidgetItem =
  gen_qlistwidget_types.QListWidgetItem(h: fcQListWidgetItem_virtualbase_clone(self.h))

proc miqt_exec_callback_cQListWidgetItem_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QListWidgetItemVTable](vtbl)
  let self = QListWidgetItem(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.h

proc QListWidgetItemsetBackgroundColor*(self: gen_qlistwidget_types.QListWidgetItem, color: gen_qcolor_types.QColor): void =
  fcQListWidgetItem_virtualbase_setBackgroundColor(self.h, color.h)

proc miqt_exec_callback_cQListWidgetItem_setBackgroundColor(vtbl: pointer, self: pointer, color: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetItemVTable](vtbl)
  let self = QListWidgetItem(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: color)
  vtbl[].setBackgroundColor(self, slotval1)

proc QListWidgetItemdata*(self: gen_qlistwidget_types.QListWidgetItem, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQListWidgetItem_virtualbase_data(self.h, role))

proc miqt_exec_callback_cQListWidgetItem_data(vtbl: pointer, self: pointer, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QListWidgetItemVTable](vtbl)
  let self = QListWidgetItem(h: self)
  let slotval1 = role
  var virtualReturn = vtbl[].data(self, slotval1)
  virtualReturn.h

proc QListWidgetItemsetData*(self: gen_qlistwidget_types.QListWidgetItem, role: cint, value: gen_qvariant_types.QVariant): void =
  fcQListWidgetItem_virtualbase_setData(self.h, role, value.h)

proc miqt_exec_callback_cQListWidgetItem_setData(vtbl: pointer, self: pointer, role: cint, value: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetItemVTable](vtbl)
  let self = QListWidgetItem(h: self)
  let slotval1 = role
  let slotval2 = gen_qvariant_types.QVariant(h: value)
  vtbl[].setData(self, slotval1, slotval2)

proc QListWidgetItemoperatorLesser*(self: gen_qlistwidget_types.QListWidgetItem, other: gen_qlistwidget_types.QListWidgetItem): bool =
  fcQListWidgetItem_virtualbase_operatorLesser(self.h, other.h)

proc miqt_exec_callback_cQListWidgetItem_operatorLesser(vtbl: pointer, self: pointer, other: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QListWidgetItemVTable](vtbl)
  let self = QListWidgetItem(h: self)
  let slotval1 = gen_qlistwidget_types.QListWidgetItem(h: other)
  var virtualReturn = vtbl[].operatorLesser(self, slotval1)
  virtualReturn

proc QListWidgetItemread*(self: gen_qlistwidget_types.QListWidgetItem, inVal: gen_qdatastream_types.QDataStream): void =
  fcQListWidgetItem_virtualbase_read(self.h, inVal.h)

proc miqt_exec_callback_cQListWidgetItem_read(vtbl: pointer, self: pointer, inVal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetItemVTable](vtbl)
  let self = QListWidgetItem(h: self)
  let slotval1 = gen_qdatastream_types.QDataStream(h: inVal)
  vtbl[].read(self, slotval1)

proc QListWidgetItemwrite*(self: gen_qlistwidget_types.QListWidgetItem, outVal: gen_qdatastream_types.QDataStream): void =
  fcQListWidgetItem_virtualbase_write(self.h, outVal.h)

proc miqt_exec_callback_cQListWidgetItem_write(vtbl: pointer, self: pointer, outVal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetItemVTable](vtbl)
  let self = QListWidgetItem(h: self)
  let slotval1 = gen_qdatastream_types.QDataStream(h: outVal)
  vtbl[].write(self, slotval1)

proc create*(T: type gen_qlistwidget_types.QListWidgetItem,
    vtbl: ref QListWidgetItemVTable = nil): gen_qlistwidget_types.QListWidgetItem =
  let vtbl = if vtbl == nil: new QListWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQListWidgetItemVTable, _: ptr cQListWidgetItem) {.cdecl.} =
    let vtbl = cast[ref QListWidgetItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQListWidgetItem_clone
  if not isNil(vtbl.setBackgroundColor):
    vtbl[].vtbl.setBackgroundColor = miqt_exec_callback_cQListWidgetItem_setBackgroundColor
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQListWidgetItem_data
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQListWidgetItem_setData
  if not isNil(vtbl.operatorLesser):
    vtbl[].vtbl.operatorLesser = miqt_exec_callback_cQListWidgetItem_operatorLesser
  if not isNil(vtbl.read):
    vtbl[].vtbl.read = miqt_exec_callback_cQListWidgetItem_read
  if not isNil(vtbl.write):
    vtbl[].vtbl.write = miqt_exec_callback_cQListWidgetItem_write
  gen_qlistwidget_types.QListWidgetItem(h: fcQListWidgetItem_new(addr(vtbl[]), ))

proc create*(T: type gen_qlistwidget_types.QListWidgetItem,
    text: string,
    vtbl: ref QListWidgetItemVTable = nil): gen_qlistwidget_types.QListWidgetItem =
  let vtbl = if vtbl == nil: new QListWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQListWidgetItemVTable, _: ptr cQListWidgetItem) {.cdecl.} =
    let vtbl = cast[ref QListWidgetItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQListWidgetItem_clone
  if not isNil(vtbl.setBackgroundColor):
    vtbl[].vtbl.setBackgroundColor = miqt_exec_callback_cQListWidgetItem_setBackgroundColor
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQListWidgetItem_data
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQListWidgetItem_setData
  if not isNil(vtbl.operatorLesser):
    vtbl[].vtbl.operatorLesser = miqt_exec_callback_cQListWidgetItem_operatorLesser
  if not isNil(vtbl.read):
    vtbl[].vtbl.read = miqt_exec_callback_cQListWidgetItem_read
  if not isNil(vtbl.write):
    vtbl[].vtbl.write = miqt_exec_callback_cQListWidgetItem_write
  gen_qlistwidget_types.QListWidgetItem(h: fcQListWidgetItem_new2(addr(vtbl[]), struct_miqt_string(data: text, len: csize_t(len(text)))))

proc create*(T: type gen_qlistwidget_types.QListWidgetItem,
    icon: gen_qicon_types.QIcon, text: string,
    vtbl: ref QListWidgetItemVTable = nil): gen_qlistwidget_types.QListWidgetItem =
  let vtbl = if vtbl == nil: new QListWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQListWidgetItemVTable, _: ptr cQListWidgetItem) {.cdecl.} =
    let vtbl = cast[ref QListWidgetItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQListWidgetItem_clone
  if not isNil(vtbl.setBackgroundColor):
    vtbl[].vtbl.setBackgroundColor = miqt_exec_callback_cQListWidgetItem_setBackgroundColor
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQListWidgetItem_data
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQListWidgetItem_setData
  if not isNil(vtbl.operatorLesser):
    vtbl[].vtbl.operatorLesser = miqt_exec_callback_cQListWidgetItem_operatorLesser
  if not isNil(vtbl.read):
    vtbl[].vtbl.read = miqt_exec_callback_cQListWidgetItem_read
  if not isNil(vtbl.write):
    vtbl[].vtbl.write = miqt_exec_callback_cQListWidgetItem_write
  gen_qlistwidget_types.QListWidgetItem(h: fcQListWidgetItem_new3(addr(vtbl[]), icon.h, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc create*(T: type gen_qlistwidget_types.QListWidgetItem,
    other: gen_qlistwidget_types.QListWidgetItem,
    vtbl: ref QListWidgetItemVTable = nil): gen_qlistwidget_types.QListWidgetItem =
  let vtbl = if vtbl == nil: new QListWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQListWidgetItemVTable, _: ptr cQListWidgetItem) {.cdecl.} =
    let vtbl = cast[ref QListWidgetItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQListWidgetItem_clone
  if not isNil(vtbl.setBackgroundColor):
    vtbl[].vtbl.setBackgroundColor = miqt_exec_callback_cQListWidgetItem_setBackgroundColor
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQListWidgetItem_data
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQListWidgetItem_setData
  if not isNil(vtbl.operatorLesser):
    vtbl[].vtbl.operatorLesser = miqt_exec_callback_cQListWidgetItem_operatorLesser
  if not isNil(vtbl.read):
    vtbl[].vtbl.read = miqt_exec_callback_cQListWidgetItem_read
  if not isNil(vtbl.write):
    vtbl[].vtbl.write = miqt_exec_callback_cQListWidgetItem_write
  gen_qlistwidget_types.QListWidgetItem(h: fcQListWidgetItem_new4(addr(vtbl[]), other.h))

proc create*(T: type gen_qlistwidget_types.QListWidgetItem,
    listview: gen_qlistwidget_types.QListWidget,
    vtbl: ref QListWidgetItemVTable = nil): gen_qlistwidget_types.QListWidgetItem =
  let vtbl = if vtbl == nil: new QListWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQListWidgetItemVTable, _: ptr cQListWidgetItem) {.cdecl.} =
    let vtbl = cast[ref QListWidgetItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQListWidgetItem_clone
  if not isNil(vtbl.setBackgroundColor):
    vtbl[].vtbl.setBackgroundColor = miqt_exec_callback_cQListWidgetItem_setBackgroundColor
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQListWidgetItem_data
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQListWidgetItem_setData
  if not isNil(vtbl.operatorLesser):
    vtbl[].vtbl.operatorLesser = miqt_exec_callback_cQListWidgetItem_operatorLesser
  if not isNil(vtbl.read):
    vtbl[].vtbl.read = miqt_exec_callback_cQListWidgetItem_read
  if not isNil(vtbl.write):
    vtbl[].vtbl.write = miqt_exec_callback_cQListWidgetItem_write
  gen_qlistwidget_types.QListWidgetItem(h: fcQListWidgetItem_new5(addr(vtbl[]), listview.h))

proc create*(T: type gen_qlistwidget_types.QListWidgetItem,
    listview: gen_qlistwidget_types.QListWidget, typeVal: cint,
    vtbl: ref QListWidgetItemVTable = nil): gen_qlistwidget_types.QListWidgetItem =
  let vtbl = if vtbl == nil: new QListWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQListWidgetItemVTable, _: ptr cQListWidgetItem) {.cdecl.} =
    let vtbl = cast[ref QListWidgetItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQListWidgetItem_clone
  if not isNil(vtbl.setBackgroundColor):
    vtbl[].vtbl.setBackgroundColor = miqt_exec_callback_cQListWidgetItem_setBackgroundColor
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQListWidgetItem_data
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQListWidgetItem_setData
  if not isNil(vtbl.operatorLesser):
    vtbl[].vtbl.operatorLesser = miqt_exec_callback_cQListWidgetItem_operatorLesser
  if not isNil(vtbl.read):
    vtbl[].vtbl.read = miqt_exec_callback_cQListWidgetItem_read
  if not isNil(vtbl.write):
    vtbl[].vtbl.write = miqt_exec_callback_cQListWidgetItem_write
  gen_qlistwidget_types.QListWidgetItem(h: fcQListWidgetItem_new6(addr(vtbl[]), listview.h, typeVal))

proc create*(T: type gen_qlistwidget_types.QListWidgetItem,
    text: string, listview: gen_qlistwidget_types.QListWidget,
    vtbl: ref QListWidgetItemVTable = nil): gen_qlistwidget_types.QListWidgetItem =
  let vtbl = if vtbl == nil: new QListWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQListWidgetItemVTable, _: ptr cQListWidgetItem) {.cdecl.} =
    let vtbl = cast[ref QListWidgetItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQListWidgetItem_clone
  if not isNil(vtbl.setBackgroundColor):
    vtbl[].vtbl.setBackgroundColor = miqt_exec_callback_cQListWidgetItem_setBackgroundColor
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQListWidgetItem_data
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQListWidgetItem_setData
  if not isNil(vtbl.operatorLesser):
    vtbl[].vtbl.operatorLesser = miqt_exec_callback_cQListWidgetItem_operatorLesser
  if not isNil(vtbl.read):
    vtbl[].vtbl.read = miqt_exec_callback_cQListWidgetItem_read
  if not isNil(vtbl.write):
    vtbl[].vtbl.write = miqt_exec_callback_cQListWidgetItem_write
  gen_qlistwidget_types.QListWidgetItem(h: fcQListWidgetItem_new7(addr(vtbl[]), struct_miqt_string(data: text, len: csize_t(len(text))), listview.h))

proc create*(T: type gen_qlistwidget_types.QListWidgetItem,
    text: string, listview: gen_qlistwidget_types.QListWidget, typeVal: cint,
    vtbl: ref QListWidgetItemVTable = nil): gen_qlistwidget_types.QListWidgetItem =
  let vtbl = if vtbl == nil: new QListWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQListWidgetItemVTable, _: ptr cQListWidgetItem) {.cdecl.} =
    let vtbl = cast[ref QListWidgetItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQListWidgetItem_clone
  if not isNil(vtbl.setBackgroundColor):
    vtbl[].vtbl.setBackgroundColor = miqt_exec_callback_cQListWidgetItem_setBackgroundColor
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQListWidgetItem_data
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQListWidgetItem_setData
  if not isNil(vtbl.operatorLesser):
    vtbl[].vtbl.operatorLesser = miqt_exec_callback_cQListWidgetItem_operatorLesser
  if not isNil(vtbl.read):
    vtbl[].vtbl.read = miqt_exec_callback_cQListWidgetItem_read
  if not isNil(vtbl.write):
    vtbl[].vtbl.write = miqt_exec_callback_cQListWidgetItem_write
  gen_qlistwidget_types.QListWidgetItem(h: fcQListWidgetItem_new8(addr(vtbl[]), struct_miqt_string(data: text, len: csize_t(len(text))), listview.h, typeVal))

proc create*(T: type gen_qlistwidget_types.QListWidgetItem,
    icon: gen_qicon_types.QIcon, text: string, listview: gen_qlistwidget_types.QListWidget,
    vtbl: ref QListWidgetItemVTable = nil): gen_qlistwidget_types.QListWidgetItem =
  let vtbl = if vtbl == nil: new QListWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQListWidgetItemVTable, _: ptr cQListWidgetItem) {.cdecl.} =
    let vtbl = cast[ref QListWidgetItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQListWidgetItem_clone
  if not isNil(vtbl.setBackgroundColor):
    vtbl[].vtbl.setBackgroundColor = miqt_exec_callback_cQListWidgetItem_setBackgroundColor
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQListWidgetItem_data
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQListWidgetItem_setData
  if not isNil(vtbl.operatorLesser):
    vtbl[].vtbl.operatorLesser = miqt_exec_callback_cQListWidgetItem_operatorLesser
  if not isNil(vtbl.read):
    vtbl[].vtbl.read = miqt_exec_callback_cQListWidgetItem_read
  if not isNil(vtbl.write):
    vtbl[].vtbl.write = miqt_exec_callback_cQListWidgetItem_write
  gen_qlistwidget_types.QListWidgetItem(h: fcQListWidgetItem_new9(addr(vtbl[]), icon.h, struct_miqt_string(data: text, len: csize_t(len(text))), listview.h))

proc create*(T: type gen_qlistwidget_types.QListWidgetItem,
    icon: gen_qicon_types.QIcon, text: string, listview: gen_qlistwidget_types.QListWidget, typeVal: cint,
    vtbl: ref QListWidgetItemVTable = nil): gen_qlistwidget_types.QListWidgetItem =
  let vtbl = if vtbl == nil: new QListWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQListWidgetItemVTable, _: ptr cQListWidgetItem) {.cdecl.} =
    let vtbl = cast[ref QListWidgetItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQListWidgetItem_clone
  if not isNil(vtbl.setBackgroundColor):
    vtbl[].vtbl.setBackgroundColor = miqt_exec_callback_cQListWidgetItem_setBackgroundColor
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQListWidgetItem_data
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQListWidgetItem_setData
  if not isNil(vtbl.operatorLesser):
    vtbl[].vtbl.operatorLesser = miqt_exec_callback_cQListWidgetItem_operatorLesser
  if not isNil(vtbl.read):
    vtbl[].vtbl.read = miqt_exec_callback_cQListWidgetItem_read
  if not isNil(vtbl.write):
    vtbl[].vtbl.write = miqt_exec_callback_cQListWidgetItem_write
  gen_qlistwidget_types.QListWidgetItem(h: fcQListWidgetItem_new10(addr(vtbl[]), icon.h, struct_miqt_string(data: text, len: csize_t(len(text))), listview.h, typeVal))

proc delete*(self: gen_qlistwidget_types.QListWidgetItem) =
  fcQListWidgetItem_delete(self.h)
proc metaObject*(self: gen_qlistwidget_types.QListWidget, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQListWidget_metaObject(self.h))

proc metacast*(self: gen_qlistwidget_types.QListWidget, param1: cstring): pointer =
  fcQListWidget_metacast(self.h, param1)

proc metacall*(self: gen_qlistwidget_types.QListWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQListWidget_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qlistwidget_types.QListWidget, s: cstring): string =
  let v_ms = fcQListWidget_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qlistwidget_types.QListWidget, s: cstring): string =
  let v_ms = fcQListWidget_trUtf8(s)
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

proc isItemSelected*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem): bool =
  fcQListWidget_isItemSelected(self.h, item.h)

proc setItemSelected*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem, select: bool): void =
  fcQListWidget_setItemSelected(self.h, item.h, select)

proc selectedItems*(self: gen_qlistwidget_types.QListWidget, ): seq[gen_qlistwidget_types.QListWidgetItem] =
  var v_ma = fcQListWidget_selectedItems(self.h)
  var vx_ret = newSeq[gen_qlistwidget_types.QListWidgetItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qlistwidget_types.QListWidgetItem(h: v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc findItems*(self: gen_qlistwidget_types.QListWidget, text: string, flags: cint): seq[gen_qlistwidget_types.QListWidgetItem] =
  var v_ma = fcQListWidget_findItems(self.h, struct_miqt_string(data: text, len: csize_t(len(text))), cint(flags))
  var vx_ret = newSeq[gen_qlistwidget_types.QListWidgetItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qlistwidget_types.QListWidgetItem(h: v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc isItemHidden*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem): bool =
  fcQListWidget_isItemHidden(self.h, item.h)

proc setItemHidden*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem, hide: bool): void =
  fcQListWidget_setItemHidden(self.h, item.h, hide)

proc dropEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qevent_types.QDropEvent): void =
  fcQListWidget_dropEvent(self.h, event.h)

proc scrollToItem*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem): void =
  fcQListWidget_scrollToItem(self.h, item.h)

proc clear*(self: gen_qlistwidget_types.QListWidget, ): void =
  fcQListWidget_clear(self.h)

proc itemPressed*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem): void =
  fcQListWidget_itemPressed(self.h, item.h)

type QListWidgetitemPressedSlot* = proc(item: gen_qlistwidget_types.QListWidgetItem)
proc miqt_exec_callback_cQListWidget_itemPressed(slot: int, item: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QListWidgetitemPressedSlot](cast[pointer](slot))
  let slotval1 = gen_qlistwidget_types.QListWidgetItem(h: item)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQListWidget_itemPressed_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QListWidgetitemPressedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onitemPressed*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetitemPressedSlot) =
  var tmp = new QListWidgetitemPressedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_connect_itemPressed(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQListWidget_itemPressed, miqt_exec_callback_cQListWidget_itemPressed_release)

proc itemClicked*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem): void =
  fcQListWidget_itemClicked(self.h, item.h)

type QListWidgetitemClickedSlot* = proc(item: gen_qlistwidget_types.QListWidgetItem)
proc miqt_exec_callback_cQListWidget_itemClicked(slot: int, item: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QListWidgetitemClickedSlot](cast[pointer](slot))
  let slotval1 = gen_qlistwidget_types.QListWidgetItem(h: item)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQListWidget_itemClicked_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QListWidgetitemClickedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onitemClicked*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetitemClickedSlot) =
  var tmp = new QListWidgetitemClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_connect_itemClicked(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQListWidget_itemClicked, miqt_exec_callback_cQListWidget_itemClicked_release)

proc itemDoubleClicked*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem): void =
  fcQListWidget_itemDoubleClicked(self.h, item.h)

type QListWidgetitemDoubleClickedSlot* = proc(item: gen_qlistwidget_types.QListWidgetItem)
proc miqt_exec_callback_cQListWidget_itemDoubleClicked(slot: int, item: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QListWidgetitemDoubleClickedSlot](cast[pointer](slot))
  let slotval1 = gen_qlistwidget_types.QListWidgetItem(h: item)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQListWidget_itemDoubleClicked_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QListWidgetitemDoubleClickedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onitemDoubleClicked*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetitemDoubleClickedSlot) =
  var tmp = new QListWidgetitemDoubleClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_connect_itemDoubleClicked(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQListWidget_itemDoubleClicked, miqt_exec_callback_cQListWidget_itemDoubleClicked_release)

proc itemActivated*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem): void =
  fcQListWidget_itemActivated(self.h, item.h)

type QListWidgetitemActivatedSlot* = proc(item: gen_qlistwidget_types.QListWidgetItem)
proc miqt_exec_callback_cQListWidget_itemActivated(slot: int, item: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QListWidgetitemActivatedSlot](cast[pointer](slot))
  let slotval1 = gen_qlistwidget_types.QListWidgetItem(h: item)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQListWidget_itemActivated_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QListWidgetitemActivatedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onitemActivated*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetitemActivatedSlot) =
  var tmp = new QListWidgetitemActivatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_connect_itemActivated(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQListWidget_itemActivated, miqt_exec_callback_cQListWidget_itemActivated_release)

proc itemEntered*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem): void =
  fcQListWidget_itemEntered(self.h, item.h)

type QListWidgetitemEnteredSlot* = proc(item: gen_qlistwidget_types.QListWidgetItem)
proc miqt_exec_callback_cQListWidget_itemEntered(slot: int, item: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QListWidgetitemEnteredSlot](cast[pointer](slot))
  let slotval1 = gen_qlistwidget_types.QListWidgetItem(h: item)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQListWidget_itemEntered_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QListWidgetitemEnteredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onitemEntered*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetitemEnteredSlot) =
  var tmp = new QListWidgetitemEnteredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_connect_itemEntered(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQListWidget_itemEntered, miqt_exec_callback_cQListWidget_itemEntered_release)

proc itemChanged*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem): void =
  fcQListWidget_itemChanged(self.h, item.h)

type QListWidgetitemChangedSlot* = proc(item: gen_qlistwidget_types.QListWidgetItem)
proc miqt_exec_callback_cQListWidget_itemChanged(slot: int, item: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QListWidgetitemChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qlistwidget_types.QListWidgetItem(h: item)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQListWidget_itemChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QListWidgetitemChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onitemChanged*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetitemChangedSlot) =
  var tmp = new QListWidgetitemChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_connect_itemChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQListWidget_itemChanged, miqt_exec_callback_cQListWidget_itemChanged_release)

proc currentItemChanged*(self: gen_qlistwidget_types.QListWidget, current: gen_qlistwidget_types.QListWidgetItem, previous: gen_qlistwidget_types.QListWidgetItem): void =
  fcQListWidget_currentItemChanged(self.h, current.h, previous.h)

type QListWidgetcurrentItemChangedSlot* = proc(current: gen_qlistwidget_types.QListWidgetItem, previous: gen_qlistwidget_types.QListWidgetItem)
proc miqt_exec_callback_cQListWidget_currentItemChanged(slot: int, current: pointer, previous: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QListWidgetcurrentItemChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qlistwidget_types.QListWidgetItem(h: current)

  let slotval2 = gen_qlistwidget_types.QListWidgetItem(h: previous)

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQListWidget_currentItemChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QListWidgetcurrentItemChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncurrentItemChanged*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetcurrentItemChangedSlot) =
  var tmp = new QListWidgetcurrentItemChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_connect_currentItemChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQListWidget_currentItemChanged, miqt_exec_callback_cQListWidget_currentItemChanged_release)

proc currentTextChanged*(self: gen_qlistwidget_types.QListWidget, currentText: string): void =
  fcQListWidget_currentTextChanged(self.h, struct_miqt_string(data: currentText, len: csize_t(len(currentText))))

type QListWidgetcurrentTextChangedSlot* = proc(currentText: string)
proc miqt_exec_callback_cQListWidget_currentTextChanged(slot: int, currentText: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QListWidgetcurrentTextChangedSlot](cast[pointer](slot))
  let vcurrentText_ms = currentText
  let vcurrentTextx_ret = string.fromBytes(toOpenArrayByte(vcurrentText_ms.data, 0, int(vcurrentText_ms.len)-1))
  c_free(vcurrentText_ms.data)
  let slotval1 = vcurrentTextx_ret

  nimfunc[](slotval1)

proc miqt_exec_callback_cQListWidget_currentTextChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QListWidgetcurrentTextChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncurrentTextChanged*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetcurrentTextChangedSlot) =
  var tmp = new QListWidgetcurrentTextChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_connect_currentTextChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQListWidget_currentTextChanged, miqt_exec_callback_cQListWidget_currentTextChanged_release)

proc currentRowChanged*(self: gen_qlistwidget_types.QListWidget, currentRow: cint): void =
  fcQListWidget_currentRowChanged(self.h, currentRow)

type QListWidgetcurrentRowChangedSlot* = proc(currentRow: cint)
proc miqt_exec_callback_cQListWidget_currentRowChanged(slot: int, currentRow: cint) {.cdecl.} =
  let nimfunc = cast[ptr QListWidgetcurrentRowChangedSlot](cast[pointer](slot))
  let slotval1 = currentRow

  nimfunc[](slotval1)

proc miqt_exec_callback_cQListWidget_currentRowChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QListWidgetcurrentRowChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncurrentRowChanged*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetcurrentRowChangedSlot) =
  var tmp = new QListWidgetcurrentRowChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_connect_currentRowChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQListWidget_currentRowChanged, miqt_exec_callback_cQListWidget_currentRowChanged_release)

proc itemSelectionChanged*(self: gen_qlistwidget_types.QListWidget, ): void =
  fcQListWidget_itemSelectionChanged(self.h)

type QListWidgetitemSelectionChangedSlot* = proc()
proc miqt_exec_callback_cQListWidget_itemSelectionChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QListWidgetitemSelectionChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQListWidget_itemSelectionChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QListWidgetitemSelectionChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onitemSelectionChanged*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetitemSelectionChangedSlot) =
  var tmp = new QListWidgetitemSelectionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_connect_itemSelectionChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQListWidget_itemSelectionChanged, miqt_exec_callback_cQListWidget_itemSelectionChanged_release)

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

proc trUtf8*(_: type gen_qlistwidget_types.QListWidget, s: cstring, c: cstring): string =
  let v_ms = fcQListWidget_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qlistwidget_types.QListWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQListWidget_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sortItems*(self: gen_qlistwidget_types.QListWidget, order: cint): void =
  fcQListWidget_sortItems1(self.h, cint(order))

proc scrollToItem*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem, hint: cint): void =
  fcQListWidget_scrollToItem2(self.h, item.h, cint(hint))

type QListWidgetmetaObjectProc* = proc(self: QListWidget): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QListWidgetmetacastProc* = proc(self: QListWidget, param1: cstring): pointer {.raises: [], gcsafe.}
type QListWidgetmetacallProc* = proc(self: QListWidget, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QListWidgetsetSelectionModelProc* = proc(self: QListWidget, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void {.raises: [], gcsafe.}
type QListWidgetdropEventProc* = proc(self: QListWidget, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QListWidgeteventProc* = proc(self: QListWidget, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QListWidgetmimeTypesProc* = proc(self: QListWidget): seq[string] {.raises: [], gcsafe.}
type QListWidgetmimeDataProc* = proc(self: QListWidget, items: seq[gen_qlistwidget_types.QListWidgetItem]): gen_qmimedata_types.QMimeData {.raises: [], gcsafe.}
type QListWidgetdropMimeDataProc* = proc(self: QListWidget, index: cint, data: gen_qmimedata_types.QMimeData, action: cint): bool {.raises: [], gcsafe.}
type QListWidgetsupportedDropActionsProc* = proc(self: QListWidget): cint {.raises: [], gcsafe.}
type QListWidgetvisualRectProc* = proc(self: QListWidget, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect {.raises: [], gcsafe.}
type QListWidgetscrollToProc* = proc(self: QListWidget, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void {.raises: [], gcsafe.}
type QListWidgetindexAtProc* = proc(self: QListWidget, p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QListWidgetdoItemsLayoutProc* = proc(self: QListWidget): void {.raises: [], gcsafe.}
type QListWidgetresetProc* = proc(self: QListWidget): void {.raises: [], gcsafe.}
type QListWidgetsetRootIndexProc* = proc(self: QListWidget, index: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QListWidgetscrollContentsByProc* = proc(self: QListWidget, dx: cint, dy: cint): void {.raises: [], gcsafe.}
type QListWidgetdataChangedProc* = proc(self: QListWidget, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: seq[cint]): void {.raises: [], gcsafe.}
type QListWidgetrowsInsertedProc* = proc(self: QListWidget, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void {.raises: [], gcsafe.}
type QListWidgetrowsAboutToBeRemovedProc* = proc(self: QListWidget, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void {.raises: [], gcsafe.}
type QListWidgetmouseMoveEventProc* = proc(self: QListWidget, e: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QListWidgetmouseReleaseEventProc* = proc(self: QListWidget, e: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QListWidgetwheelEventProc* = proc(self: QListWidget, e: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QListWidgettimerEventProc* = proc(self: QListWidget, e: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QListWidgetresizeEventProc* = proc(self: QListWidget, e: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QListWidgetdragMoveEventProc* = proc(self: QListWidget, e: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QListWidgetdragLeaveEventProc* = proc(self: QListWidget, e: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QListWidgetstartDragProc* = proc(self: QListWidget, supportedActions: cint): void {.raises: [], gcsafe.}
type QListWidgetviewOptionsProc* = proc(self: QListWidget): gen_qstyleoption_types.QStyleOptionViewItem {.raises: [], gcsafe.}
type QListWidgetpaintEventProc* = proc(self: QListWidget, e: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QListWidgethorizontalOffsetProc* = proc(self: QListWidget): cint {.raises: [], gcsafe.}
type QListWidgetverticalOffsetProc* = proc(self: QListWidget): cint {.raises: [], gcsafe.}
type QListWidgetmoveCursorProc* = proc(self: QListWidget, cursorAction: cint, modifiers: cint): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QListWidgetsetSelectionProc* = proc(self: QListWidget, rect: gen_qrect_types.QRect, command: cint): void {.raises: [], gcsafe.}
type QListWidgetvisualRegionForSelectionProc* = proc(self: QListWidget, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion {.raises: [], gcsafe.}
type QListWidgetselectedIndexesProc* = proc(self: QListWidget): seq[gen_qabstractitemmodel_types.QModelIndex] {.raises: [], gcsafe.}
type QListWidgetupdateGeometriesProc* = proc(self: QListWidget): void {.raises: [], gcsafe.}
type QListWidgetisIndexHiddenProc* = proc(self: QListWidget, index: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QListWidgetselectionChangedProc* = proc(self: QListWidget, selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void {.raises: [], gcsafe.}
type QListWidgetcurrentChangedProc* = proc(self: QListWidget, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QListWidgetviewportSizeHintProc* = proc(self: QListWidget): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QListWidgetkeyboardSearchProc* = proc(self: QListWidget, search: string): void {.raises: [], gcsafe.}
type QListWidgetsizeHintForRowProc* = proc(self: QListWidget, row: cint): cint {.raises: [], gcsafe.}
type QListWidgetsizeHintForColumnProc* = proc(self: QListWidget, column: cint): cint {.raises: [], gcsafe.}
type QListWidgetinputMethodQueryProc* = proc(self: QListWidget, query: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QListWidgetselectAllProc* = proc(self: QListWidget): void {.raises: [], gcsafe.}
type QListWidgetupdateEditorDataProc* = proc(self: QListWidget): void {.raises: [], gcsafe.}
type QListWidgetupdateEditorGeometriesProc* = proc(self: QListWidget): void {.raises: [], gcsafe.}
type QListWidgetverticalScrollbarActionProc* = proc(self: QListWidget, action: cint): void {.raises: [], gcsafe.}
type QListWidgethorizontalScrollbarActionProc* = proc(self: QListWidget, action: cint): void {.raises: [], gcsafe.}
type QListWidgetverticalScrollbarValueChangedProc* = proc(self: QListWidget, value: cint): void {.raises: [], gcsafe.}
type QListWidgethorizontalScrollbarValueChangedProc* = proc(self: QListWidget, value: cint): void {.raises: [], gcsafe.}
type QListWidgetcloseEditorProc* = proc(self: QListWidget, editor: gen_qwidget_types.QWidget, hint: cint): void {.raises: [], gcsafe.}
type QListWidgetcommitDataProc* = proc(self: QListWidget, editor: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QListWidgeteditorDestroyedProc* = proc(self: QListWidget, editor: gen_qobject_types.QObject): void {.raises: [], gcsafe.}
type QListWidgetedit2Proc* = proc(self: QListWidget, index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QListWidgetselectionCommandProc* = proc(self: QListWidget, index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint {.raises: [], gcsafe.}
type QListWidgetfocusNextPrevChildProc* = proc(self: QListWidget, next: bool): bool {.raises: [], gcsafe.}
type QListWidgetviewportEventProc* = proc(self: QListWidget, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QListWidgetmousePressEventProc* = proc(self: QListWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QListWidgetmouseDoubleClickEventProc* = proc(self: QListWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QListWidgetdragEnterEventProc* = proc(self: QListWidget, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QListWidgetfocusInEventProc* = proc(self: QListWidget, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QListWidgetfocusOutEventProc* = proc(self: QListWidget, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QListWidgetkeyPressEventProc* = proc(self: QListWidget, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QListWidgetinputMethodEventProc* = proc(self: QListWidget, event: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QListWidgeteventFilterProc* = proc(self: QListWidget, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QListWidgetminimumSizeHintProc* = proc(self: QListWidget): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QListWidgetsizeHintProc* = proc(self: QListWidget): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QListWidgetsetupViewportProc* = proc(self: QListWidget, viewport: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QListWidgetcontextMenuEventProc* = proc(self: QListWidget, param1: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QListWidgetchangeEventProc* = proc(self: QListWidget, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QListWidgetdevTypeProc* = proc(self: QListWidget): cint {.raises: [], gcsafe.}
type QListWidgetsetVisibleProc* = proc(self: QListWidget, visible: bool): void {.raises: [], gcsafe.}
type QListWidgetheightForWidthProc* = proc(self: QListWidget, param1: cint): cint {.raises: [], gcsafe.}
type QListWidgethasHeightForWidthProc* = proc(self: QListWidget): bool {.raises: [], gcsafe.}
type QListWidgetpaintEngineProc* = proc(self: QListWidget): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QListWidgetkeyReleaseEventProc* = proc(self: QListWidget, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QListWidgetenterEventProc* = proc(self: QListWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QListWidgetleaveEventProc* = proc(self: QListWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QListWidgetmoveEventProc* = proc(self: QListWidget, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QListWidgetcloseEventProc* = proc(self: QListWidget, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QListWidgettabletEventProc* = proc(self: QListWidget, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QListWidgetactionEventProc* = proc(self: QListWidget, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QListWidgetshowEventProc* = proc(self: QListWidget, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QListWidgethideEventProc* = proc(self: QListWidget, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QListWidgetnativeEventProc* = proc(self: QListWidget, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QListWidgetmetricProc* = proc(self: QListWidget, param1: cint): cint {.raises: [], gcsafe.}
type QListWidgetinitPainterProc* = proc(self: QListWidget, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QListWidgetredirectedProc* = proc(self: QListWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QListWidgetsharedPainterProc* = proc(self: QListWidget): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QListWidgetchildEventProc* = proc(self: QListWidget, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QListWidgetcustomEventProc* = proc(self: QListWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QListWidgetconnectNotifyProc* = proc(self: QListWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QListWidgetdisconnectNotifyProc* = proc(self: QListWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QListWidgetVTable* = object
  vtbl: cQListWidgetVTable
  metaObject*: QListWidgetmetaObjectProc
  metacast*: QListWidgetmetacastProc
  metacall*: QListWidgetmetacallProc
  setSelectionModel*: QListWidgetsetSelectionModelProc
  dropEvent*: QListWidgetdropEventProc
  event*: QListWidgeteventProc
  mimeTypes*: QListWidgetmimeTypesProc
  mimeData*: QListWidgetmimeDataProc
  dropMimeData*: QListWidgetdropMimeDataProc
  supportedDropActions*: QListWidgetsupportedDropActionsProc
  visualRect*: QListWidgetvisualRectProc
  scrollTo*: QListWidgetscrollToProc
  indexAt*: QListWidgetindexAtProc
  doItemsLayout*: QListWidgetdoItemsLayoutProc
  reset*: QListWidgetresetProc
  setRootIndex*: QListWidgetsetRootIndexProc
  scrollContentsBy*: QListWidgetscrollContentsByProc
  dataChanged*: QListWidgetdataChangedProc
  rowsInserted*: QListWidgetrowsInsertedProc
  rowsAboutToBeRemoved*: QListWidgetrowsAboutToBeRemovedProc
  mouseMoveEvent*: QListWidgetmouseMoveEventProc
  mouseReleaseEvent*: QListWidgetmouseReleaseEventProc
  wheelEvent*: QListWidgetwheelEventProc
  timerEvent*: QListWidgettimerEventProc
  resizeEvent*: QListWidgetresizeEventProc
  dragMoveEvent*: QListWidgetdragMoveEventProc
  dragLeaveEvent*: QListWidgetdragLeaveEventProc
  startDrag*: QListWidgetstartDragProc
  viewOptions*: QListWidgetviewOptionsProc
  paintEvent*: QListWidgetpaintEventProc
  horizontalOffset*: QListWidgethorizontalOffsetProc
  verticalOffset*: QListWidgetverticalOffsetProc
  moveCursor*: QListWidgetmoveCursorProc
  setSelection*: QListWidgetsetSelectionProc
  visualRegionForSelection*: QListWidgetvisualRegionForSelectionProc
  selectedIndexes*: QListWidgetselectedIndexesProc
  updateGeometries*: QListWidgetupdateGeometriesProc
  isIndexHidden*: QListWidgetisIndexHiddenProc
  selectionChanged*: QListWidgetselectionChangedProc
  currentChanged*: QListWidgetcurrentChangedProc
  viewportSizeHint*: QListWidgetviewportSizeHintProc
  keyboardSearch*: QListWidgetkeyboardSearchProc
  sizeHintForRow*: QListWidgetsizeHintForRowProc
  sizeHintForColumn*: QListWidgetsizeHintForColumnProc
  inputMethodQuery*: QListWidgetinputMethodQueryProc
  selectAll*: QListWidgetselectAllProc
  updateEditorData*: QListWidgetupdateEditorDataProc
  updateEditorGeometries*: QListWidgetupdateEditorGeometriesProc
  verticalScrollbarAction*: QListWidgetverticalScrollbarActionProc
  horizontalScrollbarAction*: QListWidgethorizontalScrollbarActionProc
  verticalScrollbarValueChanged*: QListWidgetverticalScrollbarValueChangedProc
  horizontalScrollbarValueChanged*: QListWidgethorizontalScrollbarValueChangedProc
  closeEditor*: QListWidgetcloseEditorProc
  commitData*: QListWidgetcommitDataProc
  editorDestroyed*: QListWidgeteditorDestroyedProc
  edit2*: QListWidgetedit2Proc
  selectionCommand*: QListWidgetselectionCommandProc
  focusNextPrevChild*: QListWidgetfocusNextPrevChildProc
  viewportEvent*: QListWidgetviewportEventProc
  mousePressEvent*: QListWidgetmousePressEventProc
  mouseDoubleClickEvent*: QListWidgetmouseDoubleClickEventProc
  dragEnterEvent*: QListWidgetdragEnterEventProc
  focusInEvent*: QListWidgetfocusInEventProc
  focusOutEvent*: QListWidgetfocusOutEventProc
  keyPressEvent*: QListWidgetkeyPressEventProc
  inputMethodEvent*: QListWidgetinputMethodEventProc
  eventFilter*: QListWidgeteventFilterProc
  minimumSizeHint*: QListWidgetminimumSizeHintProc
  sizeHint*: QListWidgetsizeHintProc
  setupViewport*: QListWidgetsetupViewportProc
  contextMenuEvent*: QListWidgetcontextMenuEventProc
  changeEvent*: QListWidgetchangeEventProc
  devType*: QListWidgetdevTypeProc
  setVisible*: QListWidgetsetVisibleProc
  heightForWidth*: QListWidgetheightForWidthProc
  hasHeightForWidth*: QListWidgethasHeightForWidthProc
  paintEngine*: QListWidgetpaintEngineProc
  keyReleaseEvent*: QListWidgetkeyReleaseEventProc
  enterEvent*: QListWidgetenterEventProc
  leaveEvent*: QListWidgetleaveEventProc
  moveEvent*: QListWidgetmoveEventProc
  closeEvent*: QListWidgetcloseEventProc
  tabletEvent*: QListWidgettabletEventProc
  actionEvent*: QListWidgetactionEventProc
  showEvent*: QListWidgetshowEventProc
  hideEvent*: QListWidgethideEventProc
  nativeEvent*: QListWidgetnativeEventProc
  metric*: QListWidgetmetricProc
  initPainter*: QListWidgetinitPainterProc
  redirected*: QListWidgetredirectedProc
  sharedPainter*: QListWidgetsharedPainterProc
  childEvent*: QListWidgetchildEventProc
  customEvent*: QListWidgetcustomEventProc
  connectNotify*: QListWidgetconnectNotifyProc
  disconnectNotify*: QListWidgetdisconnectNotifyProc
proc QListWidgetmetaObject*(self: gen_qlistwidget_types.QListWidget, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQListWidget_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQListWidget_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QListWidgetmetacast*(self: gen_qlistwidget_types.QListWidget, param1: cstring): pointer =
  fcQListWidget_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQListWidget_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QListWidgetmetacall*(self: gen_qlistwidget_types.QListWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQListWidget_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQListWidget_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QListWidgetsetSelectionModel*(self: gen_qlistwidget_types.QListWidget, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void =
  fcQListWidget_virtualbase_setSelectionModel(self.h, selectionModel.h)

proc miqt_exec_callback_cQListWidget_setSelectionModel(vtbl: pointer, self: pointer, selectionModel: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelectionModel(h: selectionModel)
  vtbl[].setSelectionModel(self, slotval1)

proc QListWidgetdropEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qevent_types.QDropEvent): void =
  fcQListWidget_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQListWidget_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QListWidgetevent*(self: gen_qlistwidget_types.QListWidget, e: gen_qcoreevent_types.QEvent): bool =
  fcQListWidget_virtualbase_event(self.h, e.h)

proc miqt_exec_callback_cQListWidget_event(vtbl: pointer, self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QListWidgetmimeTypes*(self: gen_qlistwidget_types.QListWidget, ): seq[string] =
  var v_ma = fcQListWidget_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc miqt_exec_callback_cQListWidget_mimeTypes(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  var virtualReturn = vtbl[].mimeTypes(self)
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_miqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_miqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = cast[cstring](if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil)
    if len(virtualReturn[i]) > 0: copyMem(cast[pointer](virtualReturn_i_copy), addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QListWidgetmimeData*(self: gen_qlistwidget_types.QListWidget, items: seq[gen_qlistwidget_types.QListWidgetItem]): gen_qmimedata_types.QMimeData =
  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  gen_qmimedata_types.QMimeData(h: fcQListWidget_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0]))))

proc miqt_exec_callback_cQListWidget_mimeData(vtbl: pointer, self: pointer, items: struct_miqt_array): pointer {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  var vitems_ma = items
  var vitemsx_ret = newSeq[gen_qlistwidget_types.QListWidgetItem](int(vitems_ma.len))
  let vitems_outCast = cast[ptr UncheckedArray[pointer]](vitems_ma.data)
  for i in 0 ..< vitems_ma.len:
    vitemsx_ret[i] = gen_qlistwidget_types.QListWidgetItem(h: vitems_outCast[i])
  c_free(vitems_ma.data)
  let slotval1 = vitemsx_ret
  var virtualReturn = vtbl[].mimeData(self, slotval1)
  virtualReturn.h

proc QListWidgetdropMimeData*(self: gen_qlistwidget_types.QListWidget, index: cint, data: gen_qmimedata_types.QMimeData, action: cint): bool =
  fcQListWidget_virtualbase_dropMimeData(self.h, index, data.h, cint(action))

proc miqt_exec_callback_cQListWidget_dropMimeData(vtbl: pointer, self: pointer, index: cint, data: pointer, action: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = index
  let slotval2 = gen_qmimedata_types.QMimeData(h: data)
  let slotval3 = cint(action)
  var virtualReturn = vtbl[].dropMimeData(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QListWidgetsupportedDropActions*(self: gen_qlistwidget_types.QListWidget, ): cint =
  cint(fcQListWidget_virtualbase_supportedDropActions(self.h))

proc miqt_exec_callback_cQListWidget_supportedDropActions(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  var virtualReturn = vtbl[].supportedDropActions(self)
  cint(virtualReturn)

proc QListWidgetvisualRect*(self: gen_qlistwidget_types.QListWidget, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQListWidget_virtualbase_visualRect(self.h, index.h))

proc miqt_exec_callback_cQListWidget_visualRect(vtbl: pointer, self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].visualRect(self, slotval1)
  virtualReturn.h

proc QListWidgetscrollTo*(self: gen_qlistwidget_types.QListWidget, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void =
  fcQListWidget_virtualbase_scrollTo(self.h, index.h, cint(hint))

proc miqt_exec_callback_cQListWidget_scrollTo(vtbl: pointer, self: pointer, index: pointer, hint: cint): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let slotval2 = cint(hint)
  vtbl[].scrollTo(self, slotval1, slotval2)

proc QListWidgetindexAt*(self: gen_qlistwidget_types.QListWidget, p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQListWidget_virtualbase_indexAt(self.h, p.h))

proc miqt_exec_callback_cQListWidget_indexAt(vtbl: pointer, self: pointer, p: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: p)
  var virtualReturn = vtbl[].indexAt(self, slotval1)
  virtualReturn.h

proc QListWidgetdoItemsLayout*(self: gen_qlistwidget_types.QListWidget, ): void =
  fcQListWidget_virtualbase_doItemsLayout(self.h)

proc miqt_exec_callback_cQListWidget_doItemsLayout(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  vtbl[].doItemsLayout(self)

proc QListWidgetreset*(self: gen_qlistwidget_types.QListWidget, ): void =
  fcQListWidget_virtualbase_reset(self.h)

proc miqt_exec_callback_cQListWidget_reset(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  vtbl[].reset(self)

proc QListWidgetsetRootIndex*(self: gen_qlistwidget_types.QListWidget, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQListWidget_virtualbase_setRootIndex(self.h, index.h)

proc miqt_exec_callback_cQListWidget_setRootIndex(vtbl: pointer, self: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  vtbl[].setRootIndex(self, slotval1)

proc QListWidgetscrollContentsBy*(self: gen_qlistwidget_types.QListWidget, dx: cint, dy: cint): void =
  fcQListWidget_virtualbase_scrollContentsBy(self.h, dx, dy)

proc miqt_exec_callback_cQListWidget_scrollContentsBy(vtbl: pointer, self: pointer, dx: cint, dy: cint): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = dx
  let slotval2 = dy
  vtbl[].scrollContentsBy(self, slotval1, slotval2)

proc QListWidgetdataChanged*(self: gen_qlistwidget_types.QListWidget, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: seq[cint]): void =
  var roles_CArray = newSeq[cint](len(roles))
  for i in 0..<len(roles):
    roles_CArray[i] = roles[i]

  fcQListWidget_virtualbase_dataChanged(self.h, topLeft.h, bottomRight.h, struct_miqt_array(len: csize_t(len(roles)), data: if len(roles) == 0: nil else: addr(roles_CArray[0])))

proc miqt_exec_callback_cQListWidget_dataChanged(vtbl: pointer, self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: topLeft)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: bottomRight)
  var vroles_ma = roles
  var vrolesx_ret = newSeq[cint](int(vroles_ma.len))
  let vroles_outCast = cast[ptr UncheckedArray[cint]](vroles_ma.data)
  for i in 0 ..< vroles_ma.len:
    vrolesx_ret[i] = vroles_outCast[i]
  c_free(vroles_ma.data)
  let slotval3 = vrolesx_ret
  vtbl[].dataChanged(self, slotval1, slotval2, slotval3)

proc QListWidgetrowsInserted*(self: gen_qlistwidget_types.QListWidget, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fcQListWidget_virtualbase_rowsInserted(self.h, parent.h, start, endVal)

proc miqt_exec_callback_cQListWidget_rowsInserted(vtbl: pointer, self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  let slotval2 = start
  let slotval3 = endVal
  vtbl[].rowsInserted(self, slotval1, slotval2, slotval3)

proc QListWidgetrowsAboutToBeRemoved*(self: gen_qlistwidget_types.QListWidget, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fcQListWidget_virtualbase_rowsAboutToBeRemoved(self.h, parent.h, start, endVal)

proc miqt_exec_callback_cQListWidget_rowsAboutToBeRemoved(vtbl: pointer, self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  let slotval2 = start
  let slotval3 = endVal
  vtbl[].rowsAboutToBeRemoved(self, slotval1, slotval2, slotval3)

proc QListWidgetmouseMoveEvent*(self: gen_qlistwidget_types.QListWidget, e: gen_qevent_types.QMouseEvent): void =
  fcQListWidget_virtualbase_mouseMoveEvent(self.h, e.h)

proc miqt_exec_callback_cQListWidget_mouseMoveEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QListWidgetmouseReleaseEvent*(self: gen_qlistwidget_types.QListWidget, e: gen_qevent_types.QMouseEvent): void =
  fcQListWidget_virtualbase_mouseReleaseEvent(self.h, e.h)

proc miqt_exec_callback_cQListWidget_mouseReleaseEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QListWidgetwheelEvent*(self: gen_qlistwidget_types.QListWidget, e: gen_qevent_types.QWheelEvent): void =
  fcQListWidget_virtualbase_wheelEvent(self.h, e.h)

proc miqt_exec_callback_cQListWidget_wheelEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: e)
  vtbl[].wheelEvent(self, slotval1)

proc QListWidgettimerEvent*(self: gen_qlistwidget_types.QListWidget, e: gen_qcoreevent_types.QTimerEvent): void =
  fcQListWidget_virtualbase_timerEvent(self.h, e.h)

proc miqt_exec_callback_cQListWidget_timerEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: e)
  vtbl[].timerEvent(self, slotval1)

proc QListWidgetresizeEvent*(self: gen_qlistwidget_types.QListWidget, e: gen_qevent_types.QResizeEvent): void =
  fcQListWidget_virtualbase_resizeEvent(self.h, e.h)

proc miqt_exec_callback_cQListWidget_resizeEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: e)
  vtbl[].resizeEvent(self, slotval1)

proc QListWidgetdragMoveEvent*(self: gen_qlistwidget_types.QListWidget, e: gen_qevent_types.QDragMoveEvent): void =
  fcQListWidget_virtualbase_dragMoveEvent(self.h, e.h)

proc miqt_exec_callback_cQListWidget_dragMoveEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: e)
  vtbl[].dragMoveEvent(self, slotval1)

proc QListWidgetdragLeaveEvent*(self: gen_qlistwidget_types.QListWidget, e: gen_qevent_types.QDragLeaveEvent): void =
  fcQListWidget_virtualbase_dragLeaveEvent(self.h, e.h)

proc miqt_exec_callback_cQListWidget_dragLeaveEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: e)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QListWidgetstartDrag*(self: gen_qlistwidget_types.QListWidget, supportedActions: cint): void =
  fcQListWidget_virtualbase_startDrag(self.h, cint(supportedActions))

proc miqt_exec_callback_cQListWidget_startDrag(vtbl: pointer, self: pointer, supportedActions: cint): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = cint(supportedActions)
  vtbl[].startDrag(self, slotval1)

proc QListWidgetviewOptions*(self: gen_qlistwidget_types.QListWidget, ): gen_qstyleoption_types.QStyleOptionViewItem =
  gen_qstyleoption_types.QStyleOptionViewItem(h: fcQListWidget_virtualbase_viewOptions(self.h))

proc miqt_exec_callback_cQListWidget_viewOptions(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  var virtualReturn = vtbl[].viewOptions(self)
  virtualReturn.h

proc QListWidgetpaintEvent*(self: gen_qlistwidget_types.QListWidget, e: gen_qevent_types.QPaintEvent): void =
  fcQListWidget_virtualbase_paintEvent(self.h, e.h)

proc miqt_exec_callback_cQListWidget_paintEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: e)
  vtbl[].paintEvent(self, slotval1)

proc QListWidgethorizontalOffset*(self: gen_qlistwidget_types.QListWidget, ): cint =
  fcQListWidget_virtualbase_horizontalOffset(self.h)

proc miqt_exec_callback_cQListWidget_horizontalOffset(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  var virtualReturn = vtbl[].horizontalOffset(self)
  virtualReturn

proc QListWidgetverticalOffset*(self: gen_qlistwidget_types.QListWidget, ): cint =
  fcQListWidget_virtualbase_verticalOffset(self.h)

proc miqt_exec_callback_cQListWidget_verticalOffset(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  var virtualReturn = vtbl[].verticalOffset(self)
  virtualReturn

proc QListWidgetmoveCursor*(self: gen_qlistwidget_types.QListWidget, cursorAction: cint, modifiers: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQListWidget_virtualbase_moveCursor(self.h, cint(cursorAction), cint(modifiers)))

proc miqt_exec_callback_cQListWidget_moveCursor(vtbl: pointer, self: pointer, cursorAction: cint, modifiers: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = cint(cursorAction)
  let slotval2 = cint(modifiers)
  var virtualReturn = vtbl[].moveCursor(self, slotval1, slotval2)
  virtualReturn.h

proc QListWidgetsetSelection*(self: gen_qlistwidget_types.QListWidget, rect: gen_qrect_types.QRect, command: cint): void =
  fcQListWidget_virtualbase_setSelection(self.h, rect.h, cint(command))

proc miqt_exec_callback_cQListWidget_setSelection(vtbl: pointer, self: pointer, rect: pointer, command: cint): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qrect_types.QRect(h: rect)
  let slotval2 = cint(command)
  vtbl[].setSelection(self, slotval1, slotval2)

proc QListWidgetvisualRegionForSelection*(self: gen_qlistwidget_types.QListWidget, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQListWidget_virtualbase_visualRegionForSelection(self.h, selection.h))

proc miqt_exec_callback_cQListWidget_visualRegionForSelection(vtbl: pointer, self: pointer, selection: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection)
  var virtualReturn = vtbl[].visualRegionForSelection(self, slotval1)
  virtualReturn.h

proc QListWidgetselectedIndexes*(self: gen_qlistwidget_types.QListWidget, ): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQListWidget_virtualbase_selectedIndexes(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc miqt_exec_callback_cQListWidget_selectedIndexes(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  var virtualReturn = vtbl[].selectedIndexes(self)
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QListWidgetupdateGeometries*(self: gen_qlistwidget_types.QListWidget, ): void =
  fcQListWidget_virtualbase_updateGeometries(self.h)

proc miqt_exec_callback_cQListWidget_updateGeometries(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  vtbl[].updateGeometries(self)

proc QListWidgetisIndexHidden*(self: gen_qlistwidget_types.QListWidget, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQListWidget_virtualbase_isIndexHidden(self.h, index.h)

proc miqt_exec_callback_cQListWidget_isIndexHidden(vtbl: pointer, self: pointer, index: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].isIndexHidden(self, slotval1)
  virtualReturn

proc QListWidgetselectionChanged*(self: gen_qlistwidget_types.QListWidget, selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void =
  fcQListWidget_virtualbase_selectionChanged(self.h, selected.h, deselected.h)

proc miqt_exec_callback_cQListWidget_selectionChanged(vtbl: pointer, self: pointer, selected: pointer, deselected: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selected)
  let slotval2 = gen_qitemselectionmodel_types.QItemSelection(h: deselected)
  vtbl[].selectionChanged(self, slotval1, slotval2)

proc QListWidgetcurrentChanged*(self: gen_qlistwidget_types.QListWidget, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQListWidget_virtualbase_currentChanged(self.h, current.h, previous.h)

proc miqt_exec_callback_cQListWidget_currentChanged(vtbl: pointer, self: pointer, current: pointer, previous: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: current)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: previous)
  vtbl[].currentChanged(self, slotval1, slotval2)

proc QListWidgetviewportSizeHint*(self: gen_qlistwidget_types.QListWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQListWidget_virtualbase_viewportSizeHint(self.h))

proc miqt_exec_callback_cQListWidget_viewportSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  var virtualReturn = vtbl[].viewportSizeHint(self)
  virtualReturn.h

proc QListWidgetkeyboardSearch*(self: gen_qlistwidget_types.QListWidget, search: string): void =
  fcQListWidget_virtualbase_keyboardSearch(self.h, struct_miqt_string(data: search, len: csize_t(len(search))))

proc miqt_exec_callback_cQListWidget_keyboardSearch(vtbl: pointer, self: pointer, search: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let vsearch_ms = search
  let vsearchx_ret = string.fromBytes(toOpenArrayByte(vsearch_ms.data, 0, int(vsearch_ms.len)-1))
  c_free(vsearch_ms.data)
  let slotval1 = vsearchx_ret
  vtbl[].keyboardSearch(self, slotval1)

proc QListWidgetsizeHintForRow*(self: gen_qlistwidget_types.QListWidget, row: cint): cint =
  fcQListWidget_virtualbase_sizeHintForRow(self.h, row)

proc miqt_exec_callback_cQListWidget_sizeHintForRow(vtbl: pointer, self: pointer, row: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = row
  var virtualReturn = vtbl[].sizeHintForRow(self, slotval1)
  virtualReturn

proc QListWidgetsizeHintForColumn*(self: gen_qlistwidget_types.QListWidget, column: cint): cint =
  fcQListWidget_virtualbase_sizeHintForColumn(self.h, column)

proc miqt_exec_callback_cQListWidget_sizeHintForColumn(vtbl: pointer, self: pointer, column: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = column
  var virtualReturn = vtbl[].sizeHintForColumn(self, slotval1)
  virtualReturn

proc QListWidgetinputMethodQuery*(self: gen_qlistwidget_types.QListWidget, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQListWidget_virtualbase_inputMethodQuery(self.h, cint(query)))

proc miqt_exec_callback_cQListWidget_inputMethodQuery(vtbl: pointer, self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = cint(query)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QListWidgetselectAll*(self: gen_qlistwidget_types.QListWidget, ): void =
  fcQListWidget_virtualbase_selectAll(self.h)

proc miqt_exec_callback_cQListWidget_selectAll(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  vtbl[].selectAll(self)

proc QListWidgetupdateEditorData*(self: gen_qlistwidget_types.QListWidget, ): void =
  fcQListWidget_virtualbase_updateEditorData(self.h)

proc miqt_exec_callback_cQListWidget_updateEditorData(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  vtbl[].updateEditorData(self)

proc QListWidgetupdateEditorGeometries*(self: gen_qlistwidget_types.QListWidget, ): void =
  fcQListWidget_virtualbase_updateEditorGeometries(self.h)

proc miqt_exec_callback_cQListWidget_updateEditorGeometries(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  vtbl[].updateEditorGeometries(self)

proc QListWidgetverticalScrollbarAction*(self: gen_qlistwidget_types.QListWidget, action: cint): void =
  fcQListWidget_virtualbase_verticalScrollbarAction(self.h, action)

proc miqt_exec_callback_cQListWidget_verticalScrollbarAction(vtbl: pointer, self: pointer, action: cint): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = action
  vtbl[].verticalScrollbarAction(self, slotval1)

proc QListWidgethorizontalScrollbarAction*(self: gen_qlistwidget_types.QListWidget, action: cint): void =
  fcQListWidget_virtualbase_horizontalScrollbarAction(self.h, action)

proc miqt_exec_callback_cQListWidget_horizontalScrollbarAction(vtbl: pointer, self: pointer, action: cint): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = action
  vtbl[].horizontalScrollbarAction(self, slotval1)

proc QListWidgetverticalScrollbarValueChanged*(self: gen_qlistwidget_types.QListWidget, value: cint): void =
  fcQListWidget_virtualbase_verticalScrollbarValueChanged(self.h, value)

proc miqt_exec_callback_cQListWidget_verticalScrollbarValueChanged(vtbl: pointer, self: pointer, value: cint): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = value
  vtbl[].verticalScrollbarValueChanged(self, slotval1)

proc QListWidgethorizontalScrollbarValueChanged*(self: gen_qlistwidget_types.QListWidget, value: cint): void =
  fcQListWidget_virtualbase_horizontalScrollbarValueChanged(self.h, value)

proc miqt_exec_callback_cQListWidget_horizontalScrollbarValueChanged(vtbl: pointer, self: pointer, value: cint): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = value
  vtbl[].horizontalScrollbarValueChanged(self, slotval1)

proc QListWidgetcloseEditor*(self: gen_qlistwidget_types.QListWidget, editor: gen_qwidget_types.QWidget, hint: cint): void =
  fcQListWidget_virtualbase_closeEditor(self.h, editor.h, cint(hint))

proc miqt_exec_callback_cQListWidget_closeEditor(vtbl: pointer, self: pointer, editor: pointer, hint: cint): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor)
  let slotval2 = cint(hint)
  vtbl[].closeEditor(self, slotval1, slotval2)

proc QListWidgetcommitData*(self: gen_qlistwidget_types.QListWidget, editor: gen_qwidget_types.QWidget): void =
  fcQListWidget_virtualbase_commitData(self.h, editor.h)

proc miqt_exec_callback_cQListWidget_commitData(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor)
  vtbl[].commitData(self, slotval1)

proc QListWidgeteditorDestroyed*(self: gen_qlistwidget_types.QListWidget, editor: gen_qobject_types.QObject): void =
  fcQListWidget_virtualbase_editorDestroyed(self.h, editor.h)

proc miqt_exec_callback_cQListWidget_editorDestroyed(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qobject_types.QObject(h: editor)
  vtbl[].editorDestroyed(self, slotval1)

proc QListWidgetedit*(self: gen_qlistwidget_types.QListWidget, index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool =
  fcQListWidget_virtualbase_edit2(self.h, index.h, cint(trigger), event.h)

proc miqt_exec_callback_cQListWidget_edit2(vtbl: pointer, self: pointer, index: pointer, trigger: cint, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let slotval2 = cint(trigger)
  let slotval3 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].edit2(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QListWidgetselectionCommand*(self: gen_qlistwidget_types.QListWidget, index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint =
  cint(fcQListWidget_virtualbase_selectionCommand(self.h, index.h, event.h))

proc miqt_exec_callback_cQListWidget_selectionCommand(vtbl: pointer, self: pointer, index: pointer, event: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].selectionCommand(self, slotval1, slotval2)
  cint(virtualReturn)

proc QListWidgetfocusNextPrevChild*(self: gen_qlistwidget_types.QListWidget, next: bool): bool =
  fcQListWidget_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQListWidget_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QListWidgetviewportEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qcoreevent_types.QEvent): bool =
  fcQListWidget_virtualbase_viewportEvent(self.h, event.h)

proc miqt_exec_callback_cQListWidget_viewportEvent(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].viewportEvent(self, slotval1)
  virtualReturn

proc QListWidgetmousePressEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQListWidget_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQListWidget_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QListWidgetmouseDoubleClickEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQListWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQListWidget_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QListWidgetdragEnterEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qevent_types.QDragEnterEvent): void =
  fcQListWidget_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQListWidget_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QListWidgetfocusInEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQListWidget_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQListWidget_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QListWidgetfocusOutEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQListWidget_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQListWidget_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QListWidgetkeyPressEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQListWidget_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQListWidget_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyPressEvent(self, slotval1)

proc QListWidgetinputMethodEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qevent_types.QInputMethodEvent): void =
  fcQListWidget_virtualbase_inputMethodEvent(self.h, event.h)

proc miqt_exec_callback_cQListWidget_inputMethodEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)
  vtbl[].inputMethodEvent(self, slotval1)

proc QListWidgeteventFilter*(self: gen_qlistwidget_types.QListWidget, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQListWidget_virtualbase_eventFilter(self.h, objectVal.h, event.h)

proc miqt_exec_callback_cQListWidget_eventFilter(vtbl: pointer, self: pointer, objectVal: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qobject_types.QObject(h: objectVal)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QListWidgetminimumSizeHint*(self: gen_qlistwidget_types.QListWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQListWidget_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQListWidget_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QListWidgetsizeHint*(self: gen_qlistwidget_types.QListWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQListWidget_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQListWidget_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QListWidgetsetupViewport*(self: gen_qlistwidget_types.QListWidget, viewport: gen_qwidget_types.QWidget): void =
  fcQListWidget_virtualbase_setupViewport(self.h, viewport.h)

proc miqt_exec_callback_cQListWidget_setupViewport(vtbl: pointer, self: pointer, viewport: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: viewport)
  vtbl[].setupViewport(self, slotval1)

proc QListWidgetcontextMenuEvent*(self: gen_qlistwidget_types.QListWidget, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQListWidget_virtualbase_contextMenuEvent(self.h, param1.h)

proc miqt_exec_callback_cQListWidget_contextMenuEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)
  vtbl[].contextMenuEvent(self, slotval1)

proc QListWidgetchangeEvent*(self: gen_qlistwidget_types.QListWidget, param1: gen_qcoreevent_types.QEvent): void =
  fcQListWidget_virtualbase_changeEvent(self.h, param1.h)

proc miqt_exec_callback_cQListWidget_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  vtbl[].changeEvent(self, slotval1)

proc QListWidgetdevType*(self: gen_qlistwidget_types.QListWidget, ): cint =
  fcQListWidget_virtualbase_devType(self.h)

proc miqt_exec_callback_cQListWidget_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QListWidgetsetVisible*(self: gen_qlistwidget_types.QListWidget, visible: bool): void =
  fcQListWidget_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQListWidget_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QListWidgetheightForWidth*(self: gen_qlistwidget_types.QListWidget, param1: cint): cint =
  fcQListWidget_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQListWidget_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QListWidgethasHeightForWidth*(self: gen_qlistwidget_types.QListWidget, ): bool =
  fcQListWidget_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQListWidget_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QListWidgetpaintEngine*(self: gen_qlistwidget_types.QListWidget, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQListWidget_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQListWidget_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QListWidgetkeyReleaseEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQListWidget_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQListWidget_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QListWidgetenterEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQListWidget_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQListWidget_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QListWidgetleaveEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQListWidget_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQListWidget_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QListWidgetmoveEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qevent_types.QMoveEvent): void =
  fcQListWidget_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQListWidget_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QListWidgetcloseEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qevent_types.QCloseEvent): void =
  fcQListWidget_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQListWidget_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QListWidgettabletEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qevent_types.QTabletEvent): void =
  fcQListWidget_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQListWidget_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QListWidgetactionEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qevent_types.QActionEvent): void =
  fcQListWidget_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQListWidget_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QListWidgetshowEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qevent_types.QShowEvent): void =
  fcQListWidget_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQListWidget_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  vtbl[].showEvent(self, slotval1)

proc QListWidgethideEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qevent_types.QHideEvent): void =
  fcQListWidget_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQListWidget_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QListWidgetnativeEvent*(self: gen_qlistwidget_types.QListWidget, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fcQListWidget_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQListWidget_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QListWidgetmetric*(self: gen_qlistwidget_types.QListWidget, param1: cint): cint =
  fcQListWidget_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQListWidget_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QListWidgetinitPainter*(self: gen_qlistwidget_types.QListWidget, painter: gen_qpainter_types.QPainter): void =
  fcQListWidget_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQListWidget_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QListWidgetredirected*(self: gen_qlistwidget_types.QListWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQListWidget_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQListWidget_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QListWidgetsharedPainter*(self: gen_qlistwidget_types.QListWidget, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQListWidget_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQListWidget_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QListWidgetchildEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qcoreevent_types.QChildEvent): void =
  fcQListWidget_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQListWidget_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QListWidgetcustomEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQListWidget_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQListWidget_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QListWidgetconnectNotify*(self: gen_qlistwidget_types.QListWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQListWidget_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQListWidget_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QListWidgetdisconnectNotify*(self: gen_qlistwidget_types.QListWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQListWidget_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQListWidget_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](vtbl)
  let self = QListWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc items*(self: gen_qlistwidget_types.QListWidget, data: gen_qmimedata_types.QMimeData): seq[gen_qlistwidget_types.QListWidgetItem] =
  var v_ma = fcQListWidget_protectedbase_items(self.h, data.h)
  var vx_ret = newSeq[gen_qlistwidget_types.QListWidgetItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qlistwidget_types.QListWidgetItem(h: v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc indexFromItem*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQListWidget_protectedbase_indexFromItem(self.h, item.h))

proc indexFromItem*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQListWidget_protectedbase_indexFromItemWithItem(self.h, item.h))

proc itemFromIndex*(self: gen_qlistwidget_types.QListWidget, index: gen_qabstractitemmodel_types.QModelIndex): gen_qlistwidget_types.QListWidgetItem =
  gen_qlistwidget_types.QListWidgetItem(h: fcQListWidget_protectedbase_itemFromIndex(self.h, index.h))

proc resizeContents*(self: gen_qlistwidget_types.QListWidget, width: cint, height: cint): void =
  fcQListWidget_protectedbase_resizeContents(self.h, width, height)

proc contentsSize*(self: gen_qlistwidget_types.QListWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQListWidget_protectedbase_contentsSize(self.h))

proc rectForIndex*(self: gen_qlistwidget_types.QListWidget, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQListWidget_protectedbase_rectForIndex(self.h, index.h))

proc setPositionForIndex*(self: gen_qlistwidget_types.QListWidget, position: gen_qpoint_types.QPoint, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQListWidget_protectedbase_setPositionForIndex(self.h, position.h, index.h)

proc setHorizontalStepsPerItem*(self: gen_qlistwidget_types.QListWidget, steps: cint): void =
  fcQListWidget_protectedbase_setHorizontalStepsPerItem(self.h, steps)

proc horizontalStepsPerItem*(self: gen_qlistwidget_types.QListWidget, ): cint =
  fcQListWidget_protectedbase_horizontalStepsPerItem(self.h)

proc setVerticalStepsPerItem*(self: gen_qlistwidget_types.QListWidget, steps: cint): void =
  fcQListWidget_protectedbase_setVerticalStepsPerItem(self.h, steps)

proc verticalStepsPerItem*(self: gen_qlistwidget_types.QListWidget, ): cint =
  fcQListWidget_protectedbase_verticalStepsPerItem(self.h)

proc state*(self: gen_qlistwidget_types.QListWidget, ): cint =
  cint(fcQListWidget_protectedbase_state(self.h))

proc setState*(self: gen_qlistwidget_types.QListWidget, state: cint): void =
  fcQListWidget_protectedbase_setState(self.h, cint(state))

proc scheduleDelayedItemsLayout*(self: gen_qlistwidget_types.QListWidget, ): void =
  fcQListWidget_protectedbase_scheduleDelayedItemsLayout(self.h)

proc executeDelayedItemsLayout*(self: gen_qlistwidget_types.QListWidget, ): void =
  fcQListWidget_protectedbase_executeDelayedItemsLayout(self.h)

proc setDirtyRegion*(self: gen_qlistwidget_types.QListWidget, region: gen_qregion_types.QRegion): void =
  fcQListWidget_protectedbase_setDirtyRegion(self.h, region.h)

proc scrollDirtyRegion*(self: gen_qlistwidget_types.QListWidget, dx: cint, dy: cint): void =
  fcQListWidget_protectedbase_scrollDirtyRegion(self.h, dx, dy)

proc dirtyRegionOffset*(self: gen_qlistwidget_types.QListWidget, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQListWidget_protectedbase_dirtyRegionOffset(self.h))

proc startAutoScroll*(self: gen_qlistwidget_types.QListWidget, ): void =
  fcQListWidget_protectedbase_startAutoScroll(self.h)

proc stopAutoScroll*(self: gen_qlistwidget_types.QListWidget, ): void =
  fcQListWidget_protectedbase_stopAutoScroll(self.h)

proc doAutoScroll*(self: gen_qlistwidget_types.QListWidget, ): void =
  fcQListWidget_protectedbase_doAutoScroll(self.h)

proc dropIndicatorPosition*(self: gen_qlistwidget_types.QListWidget, ): cint =
  cint(fcQListWidget_protectedbase_dropIndicatorPosition(self.h))

proc setViewportMargins*(self: gen_qlistwidget_types.QListWidget, left: cint, top: cint, right: cint, bottom: cint): void =
  fcQListWidget_protectedbase_setViewportMargins(self.h, left, top, right, bottom)

proc viewportMargins*(self: gen_qlistwidget_types.QListWidget, ): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQListWidget_protectedbase_viewportMargins(self.h))

proc drawFrame*(self: gen_qlistwidget_types.QListWidget, param1: gen_qpainter_types.QPainter): void =
  fcQListWidget_protectedbase_drawFrame(self.h, param1.h)

proc initStyleOption*(self: gen_qlistwidget_types.QListWidget, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fcQListWidget_protectedbase_initStyleOption(self.h, option.h)

proc updateMicroFocus*(self: gen_qlistwidget_types.QListWidget, ): void =
  fcQListWidget_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qlistwidget_types.QListWidget, ): void =
  fcQListWidget_protectedbase_create(self.h)

proc destroy*(self: gen_qlistwidget_types.QListWidget, ): void =
  fcQListWidget_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qlistwidget_types.QListWidget, ): bool =
  fcQListWidget_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qlistwidget_types.QListWidget, ): bool =
  fcQListWidget_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qlistwidget_types.QListWidget, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQListWidget_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qlistwidget_types.QListWidget, ): cint =
  fcQListWidget_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qlistwidget_types.QListWidget, signal: cstring): cint =
  fcQListWidget_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qlistwidget_types.QListWidget, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQListWidget_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qlistwidget_types.QListWidget,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QListWidgetVTable = nil): gen_qlistwidget_types.QListWidget =
  let vtbl = if vtbl == nil: new QListWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQListWidgetVTable, _: ptr cQListWidget) {.cdecl.} =
    let vtbl = cast[ref QListWidgetVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQListWidget_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQListWidget_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQListWidget_metacall
  if not isNil(vtbl.setSelectionModel):
    vtbl[].vtbl.setSelectionModel = miqt_exec_callback_cQListWidget_setSelectionModel
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQListWidget_dropEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQListWidget_event
  if not isNil(vtbl.mimeTypes):
    vtbl[].vtbl.mimeTypes = miqt_exec_callback_cQListWidget_mimeTypes
  if not isNil(vtbl.mimeData):
    vtbl[].vtbl.mimeData = miqt_exec_callback_cQListWidget_mimeData
  if not isNil(vtbl.dropMimeData):
    vtbl[].vtbl.dropMimeData = miqt_exec_callback_cQListWidget_dropMimeData
  if not isNil(vtbl.supportedDropActions):
    vtbl[].vtbl.supportedDropActions = miqt_exec_callback_cQListWidget_supportedDropActions
  if not isNil(vtbl.visualRect):
    vtbl[].vtbl.visualRect = miqt_exec_callback_cQListWidget_visualRect
  if not isNil(vtbl.scrollTo):
    vtbl[].vtbl.scrollTo = miqt_exec_callback_cQListWidget_scrollTo
  if not isNil(vtbl.indexAt):
    vtbl[].vtbl.indexAt = miqt_exec_callback_cQListWidget_indexAt
  if not isNil(vtbl.doItemsLayout):
    vtbl[].vtbl.doItemsLayout = miqt_exec_callback_cQListWidget_doItemsLayout
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQListWidget_reset
  if not isNil(vtbl.setRootIndex):
    vtbl[].vtbl.setRootIndex = miqt_exec_callback_cQListWidget_setRootIndex
  if not isNil(vtbl.scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = miqt_exec_callback_cQListWidget_scrollContentsBy
  if not isNil(vtbl.dataChanged):
    vtbl[].vtbl.dataChanged = miqt_exec_callback_cQListWidget_dataChanged
  if not isNil(vtbl.rowsInserted):
    vtbl[].vtbl.rowsInserted = miqt_exec_callback_cQListWidget_rowsInserted
  if not isNil(vtbl.rowsAboutToBeRemoved):
    vtbl[].vtbl.rowsAboutToBeRemoved = miqt_exec_callback_cQListWidget_rowsAboutToBeRemoved
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQListWidget_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQListWidget_mouseReleaseEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQListWidget_wheelEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQListWidget_timerEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQListWidget_resizeEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQListWidget_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQListWidget_dragLeaveEvent
  if not isNil(vtbl.startDrag):
    vtbl[].vtbl.startDrag = miqt_exec_callback_cQListWidget_startDrag
  if not isNil(vtbl.viewOptions):
    vtbl[].vtbl.viewOptions = miqt_exec_callback_cQListWidget_viewOptions
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQListWidget_paintEvent
  if not isNil(vtbl.horizontalOffset):
    vtbl[].vtbl.horizontalOffset = miqt_exec_callback_cQListWidget_horizontalOffset
  if not isNil(vtbl.verticalOffset):
    vtbl[].vtbl.verticalOffset = miqt_exec_callback_cQListWidget_verticalOffset
  if not isNil(vtbl.moveCursor):
    vtbl[].vtbl.moveCursor = miqt_exec_callback_cQListWidget_moveCursor
  if not isNil(vtbl.setSelection):
    vtbl[].vtbl.setSelection = miqt_exec_callback_cQListWidget_setSelection
  if not isNil(vtbl.visualRegionForSelection):
    vtbl[].vtbl.visualRegionForSelection = miqt_exec_callback_cQListWidget_visualRegionForSelection
  if not isNil(vtbl.selectedIndexes):
    vtbl[].vtbl.selectedIndexes = miqt_exec_callback_cQListWidget_selectedIndexes
  if not isNil(vtbl.updateGeometries):
    vtbl[].vtbl.updateGeometries = miqt_exec_callback_cQListWidget_updateGeometries
  if not isNil(vtbl.isIndexHidden):
    vtbl[].vtbl.isIndexHidden = miqt_exec_callback_cQListWidget_isIndexHidden
  if not isNil(vtbl.selectionChanged):
    vtbl[].vtbl.selectionChanged = miqt_exec_callback_cQListWidget_selectionChanged
  if not isNil(vtbl.currentChanged):
    vtbl[].vtbl.currentChanged = miqt_exec_callback_cQListWidget_currentChanged
  if not isNil(vtbl.viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = miqt_exec_callback_cQListWidget_viewportSizeHint
  if not isNil(vtbl.keyboardSearch):
    vtbl[].vtbl.keyboardSearch = miqt_exec_callback_cQListWidget_keyboardSearch
  if not isNil(vtbl.sizeHintForRow):
    vtbl[].vtbl.sizeHintForRow = miqt_exec_callback_cQListWidget_sizeHintForRow
  if not isNil(vtbl.sizeHintForColumn):
    vtbl[].vtbl.sizeHintForColumn = miqt_exec_callback_cQListWidget_sizeHintForColumn
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQListWidget_inputMethodQuery
  if not isNil(vtbl.selectAll):
    vtbl[].vtbl.selectAll = miqt_exec_callback_cQListWidget_selectAll
  if not isNil(vtbl.updateEditorData):
    vtbl[].vtbl.updateEditorData = miqt_exec_callback_cQListWidget_updateEditorData
  if not isNil(vtbl.updateEditorGeometries):
    vtbl[].vtbl.updateEditorGeometries = miqt_exec_callback_cQListWidget_updateEditorGeometries
  if not isNil(vtbl.verticalScrollbarAction):
    vtbl[].vtbl.verticalScrollbarAction = miqt_exec_callback_cQListWidget_verticalScrollbarAction
  if not isNil(vtbl.horizontalScrollbarAction):
    vtbl[].vtbl.horizontalScrollbarAction = miqt_exec_callback_cQListWidget_horizontalScrollbarAction
  if not isNil(vtbl.verticalScrollbarValueChanged):
    vtbl[].vtbl.verticalScrollbarValueChanged = miqt_exec_callback_cQListWidget_verticalScrollbarValueChanged
  if not isNil(vtbl.horizontalScrollbarValueChanged):
    vtbl[].vtbl.horizontalScrollbarValueChanged = miqt_exec_callback_cQListWidget_horizontalScrollbarValueChanged
  if not isNil(vtbl.closeEditor):
    vtbl[].vtbl.closeEditor = miqt_exec_callback_cQListWidget_closeEditor
  if not isNil(vtbl.commitData):
    vtbl[].vtbl.commitData = miqt_exec_callback_cQListWidget_commitData
  if not isNil(vtbl.editorDestroyed):
    vtbl[].vtbl.editorDestroyed = miqt_exec_callback_cQListWidget_editorDestroyed
  if not isNil(vtbl.edit2):
    vtbl[].vtbl.edit2 = miqt_exec_callback_cQListWidget_edit2
  if not isNil(vtbl.selectionCommand):
    vtbl[].vtbl.selectionCommand = miqt_exec_callback_cQListWidget_selectionCommand
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQListWidget_focusNextPrevChild
  if not isNil(vtbl.viewportEvent):
    vtbl[].vtbl.viewportEvent = miqt_exec_callback_cQListWidget_viewportEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQListWidget_mousePressEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQListWidget_mouseDoubleClickEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQListWidget_dragEnterEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQListWidget_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQListWidget_focusOutEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQListWidget_keyPressEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQListWidget_inputMethodEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQListWidget_eventFilter
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQListWidget_minimumSizeHint
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQListWidget_sizeHint
  if not isNil(vtbl.setupViewport):
    vtbl[].vtbl.setupViewport = miqt_exec_callback_cQListWidget_setupViewport
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQListWidget_contextMenuEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQListWidget_changeEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQListWidget_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQListWidget_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQListWidget_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQListWidget_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQListWidget_paintEngine
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQListWidget_keyReleaseEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQListWidget_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQListWidget_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQListWidget_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQListWidget_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQListWidget_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQListWidget_actionEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQListWidget_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQListWidget_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQListWidget_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQListWidget_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQListWidget_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQListWidget_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQListWidget_sharedPainter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQListWidget_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQListWidget_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQListWidget_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQListWidget_disconnectNotify
  gen_qlistwidget_types.QListWidget(h: fcQListWidget_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qlistwidget_types.QListWidget,
    vtbl: ref QListWidgetVTable = nil): gen_qlistwidget_types.QListWidget =
  let vtbl = if vtbl == nil: new QListWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQListWidgetVTable, _: ptr cQListWidget) {.cdecl.} =
    let vtbl = cast[ref QListWidgetVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQListWidget_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQListWidget_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQListWidget_metacall
  if not isNil(vtbl.setSelectionModel):
    vtbl[].vtbl.setSelectionModel = miqt_exec_callback_cQListWidget_setSelectionModel
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQListWidget_dropEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQListWidget_event
  if not isNil(vtbl.mimeTypes):
    vtbl[].vtbl.mimeTypes = miqt_exec_callback_cQListWidget_mimeTypes
  if not isNil(vtbl.mimeData):
    vtbl[].vtbl.mimeData = miqt_exec_callback_cQListWidget_mimeData
  if not isNil(vtbl.dropMimeData):
    vtbl[].vtbl.dropMimeData = miqt_exec_callback_cQListWidget_dropMimeData
  if not isNil(vtbl.supportedDropActions):
    vtbl[].vtbl.supportedDropActions = miqt_exec_callback_cQListWidget_supportedDropActions
  if not isNil(vtbl.visualRect):
    vtbl[].vtbl.visualRect = miqt_exec_callback_cQListWidget_visualRect
  if not isNil(vtbl.scrollTo):
    vtbl[].vtbl.scrollTo = miqt_exec_callback_cQListWidget_scrollTo
  if not isNil(vtbl.indexAt):
    vtbl[].vtbl.indexAt = miqt_exec_callback_cQListWidget_indexAt
  if not isNil(vtbl.doItemsLayout):
    vtbl[].vtbl.doItemsLayout = miqt_exec_callback_cQListWidget_doItemsLayout
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQListWidget_reset
  if not isNil(vtbl.setRootIndex):
    vtbl[].vtbl.setRootIndex = miqt_exec_callback_cQListWidget_setRootIndex
  if not isNil(vtbl.scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = miqt_exec_callback_cQListWidget_scrollContentsBy
  if not isNil(vtbl.dataChanged):
    vtbl[].vtbl.dataChanged = miqt_exec_callback_cQListWidget_dataChanged
  if not isNil(vtbl.rowsInserted):
    vtbl[].vtbl.rowsInserted = miqt_exec_callback_cQListWidget_rowsInserted
  if not isNil(vtbl.rowsAboutToBeRemoved):
    vtbl[].vtbl.rowsAboutToBeRemoved = miqt_exec_callback_cQListWidget_rowsAboutToBeRemoved
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQListWidget_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQListWidget_mouseReleaseEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQListWidget_wheelEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQListWidget_timerEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQListWidget_resizeEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQListWidget_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQListWidget_dragLeaveEvent
  if not isNil(vtbl.startDrag):
    vtbl[].vtbl.startDrag = miqt_exec_callback_cQListWidget_startDrag
  if not isNil(vtbl.viewOptions):
    vtbl[].vtbl.viewOptions = miqt_exec_callback_cQListWidget_viewOptions
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQListWidget_paintEvent
  if not isNil(vtbl.horizontalOffset):
    vtbl[].vtbl.horizontalOffset = miqt_exec_callback_cQListWidget_horizontalOffset
  if not isNil(vtbl.verticalOffset):
    vtbl[].vtbl.verticalOffset = miqt_exec_callback_cQListWidget_verticalOffset
  if not isNil(vtbl.moveCursor):
    vtbl[].vtbl.moveCursor = miqt_exec_callback_cQListWidget_moveCursor
  if not isNil(vtbl.setSelection):
    vtbl[].vtbl.setSelection = miqt_exec_callback_cQListWidget_setSelection
  if not isNil(vtbl.visualRegionForSelection):
    vtbl[].vtbl.visualRegionForSelection = miqt_exec_callback_cQListWidget_visualRegionForSelection
  if not isNil(vtbl.selectedIndexes):
    vtbl[].vtbl.selectedIndexes = miqt_exec_callback_cQListWidget_selectedIndexes
  if not isNil(vtbl.updateGeometries):
    vtbl[].vtbl.updateGeometries = miqt_exec_callback_cQListWidget_updateGeometries
  if not isNil(vtbl.isIndexHidden):
    vtbl[].vtbl.isIndexHidden = miqt_exec_callback_cQListWidget_isIndexHidden
  if not isNil(vtbl.selectionChanged):
    vtbl[].vtbl.selectionChanged = miqt_exec_callback_cQListWidget_selectionChanged
  if not isNil(vtbl.currentChanged):
    vtbl[].vtbl.currentChanged = miqt_exec_callback_cQListWidget_currentChanged
  if not isNil(vtbl.viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = miqt_exec_callback_cQListWidget_viewportSizeHint
  if not isNil(vtbl.keyboardSearch):
    vtbl[].vtbl.keyboardSearch = miqt_exec_callback_cQListWidget_keyboardSearch
  if not isNil(vtbl.sizeHintForRow):
    vtbl[].vtbl.sizeHintForRow = miqt_exec_callback_cQListWidget_sizeHintForRow
  if not isNil(vtbl.sizeHintForColumn):
    vtbl[].vtbl.sizeHintForColumn = miqt_exec_callback_cQListWidget_sizeHintForColumn
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQListWidget_inputMethodQuery
  if not isNil(vtbl.selectAll):
    vtbl[].vtbl.selectAll = miqt_exec_callback_cQListWidget_selectAll
  if not isNil(vtbl.updateEditorData):
    vtbl[].vtbl.updateEditorData = miqt_exec_callback_cQListWidget_updateEditorData
  if not isNil(vtbl.updateEditorGeometries):
    vtbl[].vtbl.updateEditorGeometries = miqt_exec_callback_cQListWidget_updateEditorGeometries
  if not isNil(vtbl.verticalScrollbarAction):
    vtbl[].vtbl.verticalScrollbarAction = miqt_exec_callback_cQListWidget_verticalScrollbarAction
  if not isNil(vtbl.horizontalScrollbarAction):
    vtbl[].vtbl.horizontalScrollbarAction = miqt_exec_callback_cQListWidget_horizontalScrollbarAction
  if not isNil(vtbl.verticalScrollbarValueChanged):
    vtbl[].vtbl.verticalScrollbarValueChanged = miqt_exec_callback_cQListWidget_verticalScrollbarValueChanged
  if not isNil(vtbl.horizontalScrollbarValueChanged):
    vtbl[].vtbl.horizontalScrollbarValueChanged = miqt_exec_callback_cQListWidget_horizontalScrollbarValueChanged
  if not isNil(vtbl.closeEditor):
    vtbl[].vtbl.closeEditor = miqt_exec_callback_cQListWidget_closeEditor
  if not isNil(vtbl.commitData):
    vtbl[].vtbl.commitData = miqt_exec_callback_cQListWidget_commitData
  if not isNil(vtbl.editorDestroyed):
    vtbl[].vtbl.editorDestroyed = miqt_exec_callback_cQListWidget_editorDestroyed
  if not isNil(vtbl.edit2):
    vtbl[].vtbl.edit2 = miqt_exec_callback_cQListWidget_edit2
  if not isNil(vtbl.selectionCommand):
    vtbl[].vtbl.selectionCommand = miqt_exec_callback_cQListWidget_selectionCommand
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQListWidget_focusNextPrevChild
  if not isNil(vtbl.viewportEvent):
    vtbl[].vtbl.viewportEvent = miqt_exec_callback_cQListWidget_viewportEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQListWidget_mousePressEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQListWidget_mouseDoubleClickEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQListWidget_dragEnterEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQListWidget_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQListWidget_focusOutEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQListWidget_keyPressEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQListWidget_inputMethodEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQListWidget_eventFilter
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQListWidget_minimumSizeHint
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQListWidget_sizeHint
  if not isNil(vtbl.setupViewport):
    vtbl[].vtbl.setupViewport = miqt_exec_callback_cQListWidget_setupViewport
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQListWidget_contextMenuEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQListWidget_changeEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQListWidget_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQListWidget_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQListWidget_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQListWidget_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQListWidget_paintEngine
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQListWidget_keyReleaseEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQListWidget_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQListWidget_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQListWidget_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQListWidget_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQListWidget_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQListWidget_actionEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQListWidget_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQListWidget_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQListWidget_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQListWidget_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQListWidget_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQListWidget_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQListWidget_sharedPainter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQListWidget_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQListWidget_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQListWidget_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQListWidget_disconnectNotify
  gen_qlistwidget_types.QListWidget(h: fcQListWidget_new2(addr(vtbl[]), ))

proc staticMetaObject*(_: type gen_qlistwidget_types.QListWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQListWidget_staticMetaObject())
proc delete*(self: gen_qlistwidget_types.QListWidget) =
  fcQListWidget_delete(self.h)
