import ./qtwidgets_pkg

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

proc fcQListWidgetItem_clone(self: pointer): pointer {.importc: "QListWidgetItem_clone".}
proc fcQListWidgetItem_listWidget(self: pointer): pointer {.importc: "QListWidgetItem_listWidget".}
proc fcQListWidgetItem_setSelected(self: pointer, select: bool): void {.importc: "QListWidgetItem_setSelected".}
proc fcQListWidgetItem_isSelected(self: pointer): bool {.importc: "QListWidgetItem_isSelected".}
proc fcQListWidgetItem_setHidden(self: pointer, hide: bool): void {.importc: "QListWidgetItem_setHidden".}
proc fcQListWidgetItem_isHidden(self: pointer): bool {.importc: "QListWidgetItem_isHidden".}
proc fcQListWidgetItem_flags(self: pointer): cint {.importc: "QListWidgetItem_flags".}
proc fcQListWidgetItem_setFlags(self: pointer, flags: cint): void {.importc: "QListWidgetItem_setFlags".}
proc fcQListWidgetItem_text(self: pointer): struct_miqt_string {.importc: "QListWidgetItem_text".}
proc fcQListWidgetItem_setText(self: pointer, text: struct_miqt_string): void {.importc: "QListWidgetItem_setText".}
proc fcQListWidgetItem_icon(self: pointer): pointer {.importc: "QListWidgetItem_icon".}
proc fcQListWidgetItem_setIcon(self: pointer, icon: pointer): void {.importc: "QListWidgetItem_setIcon".}
proc fcQListWidgetItem_statusTip(self: pointer): struct_miqt_string {.importc: "QListWidgetItem_statusTip".}
proc fcQListWidgetItem_setStatusTip(self: pointer, statusTip: struct_miqt_string): void {.importc: "QListWidgetItem_setStatusTip".}
proc fcQListWidgetItem_toolTip(self: pointer): struct_miqt_string {.importc: "QListWidgetItem_toolTip".}
proc fcQListWidgetItem_setToolTip(self: pointer, toolTip: struct_miqt_string): void {.importc: "QListWidgetItem_setToolTip".}
proc fcQListWidgetItem_whatsThis(self: pointer): struct_miqt_string {.importc: "QListWidgetItem_whatsThis".}
proc fcQListWidgetItem_setWhatsThis(self: pointer, whatsThis: struct_miqt_string): void {.importc: "QListWidgetItem_setWhatsThis".}
proc fcQListWidgetItem_font(self: pointer): pointer {.importc: "QListWidgetItem_font".}
proc fcQListWidgetItem_setFont(self: pointer, font: pointer): void {.importc: "QListWidgetItem_setFont".}
proc fcQListWidgetItem_textAlignment(self: pointer): cint {.importc: "QListWidgetItem_textAlignment".}
proc fcQListWidgetItem_setTextAlignment(self: pointer, alignment: cint): void {.importc: "QListWidgetItem_setTextAlignment".}
proc fcQListWidgetItem_backgroundColor(self: pointer): pointer {.importc: "QListWidgetItem_backgroundColor".}
proc fcQListWidgetItem_setBackgroundColor(self: pointer, color: pointer): void {.importc: "QListWidgetItem_setBackgroundColor".}
proc fcQListWidgetItem_background(self: pointer): pointer {.importc: "QListWidgetItem_background".}
proc fcQListWidgetItem_setBackground(self: pointer, brush: pointer): void {.importc: "QListWidgetItem_setBackground".}
proc fcQListWidgetItem_textColor(self: pointer): pointer {.importc: "QListWidgetItem_textColor".}
proc fcQListWidgetItem_setTextColor(self: pointer, color: pointer): void {.importc: "QListWidgetItem_setTextColor".}
proc fcQListWidgetItem_foreground(self: pointer): pointer {.importc: "QListWidgetItem_foreground".}
proc fcQListWidgetItem_setForeground(self: pointer, brush: pointer): void {.importc: "QListWidgetItem_setForeground".}
proc fcQListWidgetItem_checkState(self: pointer): cint {.importc: "QListWidgetItem_checkState".}
proc fcQListWidgetItem_setCheckState(self: pointer, state: cint): void {.importc: "QListWidgetItem_setCheckState".}
proc fcQListWidgetItem_sizeHint(self: pointer): pointer {.importc: "QListWidgetItem_sizeHint".}
proc fcQListWidgetItem_setSizeHint(self: pointer, size: pointer): void {.importc: "QListWidgetItem_setSizeHint".}
proc fcQListWidgetItem_data(self: pointer, role: cint): pointer {.importc: "QListWidgetItem_data".}
proc fcQListWidgetItem_setData(self: pointer, role: cint, value: pointer): void {.importc: "QListWidgetItem_setData".}
proc fcQListWidgetItem_operatorLesser(self: pointer, other: pointer): bool {.importc: "QListWidgetItem_operatorLesser".}
proc fcQListWidgetItem_read(self: pointer, inVal: pointer): void {.importc: "QListWidgetItem_read".}
proc fcQListWidgetItem_write(self: pointer, outVal: pointer): void {.importc: "QListWidgetItem_write".}
proc fcQListWidgetItem_operatorAssign(self: pointer, other: pointer): void {.importc: "QListWidgetItem_operatorAssign".}
proc fcQListWidgetItem_typeX(self: pointer): cint {.importc: "QListWidgetItem_type".}
proc fcQListWidgetItem_vtbl(self: pointer): pointer {.importc: "QListWidgetItem_vtbl".}
proc fcQListWidgetItem_vdata(self: pointer): pointer {.importc: "QListWidgetItem_vdata".}
type cQListWidgetItemVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  clone*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setBackgroundColor*: proc(self: pointer, color: pointer): void {.cdecl, raises: [], gcsafe.}
  data*: proc(self: pointer, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  setData*: proc(self: pointer, role: cint, value: pointer): void {.cdecl, raises: [], gcsafe.}
  operatorLesser*: proc(self: pointer, other: pointer): bool {.cdecl, raises: [], gcsafe.}
  read*: proc(self: pointer, inVal: pointer): void {.cdecl, raises: [], gcsafe.}
  write*: proc(self: pointer, outVal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQListWidgetItem_virtualbase_clone(self: pointer): pointer {.importc: "QListWidgetItem_virtualbase_clone".}
proc fcQListWidgetItem_virtualbase_setBackgroundColor(self: pointer, color: pointer): void {.importc: "QListWidgetItem_virtualbase_setBackgroundColor".}
proc fcQListWidgetItem_virtualbase_data(self: pointer, role: cint): pointer {.importc: "QListWidgetItem_virtualbase_data".}
proc fcQListWidgetItem_virtualbase_setData(self: pointer, role: cint, value: pointer): void {.importc: "QListWidgetItem_virtualbase_setData".}
proc fcQListWidgetItem_virtualbase_operatorLesser(self: pointer, other: pointer): bool {.importc: "QListWidgetItem_virtualbase_operatorLesser".}
proc fcQListWidgetItem_virtualbase_read(self: pointer, inVal: pointer): void {.importc: "QListWidgetItem_virtualbase_read".}
proc fcQListWidgetItem_virtualbase_write(self: pointer, outVal: pointer): void {.importc: "QListWidgetItem_virtualbase_write".}
proc fcQListWidgetItem_new(vtbl, vdata: pointer): ptr cQListWidgetItem {.importc: "QListWidgetItem_new".}
proc fcQListWidgetItem_new2(vtbl, vdata: pointer, text: struct_miqt_string): ptr cQListWidgetItem {.importc: "QListWidgetItem_new2".}
proc fcQListWidgetItem_new3(vtbl, vdata: pointer, icon: pointer, text: struct_miqt_string): ptr cQListWidgetItem {.importc: "QListWidgetItem_new3".}
proc fcQListWidgetItem_new4(vtbl, vdata: pointer, other: pointer): ptr cQListWidgetItem {.importc: "QListWidgetItem_new4".}
proc fcQListWidgetItem_new5(vtbl, vdata: pointer, listview: pointer): ptr cQListWidgetItem {.importc: "QListWidgetItem_new5".}
proc fcQListWidgetItem_new6(vtbl, vdata: pointer, listview: pointer, typeVal: cint): ptr cQListWidgetItem {.importc: "QListWidgetItem_new6".}
proc fcQListWidgetItem_new7(vtbl, vdata: pointer, text: struct_miqt_string, listview: pointer): ptr cQListWidgetItem {.importc: "QListWidgetItem_new7".}
proc fcQListWidgetItem_new8(vtbl, vdata: pointer, text: struct_miqt_string, listview: pointer, typeVal: cint): ptr cQListWidgetItem {.importc: "QListWidgetItem_new8".}
proc fcQListWidgetItem_new9(vtbl, vdata: pointer, icon: pointer, text: struct_miqt_string, listview: pointer): ptr cQListWidgetItem {.importc: "QListWidgetItem_new9".}
proc fcQListWidgetItem_new10(vtbl, vdata: pointer, icon: pointer, text: struct_miqt_string, listview: pointer, typeVal: cint): ptr cQListWidgetItem {.importc: "QListWidgetItem_new10".}
proc fcQListWidget_metaObject(self: pointer): pointer {.importc: "QListWidget_metaObject".}
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
proc fcQListWidget_count(self: pointer): cint {.importc: "QListWidget_count".}
proc fcQListWidget_currentItem(self: pointer): pointer {.importc: "QListWidget_currentItem".}
proc fcQListWidget_setCurrentItem(self: pointer, item: pointer): void {.importc: "QListWidget_setCurrentItem".}
proc fcQListWidget_setCurrentItem2(self: pointer, item: pointer, command: cint): void {.importc: "QListWidget_setCurrentItem2".}
proc fcQListWidget_currentRow(self: pointer): cint {.importc: "QListWidget_currentRow".}
proc fcQListWidget_setCurrentRow(self: pointer, row: cint): void {.importc: "QListWidget_setCurrentRow".}
proc fcQListWidget_setCurrentRow2(self: pointer, row: cint, command: cint): void {.importc: "QListWidget_setCurrentRow2".}
proc fcQListWidget_itemAt(self: pointer, p: pointer): pointer {.importc: "QListWidget_itemAt".}
proc fcQListWidget_itemAt2(self: pointer, x: cint, y: cint): pointer {.importc: "QListWidget_itemAt2".}
proc fcQListWidget_visualItemRect(self: pointer, item: pointer): pointer {.importc: "QListWidget_visualItemRect".}
proc fcQListWidget_sortItems(self: pointer): void {.importc: "QListWidget_sortItems".}
proc fcQListWidget_setSortingEnabled(self: pointer, enable: bool): void {.importc: "QListWidget_setSortingEnabled".}
proc fcQListWidget_isSortingEnabled(self: pointer): bool {.importc: "QListWidget_isSortingEnabled".}
proc fcQListWidget_editItem(self: pointer, item: pointer): void {.importc: "QListWidget_editItem".}
proc fcQListWidget_openPersistentEditor(self: pointer, item: pointer): void {.importc: "QListWidget_openPersistentEditor".}
proc fcQListWidget_closePersistentEditor(self: pointer, item: pointer): void {.importc: "QListWidget_closePersistentEditor".}
proc fcQListWidget_isPersistentEditorOpen(self: pointer, item: pointer): bool {.importc: "QListWidget_isPersistentEditorOpen".}
proc fcQListWidget_itemWidget(self: pointer, item: pointer): pointer {.importc: "QListWidget_itemWidget".}
proc fcQListWidget_setItemWidget(self: pointer, item: pointer, widget: pointer): void {.importc: "QListWidget_setItemWidget".}
proc fcQListWidget_removeItemWidget(self: pointer, item: pointer): void {.importc: "QListWidget_removeItemWidget".}
proc fcQListWidget_isItemSelected(self: pointer, item: pointer): bool {.importc: "QListWidget_isItemSelected".}
proc fcQListWidget_setItemSelected(self: pointer, item: pointer, select: bool): void {.importc: "QListWidget_setItemSelected".}
proc fcQListWidget_selectedItems(self: pointer): struct_miqt_array {.importc: "QListWidget_selectedItems".}
proc fcQListWidget_findItems(self: pointer, text: struct_miqt_string, flags: cint): struct_miqt_array {.importc: "QListWidget_findItems".}
proc fcQListWidget_isItemHidden(self: pointer, item: pointer): bool {.importc: "QListWidget_isItemHidden".}
proc fcQListWidget_setItemHidden(self: pointer, item: pointer, hide: bool): void {.importc: "QListWidget_setItemHidden".}
proc fcQListWidget_dropEvent(self: pointer, event: pointer): void {.importc: "QListWidget_dropEvent".}
proc fcQListWidget_scrollToItem(self: pointer, item: pointer): void {.importc: "QListWidget_scrollToItem".}
proc fcQListWidget_clear(self: pointer): void {.importc: "QListWidget_clear".}
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
proc fcQListWidget_itemSelectionChanged(self: pointer): void {.importc: "QListWidget_itemSelectionChanged".}
proc fcQListWidget_connect_itemSelectionChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QListWidget_connect_itemSelectionChanged".}
proc fcQListWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QListWidget_tr2".}
proc fcQListWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QListWidget_tr3".}
proc fcQListWidget_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QListWidget_trUtf82".}
proc fcQListWidget_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QListWidget_trUtf83".}
proc fcQListWidget_sortItems1(self: pointer, order: cint): void {.importc: "QListWidget_sortItems1".}
proc fcQListWidget_scrollToItem2(self: pointer, item: pointer, hint: cint): void {.importc: "QListWidget_scrollToItem2".}
proc fcQListWidget_vtbl(self: pointer): pointer {.importc: "QListWidget_vtbl".}
proc fcQListWidget_vdata(self: pointer): pointer {.importc: "QListWidget_vdata".}
type cQListWidgetVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setSelectionModel*: proc(self: pointer, selectionModel: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  mimeTypes*: proc(self: pointer): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  mimeData*: proc(self: pointer, items: struct_miqt_array): pointer {.cdecl, raises: [], gcsafe.}
  dropMimeData*: proc(self: pointer, index: cint, data: pointer, action: cint): bool {.cdecl, raises: [], gcsafe.}
  supportedDropActions*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  visualRect*: proc(self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  scrollTo*: proc(self: pointer, index: pointer, hint: cint): void {.cdecl, raises: [], gcsafe.}
  indexAt*: proc(self: pointer, p: pointer): pointer {.cdecl, raises: [], gcsafe.}
  doItemsLayout*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  reset*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  setRootIndex*: proc(self: pointer, index: pointer): void {.cdecl, raises: [], gcsafe.}
  scrollContentsBy*: proc(self: pointer, dx: cint, dy: cint): void {.cdecl, raises: [], gcsafe.}
  dataChanged*: proc(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.cdecl, raises: [], gcsafe.}
  rowsInserted*: proc(self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl, raises: [], gcsafe.}
  rowsAboutToBeRemoved*: proc(self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  startDrag*: proc(self: pointer, supportedActions: cint): void {.cdecl, raises: [], gcsafe.}
  viewOptions*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  horizontalOffset*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  verticalOffset*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  moveCursor*: proc(self: pointer, cursorAction: cint, modifiers: cint): pointer {.cdecl, raises: [], gcsafe.}
  setSelection*: proc(self: pointer, rect: pointer, command: cint): void {.cdecl, raises: [], gcsafe.}
  visualRegionForSelection*: proc(self: pointer, selection: pointer): pointer {.cdecl, raises: [], gcsafe.}
  selectedIndexes*: proc(self: pointer): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  updateGeometries*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  isIndexHidden*: proc(self: pointer, index: pointer): bool {.cdecl, raises: [], gcsafe.}
  selectionChanged*: proc(self: pointer, selected: pointer, deselected: pointer): void {.cdecl, raises: [], gcsafe.}
  currentChanged*: proc(self: pointer, current: pointer, previous: pointer): void {.cdecl, raises: [], gcsafe.}
  viewportSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  keyboardSearch*: proc(self: pointer, search: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
  sizeHintForRow*: proc(self: pointer, row: cint): cint {.cdecl, raises: [], gcsafe.}
  sizeHintForColumn*: proc(self: pointer, column: cint): cint {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(self: pointer, query: cint): pointer {.cdecl, raises: [], gcsafe.}
  selectAll*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  updateEditorData*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  updateEditorGeometries*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  verticalScrollbarAction*: proc(self: pointer, action: cint): void {.cdecl, raises: [], gcsafe.}
  horizontalScrollbarAction*: proc(self: pointer, action: cint): void {.cdecl, raises: [], gcsafe.}
  verticalScrollbarValueChanged*: proc(self: pointer, value: cint): void {.cdecl, raises: [], gcsafe.}
  horizontalScrollbarValueChanged*: proc(self: pointer, value: cint): void {.cdecl, raises: [], gcsafe.}
  closeEditor*: proc(self: pointer, editor: pointer, hint: cint): void {.cdecl, raises: [], gcsafe.}
  commitData*: proc(self: pointer, editor: pointer): void {.cdecl, raises: [], gcsafe.}
  editorDestroyed*: proc(self: pointer, editor: pointer): void {.cdecl, raises: [], gcsafe.}
  edit2*: proc(self: pointer, index: pointer, trigger: cint, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  selectionCommand*: proc(self: pointer, index: pointer, event: pointer): cint {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  viewportEvent*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, objectVal: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setupViewport*: proc(self: pointer, viewport: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQListWidget_virtualbase_metaObject(self: pointer): pointer {.importc: "QListWidget_virtualbase_metaObject".}
proc fcQListWidget_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QListWidget_virtualbase_metacast".}
proc fcQListWidget_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QListWidget_virtualbase_metacall".}
proc fcQListWidget_virtualbase_setSelectionModel(self: pointer, selectionModel: pointer): void {.importc: "QListWidget_virtualbase_setSelectionModel".}
proc fcQListWidget_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QListWidget_virtualbase_dropEvent".}
proc fcQListWidget_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QListWidget_virtualbase_event".}
proc fcQListWidget_virtualbase_mimeTypes(self: pointer): struct_miqt_array {.importc: "QListWidget_virtualbase_mimeTypes".}
proc fcQListWidget_virtualbase_mimeData(self: pointer, items: struct_miqt_array): pointer {.importc: "QListWidget_virtualbase_mimeData".}
proc fcQListWidget_virtualbase_dropMimeData(self: pointer, index: cint, data: pointer, action: cint): bool {.importc: "QListWidget_virtualbase_dropMimeData".}
proc fcQListWidget_virtualbase_supportedDropActions(self: pointer): cint {.importc: "QListWidget_virtualbase_supportedDropActions".}
proc fcQListWidget_virtualbase_visualRect(self: pointer, index: pointer): pointer {.importc: "QListWidget_virtualbase_visualRect".}
proc fcQListWidget_virtualbase_scrollTo(self: pointer, index: pointer, hint: cint): void {.importc: "QListWidget_virtualbase_scrollTo".}
proc fcQListWidget_virtualbase_indexAt(self: pointer, p: pointer): pointer {.importc: "QListWidget_virtualbase_indexAt".}
proc fcQListWidget_virtualbase_doItemsLayout(self: pointer): void {.importc: "QListWidget_virtualbase_doItemsLayout".}
proc fcQListWidget_virtualbase_reset(self: pointer): void {.importc: "QListWidget_virtualbase_reset".}
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
proc fcQListWidget_virtualbase_viewOptions(self: pointer): pointer {.importc: "QListWidget_virtualbase_viewOptions".}
proc fcQListWidget_virtualbase_paintEvent(self: pointer, e: pointer): void {.importc: "QListWidget_virtualbase_paintEvent".}
proc fcQListWidget_virtualbase_horizontalOffset(self: pointer): cint {.importc: "QListWidget_virtualbase_horizontalOffset".}
proc fcQListWidget_virtualbase_verticalOffset(self: pointer): cint {.importc: "QListWidget_virtualbase_verticalOffset".}
proc fcQListWidget_virtualbase_moveCursor(self: pointer, cursorAction: cint, modifiers: cint): pointer {.importc: "QListWidget_virtualbase_moveCursor".}
proc fcQListWidget_virtualbase_setSelection(self: pointer, rect: pointer, command: cint): void {.importc: "QListWidget_virtualbase_setSelection".}
proc fcQListWidget_virtualbase_visualRegionForSelection(self: pointer, selection: pointer): pointer {.importc: "QListWidget_virtualbase_visualRegionForSelection".}
proc fcQListWidget_virtualbase_selectedIndexes(self: pointer): struct_miqt_array {.importc: "QListWidget_virtualbase_selectedIndexes".}
proc fcQListWidget_virtualbase_updateGeometries(self: pointer): void {.importc: "QListWidget_virtualbase_updateGeometries".}
proc fcQListWidget_virtualbase_isIndexHidden(self: pointer, index: pointer): bool {.importc: "QListWidget_virtualbase_isIndexHidden".}
proc fcQListWidget_virtualbase_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void {.importc: "QListWidget_virtualbase_selectionChanged".}
proc fcQListWidget_virtualbase_currentChanged(self: pointer, current: pointer, previous: pointer): void {.importc: "QListWidget_virtualbase_currentChanged".}
proc fcQListWidget_virtualbase_viewportSizeHint(self: pointer): pointer {.importc: "QListWidget_virtualbase_viewportSizeHint".}
proc fcQListWidget_virtualbase_keyboardSearch(self: pointer, search: struct_miqt_string): void {.importc: "QListWidget_virtualbase_keyboardSearch".}
proc fcQListWidget_virtualbase_sizeHintForRow(self: pointer, row: cint): cint {.importc: "QListWidget_virtualbase_sizeHintForRow".}
proc fcQListWidget_virtualbase_sizeHintForColumn(self: pointer, column: cint): cint {.importc: "QListWidget_virtualbase_sizeHintForColumn".}
proc fcQListWidget_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QListWidget_virtualbase_inputMethodQuery".}
proc fcQListWidget_virtualbase_selectAll(self: pointer): void {.importc: "QListWidget_virtualbase_selectAll".}
proc fcQListWidget_virtualbase_updateEditorData(self: pointer): void {.importc: "QListWidget_virtualbase_updateEditorData".}
proc fcQListWidget_virtualbase_updateEditorGeometries(self: pointer): void {.importc: "QListWidget_virtualbase_updateEditorGeometries".}
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
proc fcQListWidget_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QListWidget_virtualbase_minimumSizeHint".}
proc fcQListWidget_virtualbase_sizeHint(self: pointer): pointer {.importc: "QListWidget_virtualbase_sizeHint".}
proc fcQListWidget_virtualbase_setupViewport(self: pointer, viewport: pointer): void {.importc: "QListWidget_virtualbase_setupViewport".}
proc fcQListWidget_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void {.importc: "QListWidget_virtualbase_contextMenuEvent".}
proc fcQListWidget_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QListWidget_virtualbase_changeEvent".}
proc fcQListWidget_virtualbase_devType(self: pointer): cint {.importc: "QListWidget_virtualbase_devType".}
proc fcQListWidget_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QListWidget_virtualbase_setVisible".}
proc fcQListWidget_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QListWidget_virtualbase_heightForWidth".}
proc fcQListWidget_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QListWidget_virtualbase_hasHeightForWidth".}
proc fcQListWidget_virtualbase_paintEngine(self: pointer): pointer {.importc: "QListWidget_virtualbase_paintEngine".}
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
proc fcQListWidget_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QListWidget_virtualbase_sharedPainter".}
proc fcQListWidget_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QListWidget_virtualbase_childEvent".}
proc fcQListWidget_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QListWidget_virtualbase_customEvent".}
proc fcQListWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QListWidget_virtualbase_connectNotify".}
proc fcQListWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QListWidget_virtualbase_disconnectNotify".}
proc fcQListWidget_protectedbase_items(self: pointer, data: pointer): struct_miqt_array {.importc: "QListWidget_protectedbase_items".}
proc fcQListWidget_protectedbase_indexFromItem(self: pointer, item: pointer): pointer {.importc: "QListWidget_protectedbase_indexFromItem".}
proc fcQListWidget_protectedbase_indexFromItemWithItem(self: pointer, item: pointer): pointer {.importc: "QListWidget_protectedbase_indexFromItemWithItem".}
proc fcQListWidget_protectedbase_itemFromIndex(self: pointer, index: pointer): pointer {.importc: "QListWidget_protectedbase_itemFromIndex".}
proc fcQListWidget_protectedbase_resizeContents(self: pointer, width: cint, height: cint): void {.importc: "QListWidget_protectedbase_resizeContents".}
proc fcQListWidget_protectedbase_contentsSize(self: pointer): pointer {.importc: "QListWidget_protectedbase_contentsSize".}
proc fcQListWidget_protectedbase_rectForIndex(self: pointer, index: pointer): pointer {.importc: "QListWidget_protectedbase_rectForIndex".}
proc fcQListWidget_protectedbase_setPositionForIndex(self: pointer, position: pointer, index: pointer): void {.importc: "QListWidget_protectedbase_setPositionForIndex".}
proc fcQListWidget_protectedbase_setHorizontalStepsPerItem(self: pointer, steps: cint): void {.importc: "QListWidget_protectedbase_setHorizontalStepsPerItem".}
proc fcQListWidget_protectedbase_horizontalStepsPerItem(self: pointer): cint {.importc: "QListWidget_protectedbase_horizontalStepsPerItem".}
proc fcQListWidget_protectedbase_setVerticalStepsPerItem(self: pointer, steps: cint): void {.importc: "QListWidget_protectedbase_setVerticalStepsPerItem".}
proc fcQListWidget_protectedbase_verticalStepsPerItem(self: pointer): cint {.importc: "QListWidget_protectedbase_verticalStepsPerItem".}
proc fcQListWidget_protectedbase_state(self: pointer): cint {.importc: "QListWidget_protectedbase_state".}
proc fcQListWidget_protectedbase_setState(self: pointer, state: cint): void {.importc: "QListWidget_protectedbase_setState".}
proc fcQListWidget_protectedbase_scheduleDelayedItemsLayout(self: pointer): void {.importc: "QListWidget_protectedbase_scheduleDelayedItemsLayout".}
proc fcQListWidget_protectedbase_executeDelayedItemsLayout(self: pointer): void {.importc: "QListWidget_protectedbase_executeDelayedItemsLayout".}
proc fcQListWidget_protectedbase_setDirtyRegion(self: pointer, region: pointer): void {.importc: "QListWidget_protectedbase_setDirtyRegion".}
proc fcQListWidget_protectedbase_scrollDirtyRegion(self: pointer, dx: cint, dy: cint): void {.importc: "QListWidget_protectedbase_scrollDirtyRegion".}
proc fcQListWidget_protectedbase_dirtyRegionOffset(self: pointer): pointer {.importc: "QListWidget_protectedbase_dirtyRegionOffset".}
proc fcQListWidget_protectedbase_startAutoScroll(self: pointer): void {.importc: "QListWidget_protectedbase_startAutoScroll".}
proc fcQListWidget_protectedbase_stopAutoScroll(self: pointer): void {.importc: "QListWidget_protectedbase_stopAutoScroll".}
proc fcQListWidget_protectedbase_doAutoScroll(self: pointer): void {.importc: "QListWidget_protectedbase_doAutoScroll".}
proc fcQListWidget_protectedbase_dropIndicatorPosition(self: pointer): cint {.importc: "QListWidget_protectedbase_dropIndicatorPosition".}
proc fcQListWidget_protectedbase_setViewportMargins(self: pointer, left: cint, top: cint, right: cint, bottom: cint): void {.importc: "QListWidget_protectedbase_setViewportMargins".}
proc fcQListWidget_protectedbase_viewportMargins(self: pointer): pointer {.importc: "QListWidget_protectedbase_viewportMargins".}
proc fcQListWidget_protectedbase_drawFrame(self: pointer, param1: pointer): void {.importc: "QListWidget_protectedbase_drawFrame".}
proc fcQListWidget_protectedbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QListWidget_protectedbase_initStyleOption".}
proc fcQListWidget_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QListWidget_protectedbase_updateMicroFocus".}
proc fcQListWidget_protectedbase_create(self: pointer): void {.importc: "QListWidget_protectedbase_create".}
proc fcQListWidget_protectedbase_destroy(self: pointer): void {.importc: "QListWidget_protectedbase_destroy".}
proc fcQListWidget_protectedbase_focusNextChild(self: pointer): bool {.importc: "QListWidget_protectedbase_focusNextChild".}
proc fcQListWidget_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QListWidget_protectedbase_focusPreviousChild".}
proc fcQListWidget_protectedbase_sender(self: pointer): pointer {.importc: "QListWidget_protectedbase_sender".}
proc fcQListWidget_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QListWidget_protectedbase_senderSignalIndex".}
proc fcQListWidget_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QListWidget_protectedbase_receivers".}
proc fcQListWidget_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QListWidget_protectedbase_isSignalConnected".}
proc fcQListWidget_new(vtbl, vdata: pointer, parent: pointer): ptr cQListWidget {.importc: "QListWidget_new".}
proc fcQListWidget_new2(vtbl, vdata: pointer): ptr cQListWidget {.importc: "QListWidget_new2".}
proc fcQListWidget_staticMetaObject(): pointer {.importc: "QListWidget_staticMetaObject".}

proc clone*(self: gen_qlistwidget_types.QListWidgetItem): gen_qlistwidget_types.QListWidgetItem =
  gen_qlistwidget_types.QListWidgetItem(h: fcQListWidgetItem_clone(self.h), owned: false)

proc listWidget*(self: gen_qlistwidget_types.QListWidgetItem): gen_qlistwidget_types.QListWidget =
  gen_qlistwidget_types.QListWidget(h: fcQListWidgetItem_listWidget(self.h), owned: false)

proc setSelected*(self: gen_qlistwidget_types.QListWidgetItem, select: bool): void =
  fcQListWidgetItem_setSelected(self.h, select)

proc isSelected*(self: gen_qlistwidget_types.QListWidgetItem): bool =
  fcQListWidgetItem_isSelected(self.h)

proc setHidden*(self: gen_qlistwidget_types.QListWidgetItem, hide: bool): void =
  fcQListWidgetItem_setHidden(self.h, hide)

proc isHidden*(self: gen_qlistwidget_types.QListWidgetItem): bool =
  fcQListWidgetItem_isHidden(self.h)

proc flags*(self: gen_qlistwidget_types.QListWidgetItem): cint =
  cint(fcQListWidgetItem_flags(self.h))

proc setFlags*(self: gen_qlistwidget_types.QListWidgetItem, flags: cint): void =
  fcQListWidgetItem_setFlags(self.h, cint(flags))

proc text*(self: gen_qlistwidget_types.QListWidgetItem): string =
  let v_ms = fcQListWidgetItem_text(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setText*(self: gen_qlistwidget_types.QListWidgetItem, text: openArray[char]): void =
  fcQListWidgetItem_setText(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc icon*(self: gen_qlistwidget_types.QListWidgetItem): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQListWidgetItem_icon(self.h), owned: true)

proc setIcon*(self: gen_qlistwidget_types.QListWidgetItem, icon: gen_qicon_types.QIcon): void =
  fcQListWidgetItem_setIcon(self.h, icon.h)

proc statusTip*(self: gen_qlistwidget_types.QListWidgetItem): string =
  let v_ms = fcQListWidgetItem_statusTip(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setStatusTip*(self: gen_qlistwidget_types.QListWidgetItem, statusTip: openArray[char]): void =
  fcQListWidgetItem_setStatusTip(self.h, struct_miqt_string(data: if len(statusTip) > 0: addr statusTip[0] else: nil, len: csize_t(len(statusTip))))

proc toolTip*(self: gen_qlistwidget_types.QListWidgetItem): string =
  let v_ms = fcQListWidgetItem_toolTip(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setToolTip*(self: gen_qlistwidget_types.QListWidgetItem, toolTip: openArray[char]): void =
  fcQListWidgetItem_setToolTip(self.h, struct_miqt_string(data: if len(toolTip) > 0: addr toolTip[0] else: nil, len: csize_t(len(toolTip))))

proc whatsThis*(self: gen_qlistwidget_types.QListWidgetItem): string =
  let v_ms = fcQListWidgetItem_whatsThis(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setWhatsThis*(self: gen_qlistwidget_types.QListWidgetItem, whatsThis: openArray[char]): void =
  fcQListWidgetItem_setWhatsThis(self.h, struct_miqt_string(data: if len(whatsThis) > 0: addr whatsThis[0] else: nil, len: csize_t(len(whatsThis))))

proc font*(self: gen_qlistwidget_types.QListWidgetItem): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQListWidgetItem_font(self.h), owned: true)

proc setFont*(self: gen_qlistwidget_types.QListWidgetItem, font: gen_qfont_types.QFont): void =
  fcQListWidgetItem_setFont(self.h, font.h)

proc textAlignment*(self: gen_qlistwidget_types.QListWidgetItem): cint =
  fcQListWidgetItem_textAlignment(self.h)

proc setTextAlignment*(self: gen_qlistwidget_types.QListWidgetItem, alignment: cint): void =
  fcQListWidgetItem_setTextAlignment(self.h, alignment)

proc backgroundColor*(self: gen_qlistwidget_types.QListWidgetItem): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQListWidgetItem_backgroundColor(self.h), owned: true)

proc setBackgroundColor*(self: gen_qlistwidget_types.QListWidgetItem, color: gen_qcolor_types.QColor): void =
  fcQListWidgetItem_setBackgroundColor(self.h, color.h)

proc background*(self: gen_qlistwidget_types.QListWidgetItem): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQListWidgetItem_background(self.h), owned: true)

proc setBackground*(self: gen_qlistwidget_types.QListWidgetItem, brush: gen_qbrush_types.QBrush): void =
  fcQListWidgetItem_setBackground(self.h, brush.h)

proc textColor*(self: gen_qlistwidget_types.QListWidgetItem): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQListWidgetItem_textColor(self.h), owned: true)

proc setTextColor*(self: gen_qlistwidget_types.QListWidgetItem, color: gen_qcolor_types.QColor): void =
  fcQListWidgetItem_setTextColor(self.h, color.h)

proc foreground*(self: gen_qlistwidget_types.QListWidgetItem): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQListWidgetItem_foreground(self.h), owned: true)

proc setForeground*(self: gen_qlistwidget_types.QListWidgetItem, brush: gen_qbrush_types.QBrush): void =
  fcQListWidgetItem_setForeground(self.h, brush.h)

proc checkState*(self: gen_qlistwidget_types.QListWidgetItem): cint =
  cint(fcQListWidgetItem_checkState(self.h))

proc setCheckState*(self: gen_qlistwidget_types.QListWidgetItem, state: cint): void =
  fcQListWidgetItem_setCheckState(self.h, cint(state))

proc sizeHint*(self: gen_qlistwidget_types.QListWidgetItem): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQListWidgetItem_sizeHint(self.h), owned: true)

proc setSizeHint*(self: gen_qlistwidget_types.QListWidgetItem, size: gen_qsize_types.QSize): void =
  fcQListWidgetItem_setSizeHint(self.h, size.h)

proc data*(self: gen_qlistwidget_types.QListWidgetItem, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQListWidgetItem_data(self.h, role), owned: true)

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

proc typeX*(self: gen_qlistwidget_types.QListWidgetItem): cint =
  fcQListWidgetItem_typeX(self.h)

type QListWidgetItemcloneProc* = proc(self: QListWidgetItem): gen_qlistwidget_types.QListWidgetItem {.raises: [], gcsafe.}
type QListWidgetItemsetBackgroundColorProc* = proc(self: QListWidgetItem, color: gen_qcolor_types.QColor): void {.raises: [], gcsafe.}
type QListWidgetItemdataProc* = proc(self: QListWidgetItem, role: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QListWidgetItemsetDataProc* = proc(self: QListWidgetItem, role: cint, value: gen_qvariant_types.QVariant): void {.raises: [], gcsafe.}
type QListWidgetItemoperatorLesserProc* = proc(self: QListWidgetItem, other: gen_qlistwidget_types.QListWidgetItem): bool {.raises: [], gcsafe.}
type QListWidgetItemreadProc* = proc(self: QListWidgetItem, inVal: gen_qdatastream_types.QDataStream): void {.raises: [], gcsafe.}
type QListWidgetItemwriteProc* = proc(self: QListWidgetItem, outVal: gen_qdatastream_types.QDataStream): void {.raises: [], gcsafe.}
type QListWidgetItemVTable* {.inheritable, pure.} = object
  vtbl: cQListWidgetItemVTable
  clone*: QListWidgetItemcloneProc
  setBackgroundColor*: QListWidgetItemsetBackgroundColorProc
  data*: QListWidgetItemdataProc
  setData*: QListWidgetItemsetDataProc
  operatorLesser*: QListWidgetItemoperatorLesserProc
  read*: QListWidgetItemreadProc
  write*: QListWidgetItemwriteProc
proc QListWidgetItemclone*(self: gen_qlistwidget_types.QListWidgetItem): gen_qlistwidget_types.QListWidgetItem =
  gen_qlistwidget_types.QListWidgetItem(h: fcQListWidgetItem_virtualbase_clone(self.h), owned: false)

proc cQListWidgetItem_vtable_callback_clone(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QListWidgetItemVTable](fcQListWidgetItem_vdata(self))
  let self = QListWidgetItem(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QListWidgetItemsetBackgroundColor*(self: gen_qlistwidget_types.QListWidgetItem, color: gen_qcolor_types.QColor): void =
  fcQListWidgetItem_virtualbase_setBackgroundColor(self.h, color.h)

proc cQListWidgetItem_vtable_callback_setBackgroundColor(self: pointer, color: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetItemVTable](fcQListWidgetItem_vdata(self))
  let self = QListWidgetItem(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: color, owned: false)
  vtbl[].setBackgroundColor(self, slotval1)

proc QListWidgetItemdata*(self: gen_qlistwidget_types.QListWidgetItem, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQListWidgetItem_virtualbase_data(self.h, role), owned: true)

proc cQListWidgetItem_vtable_callback_data(self: pointer, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QListWidgetItemVTable](fcQListWidgetItem_vdata(self))
  let self = QListWidgetItem(h: self)
  let slotval1 = role
  var virtualReturn = vtbl[].data(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QListWidgetItemsetData*(self: gen_qlistwidget_types.QListWidgetItem, role: cint, value: gen_qvariant_types.QVariant): void =
  fcQListWidgetItem_virtualbase_setData(self.h, role, value.h)

proc cQListWidgetItem_vtable_callback_setData(self: pointer, role: cint, value: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetItemVTable](fcQListWidgetItem_vdata(self))
  let self = QListWidgetItem(h: self)
  let slotval1 = role
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  vtbl[].setData(self, slotval1, slotval2)

proc QListWidgetItemoperatorLesser*(self: gen_qlistwidget_types.QListWidgetItem, other: gen_qlistwidget_types.QListWidgetItem): bool =
  fcQListWidgetItem_virtualbase_operatorLesser(self.h, other.h)

proc cQListWidgetItem_vtable_callback_operatorLesser(self: pointer, other: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QListWidgetItemVTable](fcQListWidgetItem_vdata(self))
  let self = QListWidgetItem(h: self)
  let slotval1 = gen_qlistwidget_types.QListWidgetItem(h: other, owned: false)
  var virtualReturn = vtbl[].operatorLesser(self, slotval1)
  virtualReturn

proc QListWidgetItemread*(self: gen_qlistwidget_types.QListWidgetItem, inVal: gen_qdatastream_types.QDataStream): void =
  fcQListWidgetItem_virtualbase_read(self.h, inVal.h)

proc cQListWidgetItem_vtable_callback_read(self: pointer, inVal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetItemVTable](fcQListWidgetItem_vdata(self))
  let self = QListWidgetItem(h: self)
  let slotval1 = gen_qdatastream_types.QDataStream(h: inVal, owned: false)
  vtbl[].read(self, slotval1)

proc QListWidgetItemwrite*(self: gen_qlistwidget_types.QListWidgetItem, outVal: gen_qdatastream_types.QDataStream): void =
  fcQListWidgetItem_virtualbase_write(self.h, outVal.h)

proc cQListWidgetItem_vtable_callback_write(self: pointer, outVal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetItemVTable](fcQListWidgetItem_vdata(self))
  let self = QListWidgetItem(h: self)
  let slotval1 = gen_qdatastream_types.QDataStream(h: outVal, owned: false)
  vtbl[].write(self, slotval1)

type VirtualQListWidgetItem* {.inheritable.} = ref object of QListWidgetItem
  vtbl*: cQListWidgetItemVTable
method clone*(self: VirtualQListWidgetItem): gen_qlistwidget_types.QListWidgetItem {.base.} =
  QListWidgetItemclone(self[])
proc cQListWidgetItem_method_callback_clone(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQListWidgetItem](fcQListWidgetItem_vdata(self))
  var virtualReturn = inst.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method setBackgroundColor*(self: VirtualQListWidgetItem, color: gen_qcolor_types.QColor): void {.base.} =
  QListWidgetItemsetBackgroundColor(self[], color)
proc cQListWidgetItem_method_callback_setBackgroundColor(self: pointer, color: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidgetItem](fcQListWidgetItem_vdata(self))
  let slotval1 = gen_qcolor_types.QColor(h: color, owned: false)
  inst.setBackgroundColor(slotval1)

method data*(self: VirtualQListWidgetItem, role: cint): gen_qvariant_types.QVariant {.base.} =
  QListWidgetItemdata(self[], role)
proc cQListWidgetItem_method_callback_data(self: pointer, role: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQListWidgetItem](fcQListWidgetItem_vdata(self))
  let slotval1 = role
  var virtualReturn = inst.data(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method setData*(self: VirtualQListWidgetItem, role: cint, value: gen_qvariant_types.QVariant): void {.base.} =
  QListWidgetItemsetData(self[], role, value)
proc cQListWidgetItem_method_callback_setData(self: pointer, role: cint, value: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidgetItem](fcQListWidgetItem_vdata(self))
  let slotval1 = role
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  inst.setData(slotval1, slotval2)

method operatorLesser*(self: VirtualQListWidgetItem, other: gen_qlistwidget_types.QListWidgetItem): bool {.base.} =
  QListWidgetItemoperatorLesser(self[], other)
proc cQListWidgetItem_method_callback_operatorLesser(self: pointer, other: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQListWidgetItem](fcQListWidgetItem_vdata(self))
  let slotval1 = gen_qlistwidget_types.QListWidgetItem(h: other, owned: false)
  var virtualReturn = inst.operatorLesser(slotval1)
  virtualReturn

method read*(self: VirtualQListWidgetItem, inVal: gen_qdatastream_types.QDataStream): void {.base.} =
  QListWidgetItemread(self[], inVal)
proc cQListWidgetItem_method_callback_read(self: pointer, inVal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidgetItem](fcQListWidgetItem_vdata(self))
  let slotval1 = gen_qdatastream_types.QDataStream(h: inVal, owned: false)
  inst.read(slotval1)

method write*(self: VirtualQListWidgetItem, outVal: gen_qdatastream_types.QDataStream): void {.base.} =
  QListWidgetItemwrite(self[], outVal)
proc cQListWidgetItem_method_callback_write(self: pointer, outVal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidgetItem](fcQListWidgetItem_vdata(self))
  let slotval1 = gen_qdatastream_types.QDataStream(h: outVal, owned: false)
  inst.write(slotval1)

proc create*(T: type gen_qlistwidget_types.QListWidgetItem,
    vtbl: ref QListWidgetItemVTable = nil): gen_qlistwidget_types.QListWidgetItem =
  let vtbl = if vtbl == nil: new QListWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QListWidgetItemVTable](fcQListWidgetItem_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = cQListWidgetItem_vtable_callback_clone
  if not isNil(vtbl[].setBackgroundColor):
    vtbl[].vtbl.setBackgroundColor = cQListWidgetItem_vtable_callback_setBackgroundColor
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = cQListWidgetItem_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = cQListWidgetItem_vtable_callback_setData
  if not isNil(vtbl[].operatorLesser):
    vtbl[].vtbl.operatorLesser = cQListWidgetItem_vtable_callback_operatorLesser
  if not isNil(vtbl[].read):
    vtbl[].vtbl.read = cQListWidgetItem_vtable_callback_read
  if not isNil(vtbl[].write):
    vtbl[].vtbl.write = cQListWidgetItem_vtable_callback_write
  gen_qlistwidget_types.QListWidgetItem(h: fcQListWidgetItem_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qlistwidget_types.QListWidgetItem,
    text: openArray[char],
    vtbl: ref QListWidgetItemVTable = nil): gen_qlistwidget_types.QListWidgetItem =
  let vtbl = if vtbl == nil: new QListWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QListWidgetItemVTable](fcQListWidgetItem_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = cQListWidgetItem_vtable_callback_clone
  if not isNil(vtbl[].setBackgroundColor):
    vtbl[].vtbl.setBackgroundColor = cQListWidgetItem_vtable_callback_setBackgroundColor
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = cQListWidgetItem_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = cQListWidgetItem_vtable_callback_setData
  if not isNil(vtbl[].operatorLesser):
    vtbl[].vtbl.operatorLesser = cQListWidgetItem_vtable_callback_operatorLesser
  if not isNil(vtbl[].read):
    vtbl[].vtbl.read = cQListWidgetItem_vtable_callback_read
  if not isNil(vtbl[].write):
    vtbl[].vtbl.write = cQListWidgetItem_vtable_callback_write
  gen_qlistwidget_types.QListWidgetItem(h: fcQListWidgetItem_new2(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text)))), owned: true)

proc create*(T: type gen_qlistwidget_types.QListWidgetItem,
    icon: gen_qicon_types.QIcon, text: openArray[char],
    vtbl: ref QListWidgetItemVTable = nil): gen_qlistwidget_types.QListWidgetItem =
  let vtbl = if vtbl == nil: new QListWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QListWidgetItemVTable](fcQListWidgetItem_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = cQListWidgetItem_vtable_callback_clone
  if not isNil(vtbl[].setBackgroundColor):
    vtbl[].vtbl.setBackgroundColor = cQListWidgetItem_vtable_callback_setBackgroundColor
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = cQListWidgetItem_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = cQListWidgetItem_vtable_callback_setData
  if not isNil(vtbl[].operatorLesser):
    vtbl[].vtbl.operatorLesser = cQListWidgetItem_vtable_callback_operatorLesser
  if not isNil(vtbl[].read):
    vtbl[].vtbl.read = cQListWidgetItem_vtable_callback_read
  if not isNil(vtbl[].write):
    vtbl[].vtbl.write = cQListWidgetItem_vtable_callback_write
  gen_qlistwidget_types.QListWidgetItem(h: fcQListWidgetItem_new3(addr(vtbl[].vtbl), addr(vtbl[]), icon.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text)))), owned: true)

proc create*(T: type gen_qlistwidget_types.QListWidgetItem,
    other: gen_qlistwidget_types.QListWidgetItem,
    vtbl: ref QListWidgetItemVTable = nil): gen_qlistwidget_types.QListWidgetItem =
  let vtbl = if vtbl == nil: new QListWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QListWidgetItemVTable](fcQListWidgetItem_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = cQListWidgetItem_vtable_callback_clone
  if not isNil(vtbl[].setBackgroundColor):
    vtbl[].vtbl.setBackgroundColor = cQListWidgetItem_vtable_callback_setBackgroundColor
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = cQListWidgetItem_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = cQListWidgetItem_vtable_callback_setData
  if not isNil(vtbl[].operatorLesser):
    vtbl[].vtbl.operatorLesser = cQListWidgetItem_vtable_callback_operatorLesser
  if not isNil(vtbl[].read):
    vtbl[].vtbl.read = cQListWidgetItem_vtable_callback_read
  if not isNil(vtbl[].write):
    vtbl[].vtbl.write = cQListWidgetItem_vtable_callback_write
  gen_qlistwidget_types.QListWidgetItem(h: fcQListWidgetItem_new4(addr(vtbl[].vtbl), addr(vtbl[]), other.h), owned: true)

proc create*(T: type gen_qlistwidget_types.QListWidgetItem,
    listview: gen_qlistwidget_types.QListWidget,
    vtbl: ref QListWidgetItemVTable = nil): gen_qlistwidget_types.QListWidgetItem =
  let vtbl = if vtbl == nil: new QListWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QListWidgetItemVTable](fcQListWidgetItem_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = cQListWidgetItem_vtable_callback_clone
  if not isNil(vtbl[].setBackgroundColor):
    vtbl[].vtbl.setBackgroundColor = cQListWidgetItem_vtable_callback_setBackgroundColor
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = cQListWidgetItem_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = cQListWidgetItem_vtable_callback_setData
  if not isNil(vtbl[].operatorLesser):
    vtbl[].vtbl.operatorLesser = cQListWidgetItem_vtable_callback_operatorLesser
  if not isNil(vtbl[].read):
    vtbl[].vtbl.read = cQListWidgetItem_vtable_callback_read
  if not isNil(vtbl[].write):
    vtbl[].vtbl.write = cQListWidgetItem_vtable_callback_write
  gen_qlistwidget_types.QListWidgetItem(h: fcQListWidgetItem_new5(addr(vtbl[].vtbl), addr(vtbl[]), listview.h), owned: true)

proc create*(T: type gen_qlistwidget_types.QListWidgetItem,
    listview: gen_qlistwidget_types.QListWidget, typeVal: cint,
    vtbl: ref QListWidgetItemVTable = nil): gen_qlistwidget_types.QListWidgetItem =
  let vtbl = if vtbl == nil: new QListWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QListWidgetItemVTable](fcQListWidgetItem_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = cQListWidgetItem_vtable_callback_clone
  if not isNil(vtbl[].setBackgroundColor):
    vtbl[].vtbl.setBackgroundColor = cQListWidgetItem_vtable_callback_setBackgroundColor
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = cQListWidgetItem_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = cQListWidgetItem_vtable_callback_setData
  if not isNil(vtbl[].operatorLesser):
    vtbl[].vtbl.operatorLesser = cQListWidgetItem_vtable_callback_operatorLesser
  if not isNil(vtbl[].read):
    vtbl[].vtbl.read = cQListWidgetItem_vtable_callback_read
  if not isNil(vtbl[].write):
    vtbl[].vtbl.write = cQListWidgetItem_vtable_callback_write
  gen_qlistwidget_types.QListWidgetItem(h: fcQListWidgetItem_new6(addr(vtbl[].vtbl), addr(vtbl[]), listview.h, typeVal), owned: true)

proc create*(T: type gen_qlistwidget_types.QListWidgetItem,
    text: openArray[char], listview: gen_qlistwidget_types.QListWidget,
    vtbl: ref QListWidgetItemVTable = nil): gen_qlistwidget_types.QListWidgetItem =
  let vtbl = if vtbl == nil: new QListWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QListWidgetItemVTable](fcQListWidgetItem_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = cQListWidgetItem_vtable_callback_clone
  if not isNil(vtbl[].setBackgroundColor):
    vtbl[].vtbl.setBackgroundColor = cQListWidgetItem_vtable_callback_setBackgroundColor
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = cQListWidgetItem_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = cQListWidgetItem_vtable_callback_setData
  if not isNil(vtbl[].operatorLesser):
    vtbl[].vtbl.operatorLesser = cQListWidgetItem_vtable_callback_operatorLesser
  if not isNil(vtbl[].read):
    vtbl[].vtbl.read = cQListWidgetItem_vtable_callback_read
  if not isNil(vtbl[].write):
    vtbl[].vtbl.write = cQListWidgetItem_vtable_callback_write
  gen_qlistwidget_types.QListWidgetItem(h: fcQListWidgetItem_new7(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), listview.h), owned: true)

proc create*(T: type gen_qlistwidget_types.QListWidgetItem,
    text: openArray[char], listview: gen_qlistwidget_types.QListWidget, typeVal: cint,
    vtbl: ref QListWidgetItemVTable = nil): gen_qlistwidget_types.QListWidgetItem =
  let vtbl = if vtbl == nil: new QListWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QListWidgetItemVTable](fcQListWidgetItem_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = cQListWidgetItem_vtable_callback_clone
  if not isNil(vtbl[].setBackgroundColor):
    vtbl[].vtbl.setBackgroundColor = cQListWidgetItem_vtable_callback_setBackgroundColor
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = cQListWidgetItem_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = cQListWidgetItem_vtable_callback_setData
  if not isNil(vtbl[].operatorLesser):
    vtbl[].vtbl.operatorLesser = cQListWidgetItem_vtable_callback_operatorLesser
  if not isNil(vtbl[].read):
    vtbl[].vtbl.read = cQListWidgetItem_vtable_callback_read
  if not isNil(vtbl[].write):
    vtbl[].vtbl.write = cQListWidgetItem_vtable_callback_write
  gen_qlistwidget_types.QListWidgetItem(h: fcQListWidgetItem_new8(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), listview.h, typeVal), owned: true)

proc create*(T: type gen_qlistwidget_types.QListWidgetItem,
    icon: gen_qicon_types.QIcon, text: openArray[char], listview: gen_qlistwidget_types.QListWidget,
    vtbl: ref QListWidgetItemVTable = nil): gen_qlistwidget_types.QListWidgetItem =
  let vtbl = if vtbl == nil: new QListWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QListWidgetItemVTable](fcQListWidgetItem_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = cQListWidgetItem_vtable_callback_clone
  if not isNil(vtbl[].setBackgroundColor):
    vtbl[].vtbl.setBackgroundColor = cQListWidgetItem_vtable_callback_setBackgroundColor
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = cQListWidgetItem_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = cQListWidgetItem_vtable_callback_setData
  if not isNil(vtbl[].operatorLesser):
    vtbl[].vtbl.operatorLesser = cQListWidgetItem_vtable_callback_operatorLesser
  if not isNil(vtbl[].read):
    vtbl[].vtbl.read = cQListWidgetItem_vtable_callback_read
  if not isNil(vtbl[].write):
    vtbl[].vtbl.write = cQListWidgetItem_vtable_callback_write
  gen_qlistwidget_types.QListWidgetItem(h: fcQListWidgetItem_new9(addr(vtbl[].vtbl), addr(vtbl[]), icon.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), listview.h), owned: true)

proc create*(T: type gen_qlistwidget_types.QListWidgetItem,
    icon: gen_qicon_types.QIcon, text: openArray[char], listview: gen_qlistwidget_types.QListWidget, typeVal: cint,
    vtbl: ref QListWidgetItemVTable = nil): gen_qlistwidget_types.QListWidgetItem =
  let vtbl = if vtbl == nil: new QListWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QListWidgetItemVTable](fcQListWidgetItem_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = cQListWidgetItem_vtable_callback_clone
  if not isNil(vtbl[].setBackgroundColor):
    vtbl[].vtbl.setBackgroundColor = cQListWidgetItem_vtable_callback_setBackgroundColor
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = cQListWidgetItem_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = cQListWidgetItem_vtable_callback_setData
  if not isNil(vtbl[].operatorLesser):
    vtbl[].vtbl.operatorLesser = cQListWidgetItem_vtable_callback_operatorLesser
  if not isNil(vtbl[].read):
    vtbl[].vtbl.read = cQListWidgetItem_vtable_callback_read
  if not isNil(vtbl[].write):
    vtbl[].vtbl.write = cQListWidgetItem_vtable_callback_write
  gen_qlistwidget_types.QListWidgetItem(h: fcQListWidgetItem_new10(addr(vtbl[].vtbl), addr(vtbl[]), icon.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), listview.h, typeVal), owned: true)

const cQListWidgetItem_mvtbl = cQListWidgetItemVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQListWidgetItem()[])](self.fcQListWidgetItem_vtbl())
    inst[].h = nil
    inst[].owned = false,
  clone: cQListWidgetItem_method_callback_clone,
  setBackgroundColor: cQListWidgetItem_method_callback_setBackgroundColor,
  data: cQListWidgetItem_method_callback_data,
  setData: cQListWidgetItem_method_callback_setData,
  operatorLesser: cQListWidgetItem_method_callback_operatorLesser,
  read: cQListWidgetItem_method_callback_read,
  write: cQListWidgetItem_method_callback_write,
)
proc create*(T: type gen_qlistwidget_types.QListWidgetItem,
    inst: VirtualQListWidgetItem) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQListWidgetItem_new(addr(cQListWidgetItem_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qlistwidget_types.QListWidgetItem,
    text: openArray[char],
    inst: VirtualQListWidgetItem) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQListWidgetItem_new2(addr(cQListWidgetItem_mvtbl), addr(inst[]), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))
  inst[].owned = true

proc create*(T: type gen_qlistwidget_types.QListWidgetItem,
    icon: gen_qicon_types.QIcon, text: openArray[char],
    inst: VirtualQListWidgetItem) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQListWidgetItem_new3(addr(cQListWidgetItem_mvtbl), addr(inst[]), icon.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))
  inst[].owned = true

proc create*(T: type gen_qlistwidget_types.QListWidgetItem,
    other: gen_qlistwidget_types.QListWidgetItem,
    inst: VirtualQListWidgetItem) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQListWidgetItem_new4(addr(cQListWidgetItem_mvtbl), addr(inst[]), other.h)
  inst[].owned = true

proc create*(T: type gen_qlistwidget_types.QListWidgetItem,
    listview: gen_qlistwidget_types.QListWidget,
    inst: VirtualQListWidgetItem) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQListWidgetItem_new5(addr(cQListWidgetItem_mvtbl), addr(inst[]), listview.h)
  inst[].owned = true

proc create*(T: type gen_qlistwidget_types.QListWidgetItem,
    listview: gen_qlistwidget_types.QListWidget, typeVal: cint,
    inst: VirtualQListWidgetItem) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQListWidgetItem_new6(addr(cQListWidgetItem_mvtbl), addr(inst[]), listview.h, typeVal)
  inst[].owned = true

proc create*(T: type gen_qlistwidget_types.QListWidgetItem,
    text: openArray[char], listview: gen_qlistwidget_types.QListWidget,
    inst: VirtualQListWidgetItem) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQListWidgetItem_new7(addr(cQListWidgetItem_mvtbl), addr(inst[]), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), listview.h)
  inst[].owned = true

proc create*(T: type gen_qlistwidget_types.QListWidgetItem,
    text: openArray[char], listview: gen_qlistwidget_types.QListWidget, typeVal: cint,
    inst: VirtualQListWidgetItem) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQListWidgetItem_new8(addr(cQListWidgetItem_mvtbl), addr(inst[]), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), listview.h, typeVal)
  inst[].owned = true

proc create*(T: type gen_qlistwidget_types.QListWidgetItem,
    icon: gen_qicon_types.QIcon, text: openArray[char], listview: gen_qlistwidget_types.QListWidget,
    inst: VirtualQListWidgetItem) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQListWidgetItem_new9(addr(cQListWidgetItem_mvtbl), addr(inst[]), icon.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), listview.h)
  inst[].owned = true

proc create*(T: type gen_qlistwidget_types.QListWidgetItem,
    icon: gen_qicon_types.QIcon, text: openArray[char], listview: gen_qlistwidget_types.QListWidget, typeVal: cint,
    inst: VirtualQListWidgetItem) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQListWidgetItem_new10(addr(cQListWidgetItem_mvtbl), addr(inst[]), icon.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), listview.h, typeVal)
  inst[].owned = true

proc metaObject*(self: gen_qlistwidget_types.QListWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQListWidget_metaObject(self.h), owned: false)

proc metacast*(self: gen_qlistwidget_types.QListWidget, param1: cstring): pointer =
  fcQListWidget_metacast(self.h, param1)

proc metacall*(self: gen_qlistwidget_types.QListWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQListWidget_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qlistwidget_types.QListWidget, s: cstring): string =
  let v_ms = fcQListWidget_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qlistwidget_types.QListWidget, s: cstring): string =
  let v_ms = fcQListWidget_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setSelectionModel*(self: gen_qlistwidget_types.QListWidget, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void =
  fcQListWidget_setSelectionModel(self.h, selectionModel.h)

proc item*(self: gen_qlistwidget_types.QListWidget, row: cint): gen_qlistwidget_types.QListWidgetItem =
  gen_qlistwidget_types.QListWidgetItem(h: fcQListWidget_item(self.h, row), owned: false)

proc row*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem): cint =
  fcQListWidget_row(self.h, item.h)

proc insertItem*(self: gen_qlistwidget_types.QListWidget, row: cint, item: gen_qlistwidget_types.QListWidgetItem): void =
  fcQListWidget_insertItem(self.h, row, item.h)

proc insertItem*(self: gen_qlistwidget_types.QListWidget, row: cint, label: openArray[char]): void =
  fcQListWidget_insertItem2(self.h, row, struct_miqt_string(data: if len(label) > 0: addr label[0] else: nil, len: csize_t(len(label))))

proc insertItems*(self: gen_qlistwidget_types.QListWidget, row: cint, labels: openArray[string]): void =
  var labels_CArray = newSeq[struct_miqt_string](len(labels))
  for i in 0..<len(labels):
    labels_CArray[i] = struct_miqt_string(data: if len(labels[i]) > 0: addr labels[i][0] else: nil, len: csize_t(len(labels[i])))

  fcQListWidget_insertItems(self.h, row, struct_miqt_array(len: csize_t(len(labels)), data: if len(labels) == 0: nil else: addr(labels_CArray[0])))

proc addItem*(self: gen_qlistwidget_types.QListWidget, label: openArray[char]): void =
  fcQListWidget_addItem(self.h, struct_miqt_string(data: if len(label) > 0: addr label[0] else: nil, len: csize_t(len(label))))

proc addItem*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem): void =
  fcQListWidget_addItemWithItem(self.h, item.h)

proc addItems*(self: gen_qlistwidget_types.QListWidget, labels: openArray[string]): void =
  var labels_CArray = newSeq[struct_miqt_string](len(labels))
  for i in 0..<len(labels):
    labels_CArray[i] = struct_miqt_string(data: if len(labels[i]) > 0: addr labels[i][0] else: nil, len: csize_t(len(labels[i])))

  fcQListWidget_addItems(self.h, struct_miqt_array(len: csize_t(len(labels)), data: if len(labels) == 0: nil else: addr(labels_CArray[0])))

proc takeItem*(self: gen_qlistwidget_types.QListWidget, row: cint): gen_qlistwidget_types.QListWidgetItem =
  gen_qlistwidget_types.QListWidgetItem(h: fcQListWidget_takeItem(self.h, row), owned: false)

proc count*(self: gen_qlistwidget_types.QListWidget): cint =
  fcQListWidget_count(self.h)

proc currentItem*(self: gen_qlistwidget_types.QListWidget): gen_qlistwidget_types.QListWidgetItem =
  gen_qlistwidget_types.QListWidgetItem(h: fcQListWidget_currentItem(self.h), owned: false)

proc setCurrentItem*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem): void =
  fcQListWidget_setCurrentItem(self.h, item.h)

proc setCurrentItem*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem, command: cint): void =
  fcQListWidget_setCurrentItem2(self.h, item.h, cint(command))

proc currentRow*(self: gen_qlistwidget_types.QListWidget): cint =
  fcQListWidget_currentRow(self.h)

proc setCurrentRow*(self: gen_qlistwidget_types.QListWidget, row: cint): void =
  fcQListWidget_setCurrentRow(self.h, row)

proc setCurrentRow*(self: gen_qlistwidget_types.QListWidget, row: cint, command: cint): void =
  fcQListWidget_setCurrentRow2(self.h, row, cint(command))

proc itemAt*(self: gen_qlistwidget_types.QListWidget, p: gen_qpoint_types.QPoint): gen_qlistwidget_types.QListWidgetItem =
  gen_qlistwidget_types.QListWidgetItem(h: fcQListWidget_itemAt(self.h, p.h), owned: false)

proc itemAt*(self: gen_qlistwidget_types.QListWidget, x: cint, y: cint): gen_qlistwidget_types.QListWidgetItem =
  gen_qlistwidget_types.QListWidgetItem(h: fcQListWidget_itemAt2(self.h, x, y), owned: false)

proc visualItemRect*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQListWidget_visualItemRect(self.h, item.h), owned: true)

proc sortItems*(self: gen_qlistwidget_types.QListWidget): void =
  fcQListWidget_sortItems(self.h)

proc setSortingEnabled*(self: gen_qlistwidget_types.QListWidget, enable: bool): void =
  fcQListWidget_setSortingEnabled(self.h, enable)

proc isSortingEnabled*(self: gen_qlistwidget_types.QListWidget): bool =
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
  gen_qwidget_types.QWidget(h: fcQListWidget_itemWidget(self.h, item.h), owned: false)

proc setItemWidget*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem, widget: gen_qwidget_types.QWidget): void =
  fcQListWidget_setItemWidget(self.h, item.h, widget.h)

proc removeItemWidget*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem): void =
  fcQListWidget_removeItemWidget(self.h, item.h)

proc isItemSelected*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem): bool =
  fcQListWidget_isItemSelected(self.h, item.h)

proc setItemSelected*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem, select: bool): void =
  fcQListWidget_setItemSelected(self.h, item.h, select)

proc selectedItems*(self: gen_qlistwidget_types.QListWidget): seq[gen_qlistwidget_types.QListWidgetItem] =
  var v_ma = fcQListWidget_selectedItems(self.h)
  var vx_ret = newSeq[gen_qlistwidget_types.QListWidgetItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qlistwidget_types.QListWidgetItem(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc findItems*(self: gen_qlistwidget_types.QListWidget, text: openArray[char], flags: cint): seq[gen_qlistwidget_types.QListWidgetItem] =
  var v_ma = fcQListWidget_findItems(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), cint(flags))
  var vx_ret = newSeq[gen_qlistwidget_types.QListWidgetItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qlistwidget_types.QListWidgetItem(h: v_outCast[i], owned: false)
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

proc clear*(self: gen_qlistwidget_types.QListWidget): void =
  fcQListWidget_clear(self.h)

proc itemPressed*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem): void =
  fcQListWidget_itemPressed(self.h, item.h)

type QListWidgetitemPressedSlot* = proc(item: gen_qlistwidget_types.QListWidgetItem)
proc cQListWidget_slot_callback_itemPressed(slot: int, item: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QListWidgetitemPressedSlot](cast[pointer](slot))
  let slotval1 = gen_qlistwidget_types.QListWidgetItem(h: item, owned: false)

  nimfunc[](slotval1)

proc cQListWidget_slot_callback_itemPressed_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QListWidgetitemPressedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onitemPressed*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetitemPressedSlot) =
  var tmp = new QListWidgetitemPressedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_connect_itemPressed(self.h, cast[int](addr tmp[]), cQListWidget_slot_callback_itemPressed, cQListWidget_slot_callback_itemPressed_release)

proc itemClicked*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem): void =
  fcQListWidget_itemClicked(self.h, item.h)

type QListWidgetitemClickedSlot* = proc(item: gen_qlistwidget_types.QListWidgetItem)
proc cQListWidget_slot_callback_itemClicked(slot: int, item: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QListWidgetitemClickedSlot](cast[pointer](slot))
  let slotval1 = gen_qlistwidget_types.QListWidgetItem(h: item, owned: false)

  nimfunc[](slotval1)

proc cQListWidget_slot_callback_itemClicked_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QListWidgetitemClickedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onitemClicked*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetitemClickedSlot) =
  var tmp = new QListWidgetitemClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_connect_itemClicked(self.h, cast[int](addr tmp[]), cQListWidget_slot_callback_itemClicked, cQListWidget_slot_callback_itemClicked_release)

proc itemDoubleClicked*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem): void =
  fcQListWidget_itemDoubleClicked(self.h, item.h)

type QListWidgetitemDoubleClickedSlot* = proc(item: gen_qlistwidget_types.QListWidgetItem)
proc cQListWidget_slot_callback_itemDoubleClicked(slot: int, item: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QListWidgetitemDoubleClickedSlot](cast[pointer](slot))
  let slotval1 = gen_qlistwidget_types.QListWidgetItem(h: item, owned: false)

  nimfunc[](slotval1)

proc cQListWidget_slot_callback_itemDoubleClicked_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QListWidgetitemDoubleClickedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onitemDoubleClicked*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetitemDoubleClickedSlot) =
  var tmp = new QListWidgetitemDoubleClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_connect_itemDoubleClicked(self.h, cast[int](addr tmp[]), cQListWidget_slot_callback_itemDoubleClicked, cQListWidget_slot_callback_itemDoubleClicked_release)

proc itemActivated*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem): void =
  fcQListWidget_itemActivated(self.h, item.h)

type QListWidgetitemActivatedSlot* = proc(item: gen_qlistwidget_types.QListWidgetItem)
proc cQListWidget_slot_callback_itemActivated(slot: int, item: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QListWidgetitemActivatedSlot](cast[pointer](slot))
  let slotval1 = gen_qlistwidget_types.QListWidgetItem(h: item, owned: false)

  nimfunc[](slotval1)

proc cQListWidget_slot_callback_itemActivated_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QListWidgetitemActivatedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onitemActivated*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetitemActivatedSlot) =
  var tmp = new QListWidgetitemActivatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_connect_itemActivated(self.h, cast[int](addr tmp[]), cQListWidget_slot_callback_itemActivated, cQListWidget_slot_callback_itemActivated_release)

proc itemEntered*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem): void =
  fcQListWidget_itemEntered(self.h, item.h)

type QListWidgetitemEnteredSlot* = proc(item: gen_qlistwidget_types.QListWidgetItem)
proc cQListWidget_slot_callback_itemEntered(slot: int, item: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QListWidgetitemEnteredSlot](cast[pointer](slot))
  let slotval1 = gen_qlistwidget_types.QListWidgetItem(h: item, owned: false)

  nimfunc[](slotval1)

proc cQListWidget_slot_callback_itemEntered_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QListWidgetitemEnteredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onitemEntered*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetitemEnteredSlot) =
  var tmp = new QListWidgetitemEnteredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_connect_itemEntered(self.h, cast[int](addr tmp[]), cQListWidget_slot_callback_itemEntered, cQListWidget_slot_callback_itemEntered_release)

proc itemChanged*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem): void =
  fcQListWidget_itemChanged(self.h, item.h)

type QListWidgetitemChangedSlot* = proc(item: gen_qlistwidget_types.QListWidgetItem)
proc cQListWidget_slot_callback_itemChanged(slot: int, item: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QListWidgetitemChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qlistwidget_types.QListWidgetItem(h: item, owned: false)

  nimfunc[](slotval1)

proc cQListWidget_slot_callback_itemChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QListWidgetitemChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onitemChanged*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetitemChangedSlot) =
  var tmp = new QListWidgetitemChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_connect_itemChanged(self.h, cast[int](addr tmp[]), cQListWidget_slot_callback_itemChanged, cQListWidget_slot_callback_itemChanged_release)

proc currentItemChanged*(self: gen_qlistwidget_types.QListWidget, current: gen_qlistwidget_types.QListWidgetItem, previous: gen_qlistwidget_types.QListWidgetItem): void =
  fcQListWidget_currentItemChanged(self.h, current.h, previous.h)

type QListWidgetcurrentItemChangedSlot* = proc(current: gen_qlistwidget_types.QListWidgetItem, previous: gen_qlistwidget_types.QListWidgetItem)
proc cQListWidget_slot_callback_currentItemChanged(slot: int, current: pointer, previous: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QListWidgetcurrentItemChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qlistwidget_types.QListWidgetItem(h: current, owned: false)

  let slotval2 = gen_qlistwidget_types.QListWidgetItem(h: previous, owned: false)

  nimfunc[](slotval1, slotval2)

proc cQListWidget_slot_callback_currentItemChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QListWidgetcurrentItemChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncurrentItemChanged*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetcurrentItemChangedSlot) =
  var tmp = new QListWidgetcurrentItemChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_connect_currentItemChanged(self.h, cast[int](addr tmp[]), cQListWidget_slot_callback_currentItemChanged, cQListWidget_slot_callback_currentItemChanged_release)

proc currentTextChanged*(self: gen_qlistwidget_types.QListWidget, currentText: openArray[char]): void =
  fcQListWidget_currentTextChanged(self.h, struct_miqt_string(data: if len(currentText) > 0: addr currentText[0] else: nil, len: csize_t(len(currentText))))

type QListWidgetcurrentTextChangedSlot* = proc(currentText: openArray[char])
proc cQListWidget_slot_callback_currentTextChanged(slot: int, currentText: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QListWidgetcurrentTextChangedSlot](cast[pointer](slot))
  let vcurrentText_ms = currentText
  let vcurrentTextx_ret = string.fromBytes(vcurrentText_ms)
  c_free(vcurrentText_ms.data)
  let slotval1 = vcurrentTextx_ret

  nimfunc[](slotval1)

proc cQListWidget_slot_callback_currentTextChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QListWidgetcurrentTextChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncurrentTextChanged*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetcurrentTextChangedSlot) =
  var tmp = new QListWidgetcurrentTextChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_connect_currentTextChanged(self.h, cast[int](addr tmp[]), cQListWidget_slot_callback_currentTextChanged, cQListWidget_slot_callback_currentTextChanged_release)

proc currentRowChanged*(self: gen_qlistwidget_types.QListWidget, currentRow: cint): void =
  fcQListWidget_currentRowChanged(self.h, currentRow)

type QListWidgetcurrentRowChangedSlot* = proc(currentRow: cint)
proc cQListWidget_slot_callback_currentRowChanged(slot: int, currentRow: cint) {.cdecl.} =
  let nimfunc = cast[ptr QListWidgetcurrentRowChangedSlot](cast[pointer](slot))
  let slotval1 = currentRow

  nimfunc[](slotval1)

proc cQListWidget_slot_callback_currentRowChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QListWidgetcurrentRowChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncurrentRowChanged*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetcurrentRowChangedSlot) =
  var tmp = new QListWidgetcurrentRowChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_connect_currentRowChanged(self.h, cast[int](addr tmp[]), cQListWidget_slot_callback_currentRowChanged, cQListWidget_slot_callback_currentRowChanged_release)

proc itemSelectionChanged*(self: gen_qlistwidget_types.QListWidget): void =
  fcQListWidget_itemSelectionChanged(self.h)

type QListWidgetitemSelectionChangedSlot* = proc()
proc cQListWidget_slot_callback_itemSelectionChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QListWidgetitemSelectionChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQListWidget_slot_callback_itemSelectionChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QListWidgetitemSelectionChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onitemSelectionChanged*(self: gen_qlistwidget_types.QListWidget, slot: QListWidgetitemSelectionChangedSlot) =
  var tmp = new QListWidgetitemSelectionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_connect_itemSelectionChanged(self.h, cast[int](addr tmp[]), cQListWidget_slot_callback_itemSelectionChanged, cQListWidget_slot_callback_itemSelectionChanged_release)

proc tr*(_: type gen_qlistwidget_types.QListWidget, s: cstring, c: cstring): string =
  let v_ms = fcQListWidget_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qlistwidget_types.QListWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQListWidget_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qlistwidget_types.QListWidget, s: cstring, c: cstring): string =
  let v_ms = fcQListWidget_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qlistwidget_types.QListWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQListWidget_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
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
type QListWidgetmimeDataProc* = proc(self: QListWidget, items: openArray[gen_qlistwidget_types.QListWidgetItem]): gen_qmimedata_types.QMimeData {.raises: [], gcsafe.}
type QListWidgetdropMimeDataProc* = proc(self: QListWidget, index: cint, data: gen_qmimedata_types.QMimeData, action: cint): bool {.raises: [], gcsafe.}
type QListWidgetsupportedDropActionsProc* = proc(self: QListWidget): cint {.raises: [], gcsafe.}
type QListWidgetvisualRectProc* = proc(self: QListWidget, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect {.raises: [], gcsafe.}
type QListWidgetscrollToProc* = proc(self: QListWidget, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void {.raises: [], gcsafe.}
type QListWidgetindexAtProc* = proc(self: QListWidget, p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QListWidgetdoItemsLayoutProc* = proc(self: QListWidget): void {.raises: [], gcsafe.}
type QListWidgetresetProc* = proc(self: QListWidget): void {.raises: [], gcsafe.}
type QListWidgetsetRootIndexProc* = proc(self: QListWidget, index: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QListWidgetscrollContentsByProc* = proc(self: QListWidget, dx: cint, dy: cint): void {.raises: [], gcsafe.}
type QListWidgetdataChangedProc* = proc(self: QListWidget, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: openArray[cint]): void {.raises: [], gcsafe.}
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
type QListWidgetkeyboardSearchProc* = proc(self: QListWidget, search: openArray[char]): void {.raises: [], gcsafe.}
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
type QListWidgetnativeEventProc* = proc(self: QListWidget, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QListWidgetmetricProc* = proc(self: QListWidget, param1: cint): cint {.raises: [], gcsafe.}
type QListWidgetinitPainterProc* = proc(self: QListWidget, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QListWidgetredirectedProc* = proc(self: QListWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QListWidgetsharedPainterProc* = proc(self: QListWidget): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QListWidgetchildEventProc* = proc(self: QListWidget, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QListWidgetcustomEventProc* = proc(self: QListWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QListWidgetconnectNotifyProc* = proc(self: QListWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QListWidgetdisconnectNotifyProc* = proc(self: QListWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QListWidgetVTable* {.inheritable, pure.} = object
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
proc QListWidgetmetaObject*(self: gen_qlistwidget_types.QListWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQListWidget_virtualbase_metaObject(self.h), owned: false)

proc cQListWidget_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QListWidgetmetacast*(self: gen_qlistwidget_types.QListWidget, param1: cstring): pointer =
  fcQListWidget_virtualbase_metacast(self.h, param1)

proc cQListWidget_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QListWidgetmetacall*(self: gen_qlistwidget_types.QListWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQListWidget_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQListWidget_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QListWidgetsetSelectionModel*(self: gen_qlistwidget_types.QListWidget, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void =
  fcQListWidget_virtualbase_setSelectionModel(self.h, selectionModel.h)

proc cQListWidget_vtable_callback_setSelectionModel(self: pointer, selectionModel: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelectionModel(h: selectionModel, owned: false)
  vtbl[].setSelectionModel(self, slotval1)

proc QListWidgetdropEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qevent_types.QDropEvent): void =
  fcQListWidget_virtualbase_dropEvent(self.h, event.h)

proc cQListWidget_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QListWidgetevent*(self: gen_qlistwidget_types.QListWidget, e: gen_qcoreevent_types.QEvent): bool =
  fcQListWidget_virtualbase_event(self.h, e.h)

proc cQListWidget_vtable_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QListWidgetmimeTypes*(self: gen_qlistwidget_types.QListWidget): seq[string] =
  var v_ma = fcQListWidget_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc cQListWidget_vtable_callback_mimeTypes(self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  var virtualReturn = vtbl[].mimeTypes(self)
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_miqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_miqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = cast[cstring](if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil)
    if len(virtualReturn[i]) > 0: copyMem(cast[pointer](virtualReturn_i_copy), addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QListWidgetmimeData*(self: gen_qlistwidget_types.QListWidget, items: openArray[gen_qlistwidget_types.QListWidgetItem]): gen_qmimedata_types.QMimeData =
  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  gen_qmimedata_types.QMimeData(h: fcQListWidget_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0]))), owned: false)

proc cQListWidget_vtable_callback_mimeData(self: pointer, items: struct_miqt_array): pointer {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  var vitems_ma = items
  var vitemsx_ret = newSeq[gen_qlistwidget_types.QListWidgetItem](int(vitems_ma.len))
  let vitems_outCast = cast[ptr UncheckedArray[pointer]](vitems_ma.data)
  for i in 0 ..< vitems_ma.len:
    vitemsx_ret[i] = gen_qlistwidget_types.QListWidgetItem(h: vitems_outCast[i], owned: false)
  c_free(vitems_ma.data)
  let slotval1 = vitemsx_ret
  var virtualReturn = vtbl[].mimeData(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QListWidgetdropMimeData*(self: gen_qlistwidget_types.QListWidget, index: cint, data: gen_qmimedata_types.QMimeData, action: cint): bool =
  fcQListWidget_virtualbase_dropMimeData(self.h, index, data.h, cint(action))

proc cQListWidget_vtable_callback_dropMimeData(self: pointer, index: cint, data: pointer, action: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = index
  let slotval2 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval3 = cint(action)
  var virtualReturn = vtbl[].dropMimeData(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QListWidgetsupportedDropActions*(self: gen_qlistwidget_types.QListWidget): cint =
  cint(fcQListWidget_virtualbase_supportedDropActions(self.h))

proc cQListWidget_vtable_callback_supportedDropActions(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  var virtualReturn = vtbl[].supportedDropActions(self)
  cint(virtualReturn)

proc QListWidgetvisualRect*(self: gen_qlistwidget_types.QListWidget, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQListWidget_virtualbase_visualRect(self.h, index.h), owned: true)

proc cQListWidget_vtable_callback_visualRect(self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].visualRect(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QListWidgetscrollTo*(self: gen_qlistwidget_types.QListWidget, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void =
  fcQListWidget_virtualbase_scrollTo(self.h, index.h, cint(hint))

proc cQListWidget_vtable_callback_scrollTo(self: pointer, index: pointer, hint: cint): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = cint(hint)
  vtbl[].scrollTo(self, slotval1, slotval2)

proc QListWidgetindexAt*(self: gen_qlistwidget_types.QListWidget, p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQListWidget_virtualbase_indexAt(self.h, p.h), owned: true)

proc cQListWidget_vtable_callback_indexAt(self: pointer, p: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: p, owned: false)
  var virtualReturn = vtbl[].indexAt(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QListWidgetdoItemsLayout*(self: gen_qlistwidget_types.QListWidget): void =
  fcQListWidget_virtualbase_doItemsLayout(self.h)

proc cQListWidget_vtable_callback_doItemsLayout(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  vtbl[].doItemsLayout(self)

proc QListWidgetreset*(self: gen_qlistwidget_types.QListWidget): void =
  fcQListWidget_virtualbase_reset(self.h)

proc cQListWidget_vtable_callback_reset(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  vtbl[].reset(self)

proc QListWidgetsetRootIndex*(self: gen_qlistwidget_types.QListWidget, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQListWidget_virtualbase_setRootIndex(self.h, index.h)

proc cQListWidget_vtable_callback_setRootIndex(self: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  vtbl[].setRootIndex(self, slotval1)

proc QListWidgetscrollContentsBy*(self: gen_qlistwidget_types.QListWidget, dx: cint, dy: cint): void =
  fcQListWidget_virtualbase_scrollContentsBy(self.h, dx, dy)

proc cQListWidget_vtable_callback_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = dx
  let slotval2 = dy
  vtbl[].scrollContentsBy(self, slotval1, slotval2)

proc QListWidgetdataChanged*(self: gen_qlistwidget_types.QListWidget, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: openArray[cint]): void =
  var roles_CArray = newSeq[cint](len(roles))
  for i in 0..<len(roles):
    roles_CArray[i] = roles[i]

  fcQListWidget_virtualbase_dataChanged(self.h, topLeft.h, bottomRight.h, struct_miqt_array(len: csize_t(len(roles)), data: if len(roles) == 0: nil else: addr(roles_CArray[0])))

proc cQListWidget_vtable_callback_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: topLeft, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: bottomRight, owned: false)
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

proc cQListWidget_vtable_callback_rowsInserted(self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  let slotval2 = start
  let slotval3 = endVal
  vtbl[].rowsInserted(self, slotval1, slotval2, slotval3)

proc QListWidgetrowsAboutToBeRemoved*(self: gen_qlistwidget_types.QListWidget, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fcQListWidget_virtualbase_rowsAboutToBeRemoved(self.h, parent.h, start, endVal)

proc cQListWidget_vtable_callback_rowsAboutToBeRemoved(self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  let slotval2 = start
  let slotval3 = endVal
  vtbl[].rowsAboutToBeRemoved(self, slotval1, slotval2, slotval3)

proc QListWidgetmouseMoveEvent*(self: gen_qlistwidget_types.QListWidget, e: gen_qevent_types.QMouseEvent): void =
  fcQListWidget_virtualbase_mouseMoveEvent(self.h, e.h)

proc cQListWidget_vtable_callback_mouseMoveEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QListWidgetmouseReleaseEvent*(self: gen_qlistwidget_types.QListWidget, e: gen_qevent_types.QMouseEvent): void =
  fcQListWidget_virtualbase_mouseReleaseEvent(self.h, e.h)

proc cQListWidget_vtable_callback_mouseReleaseEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QListWidgetwheelEvent*(self: gen_qlistwidget_types.QListWidget, e: gen_qevent_types.QWheelEvent): void =
  fcQListWidget_virtualbase_wheelEvent(self.h, e.h)

proc cQListWidget_vtable_callback_wheelEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: e, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QListWidgettimerEvent*(self: gen_qlistwidget_types.QListWidget, e: gen_qcoreevent_types.QTimerEvent): void =
  fcQListWidget_virtualbase_timerEvent(self.h, e.h)

proc cQListWidget_vtable_callback_timerEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: e, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QListWidgetresizeEvent*(self: gen_qlistwidget_types.QListWidget, e: gen_qevent_types.QResizeEvent): void =
  fcQListWidget_virtualbase_resizeEvent(self.h, e.h)

proc cQListWidget_vtable_callback_resizeEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: e, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QListWidgetdragMoveEvent*(self: gen_qlistwidget_types.QListWidget, e: gen_qevent_types.QDragMoveEvent): void =
  fcQListWidget_virtualbase_dragMoveEvent(self.h, e.h)

proc cQListWidget_vtable_callback_dragMoveEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: e, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QListWidgetdragLeaveEvent*(self: gen_qlistwidget_types.QListWidget, e: gen_qevent_types.QDragLeaveEvent): void =
  fcQListWidget_virtualbase_dragLeaveEvent(self.h, e.h)

proc cQListWidget_vtable_callback_dragLeaveEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: e, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QListWidgetstartDrag*(self: gen_qlistwidget_types.QListWidget, supportedActions: cint): void =
  fcQListWidget_virtualbase_startDrag(self.h, cint(supportedActions))

proc cQListWidget_vtable_callback_startDrag(self: pointer, supportedActions: cint): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = cint(supportedActions)
  vtbl[].startDrag(self, slotval1)

proc QListWidgetviewOptions*(self: gen_qlistwidget_types.QListWidget): gen_qstyleoption_types.QStyleOptionViewItem =
  gen_qstyleoption_types.QStyleOptionViewItem(h: fcQListWidget_virtualbase_viewOptions(self.h), owned: true)

proc cQListWidget_vtable_callback_viewOptions(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  var virtualReturn = vtbl[].viewOptions(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QListWidgetpaintEvent*(self: gen_qlistwidget_types.QListWidget, e: gen_qevent_types.QPaintEvent): void =
  fcQListWidget_virtualbase_paintEvent(self.h, e.h)

proc cQListWidget_vtable_callback_paintEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: e, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QListWidgethorizontalOffset*(self: gen_qlistwidget_types.QListWidget): cint =
  fcQListWidget_virtualbase_horizontalOffset(self.h)

proc cQListWidget_vtable_callback_horizontalOffset(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  var virtualReturn = vtbl[].horizontalOffset(self)
  virtualReturn

proc QListWidgetverticalOffset*(self: gen_qlistwidget_types.QListWidget): cint =
  fcQListWidget_virtualbase_verticalOffset(self.h)

proc cQListWidget_vtable_callback_verticalOffset(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  var virtualReturn = vtbl[].verticalOffset(self)
  virtualReturn

proc QListWidgetmoveCursor*(self: gen_qlistwidget_types.QListWidget, cursorAction: cint, modifiers: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQListWidget_virtualbase_moveCursor(self.h, cint(cursorAction), cint(modifiers)), owned: true)

proc cQListWidget_vtable_callback_moveCursor(self: pointer, cursorAction: cint, modifiers: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = cint(cursorAction)
  let slotval2 = cint(modifiers)
  var virtualReturn = vtbl[].moveCursor(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QListWidgetsetSelection*(self: gen_qlistwidget_types.QListWidget, rect: gen_qrect_types.QRect, command: cint): void =
  fcQListWidget_virtualbase_setSelection(self.h, rect.h, cint(command))

proc cQListWidget_vtable_callback_setSelection(self: pointer, rect: pointer, command: cint): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qrect_types.QRect(h: rect, owned: false)
  let slotval2 = cint(command)
  vtbl[].setSelection(self, slotval1, slotval2)

proc QListWidgetvisualRegionForSelection*(self: gen_qlistwidget_types.QListWidget, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQListWidget_virtualbase_visualRegionForSelection(self.h, selection.h), owned: true)

proc cQListWidget_vtable_callback_visualRegionForSelection(self: pointer, selection: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection, owned: false)
  var virtualReturn = vtbl[].visualRegionForSelection(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QListWidgetselectedIndexes*(self: gen_qlistwidget_types.QListWidget): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQListWidget_virtualbase_selectedIndexes(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc cQListWidget_vtable_callback_selectedIndexes(self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  var virtualReturn = vtbl[].selectedIndexes(self)
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn[i].owned = false # TODO move?
    let virtualReturn_i_h = virtualReturn[i].h
    virtualReturn[i].h = nil
    virtualReturn_CArray[i] = virtualReturn_i_h

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QListWidgetupdateGeometries*(self: gen_qlistwidget_types.QListWidget): void =
  fcQListWidget_virtualbase_updateGeometries(self.h)

proc cQListWidget_vtable_callback_updateGeometries(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  vtbl[].updateGeometries(self)

proc QListWidgetisIndexHidden*(self: gen_qlistwidget_types.QListWidget, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQListWidget_virtualbase_isIndexHidden(self.h, index.h)

proc cQListWidget_vtable_callback_isIndexHidden(self: pointer, index: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].isIndexHidden(self, slotval1)
  virtualReturn

proc QListWidgetselectionChanged*(self: gen_qlistwidget_types.QListWidget, selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void =
  fcQListWidget_virtualbase_selectionChanged(self.h, selected.h, deselected.h)

proc cQListWidget_vtable_callback_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selected, owned: false)
  let slotval2 = gen_qitemselectionmodel_types.QItemSelection(h: deselected, owned: false)
  vtbl[].selectionChanged(self, slotval1, slotval2)

proc QListWidgetcurrentChanged*(self: gen_qlistwidget_types.QListWidget, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQListWidget_virtualbase_currentChanged(self.h, current.h, previous.h)

proc cQListWidget_vtable_callback_currentChanged(self: pointer, current: pointer, previous: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: current, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: previous, owned: false)
  vtbl[].currentChanged(self, slotval1, slotval2)

proc QListWidgetviewportSizeHint*(self: gen_qlistwidget_types.QListWidget): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQListWidget_virtualbase_viewportSizeHint(self.h), owned: true)

proc cQListWidget_vtable_callback_viewportSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  var virtualReturn = vtbl[].viewportSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QListWidgetkeyboardSearch*(self: gen_qlistwidget_types.QListWidget, search: openArray[char]): void =
  fcQListWidget_virtualbase_keyboardSearch(self.h, struct_miqt_string(data: if len(search) > 0: addr search[0] else: nil, len: csize_t(len(search))))

proc cQListWidget_vtable_callback_keyboardSearch(self: pointer, search: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let vsearch_ms = search
  let vsearchx_ret = string.fromBytes(vsearch_ms)
  c_free(vsearch_ms.data)
  let slotval1 = vsearchx_ret
  vtbl[].keyboardSearch(self, slotval1)

proc QListWidgetsizeHintForRow*(self: gen_qlistwidget_types.QListWidget, row: cint): cint =
  fcQListWidget_virtualbase_sizeHintForRow(self.h, row)

proc cQListWidget_vtable_callback_sizeHintForRow(self: pointer, row: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = row
  var virtualReturn = vtbl[].sizeHintForRow(self, slotval1)
  virtualReturn

proc QListWidgetsizeHintForColumn*(self: gen_qlistwidget_types.QListWidget, column: cint): cint =
  fcQListWidget_virtualbase_sizeHintForColumn(self.h, column)

proc cQListWidget_vtable_callback_sizeHintForColumn(self: pointer, column: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = column
  var virtualReturn = vtbl[].sizeHintForColumn(self, slotval1)
  virtualReturn

proc QListWidgetinputMethodQuery*(self: gen_qlistwidget_types.QListWidget, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQListWidget_virtualbase_inputMethodQuery(self.h, cint(query)), owned: true)

proc cQListWidget_vtable_callback_inputMethodQuery(self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = cint(query)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QListWidgetselectAll*(self: gen_qlistwidget_types.QListWidget): void =
  fcQListWidget_virtualbase_selectAll(self.h)

proc cQListWidget_vtable_callback_selectAll(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  vtbl[].selectAll(self)

proc QListWidgetupdateEditorData*(self: gen_qlistwidget_types.QListWidget): void =
  fcQListWidget_virtualbase_updateEditorData(self.h)

proc cQListWidget_vtable_callback_updateEditorData(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  vtbl[].updateEditorData(self)

proc QListWidgetupdateEditorGeometries*(self: gen_qlistwidget_types.QListWidget): void =
  fcQListWidget_virtualbase_updateEditorGeometries(self.h)

proc cQListWidget_vtable_callback_updateEditorGeometries(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  vtbl[].updateEditorGeometries(self)

proc QListWidgetverticalScrollbarAction*(self: gen_qlistwidget_types.QListWidget, action: cint): void =
  fcQListWidget_virtualbase_verticalScrollbarAction(self.h, action)

proc cQListWidget_vtable_callback_verticalScrollbarAction(self: pointer, action: cint): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = action
  vtbl[].verticalScrollbarAction(self, slotval1)

proc QListWidgethorizontalScrollbarAction*(self: gen_qlistwidget_types.QListWidget, action: cint): void =
  fcQListWidget_virtualbase_horizontalScrollbarAction(self.h, action)

proc cQListWidget_vtable_callback_horizontalScrollbarAction(self: pointer, action: cint): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = action
  vtbl[].horizontalScrollbarAction(self, slotval1)

proc QListWidgetverticalScrollbarValueChanged*(self: gen_qlistwidget_types.QListWidget, value: cint): void =
  fcQListWidget_virtualbase_verticalScrollbarValueChanged(self.h, value)

proc cQListWidget_vtable_callback_verticalScrollbarValueChanged(self: pointer, value: cint): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = value
  vtbl[].verticalScrollbarValueChanged(self, slotval1)

proc QListWidgethorizontalScrollbarValueChanged*(self: gen_qlistwidget_types.QListWidget, value: cint): void =
  fcQListWidget_virtualbase_horizontalScrollbarValueChanged(self.h, value)

proc cQListWidget_vtable_callback_horizontalScrollbarValueChanged(self: pointer, value: cint): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = value
  vtbl[].horizontalScrollbarValueChanged(self, slotval1)

proc QListWidgetcloseEditor*(self: gen_qlistwidget_types.QListWidget, editor: gen_qwidget_types.QWidget, hint: cint): void =
  fcQListWidget_virtualbase_closeEditor(self.h, editor.h, cint(hint))

proc cQListWidget_vtable_callback_closeEditor(self: pointer, editor: pointer, hint: cint): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  let slotval2 = cint(hint)
  vtbl[].closeEditor(self, slotval1, slotval2)

proc QListWidgetcommitData*(self: gen_qlistwidget_types.QListWidget, editor: gen_qwidget_types.QWidget): void =
  fcQListWidget_virtualbase_commitData(self.h, editor.h)

proc cQListWidget_vtable_callback_commitData(self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  vtbl[].commitData(self, slotval1)

proc QListWidgeteditorDestroyed*(self: gen_qlistwidget_types.QListWidget, editor: gen_qobject_types.QObject): void =
  fcQListWidget_virtualbase_editorDestroyed(self.h, editor.h)

proc cQListWidget_vtable_callback_editorDestroyed(self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qobject_types.QObject(h: editor, owned: false)
  vtbl[].editorDestroyed(self, slotval1)

proc QListWidgetedit*(self: gen_qlistwidget_types.QListWidget, index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool =
  fcQListWidget_virtualbase_edit2(self.h, index.h, cint(trigger), event.h)

proc cQListWidget_vtable_callback_edit2(self: pointer, index: pointer, trigger: cint, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = cint(trigger)
  let slotval3 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].edit2(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QListWidgetselectionCommand*(self: gen_qlistwidget_types.QListWidget, index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint =
  cint(fcQListWidget_virtualbase_selectionCommand(self.h, index.h, event.h))

proc cQListWidget_vtable_callback_selectionCommand(self: pointer, index: pointer, event: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].selectionCommand(self, slotval1, slotval2)
  cint(virtualReturn)

proc QListWidgetfocusNextPrevChild*(self: gen_qlistwidget_types.QListWidget, next: bool): bool =
  fcQListWidget_virtualbase_focusNextPrevChild(self.h, next)

proc cQListWidget_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QListWidgetviewportEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qcoreevent_types.QEvent): bool =
  fcQListWidget_virtualbase_viewportEvent(self.h, event.h)

proc cQListWidget_vtable_callback_viewportEvent(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].viewportEvent(self, slotval1)
  virtualReturn

proc QListWidgetmousePressEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQListWidget_virtualbase_mousePressEvent(self.h, event.h)

proc cQListWidget_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QListWidgetmouseDoubleClickEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQListWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc cQListWidget_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QListWidgetdragEnterEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qevent_types.QDragEnterEvent): void =
  fcQListWidget_virtualbase_dragEnterEvent(self.h, event.h)

proc cQListWidget_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QListWidgetfocusInEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQListWidget_virtualbase_focusInEvent(self.h, event.h)

proc cQListWidget_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QListWidgetfocusOutEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQListWidget_virtualbase_focusOutEvent(self.h, event.h)

proc cQListWidget_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QListWidgetkeyPressEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQListWidget_virtualbase_keyPressEvent(self.h, event.h)

proc cQListWidget_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QListWidgetinputMethodEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qevent_types.QInputMethodEvent): void =
  fcQListWidget_virtualbase_inputMethodEvent(self.h, event.h)

proc cQListWidget_vtable_callback_inputMethodEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QListWidgeteventFilter*(self: gen_qlistwidget_types.QListWidget, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQListWidget_virtualbase_eventFilter(self.h, objectVal.h, event.h)

proc cQListWidget_vtable_callback_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qobject_types.QObject(h: objectVal, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QListWidgetminimumSizeHint*(self: gen_qlistwidget_types.QListWidget): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQListWidget_virtualbase_minimumSizeHint(self.h), owned: true)

proc cQListWidget_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QListWidgetsizeHint*(self: gen_qlistwidget_types.QListWidget): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQListWidget_virtualbase_sizeHint(self.h), owned: true)

proc cQListWidget_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QListWidgetsetupViewport*(self: gen_qlistwidget_types.QListWidget, viewport: gen_qwidget_types.QWidget): void =
  fcQListWidget_virtualbase_setupViewport(self.h, viewport.h)

proc cQListWidget_vtable_callback_setupViewport(self: pointer, viewport: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: viewport, owned: false)
  vtbl[].setupViewport(self, slotval1)

proc QListWidgetcontextMenuEvent*(self: gen_qlistwidget_types.QListWidget, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQListWidget_virtualbase_contextMenuEvent(self.h, param1.h)

proc cQListWidget_vtable_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QListWidgetchangeEvent*(self: gen_qlistwidget_types.QListWidget, param1: gen_qcoreevent_types.QEvent): void =
  fcQListWidget_virtualbase_changeEvent(self.h, param1.h)

proc cQListWidget_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QListWidgetdevType*(self: gen_qlistwidget_types.QListWidget): cint =
  fcQListWidget_virtualbase_devType(self.h)

proc cQListWidget_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QListWidgetsetVisible*(self: gen_qlistwidget_types.QListWidget, visible: bool): void =
  fcQListWidget_virtualbase_setVisible(self.h, visible)

proc cQListWidget_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QListWidgetheightForWidth*(self: gen_qlistwidget_types.QListWidget, param1: cint): cint =
  fcQListWidget_virtualbase_heightForWidth(self.h, param1)

proc cQListWidget_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QListWidgethasHeightForWidth*(self: gen_qlistwidget_types.QListWidget): bool =
  fcQListWidget_virtualbase_hasHeightForWidth(self.h)

proc cQListWidget_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QListWidgetpaintEngine*(self: gen_qlistwidget_types.QListWidget): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQListWidget_virtualbase_paintEngine(self.h), owned: false)

proc cQListWidget_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QListWidgetkeyReleaseEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQListWidget_virtualbase_keyReleaseEvent(self.h, event.h)

proc cQListWidget_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QListWidgetenterEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQListWidget_virtualbase_enterEvent(self.h, event.h)

proc cQListWidget_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QListWidgetleaveEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQListWidget_virtualbase_leaveEvent(self.h, event.h)

proc cQListWidget_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QListWidgetmoveEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qevent_types.QMoveEvent): void =
  fcQListWidget_virtualbase_moveEvent(self.h, event.h)

proc cQListWidget_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QListWidgetcloseEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qevent_types.QCloseEvent): void =
  fcQListWidget_virtualbase_closeEvent(self.h, event.h)

proc cQListWidget_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QListWidgettabletEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qevent_types.QTabletEvent): void =
  fcQListWidget_virtualbase_tabletEvent(self.h, event.h)

proc cQListWidget_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QListWidgetactionEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qevent_types.QActionEvent): void =
  fcQListWidget_virtualbase_actionEvent(self.h, event.h)

proc cQListWidget_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QListWidgetshowEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qevent_types.QShowEvent): void =
  fcQListWidget_virtualbase_showEvent(self.h, event.h)

proc cQListWidget_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QListWidgethideEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qevent_types.QHideEvent): void =
  fcQListWidget_virtualbase_hideEvent(self.h, event.h)

proc cQListWidget_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QListWidgetnativeEvent*(self: gen_qlistwidget_types.QListWidget, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool =
  fcQListWidget_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc cQListWidget_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QListWidgetmetric*(self: gen_qlistwidget_types.QListWidget, param1: cint): cint =
  fcQListWidget_virtualbase_metric(self.h, cint(param1))

proc cQListWidget_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QListWidgetinitPainter*(self: gen_qlistwidget_types.QListWidget, painter: gen_qpainter_types.QPainter): void =
  fcQListWidget_virtualbase_initPainter(self.h, painter.h)

proc cQListWidget_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QListWidgetredirected*(self: gen_qlistwidget_types.QListWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQListWidget_virtualbase_redirected(self.h, offset.h), owned: false)

proc cQListWidget_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QListWidgetsharedPainter*(self: gen_qlistwidget_types.QListWidget): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQListWidget_virtualbase_sharedPainter(self.h), owned: false)

proc cQListWidget_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QListWidgetchildEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qcoreevent_types.QChildEvent): void =
  fcQListWidget_virtualbase_childEvent(self.h, event.h)

proc cQListWidget_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QListWidgetcustomEvent*(self: gen_qlistwidget_types.QListWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQListWidget_virtualbase_customEvent(self.h, event.h)

proc cQListWidget_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QListWidgetconnectNotify*(self: gen_qlistwidget_types.QListWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQListWidget_virtualbase_connectNotify(self.h, signal.h)

proc cQListWidget_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QListWidgetdisconnectNotify*(self: gen_qlistwidget_types.QListWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQListWidget_virtualbase_disconnectNotify(self.h, signal.h)

proc cQListWidget_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListWidgetVTable](fcQListWidget_vdata(self))
  let self = QListWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQListWidget* {.inheritable.} = ref object of QListWidget
  vtbl*: cQListWidgetVTable
method metaObject*(self: VirtualQListWidget): gen_qobjectdefs_types.QMetaObject {.base.} =
  QListWidgetmetaObject(self[])
proc cQListWidget_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQListWidget, param1: cstring): pointer {.base.} =
  QListWidgetmetacast(self[], param1)
proc cQListWidget_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQListWidget, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QListWidgetmetacall(self[], param1, param2, param3)
proc cQListWidget_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method setSelectionModel*(self: VirtualQListWidget, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void {.base.} =
  QListWidgetsetSelectionModel(self[], selectionModel)
proc cQListWidget_method_callback_setSelectionModel(self: pointer, selectionModel: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelectionModel(h: selectionModel, owned: false)
  inst.setSelectionModel(slotval1)

method dropEvent*(self: VirtualQListWidget, event: gen_qevent_types.QDropEvent): void {.base.} =
  QListWidgetdropEvent(self[], event)
proc cQListWidget_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

method event*(self: VirtualQListWidget, e: gen_qcoreevent_types.QEvent): bool {.base.} =
  QListWidgetevent(self[], e)
proc cQListWidget_method_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method mimeTypes*(self: VirtualQListWidget): seq[string] {.base.} =
  QListWidgetmimeTypes(self[])
proc cQListWidget_method_callback_mimeTypes(self: pointer): struct_miqt_array {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  var virtualReturn = inst.mimeTypes()
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_miqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_miqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = cast[cstring](if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil)
    if len(virtualReturn[i]) > 0: copyMem(cast[pointer](virtualReturn_i_copy), addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

method mimeData*(self: VirtualQListWidget, items: openArray[gen_qlistwidget_types.QListWidgetItem]): gen_qmimedata_types.QMimeData {.base.} =
  QListWidgetmimeData(self[], items)
proc cQListWidget_method_callback_mimeData(self: pointer, items: struct_miqt_array): pointer {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  var vitems_ma = items
  var vitemsx_ret = newSeq[gen_qlistwidget_types.QListWidgetItem](int(vitems_ma.len))
  let vitems_outCast = cast[ptr UncheckedArray[pointer]](vitems_ma.data)
  for i in 0 ..< vitems_ma.len:
    vitemsx_ret[i] = gen_qlistwidget_types.QListWidgetItem(h: vitems_outCast[i], owned: false)
  c_free(vitems_ma.data)
  let slotval1 = vitemsx_ret
  var virtualReturn = inst.mimeData(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method dropMimeData*(self: VirtualQListWidget, index: cint, data: gen_qmimedata_types.QMimeData, action: cint): bool {.base.} =
  QListWidgetdropMimeData(self[], index, data, action)
proc cQListWidget_method_callback_dropMimeData(self: pointer, index: cint, data: pointer, action: cint): bool {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = index
  let slotval2 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval3 = cint(action)
  var virtualReturn = inst.dropMimeData(slotval1, slotval2, slotval3)
  virtualReturn

method supportedDropActions*(self: VirtualQListWidget): cint {.base.} =
  QListWidgetsupportedDropActions(self[])
proc cQListWidget_method_callback_supportedDropActions(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  var virtualReturn = inst.supportedDropActions()
  cint(virtualReturn)

method visualRect*(self: VirtualQListWidget, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect {.base.} =
  QListWidgetvisualRect(self[], index)
proc cQListWidget_method_callback_visualRect(self: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.visualRect(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method scrollTo*(self: VirtualQListWidget, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void {.base.} =
  QListWidgetscrollTo(self[], index, hint)
proc cQListWidget_method_callback_scrollTo(self: pointer, index: pointer, hint: cint): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = cint(hint)
  inst.scrollTo(slotval1, slotval2)

method indexAt*(self: VirtualQListWidget, p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QListWidgetindexAt(self[], p)
proc cQListWidget_method_callback_indexAt(self: pointer, p: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: p, owned: false)
  var virtualReturn = inst.indexAt(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method doItemsLayout*(self: VirtualQListWidget): void {.base.} =
  QListWidgetdoItemsLayout(self[])
proc cQListWidget_method_callback_doItemsLayout(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  inst.doItemsLayout()

method reset*(self: VirtualQListWidget): void {.base.} =
  QListWidgetreset(self[])
proc cQListWidget_method_callback_reset(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  inst.reset()

method setRootIndex*(self: VirtualQListWidget, index: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QListWidgetsetRootIndex(self[], index)
proc cQListWidget_method_callback_setRootIndex(self: pointer, index: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  inst.setRootIndex(slotval1)

method scrollContentsBy*(self: VirtualQListWidget, dx: cint, dy: cint): void {.base.} =
  QListWidgetscrollContentsBy(self[], dx, dy)
proc cQListWidget_method_callback_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = dx
  let slotval2 = dy
  inst.scrollContentsBy(slotval1, slotval2)

method dataChanged*(self: VirtualQListWidget, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: openArray[cint]): void {.base.} =
  QListWidgetdataChanged(self[], topLeft, bottomRight, roles)
proc cQListWidget_method_callback_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: topLeft, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: bottomRight, owned: false)
  var vroles_ma = roles
  var vrolesx_ret = newSeq[cint](int(vroles_ma.len))
  let vroles_outCast = cast[ptr UncheckedArray[cint]](vroles_ma.data)
  for i in 0 ..< vroles_ma.len:
    vrolesx_ret[i] = vroles_outCast[i]
  c_free(vroles_ma.data)
  let slotval3 = vrolesx_ret
  inst.dataChanged(slotval1, slotval2, slotval3)

method rowsInserted*(self: VirtualQListWidget, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void {.base.} =
  QListWidgetrowsInserted(self[], parent, start, endVal)
proc cQListWidget_method_callback_rowsInserted(self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  let slotval2 = start
  let slotval3 = endVal
  inst.rowsInserted(slotval1, slotval2, slotval3)

method rowsAboutToBeRemoved*(self: VirtualQListWidget, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void {.base.} =
  QListWidgetrowsAboutToBeRemoved(self[], parent, start, endVal)
proc cQListWidget_method_callback_rowsAboutToBeRemoved(self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  let slotval2 = start
  let slotval3 = endVal
  inst.rowsAboutToBeRemoved(slotval1, slotval2, slotval3)

method mouseMoveEvent*(self: VirtualQListWidget, e: gen_qevent_types.QMouseEvent): void {.base.} =
  QListWidgetmouseMoveEvent(self[], e)
proc cQListWidget_method_callback_mouseMoveEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  inst.mouseMoveEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQListWidget, e: gen_qevent_types.QMouseEvent): void {.base.} =
  QListWidgetmouseReleaseEvent(self[], e)
proc cQListWidget_method_callback_mouseReleaseEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  inst.mouseReleaseEvent(slotval1)

method wheelEvent*(self: VirtualQListWidget, e: gen_qevent_types.QWheelEvent): void {.base.} =
  QListWidgetwheelEvent(self[], e)
proc cQListWidget_method_callback_wheelEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: e, owned: false)
  inst.wheelEvent(slotval1)

method timerEvent*(self: VirtualQListWidget, e: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QListWidgettimerEvent(self[], e)
proc cQListWidget_method_callback_timerEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: e, owned: false)
  inst.timerEvent(slotval1)

method resizeEvent*(self: VirtualQListWidget, e: gen_qevent_types.QResizeEvent): void {.base.} =
  QListWidgetresizeEvent(self[], e)
proc cQListWidget_method_callback_resizeEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: e, owned: false)
  inst.resizeEvent(slotval1)

method dragMoveEvent*(self: VirtualQListWidget, e: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QListWidgetdragMoveEvent(self[], e)
proc cQListWidget_method_callback_dragMoveEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: e, owned: false)
  inst.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQListWidget, e: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QListWidgetdragLeaveEvent(self[], e)
proc cQListWidget_method_callback_dragLeaveEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: e, owned: false)
  inst.dragLeaveEvent(slotval1)

method startDrag*(self: VirtualQListWidget, supportedActions: cint): void {.base.} =
  QListWidgetstartDrag(self[], supportedActions)
proc cQListWidget_method_callback_startDrag(self: pointer, supportedActions: cint): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = cint(supportedActions)
  inst.startDrag(slotval1)

method viewOptions*(self: VirtualQListWidget): gen_qstyleoption_types.QStyleOptionViewItem {.base.} =
  QListWidgetviewOptions(self[])
proc cQListWidget_method_callback_viewOptions(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  var virtualReturn = inst.viewOptions()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method paintEvent*(self: VirtualQListWidget, e: gen_qevent_types.QPaintEvent): void {.base.} =
  QListWidgetpaintEvent(self[], e)
proc cQListWidget_method_callback_paintEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: e, owned: false)
  inst.paintEvent(slotval1)

method horizontalOffset*(self: VirtualQListWidget): cint {.base.} =
  QListWidgethorizontalOffset(self[])
proc cQListWidget_method_callback_horizontalOffset(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  var virtualReturn = inst.horizontalOffset()
  virtualReturn

method verticalOffset*(self: VirtualQListWidget): cint {.base.} =
  QListWidgetverticalOffset(self[])
proc cQListWidget_method_callback_verticalOffset(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  var virtualReturn = inst.verticalOffset()
  virtualReturn

method moveCursor*(self: VirtualQListWidget, cursorAction: cint, modifiers: cint): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QListWidgetmoveCursor(self[], cursorAction, modifiers)
proc cQListWidget_method_callback_moveCursor(self: pointer, cursorAction: cint, modifiers: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = cint(cursorAction)
  let slotval2 = cint(modifiers)
  var virtualReturn = inst.moveCursor(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method setSelection*(self: VirtualQListWidget, rect: gen_qrect_types.QRect, command: cint): void {.base.} =
  QListWidgetsetSelection(self[], rect, command)
proc cQListWidget_method_callback_setSelection(self: pointer, rect: pointer, command: cint): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qrect_types.QRect(h: rect, owned: false)
  let slotval2 = cint(command)
  inst.setSelection(slotval1, slotval2)

method visualRegionForSelection*(self: VirtualQListWidget, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion {.base.} =
  QListWidgetvisualRegionForSelection(self[], selection)
proc cQListWidget_method_callback_visualRegionForSelection(self: pointer, selection: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection, owned: false)
  var virtualReturn = inst.visualRegionForSelection(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method selectedIndexes*(self: VirtualQListWidget): seq[gen_qabstractitemmodel_types.QModelIndex] {.base.} =
  QListWidgetselectedIndexes(self[])
proc cQListWidget_method_callback_selectedIndexes(self: pointer): struct_miqt_array {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  var virtualReturn = inst.selectedIndexes()
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn[i].owned = false # TODO move?
    let virtualReturn_i_h = virtualReturn[i].h
    virtualReturn[i].h = nil
    virtualReturn_CArray[i] = virtualReturn_i_h

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

method updateGeometries*(self: VirtualQListWidget): void {.base.} =
  QListWidgetupdateGeometries(self[])
proc cQListWidget_method_callback_updateGeometries(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  inst.updateGeometries()

method isIndexHidden*(self: VirtualQListWidget, index: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QListWidgetisIndexHidden(self[], index)
proc cQListWidget_method_callback_isIndexHidden(self: pointer, index: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.isIndexHidden(slotval1)
  virtualReturn

method selectionChanged*(self: VirtualQListWidget, selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void {.base.} =
  QListWidgetselectionChanged(self[], selected, deselected)
proc cQListWidget_method_callback_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selected, owned: false)
  let slotval2 = gen_qitemselectionmodel_types.QItemSelection(h: deselected, owned: false)
  inst.selectionChanged(slotval1, slotval2)

method currentChanged*(self: VirtualQListWidget, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QListWidgetcurrentChanged(self[], current, previous)
proc cQListWidget_method_callback_currentChanged(self: pointer, current: pointer, previous: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: current, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: previous, owned: false)
  inst.currentChanged(slotval1, slotval2)

method viewportSizeHint*(self: VirtualQListWidget): gen_qsize_types.QSize {.base.} =
  QListWidgetviewportSizeHint(self[])
proc cQListWidget_method_callback_viewportSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  var virtualReturn = inst.viewportSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method keyboardSearch*(self: VirtualQListWidget, search: openArray[char]): void {.base.} =
  QListWidgetkeyboardSearch(self[], search)
proc cQListWidget_method_callback_keyboardSearch(self: pointer, search: struct_miqt_string): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let vsearch_ms = search
  let vsearchx_ret = string.fromBytes(vsearch_ms)
  c_free(vsearch_ms.data)
  let slotval1 = vsearchx_ret
  inst.keyboardSearch(slotval1)

method sizeHintForRow*(self: VirtualQListWidget, row: cint): cint {.base.} =
  QListWidgetsizeHintForRow(self[], row)
proc cQListWidget_method_callback_sizeHintForRow(self: pointer, row: cint): cint {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = row
  var virtualReturn = inst.sizeHintForRow(slotval1)
  virtualReturn

method sizeHintForColumn*(self: VirtualQListWidget, column: cint): cint {.base.} =
  QListWidgetsizeHintForColumn(self[], column)
proc cQListWidget_method_callback_sizeHintForColumn(self: pointer, column: cint): cint {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = column
  var virtualReturn = inst.sizeHintForColumn(slotval1)
  virtualReturn

method inputMethodQuery*(self: VirtualQListWidget, query: cint): gen_qvariant_types.QVariant {.base.} =
  QListWidgetinputMethodQuery(self[], query)
proc cQListWidget_method_callback_inputMethodQuery(self: pointer, query: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = cint(query)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method selectAll*(self: VirtualQListWidget): void {.base.} =
  QListWidgetselectAll(self[])
proc cQListWidget_method_callback_selectAll(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  inst.selectAll()

method updateEditorData*(self: VirtualQListWidget): void {.base.} =
  QListWidgetupdateEditorData(self[])
proc cQListWidget_method_callback_updateEditorData(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  inst.updateEditorData()

method updateEditorGeometries*(self: VirtualQListWidget): void {.base.} =
  QListWidgetupdateEditorGeometries(self[])
proc cQListWidget_method_callback_updateEditorGeometries(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  inst.updateEditorGeometries()

method verticalScrollbarAction*(self: VirtualQListWidget, action: cint): void {.base.} =
  QListWidgetverticalScrollbarAction(self[], action)
proc cQListWidget_method_callback_verticalScrollbarAction(self: pointer, action: cint): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = action
  inst.verticalScrollbarAction(slotval1)

method horizontalScrollbarAction*(self: VirtualQListWidget, action: cint): void {.base.} =
  QListWidgethorizontalScrollbarAction(self[], action)
proc cQListWidget_method_callback_horizontalScrollbarAction(self: pointer, action: cint): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = action
  inst.horizontalScrollbarAction(slotval1)

method verticalScrollbarValueChanged*(self: VirtualQListWidget, value: cint): void {.base.} =
  QListWidgetverticalScrollbarValueChanged(self[], value)
proc cQListWidget_method_callback_verticalScrollbarValueChanged(self: pointer, value: cint): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = value
  inst.verticalScrollbarValueChanged(slotval1)

method horizontalScrollbarValueChanged*(self: VirtualQListWidget, value: cint): void {.base.} =
  QListWidgethorizontalScrollbarValueChanged(self[], value)
proc cQListWidget_method_callback_horizontalScrollbarValueChanged(self: pointer, value: cint): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = value
  inst.horizontalScrollbarValueChanged(slotval1)

method closeEditor*(self: VirtualQListWidget, editor: gen_qwidget_types.QWidget, hint: cint): void {.base.} =
  QListWidgetcloseEditor(self[], editor, hint)
proc cQListWidget_method_callback_closeEditor(self: pointer, editor: pointer, hint: cint): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  let slotval2 = cint(hint)
  inst.closeEditor(slotval1, slotval2)

method commitData*(self: VirtualQListWidget, editor: gen_qwidget_types.QWidget): void {.base.} =
  QListWidgetcommitData(self[], editor)
proc cQListWidget_method_callback_commitData(self: pointer, editor: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  inst.commitData(slotval1)

method editorDestroyed*(self: VirtualQListWidget, editor: gen_qobject_types.QObject): void {.base.} =
  QListWidgeteditorDestroyed(self[], editor)
proc cQListWidget_method_callback_editorDestroyed(self: pointer, editor: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: editor, owned: false)
  inst.editorDestroyed(slotval1)

method edit*(self: VirtualQListWidget, index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QListWidgetedit(self[], index, trigger, event)
proc cQListWidget_method_callback_edit2(self: pointer, index: pointer, trigger: cint, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = cint(trigger)
  let slotval3 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.edit(slotval1, slotval2, slotval3)
  virtualReturn

method selectionCommand*(self: VirtualQListWidget, index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint {.base.} =
  QListWidgetselectionCommand(self[], index, event)
proc cQListWidget_method_callback_selectionCommand(self: pointer, index: pointer, event: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.selectionCommand(slotval1, slotval2)
  cint(virtualReturn)

method focusNextPrevChild*(self: VirtualQListWidget, next: bool): bool {.base.} =
  QListWidgetfocusNextPrevChild(self[], next)
proc cQListWidget_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method viewportEvent*(self: VirtualQListWidget, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QListWidgetviewportEvent(self[], event)
proc cQListWidget_method_callback_viewportEvent(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.viewportEvent(slotval1)
  virtualReturn

method mousePressEvent*(self: VirtualQListWidget, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QListWidgetmousePressEvent(self[], event)
proc cQListWidget_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQListWidget, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QListWidgetmouseDoubleClickEvent(self[], event)
proc cQListWidget_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method dragEnterEvent*(self: VirtualQListWidget, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QListWidgetdragEnterEvent(self[], event)
proc cQListWidget_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

method focusInEvent*(self: VirtualQListWidget, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QListWidgetfocusInEvent(self[], event)
proc cQListWidget_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQListWidget, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QListWidgetfocusOutEvent(self[], event)
proc cQListWidget_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

method keyPressEvent*(self: VirtualQListWidget, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QListWidgetkeyPressEvent(self[], event)
proc cQListWidget_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyPressEvent(slotval1)

method inputMethodEvent*(self: VirtualQListWidget, event: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QListWidgetinputMethodEvent(self[], event)
proc cQListWidget_method_callback_inputMethodEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event, owned: false)
  inst.inputMethodEvent(slotval1)

method eventFilter*(self: VirtualQListWidget, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QListWidgeteventFilter(self[], objectVal, event)
proc cQListWidget_method_callback_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: objectVal, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method minimumSizeHint*(self: VirtualQListWidget): gen_qsize_types.QSize {.base.} =
  QListWidgetminimumSizeHint(self[])
proc cQListWidget_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sizeHint*(self: VirtualQListWidget): gen_qsize_types.QSize {.base.} =
  QListWidgetsizeHint(self[])
proc cQListWidget_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method setupViewport*(self: VirtualQListWidget, viewport: gen_qwidget_types.QWidget): void {.base.} =
  QListWidgetsetupViewport(self[], viewport)
proc cQListWidget_method_callback_setupViewport(self: pointer, viewport: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: viewport, owned: false)
  inst.setupViewport(slotval1)

method contextMenuEvent*(self: VirtualQListWidget, param1: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QListWidgetcontextMenuEvent(self[], param1)
proc cQListWidget_method_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  inst.contextMenuEvent(slotval1)

method changeEvent*(self: VirtualQListWidget, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QListWidgetchangeEvent(self[], param1)
proc cQListWidget_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.changeEvent(slotval1)

method devType*(self: VirtualQListWidget): cint {.base.} =
  QListWidgetdevType(self[])
proc cQListWidget_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

method setVisible*(self: VirtualQListWidget, visible: bool): void {.base.} =
  QListWidgetsetVisible(self[], visible)
proc cQListWidget_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

method heightForWidth*(self: VirtualQListWidget, param1: cint): cint {.base.} =
  QListWidgetheightForWidth(self[], param1)
proc cQListWidget_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQListWidget): bool {.base.} =
  QListWidgethasHeightForWidth(self[])
proc cQListWidget_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQListWidget): gen_qpaintengine_types.QPaintEngine {.base.} =
  QListWidgetpaintEngine(self[])
proc cQListWidget_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method keyReleaseEvent*(self: VirtualQListWidget, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QListWidgetkeyReleaseEvent(self[], event)
proc cQListWidget_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

method enterEvent*(self: VirtualQListWidget, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QListWidgetenterEvent(self[], event)
proc cQListWidget_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

method leaveEvent*(self: VirtualQListWidget, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QListWidgetleaveEvent(self[], event)
proc cQListWidget_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

method moveEvent*(self: VirtualQListWidget, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QListWidgetmoveEvent(self[], event)
proc cQListWidget_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

method closeEvent*(self: VirtualQListWidget, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QListWidgetcloseEvent(self[], event)
proc cQListWidget_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

method tabletEvent*(self: VirtualQListWidget, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QListWidgettabletEvent(self[], event)
proc cQListWidget_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

method actionEvent*(self: VirtualQListWidget, event: gen_qevent_types.QActionEvent): void {.base.} =
  QListWidgetactionEvent(self[], event)
proc cQListWidget_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

method showEvent*(self: VirtualQListWidget, event: gen_qevent_types.QShowEvent): void {.base.} =
  QListWidgetshowEvent(self[], event)
proc cQListWidget_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

method hideEvent*(self: VirtualQListWidget, event: gen_qevent_types.QHideEvent): void {.base.} =
  QListWidgethideEvent(self[], event)
proc cQListWidget_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

method nativeEvent*(self: VirtualQListWidget, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.base.} =
  QListWidgetnativeEvent(self[], eventType, message, resultVal)
proc cQListWidget_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method metric*(self: VirtualQListWidget, param1: cint): cint {.base.} =
  QListWidgetmetric(self[], param1)
proc cQListWidget_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQListWidget, painter: gen_qpainter_types.QPainter): void {.base.} =
  QListWidgetinitPainter(self[], painter)
proc cQListWidget_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

method redirected*(self: VirtualQListWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QListWidgetredirected(self[], offset)
proc cQListWidget_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQListWidget): gen_qpainter_types.QPainter {.base.} =
  QListWidgetsharedPainter(self[])
proc cQListWidget_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method childEvent*(self: VirtualQListWidget, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QListWidgetchildEvent(self[], event)
proc cQListWidget_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQListWidget, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QListWidgetcustomEvent(self[], event)
proc cQListWidget_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQListWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QListWidgetconnectNotify(self[], signal)
proc cQListWidget_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQListWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QListWidgetdisconnectNotify(self[], signal)
proc cQListWidget_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListWidget](fcQListWidget_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc items*(self: gen_qlistwidget_types.QListWidget, data: gen_qmimedata_types.QMimeData): seq[gen_qlistwidget_types.QListWidgetItem] =
  var v_ma = fcQListWidget_protectedbase_items(self.h, data.h)
  var vx_ret = newSeq[gen_qlistwidget_types.QListWidgetItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qlistwidget_types.QListWidgetItem(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc indexFromItem*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQListWidget_protectedbase_indexFromItem(self.h, item.h), owned: true)

proc indexFromItem*(self: gen_qlistwidget_types.QListWidget, item: gen_qlistwidget_types.QListWidgetItem): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQListWidget_protectedbase_indexFromItemWithItem(self.h, item.h), owned: true)

proc itemFromIndex*(self: gen_qlistwidget_types.QListWidget, index: gen_qabstractitemmodel_types.QModelIndex): gen_qlistwidget_types.QListWidgetItem =
  gen_qlistwidget_types.QListWidgetItem(h: fcQListWidget_protectedbase_itemFromIndex(self.h, index.h), owned: false)

proc resizeContents*(self: gen_qlistwidget_types.QListWidget, width: cint, height: cint): void =
  fcQListWidget_protectedbase_resizeContents(self.h, width, height)

proc contentsSize*(self: gen_qlistwidget_types.QListWidget): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQListWidget_protectedbase_contentsSize(self.h), owned: true)

proc rectForIndex*(self: gen_qlistwidget_types.QListWidget, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQListWidget_protectedbase_rectForIndex(self.h, index.h), owned: true)

proc setPositionForIndex*(self: gen_qlistwidget_types.QListWidget, position: gen_qpoint_types.QPoint, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQListWidget_protectedbase_setPositionForIndex(self.h, position.h, index.h)

proc setHorizontalStepsPerItem*(self: gen_qlistwidget_types.QListWidget, steps: cint): void =
  fcQListWidget_protectedbase_setHorizontalStepsPerItem(self.h, steps)

proc horizontalStepsPerItem*(self: gen_qlistwidget_types.QListWidget): cint =
  fcQListWidget_protectedbase_horizontalStepsPerItem(self.h)

proc setVerticalStepsPerItem*(self: gen_qlistwidget_types.QListWidget, steps: cint): void =
  fcQListWidget_protectedbase_setVerticalStepsPerItem(self.h, steps)

proc verticalStepsPerItem*(self: gen_qlistwidget_types.QListWidget): cint =
  fcQListWidget_protectedbase_verticalStepsPerItem(self.h)

proc state*(self: gen_qlistwidget_types.QListWidget): cint =
  cint(fcQListWidget_protectedbase_state(self.h))

proc setState*(self: gen_qlistwidget_types.QListWidget, state: cint): void =
  fcQListWidget_protectedbase_setState(self.h, cint(state))

proc scheduleDelayedItemsLayout*(self: gen_qlistwidget_types.QListWidget): void =
  fcQListWidget_protectedbase_scheduleDelayedItemsLayout(self.h)

proc executeDelayedItemsLayout*(self: gen_qlistwidget_types.QListWidget): void =
  fcQListWidget_protectedbase_executeDelayedItemsLayout(self.h)

proc setDirtyRegion*(self: gen_qlistwidget_types.QListWidget, region: gen_qregion_types.QRegion): void =
  fcQListWidget_protectedbase_setDirtyRegion(self.h, region.h)

proc scrollDirtyRegion*(self: gen_qlistwidget_types.QListWidget, dx: cint, dy: cint): void =
  fcQListWidget_protectedbase_scrollDirtyRegion(self.h, dx, dy)

proc dirtyRegionOffset*(self: gen_qlistwidget_types.QListWidget): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQListWidget_protectedbase_dirtyRegionOffset(self.h), owned: true)

proc startAutoScroll*(self: gen_qlistwidget_types.QListWidget): void =
  fcQListWidget_protectedbase_startAutoScroll(self.h)

proc stopAutoScroll*(self: gen_qlistwidget_types.QListWidget): void =
  fcQListWidget_protectedbase_stopAutoScroll(self.h)

proc doAutoScroll*(self: gen_qlistwidget_types.QListWidget): void =
  fcQListWidget_protectedbase_doAutoScroll(self.h)

proc dropIndicatorPosition*(self: gen_qlistwidget_types.QListWidget): cint =
  cint(fcQListWidget_protectedbase_dropIndicatorPosition(self.h))

proc setViewportMargins*(self: gen_qlistwidget_types.QListWidget, left: cint, top: cint, right: cint, bottom: cint): void =
  fcQListWidget_protectedbase_setViewportMargins(self.h, left, top, right, bottom)

proc viewportMargins*(self: gen_qlistwidget_types.QListWidget): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQListWidget_protectedbase_viewportMargins(self.h), owned: true)

proc drawFrame*(self: gen_qlistwidget_types.QListWidget, param1: gen_qpainter_types.QPainter): void =
  fcQListWidget_protectedbase_drawFrame(self.h, param1.h)

proc initStyleOption*(self: gen_qlistwidget_types.QListWidget, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fcQListWidget_protectedbase_initStyleOption(self.h, option.h)

proc updateMicroFocus*(self: gen_qlistwidget_types.QListWidget): void =
  fcQListWidget_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qlistwidget_types.QListWidget): void =
  fcQListWidget_protectedbase_create(self.h)

proc destroy*(self: gen_qlistwidget_types.QListWidget): void =
  fcQListWidget_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qlistwidget_types.QListWidget): bool =
  fcQListWidget_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qlistwidget_types.QListWidget): bool =
  fcQListWidget_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qlistwidget_types.QListWidget): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQListWidget_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qlistwidget_types.QListWidget): cint =
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
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QListWidgetVTable](fcQListWidget_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQListWidget_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQListWidget_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQListWidget_vtable_callback_metacall
  if not isNil(vtbl[].setSelectionModel):
    vtbl[].vtbl.setSelectionModel = cQListWidget_vtable_callback_setSelectionModel
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQListWidget_vtable_callback_dropEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQListWidget_vtable_callback_event
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = cQListWidget_vtable_callback_mimeTypes
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = cQListWidget_vtable_callback_mimeData
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = cQListWidget_vtable_callback_dropMimeData
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = cQListWidget_vtable_callback_supportedDropActions
  if not isNil(vtbl[].visualRect):
    vtbl[].vtbl.visualRect = cQListWidget_vtable_callback_visualRect
  if not isNil(vtbl[].scrollTo):
    vtbl[].vtbl.scrollTo = cQListWidget_vtable_callback_scrollTo
  if not isNil(vtbl[].indexAt):
    vtbl[].vtbl.indexAt = cQListWidget_vtable_callback_indexAt
  if not isNil(vtbl[].doItemsLayout):
    vtbl[].vtbl.doItemsLayout = cQListWidget_vtable_callback_doItemsLayout
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = cQListWidget_vtable_callback_reset
  if not isNil(vtbl[].setRootIndex):
    vtbl[].vtbl.setRootIndex = cQListWidget_vtable_callback_setRootIndex
  if not isNil(vtbl[].scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = cQListWidget_vtable_callback_scrollContentsBy
  if not isNil(vtbl[].dataChanged):
    vtbl[].vtbl.dataChanged = cQListWidget_vtable_callback_dataChanged
  if not isNil(vtbl[].rowsInserted):
    vtbl[].vtbl.rowsInserted = cQListWidget_vtable_callback_rowsInserted
  if not isNil(vtbl[].rowsAboutToBeRemoved):
    vtbl[].vtbl.rowsAboutToBeRemoved = cQListWidget_vtable_callback_rowsAboutToBeRemoved
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQListWidget_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQListWidget_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQListWidget_vtable_callback_wheelEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQListWidget_vtable_callback_timerEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQListWidget_vtable_callback_resizeEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQListWidget_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQListWidget_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].startDrag):
    vtbl[].vtbl.startDrag = cQListWidget_vtable_callback_startDrag
  if not isNil(vtbl[].viewOptions):
    vtbl[].vtbl.viewOptions = cQListWidget_vtable_callback_viewOptions
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQListWidget_vtable_callback_paintEvent
  if not isNil(vtbl[].horizontalOffset):
    vtbl[].vtbl.horizontalOffset = cQListWidget_vtable_callback_horizontalOffset
  if not isNil(vtbl[].verticalOffset):
    vtbl[].vtbl.verticalOffset = cQListWidget_vtable_callback_verticalOffset
  if not isNil(vtbl[].moveCursor):
    vtbl[].vtbl.moveCursor = cQListWidget_vtable_callback_moveCursor
  if not isNil(vtbl[].setSelection):
    vtbl[].vtbl.setSelection = cQListWidget_vtable_callback_setSelection
  if not isNil(vtbl[].visualRegionForSelection):
    vtbl[].vtbl.visualRegionForSelection = cQListWidget_vtable_callback_visualRegionForSelection
  if not isNil(vtbl[].selectedIndexes):
    vtbl[].vtbl.selectedIndexes = cQListWidget_vtable_callback_selectedIndexes
  if not isNil(vtbl[].updateGeometries):
    vtbl[].vtbl.updateGeometries = cQListWidget_vtable_callback_updateGeometries
  if not isNil(vtbl[].isIndexHidden):
    vtbl[].vtbl.isIndexHidden = cQListWidget_vtable_callback_isIndexHidden
  if not isNil(vtbl[].selectionChanged):
    vtbl[].vtbl.selectionChanged = cQListWidget_vtable_callback_selectionChanged
  if not isNil(vtbl[].currentChanged):
    vtbl[].vtbl.currentChanged = cQListWidget_vtable_callback_currentChanged
  if not isNil(vtbl[].viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = cQListWidget_vtable_callback_viewportSizeHint
  if not isNil(vtbl[].keyboardSearch):
    vtbl[].vtbl.keyboardSearch = cQListWidget_vtable_callback_keyboardSearch
  if not isNil(vtbl[].sizeHintForRow):
    vtbl[].vtbl.sizeHintForRow = cQListWidget_vtable_callback_sizeHintForRow
  if not isNil(vtbl[].sizeHintForColumn):
    vtbl[].vtbl.sizeHintForColumn = cQListWidget_vtable_callback_sizeHintForColumn
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQListWidget_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].selectAll):
    vtbl[].vtbl.selectAll = cQListWidget_vtable_callback_selectAll
  if not isNil(vtbl[].updateEditorData):
    vtbl[].vtbl.updateEditorData = cQListWidget_vtable_callback_updateEditorData
  if not isNil(vtbl[].updateEditorGeometries):
    vtbl[].vtbl.updateEditorGeometries = cQListWidget_vtable_callback_updateEditorGeometries
  if not isNil(vtbl[].verticalScrollbarAction):
    vtbl[].vtbl.verticalScrollbarAction = cQListWidget_vtable_callback_verticalScrollbarAction
  if not isNil(vtbl[].horizontalScrollbarAction):
    vtbl[].vtbl.horizontalScrollbarAction = cQListWidget_vtable_callback_horizontalScrollbarAction
  if not isNil(vtbl[].verticalScrollbarValueChanged):
    vtbl[].vtbl.verticalScrollbarValueChanged = cQListWidget_vtable_callback_verticalScrollbarValueChanged
  if not isNil(vtbl[].horizontalScrollbarValueChanged):
    vtbl[].vtbl.horizontalScrollbarValueChanged = cQListWidget_vtable_callback_horizontalScrollbarValueChanged
  if not isNil(vtbl[].closeEditor):
    vtbl[].vtbl.closeEditor = cQListWidget_vtable_callback_closeEditor
  if not isNil(vtbl[].commitData):
    vtbl[].vtbl.commitData = cQListWidget_vtable_callback_commitData
  if not isNil(vtbl[].editorDestroyed):
    vtbl[].vtbl.editorDestroyed = cQListWidget_vtable_callback_editorDestroyed
  if not isNil(vtbl[].edit2):
    vtbl[].vtbl.edit2 = cQListWidget_vtable_callback_edit2
  if not isNil(vtbl[].selectionCommand):
    vtbl[].vtbl.selectionCommand = cQListWidget_vtable_callback_selectionCommand
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQListWidget_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].viewportEvent):
    vtbl[].vtbl.viewportEvent = cQListWidget_vtable_callback_viewportEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQListWidget_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQListWidget_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQListWidget_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQListWidget_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQListWidget_vtable_callback_focusOutEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQListWidget_vtable_callback_keyPressEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQListWidget_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQListWidget_vtable_callback_eventFilter
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQListWidget_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQListWidget_vtable_callback_sizeHint
  if not isNil(vtbl[].setupViewport):
    vtbl[].vtbl.setupViewport = cQListWidget_vtable_callback_setupViewport
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQListWidget_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQListWidget_vtable_callback_changeEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQListWidget_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQListWidget_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQListWidget_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQListWidget_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQListWidget_vtable_callback_paintEngine
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQListWidget_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQListWidget_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQListWidget_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQListWidget_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQListWidget_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQListWidget_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQListWidget_vtable_callback_actionEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQListWidget_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQListWidget_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQListWidget_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQListWidget_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQListWidget_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQListWidget_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQListWidget_vtable_callback_sharedPainter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQListWidget_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQListWidget_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQListWidget_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQListWidget_vtable_callback_disconnectNotify
  gen_qlistwidget_types.QListWidget(h: fcQListWidget_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qlistwidget_types.QListWidget,
    vtbl: ref QListWidgetVTable = nil): gen_qlistwidget_types.QListWidget =
  let vtbl = if vtbl == nil: new QListWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QListWidgetVTable](fcQListWidget_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQListWidget_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQListWidget_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQListWidget_vtable_callback_metacall
  if not isNil(vtbl[].setSelectionModel):
    vtbl[].vtbl.setSelectionModel = cQListWidget_vtable_callback_setSelectionModel
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQListWidget_vtable_callback_dropEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQListWidget_vtable_callback_event
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = cQListWidget_vtable_callback_mimeTypes
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = cQListWidget_vtable_callback_mimeData
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = cQListWidget_vtable_callback_dropMimeData
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = cQListWidget_vtable_callback_supportedDropActions
  if not isNil(vtbl[].visualRect):
    vtbl[].vtbl.visualRect = cQListWidget_vtable_callback_visualRect
  if not isNil(vtbl[].scrollTo):
    vtbl[].vtbl.scrollTo = cQListWidget_vtable_callback_scrollTo
  if not isNil(vtbl[].indexAt):
    vtbl[].vtbl.indexAt = cQListWidget_vtable_callback_indexAt
  if not isNil(vtbl[].doItemsLayout):
    vtbl[].vtbl.doItemsLayout = cQListWidget_vtable_callback_doItemsLayout
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = cQListWidget_vtable_callback_reset
  if not isNil(vtbl[].setRootIndex):
    vtbl[].vtbl.setRootIndex = cQListWidget_vtable_callback_setRootIndex
  if not isNil(vtbl[].scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = cQListWidget_vtable_callback_scrollContentsBy
  if not isNil(vtbl[].dataChanged):
    vtbl[].vtbl.dataChanged = cQListWidget_vtable_callback_dataChanged
  if not isNil(vtbl[].rowsInserted):
    vtbl[].vtbl.rowsInserted = cQListWidget_vtable_callback_rowsInserted
  if not isNil(vtbl[].rowsAboutToBeRemoved):
    vtbl[].vtbl.rowsAboutToBeRemoved = cQListWidget_vtable_callback_rowsAboutToBeRemoved
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQListWidget_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQListWidget_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQListWidget_vtable_callback_wheelEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQListWidget_vtable_callback_timerEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQListWidget_vtable_callback_resizeEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQListWidget_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQListWidget_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].startDrag):
    vtbl[].vtbl.startDrag = cQListWidget_vtable_callback_startDrag
  if not isNil(vtbl[].viewOptions):
    vtbl[].vtbl.viewOptions = cQListWidget_vtable_callback_viewOptions
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQListWidget_vtable_callback_paintEvent
  if not isNil(vtbl[].horizontalOffset):
    vtbl[].vtbl.horizontalOffset = cQListWidget_vtable_callback_horizontalOffset
  if not isNil(vtbl[].verticalOffset):
    vtbl[].vtbl.verticalOffset = cQListWidget_vtable_callback_verticalOffset
  if not isNil(vtbl[].moveCursor):
    vtbl[].vtbl.moveCursor = cQListWidget_vtable_callback_moveCursor
  if not isNil(vtbl[].setSelection):
    vtbl[].vtbl.setSelection = cQListWidget_vtable_callback_setSelection
  if not isNil(vtbl[].visualRegionForSelection):
    vtbl[].vtbl.visualRegionForSelection = cQListWidget_vtable_callback_visualRegionForSelection
  if not isNil(vtbl[].selectedIndexes):
    vtbl[].vtbl.selectedIndexes = cQListWidget_vtable_callback_selectedIndexes
  if not isNil(vtbl[].updateGeometries):
    vtbl[].vtbl.updateGeometries = cQListWidget_vtable_callback_updateGeometries
  if not isNil(vtbl[].isIndexHidden):
    vtbl[].vtbl.isIndexHidden = cQListWidget_vtable_callback_isIndexHidden
  if not isNil(vtbl[].selectionChanged):
    vtbl[].vtbl.selectionChanged = cQListWidget_vtable_callback_selectionChanged
  if not isNil(vtbl[].currentChanged):
    vtbl[].vtbl.currentChanged = cQListWidget_vtable_callback_currentChanged
  if not isNil(vtbl[].viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = cQListWidget_vtable_callback_viewportSizeHint
  if not isNil(vtbl[].keyboardSearch):
    vtbl[].vtbl.keyboardSearch = cQListWidget_vtable_callback_keyboardSearch
  if not isNil(vtbl[].sizeHintForRow):
    vtbl[].vtbl.sizeHintForRow = cQListWidget_vtable_callback_sizeHintForRow
  if not isNil(vtbl[].sizeHintForColumn):
    vtbl[].vtbl.sizeHintForColumn = cQListWidget_vtable_callback_sizeHintForColumn
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQListWidget_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].selectAll):
    vtbl[].vtbl.selectAll = cQListWidget_vtable_callback_selectAll
  if not isNil(vtbl[].updateEditorData):
    vtbl[].vtbl.updateEditorData = cQListWidget_vtable_callback_updateEditorData
  if not isNil(vtbl[].updateEditorGeometries):
    vtbl[].vtbl.updateEditorGeometries = cQListWidget_vtable_callback_updateEditorGeometries
  if not isNil(vtbl[].verticalScrollbarAction):
    vtbl[].vtbl.verticalScrollbarAction = cQListWidget_vtable_callback_verticalScrollbarAction
  if not isNil(vtbl[].horizontalScrollbarAction):
    vtbl[].vtbl.horizontalScrollbarAction = cQListWidget_vtable_callback_horizontalScrollbarAction
  if not isNil(vtbl[].verticalScrollbarValueChanged):
    vtbl[].vtbl.verticalScrollbarValueChanged = cQListWidget_vtable_callback_verticalScrollbarValueChanged
  if not isNil(vtbl[].horizontalScrollbarValueChanged):
    vtbl[].vtbl.horizontalScrollbarValueChanged = cQListWidget_vtable_callback_horizontalScrollbarValueChanged
  if not isNil(vtbl[].closeEditor):
    vtbl[].vtbl.closeEditor = cQListWidget_vtable_callback_closeEditor
  if not isNil(vtbl[].commitData):
    vtbl[].vtbl.commitData = cQListWidget_vtable_callback_commitData
  if not isNil(vtbl[].editorDestroyed):
    vtbl[].vtbl.editorDestroyed = cQListWidget_vtable_callback_editorDestroyed
  if not isNil(vtbl[].edit2):
    vtbl[].vtbl.edit2 = cQListWidget_vtable_callback_edit2
  if not isNil(vtbl[].selectionCommand):
    vtbl[].vtbl.selectionCommand = cQListWidget_vtable_callback_selectionCommand
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQListWidget_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].viewportEvent):
    vtbl[].vtbl.viewportEvent = cQListWidget_vtable_callback_viewportEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQListWidget_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQListWidget_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQListWidget_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQListWidget_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQListWidget_vtable_callback_focusOutEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQListWidget_vtable_callback_keyPressEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQListWidget_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQListWidget_vtable_callback_eventFilter
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQListWidget_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQListWidget_vtable_callback_sizeHint
  if not isNil(vtbl[].setupViewport):
    vtbl[].vtbl.setupViewport = cQListWidget_vtable_callback_setupViewport
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQListWidget_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQListWidget_vtable_callback_changeEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQListWidget_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQListWidget_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQListWidget_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQListWidget_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQListWidget_vtable_callback_paintEngine
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQListWidget_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQListWidget_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQListWidget_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQListWidget_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQListWidget_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQListWidget_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQListWidget_vtable_callback_actionEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQListWidget_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQListWidget_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQListWidget_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQListWidget_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQListWidget_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQListWidget_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQListWidget_vtable_callback_sharedPainter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQListWidget_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQListWidget_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQListWidget_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQListWidget_vtable_callback_disconnectNotify
  gen_qlistwidget_types.QListWidget(h: fcQListWidget_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQListWidget_mvtbl = cQListWidgetVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQListWidget()[])](self.fcQListWidget_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQListWidget_method_callback_metaObject,
  metacast: cQListWidget_method_callback_metacast,
  metacall: cQListWidget_method_callback_metacall,
  setSelectionModel: cQListWidget_method_callback_setSelectionModel,
  dropEvent: cQListWidget_method_callback_dropEvent,
  event: cQListWidget_method_callback_event,
  mimeTypes: cQListWidget_method_callback_mimeTypes,
  mimeData: cQListWidget_method_callback_mimeData,
  dropMimeData: cQListWidget_method_callback_dropMimeData,
  supportedDropActions: cQListWidget_method_callback_supportedDropActions,
  visualRect: cQListWidget_method_callback_visualRect,
  scrollTo: cQListWidget_method_callback_scrollTo,
  indexAt: cQListWidget_method_callback_indexAt,
  doItemsLayout: cQListWidget_method_callback_doItemsLayout,
  reset: cQListWidget_method_callback_reset,
  setRootIndex: cQListWidget_method_callback_setRootIndex,
  scrollContentsBy: cQListWidget_method_callback_scrollContentsBy,
  dataChanged: cQListWidget_method_callback_dataChanged,
  rowsInserted: cQListWidget_method_callback_rowsInserted,
  rowsAboutToBeRemoved: cQListWidget_method_callback_rowsAboutToBeRemoved,
  mouseMoveEvent: cQListWidget_method_callback_mouseMoveEvent,
  mouseReleaseEvent: cQListWidget_method_callback_mouseReleaseEvent,
  wheelEvent: cQListWidget_method_callback_wheelEvent,
  timerEvent: cQListWidget_method_callback_timerEvent,
  resizeEvent: cQListWidget_method_callback_resizeEvent,
  dragMoveEvent: cQListWidget_method_callback_dragMoveEvent,
  dragLeaveEvent: cQListWidget_method_callback_dragLeaveEvent,
  startDrag: cQListWidget_method_callback_startDrag,
  viewOptions: cQListWidget_method_callback_viewOptions,
  paintEvent: cQListWidget_method_callback_paintEvent,
  horizontalOffset: cQListWidget_method_callback_horizontalOffset,
  verticalOffset: cQListWidget_method_callback_verticalOffset,
  moveCursor: cQListWidget_method_callback_moveCursor,
  setSelection: cQListWidget_method_callback_setSelection,
  visualRegionForSelection: cQListWidget_method_callback_visualRegionForSelection,
  selectedIndexes: cQListWidget_method_callback_selectedIndexes,
  updateGeometries: cQListWidget_method_callback_updateGeometries,
  isIndexHidden: cQListWidget_method_callback_isIndexHidden,
  selectionChanged: cQListWidget_method_callback_selectionChanged,
  currentChanged: cQListWidget_method_callback_currentChanged,
  viewportSizeHint: cQListWidget_method_callback_viewportSizeHint,
  keyboardSearch: cQListWidget_method_callback_keyboardSearch,
  sizeHintForRow: cQListWidget_method_callback_sizeHintForRow,
  sizeHintForColumn: cQListWidget_method_callback_sizeHintForColumn,
  inputMethodQuery: cQListWidget_method_callback_inputMethodQuery,
  selectAll: cQListWidget_method_callback_selectAll,
  updateEditorData: cQListWidget_method_callback_updateEditorData,
  updateEditorGeometries: cQListWidget_method_callback_updateEditorGeometries,
  verticalScrollbarAction: cQListWidget_method_callback_verticalScrollbarAction,
  horizontalScrollbarAction: cQListWidget_method_callback_horizontalScrollbarAction,
  verticalScrollbarValueChanged: cQListWidget_method_callback_verticalScrollbarValueChanged,
  horizontalScrollbarValueChanged: cQListWidget_method_callback_horizontalScrollbarValueChanged,
  closeEditor: cQListWidget_method_callback_closeEditor,
  commitData: cQListWidget_method_callback_commitData,
  editorDestroyed: cQListWidget_method_callback_editorDestroyed,
  edit2: cQListWidget_method_callback_edit2,
  selectionCommand: cQListWidget_method_callback_selectionCommand,
  focusNextPrevChild: cQListWidget_method_callback_focusNextPrevChild,
  viewportEvent: cQListWidget_method_callback_viewportEvent,
  mousePressEvent: cQListWidget_method_callback_mousePressEvent,
  mouseDoubleClickEvent: cQListWidget_method_callback_mouseDoubleClickEvent,
  dragEnterEvent: cQListWidget_method_callback_dragEnterEvent,
  focusInEvent: cQListWidget_method_callback_focusInEvent,
  focusOutEvent: cQListWidget_method_callback_focusOutEvent,
  keyPressEvent: cQListWidget_method_callback_keyPressEvent,
  inputMethodEvent: cQListWidget_method_callback_inputMethodEvent,
  eventFilter: cQListWidget_method_callback_eventFilter,
  minimumSizeHint: cQListWidget_method_callback_minimumSizeHint,
  sizeHint: cQListWidget_method_callback_sizeHint,
  setupViewport: cQListWidget_method_callback_setupViewport,
  contextMenuEvent: cQListWidget_method_callback_contextMenuEvent,
  changeEvent: cQListWidget_method_callback_changeEvent,
  devType: cQListWidget_method_callback_devType,
  setVisible: cQListWidget_method_callback_setVisible,
  heightForWidth: cQListWidget_method_callback_heightForWidth,
  hasHeightForWidth: cQListWidget_method_callback_hasHeightForWidth,
  paintEngine: cQListWidget_method_callback_paintEngine,
  keyReleaseEvent: cQListWidget_method_callback_keyReleaseEvent,
  enterEvent: cQListWidget_method_callback_enterEvent,
  leaveEvent: cQListWidget_method_callback_leaveEvent,
  moveEvent: cQListWidget_method_callback_moveEvent,
  closeEvent: cQListWidget_method_callback_closeEvent,
  tabletEvent: cQListWidget_method_callback_tabletEvent,
  actionEvent: cQListWidget_method_callback_actionEvent,
  showEvent: cQListWidget_method_callback_showEvent,
  hideEvent: cQListWidget_method_callback_hideEvent,
  nativeEvent: cQListWidget_method_callback_nativeEvent,
  metric: cQListWidget_method_callback_metric,
  initPainter: cQListWidget_method_callback_initPainter,
  redirected: cQListWidget_method_callback_redirected,
  sharedPainter: cQListWidget_method_callback_sharedPainter,
  childEvent: cQListWidget_method_callback_childEvent,
  customEvent: cQListWidget_method_callback_customEvent,
  connectNotify: cQListWidget_method_callback_connectNotify,
  disconnectNotify: cQListWidget_method_callback_disconnectNotify,
)
proc create*(T: type gen_qlistwidget_types.QListWidget,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQListWidget) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQListWidget_new(addr(cQListWidget_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qlistwidget_types.QListWidget,
    inst: VirtualQListWidget) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQListWidget_new2(addr(cQListWidget_mvtbl), addr(inst[]))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qlistwidget_types.QListWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQListWidget_staticMetaObject())
