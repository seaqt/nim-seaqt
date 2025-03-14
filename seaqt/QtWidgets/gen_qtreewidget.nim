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


type QTreeWidgetItemItemTypeEnum* = distinct cint
template Type*(_: type QTreeWidgetItemItemTypeEnum): untyped = 0
template UserType*(_: type QTreeWidgetItemItemTypeEnum): untyped = 1000


type QTreeWidgetItemChildIndicatorPolicyEnum* = distinct cint
template ShowIndicator*(_: type QTreeWidgetItemChildIndicatorPolicyEnum): untyped = 0
template DontShowIndicator*(_: type QTreeWidgetItemChildIndicatorPolicyEnum): untyped = 1
template DontShowIndicatorWhenChildless*(_: type QTreeWidgetItemChildIndicatorPolicyEnum): untyped = 2


import ./gen_qtreewidget_types
export gen_qtreewidget_types

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
  ./gen_qstyleoption_types,
  ./gen_qtreeview,
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
  gen_qstyleoption_types,
  gen_qtreeview,
  gen_qwidget_types

type cQTreeWidgetItem*{.exportc: "QTreeWidgetItem", incompleteStruct.} = object
type cQTreeWidget*{.exportc: "QTreeWidget", incompleteStruct.} = object

proc fcQTreeWidgetItem_clone(self: pointer): pointer {.importc: "QTreeWidgetItem_clone".}
proc fcQTreeWidgetItem_treeWidget(self: pointer): pointer {.importc: "QTreeWidgetItem_treeWidget".}
proc fcQTreeWidgetItem_setSelected(self: pointer, select: bool): void {.importc: "QTreeWidgetItem_setSelected".}
proc fcQTreeWidgetItem_isSelected(self: pointer): bool {.importc: "QTreeWidgetItem_isSelected".}
proc fcQTreeWidgetItem_setHidden(self: pointer, hide: bool): void {.importc: "QTreeWidgetItem_setHidden".}
proc fcQTreeWidgetItem_isHidden(self: pointer): bool {.importc: "QTreeWidgetItem_isHidden".}
proc fcQTreeWidgetItem_setExpanded(self: pointer, expand: bool): void {.importc: "QTreeWidgetItem_setExpanded".}
proc fcQTreeWidgetItem_isExpanded(self: pointer): bool {.importc: "QTreeWidgetItem_isExpanded".}
proc fcQTreeWidgetItem_setFirstColumnSpanned(self: pointer, span: bool): void {.importc: "QTreeWidgetItem_setFirstColumnSpanned".}
proc fcQTreeWidgetItem_isFirstColumnSpanned(self: pointer): bool {.importc: "QTreeWidgetItem_isFirstColumnSpanned".}
proc fcQTreeWidgetItem_setDisabled(self: pointer, disabled: bool): void {.importc: "QTreeWidgetItem_setDisabled".}
proc fcQTreeWidgetItem_isDisabled(self: pointer): bool {.importc: "QTreeWidgetItem_isDisabled".}
proc fcQTreeWidgetItem_setChildIndicatorPolicy(self: pointer, policy: cint): void {.importc: "QTreeWidgetItem_setChildIndicatorPolicy".}
proc fcQTreeWidgetItem_childIndicatorPolicy(self: pointer): cint {.importc: "QTreeWidgetItem_childIndicatorPolicy".}
proc fcQTreeWidgetItem_flags(self: pointer): cint {.importc: "QTreeWidgetItem_flags".}
proc fcQTreeWidgetItem_setFlags(self: pointer, flags: cint): void {.importc: "QTreeWidgetItem_setFlags".}
proc fcQTreeWidgetItem_text(self: pointer, column: cint): struct_miqt_string {.importc: "QTreeWidgetItem_text".}
proc fcQTreeWidgetItem_setText(self: pointer, column: cint, text: struct_miqt_string): void {.importc: "QTreeWidgetItem_setText".}
proc fcQTreeWidgetItem_icon(self: pointer, column: cint): pointer {.importc: "QTreeWidgetItem_icon".}
proc fcQTreeWidgetItem_setIcon(self: pointer, column: cint, icon: pointer): void {.importc: "QTreeWidgetItem_setIcon".}
proc fcQTreeWidgetItem_statusTip(self: pointer, column: cint): struct_miqt_string {.importc: "QTreeWidgetItem_statusTip".}
proc fcQTreeWidgetItem_setStatusTip(self: pointer, column: cint, statusTip: struct_miqt_string): void {.importc: "QTreeWidgetItem_setStatusTip".}
proc fcQTreeWidgetItem_toolTip(self: pointer, column: cint): struct_miqt_string {.importc: "QTreeWidgetItem_toolTip".}
proc fcQTreeWidgetItem_setToolTip(self: pointer, column: cint, toolTip: struct_miqt_string): void {.importc: "QTreeWidgetItem_setToolTip".}
proc fcQTreeWidgetItem_whatsThis(self: pointer, column: cint): struct_miqt_string {.importc: "QTreeWidgetItem_whatsThis".}
proc fcQTreeWidgetItem_setWhatsThis(self: pointer, column: cint, whatsThis: struct_miqt_string): void {.importc: "QTreeWidgetItem_setWhatsThis".}
proc fcQTreeWidgetItem_font(self: pointer, column: cint): pointer {.importc: "QTreeWidgetItem_font".}
proc fcQTreeWidgetItem_setFont(self: pointer, column: cint, font: pointer): void {.importc: "QTreeWidgetItem_setFont".}
proc fcQTreeWidgetItem_textAlignment(self: pointer, column: cint): cint {.importc: "QTreeWidgetItem_textAlignment".}
proc fcQTreeWidgetItem_setTextAlignment(self: pointer, column: cint, alignment: cint): void {.importc: "QTreeWidgetItem_setTextAlignment".}
proc fcQTreeWidgetItem_backgroundColor(self: pointer, column: cint): pointer {.importc: "QTreeWidgetItem_backgroundColor".}
proc fcQTreeWidgetItem_setBackgroundColor(self: pointer, column: cint, color: pointer): void {.importc: "QTreeWidgetItem_setBackgroundColor".}
proc fcQTreeWidgetItem_background(self: pointer, column: cint): pointer {.importc: "QTreeWidgetItem_background".}
proc fcQTreeWidgetItem_setBackground(self: pointer, column: cint, brush: pointer): void {.importc: "QTreeWidgetItem_setBackground".}
proc fcQTreeWidgetItem_textColor(self: pointer, column: cint): pointer {.importc: "QTreeWidgetItem_textColor".}
proc fcQTreeWidgetItem_setTextColor(self: pointer, column: cint, color: pointer): void {.importc: "QTreeWidgetItem_setTextColor".}
proc fcQTreeWidgetItem_foreground(self: pointer, column: cint): pointer {.importc: "QTreeWidgetItem_foreground".}
proc fcQTreeWidgetItem_setForeground(self: pointer, column: cint, brush: pointer): void {.importc: "QTreeWidgetItem_setForeground".}
proc fcQTreeWidgetItem_checkState(self: pointer, column: cint): cint {.importc: "QTreeWidgetItem_checkState".}
proc fcQTreeWidgetItem_setCheckState(self: pointer, column: cint, state: cint): void {.importc: "QTreeWidgetItem_setCheckState".}
proc fcQTreeWidgetItem_sizeHint(self: pointer, column: cint): pointer {.importc: "QTreeWidgetItem_sizeHint".}
proc fcQTreeWidgetItem_setSizeHint(self: pointer, column: cint, size: pointer): void {.importc: "QTreeWidgetItem_setSizeHint".}
proc fcQTreeWidgetItem_data(self: pointer, column: cint, role: cint): pointer {.importc: "QTreeWidgetItem_data".}
proc fcQTreeWidgetItem_setData(self: pointer, column: cint, role: cint, value: pointer): void {.importc: "QTreeWidgetItem_setData".}
proc fcQTreeWidgetItem_operatorLesser(self: pointer, other: pointer): bool {.importc: "QTreeWidgetItem_operatorLesser".}
proc fcQTreeWidgetItem_read(self: pointer, inVal: pointer): void {.importc: "QTreeWidgetItem_read".}
proc fcQTreeWidgetItem_write(self: pointer, outVal: pointer): void {.importc: "QTreeWidgetItem_write".}
proc fcQTreeWidgetItem_operatorAssign(self: pointer, other: pointer): void {.importc: "QTreeWidgetItem_operatorAssign".}
proc fcQTreeWidgetItem_parent(self: pointer): pointer {.importc: "QTreeWidgetItem_parent".}
proc fcQTreeWidgetItem_child(self: pointer, index: cint): pointer {.importc: "QTreeWidgetItem_child".}
proc fcQTreeWidgetItem_childCount(self: pointer): cint {.importc: "QTreeWidgetItem_childCount".}
proc fcQTreeWidgetItem_columnCount(self: pointer): cint {.importc: "QTreeWidgetItem_columnCount".}
proc fcQTreeWidgetItem_indexOfChild(self: pointer, child: pointer): cint {.importc: "QTreeWidgetItem_indexOfChild".}
proc fcQTreeWidgetItem_addChild(self: pointer, child: pointer): void {.importc: "QTreeWidgetItem_addChild".}
proc fcQTreeWidgetItem_insertChild(self: pointer, index: cint, child: pointer): void {.importc: "QTreeWidgetItem_insertChild".}
proc fcQTreeWidgetItem_removeChild(self: pointer, child: pointer): void {.importc: "QTreeWidgetItem_removeChild".}
proc fcQTreeWidgetItem_takeChild(self: pointer, index: cint): pointer {.importc: "QTreeWidgetItem_takeChild".}
proc fcQTreeWidgetItem_addChildren(self: pointer, children: struct_miqt_array): void {.importc: "QTreeWidgetItem_addChildren".}
proc fcQTreeWidgetItem_insertChildren(self: pointer, index: cint, children: struct_miqt_array): void {.importc: "QTreeWidgetItem_insertChildren".}
proc fcQTreeWidgetItem_takeChildren(self: pointer): struct_miqt_array {.importc: "QTreeWidgetItem_takeChildren".}
proc fcQTreeWidgetItem_typeX(self: pointer): cint {.importc: "QTreeWidgetItem_type".}
proc fcQTreeWidgetItem_sortChildren(self: pointer, column: cint, order: cint): void {.importc: "QTreeWidgetItem_sortChildren".}
proc fcQTreeWidgetItem_vtbl(self: pointer): pointer {.importc: "QTreeWidgetItem_vtbl".}
proc fcQTreeWidgetItem_vdata(self: pointer): pointer {.importc: "QTreeWidgetItem_vdata".}
type cQTreeWidgetItemVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  clone*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  data*: proc(self: pointer, column: cint, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  setData*: proc(self: pointer, column: cint, role: cint, value: pointer): void {.cdecl, raises: [], gcsafe.}
  operatorLesser*: proc(self: pointer, other: pointer): bool {.cdecl, raises: [], gcsafe.}
  read*: proc(self: pointer, inVal: pointer): void {.cdecl, raises: [], gcsafe.}
  write*: proc(self: pointer, outVal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQTreeWidgetItem_virtualbase_clone(self: pointer): pointer {.importc: "QTreeWidgetItem_virtualbase_clone".}
proc fcQTreeWidgetItem_virtualbase_data(self: pointer, column: cint, role: cint): pointer {.importc: "QTreeWidgetItem_virtualbase_data".}
proc fcQTreeWidgetItem_virtualbase_setData(self: pointer, column: cint, role: cint, value: pointer): void {.importc: "QTreeWidgetItem_virtualbase_setData".}
proc fcQTreeWidgetItem_virtualbase_operatorLesser(self: pointer, other: pointer): bool {.importc: "QTreeWidgetItem_virtualbase_operatorLesser".}
proc fcQTreeWidgetItem_virtualbase_read(self: pointer, inVal: pointer): void {.importc: "QTreeWidgetItem_virtualbase_read".}
proc fcQTreeWidgetItem_virtualbase_write(self: pointer, outVal: pointer): void {.importc: "QTreeWidgetItem_virtualbase_write".}
proc fcQTreeWidgetItem_protectedbase_emitDataChanged(self: pointer): void {.importc: "QTreeWidgetItem_protectedbase_emitDataChanged".}
proc fcQTreeWidgetItem_new(vtbl, vdata: pointer): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new".}
proc fcQTreeWidgetItem_new2(vtbl, vdata: pointer, strings: struct_miqt_array): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new2".}
proc fcQTreeWidgetItem_new3(vtbl, vdata: pointer, treeview: pointer): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new3".}
proc fcQTreeWidgetItem_new4(vtbl, vdata: pointer, treeview: pointer, strings: struct_miqt_array): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new4".}
proc fcQTreeWidgetItem_new5(vtbl, vdata: pointer, treeview: pointer, after: pointer): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new5".}
proc fcQTreeWidgetItem_new6(vtbl, vdata: pointer, parent: pointer): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new6".}
proc fcQTreeWidgetItem_new7(vtbl, vdata: pointer, parent: pointer, strings: struct_miqt_array): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new7".}
proc fcQTreeWidgetItem_new8(vtbl, vdata: pointer, parent: pointer, after: pointer): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new8".}
proc fcQTreeWidgetItem_new9(vtbl, vdata: pointer, other: pointer): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new9".}
proc fcQTreeWidgetItem_new10(vtbl, vdata: pointer, typeVal: cint): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new10".}
proc fcQTreeWidgetItem_new11(vtbl, vdata: pointer, strings: struct_miqt_array, typeVal: cint): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new11".}
proc fcQTreeWidgetItem_new12(vtbl, vdata: pointer, treeview: pointer, typeVal: cint): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new12".}
proc fcQTreeWidgetItem_new13(vtbl, vdata: pointer, treeview: pointer, strings: struct_miqt_array, typeVal: cint): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new13".}
proc fcQTreeWidgetItem_new14(vtbl, vdata: pointer, treeview: pointer, after: pointer, typeVal: cint): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new14".}
proc fcQTreeWidgetItem_new15(vtbl, vdata: pointer, parent: pointer, typeVal: cint): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new15".}
proc fcQTreeWidgetItem_new16(vtbl, vdata: pointer, parent: pointer, strings: struct_miqt_array, typeVal: cint): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new16".}
proc fcQTreeWidgetItem_new17(vtbl, vdata: pointer, parent: pointer, after: pointer, typeVal: cint): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new17".}
proc fcQTreeWidget_metaObject(self: pointer): pointer {.importc: "QTreeWidget_metaObject".}
proc fcQTreeWidget_metacast(self: pointer, param1: cstring): pointer {.importc: "QTreeWidget_metacast".}
proc fcQTreeWidget_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTreeWidget_metacall".}
proc fcQTreeWidget_tr(s: cstring): struct_miqt_string {.importc: "QTreeWidget_tr".}
proc fcQTreeWidget_trUtf8(s: cstring): struct_miqt_string {.importc: "QTreeWidget_trUtf8".}
proc fcQTreeWidget_columnCount(self: pointer): cint {.importc: "QTreeWidget_columnCount".}
proc fcQTreeWidget_setColumnCount(self: pointer, columns: cint): void {.importc: "QTreeWidget_setColumnCount".}
proc fcQTreeWidget_invisibleRootItem(self: pointer): pointer {.importc: "QTreeWidget_invisibleRootItem".}
proc fcQTreeWidget_topLevelItem(self: pointer, index: cint): pointer {.importc: "QTreeWidget_topLevelItem".}
proc fcQTreeWidget_topLevelItemCount(self: pointer): cint {.importc: "QTreeWidget_topLevelItemCount".}
proc fcQTreeWidget_insertTopLevelItem(self: pointer, index: cint, item: pointer): void {.importc: "QTreeWidget_insertTopLevelItem".}
proc fcQTreeWidget_addTopLevelItem(self: pointer, item: pointer): void {.importc: "QTreeWidget_addTopLevelItem".}
proc fcQTreeWidget_takeTopLevelItem(self: pointer, index: cint): pointer {.importc: "QTreeWidget_takeTopLevelItem".}
proc fcQTreeWidget_indexOfTopLevelItem(self: pointer, item: pointer): cint {.importc: "QTreeWidget_indexOfTopLevelItem".}
proc fcQTreeWidget_insertTopLevelItems(self: pointer, index: cint, items: struct_miqt_array): void {.importc: "QTreeWidget_insertTopLevelItems".}
proc fcQTreeWidget_addTopLevelItems(self: pointer, items: struct_miqt_array): void {.importc: "QTreeWidget_addTopLevelItems".}
proc fcQTreeWidget_headerItem(self: pointer): pointer {.importc: "QTreeWidget_headerItem".}
proc fcQTreeWidget_setHeaderItem(self: pointer, item: pointer): void {.importc: "QTreeWidget_setHeaderItem".}
proc fcQTreeWidget_setHeaderLabels(self: pointer, labels: struct_miqt_array): void {.importc: "QTreeWidget_setHeaderLabels".}
proc fcQTreeWidget_setHeaderLabel(self: pointer, label: struct_miqt_string): void {.importc: "QTreeWidget_setHeaderLabel".}
proc fcQTreeWidget_currentItem(self: pointer): pointer {.importc: "QTreeWidget_currentItem".}
proc fcQTreeWidget_currentColumn(self: pointer): cint {.importc: "QTreeWidget_currentColumn".}
proc fcQTreeWidget_setCurrentItem(self: pointer, item: pointer): void {.importc: "QTreeWidget_setCurrentItem".}
proc fcQTreeWidget_setCurrentItem2(self: pointer, item: pointer, column: cint): void {.importc: "QTreeWidget_setCurrentItem2".}
proc fcQTreeWidget_setCurrentItem3(self: pointer, item: pointer, column: cint, command: cint): void {.importc: "QTreeWidget_setCurrentItem3".}
proc fcQTreeWidget_itemAt(self: pointer, p: pointer): pointer {.importc: "QTreeWidget_itemAt".}
proc fcQTreeWidget_itemAt2(self: pointer, x: cint, y: cint): pointer {.importc: "QTreeWidget_itemAt2".}
proc fcQTreeWidget_visualItemRect(self: pointer, item: pointer): pointer {.importc: "QTreeWidget_visualItemRect".}
proc fcQTreeWidget_sortColumn(self: pointer): cint {.importc: "QTreeWidget_sortColumn".}
proc fcQTreeWidget_sortItems(self: pointer, column: cint, order: cint): void {.importc: "QTreeWidget_sortItems".}
proc fcQTreeWidget_editItem(self: pointer, item: pointer): void {.importc: "QTreeWidget_editItem".}
proc fcQTreeWidget_openPersistentEditor(self: pointer, item: pointer): void {.importc: "QTreeWidget_openPersistentEditor".}
proc fcQTreeWidget_closePersistentEditor(self: pointer, item: pointer): void {.importc: "QTreeWidget_closePersistentEditor".}
proc fcQTreeWidget_isPersistentEditorOpen(self: pointer, item: pointer): bool {.importc: "QTreeWidget_isPersistentEditorOpen".}
proc fcQTreeWidget_itemWidget(self: pointer, item: pointer, column: cint): pointer {.importc: "QTreeWidget_itemWidget".}
proc fcQTreeWidget_setItemWidget(self: pointer, item: pointer, column: cint, widget: pointer): void {.importc: "QTreeWidget_setItemWidget".}
proc fcQTreeWidget_removeItemWidget(self: pointer, item: pointer, column: cint): void {.importc: "QTreeWidget_removeItemWidget".}
proc fcQTreeWidget_isItemSelected(self: pointer, item: pointer): bool {.importc: "QTreeWidget_isItemSelected".}
proc fcQTreeWidget_setItemSelected(self: pointer, item: pointer, select: bool): void {.importc: "QTreeWidget_setItemSelected".}
proc fcQTreeWidget_selectedItems(self: pointer): struct_miqt_array {.importc: "QTreeWidget_selectedItems".}
proc fcQTreeWidget_findItems(self: pointer, text: struct_miqt_string, flags: cint): struct_miqt_array {.importc: "QTreeWidget_findItems".}
proc fcQTreeWidget_isItemHidden(self: pointer, item: pointer): bool {.importc: "QTreeWidget_isItemHidden".}
proc fcQTreeWidget_setItemHidden(self: pointer, item: pointer, hide: bool): void {.importc: "QTreeWidget_setItemHidden".}
proc fcQTreeWidget_isItemExpanded(self: pointer, item: pointer): bool {.importc: "QTreeWidget_isItemExpanded".}
proc fcQTreeWidget_setItemExpanded(self: pointer, item: pointer, expand: bool): void {.importc: "QTreeWidget_setItemExpanded".}
proc fcQTreeWidget_isFirstItemColumnSpanned(self: pointer, item: pointer): bool {.importc: "QTreeWidget_isFirstItemColumnSpanned".}
proc fcQTreeWidget_setFirstItemColumnSpanned(self: pointer, item: pointer, span: bool): void {.importc: "QTreeWidget_setFirstItemColumnSpanned".}
proc fcQTreeWidget_itemAbove(self: pointer, item: pointer): pointer {.importc: "QTreeWidget_itemAbove".}
proc fcQTreeWidget_itemBelow(self: pointer, item: pointer): pointer {.importc: "QTreeWidget_itemBelow".}
proc fcQTreeWidget_setSelectionModel(self: pointer, selectionModel: pointer): void {.importc: "QTreeWidget_setSelectionModel".}
proc fcQTreeWidget_scrollToItem(self: pointer, item: pointer): void {.importc: "QTreeWidget_scrollToItem".}
proc fcQTreeWidget_expandItem(self: pointer, item: pointer): void {.importc: "QTreeWidget_expandItem".}
proc fcQTreeWidget_collapseItem(self: pointer, item: pointer): void {.importc: "QTreeWidget_collapseItem".}
proc fcQTreeWidget_clear(self: pointer): void {.importc: "QTreeWidget_clear".}
proc fcQTreeWidget_itemPressed(self: pointer, item: pointer, column: cint): void {.importc: "QTreeWidget_itemPressed".}
proc fcQTreeWidget_connect_itemPressed(self: pointer, slot: int, callback: proc (slot: int, item: pointer, column: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QTreeWidget_connect_itemPressed".}
proc fcQTreeWidget_itemClicked(self: pointer, item: pointer, column: cint): void {.importc: "QTreeWidget_itemClicked".}
proc fcQTreeWidget_connect_itemClicked(self: pointer, slot: int, callback: proc (slot: int, item: pointer, column: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QTreeWidget_connect_itemClicked".}
proc fcQTreeWidget_itemDoubleClicked(self: pointer, item: pointer, column: cint): void {.importc: "QTreeWidget_itemDoubleClicked".}
proc fcQTreeWidget_connect_itemDoubleClicked(self: pointer, slot: int, callback: proc (slot: int, item: pointer, column: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QTreeWidget_connect_itemDoubleClicked".}
proc fcQTreeWidget_itemActivated(self: pointer, item: pointer, column: cint): void {.importc: "QTreeWidget_itemActivated".}
proc fcQTreeWidget_connect_itemActivated(self: pointer, slot: int, callback: proc (slot: int, item: pointer, column: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QTreeWidget_connect_itemActivated".}
proc fcQTreeWidget_itemEntered(self: pointer, item: pointer, column: cint): void {.importc: "QTreeWidget_itemEntered".}
proc fcQTreeWidget_connect_itemEntered(self: pointer, slot: int, callback: proc (slot: int, item: pointer, column: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QTreeWidget_connect_itemEntered".}
proc fcQTreeWidget_itemChanged(self: pointer, item: pointer, column: cint): void {.importc: "QTreeWidget_itemChanged".}
proc fcQTreeWidget_connect_itemChanged(self: pointer, slot: int, callback: proc (slot: int, item: pointer, column: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QTreeWidget_connect_itemChanged".}
proc fcQTreeWidget_itemExpanded(self: pointer, item: pointer): void {.importc: "QTreeWidget_itemExpanded".}
proc fcQTreeWidget_connect_itemExpanded(self: pointer, slot: int, callback: proc (slot: int, item: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QTreeWidget_connect_itemExpanded".}
proc fcQTreeWidget_itemCollapsed(self: pointer, item: pointer): void {.importc: "QTreeWidget_itemCollapsed".}
proc fcQTreeWidget_connect_itemCollapsed(self: pointer, slot: int, callback: proc (slot: int, item: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QTreeWidget_connect_itemCollapsed".}
proc fcQTreeWidget_currentItemChanged(self: pointer, current: pointer, previous: pointer): void {.importc: "QTreeWidget_currentItemChanged".}
proc fcQTreeWidget_connect_currentItemChanged(self: pointer, slot: int, callback: proc (slot: int, current: pointer, previous: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QTreeWidget_connect_currentItemChanged".}
proc fcQTreeWidget_itemSelectionChanged(self: pointer): void {.importc: "QTreeWidget_itemSelectionChanged".}
proc fcQTreeWidget_connect_itemSelectionChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QTreeWidget_connect_itemSelectionChanged".}
proc fcQTreeWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTreeWidget_tr2".}
proc fcQTreeWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTreeWidget_tr3".}
proc fcQTreeWidget_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QTreeWidget_trUtf82".}
proc fcQTreeWidget_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTreeWidget_trUtf83".}
proc fcQTreeWidget_editItem2(self: pointer, item: pointer, column: cint): void {.importc: "QTreeWidget_editItem2".}
proc fcQTreeWidget_openPersistentEditor2(self: pointer, item: pointer, column: cint): void {.importc: "QTreeWidget_openPersistentEditor2".}
proc fcQTreeWidget_closePersistentEditor2(self: pointer, item: pointer, column: cint): void {.importc: "QTreeWidget_closePersistentEditor2".}
proc fcQTreeWidget_isPersistentEditorOpen2(self: pointer, item: pointer, column: cint): bool {.importc: "QTreeWidget_isPersistentEditorOpen2".}
proc fcQTreeWidget_findItems3(self: pointer, text: struct_miqt_string, flags: cint, column: cint): struct_miqt_array {.importc: "QTreeWidget_findItems3".}
proc fcQTreeWidget_scrollToItem2(self: pointer, item: pointer, hint: cint): void {.importc: "QTreeWidget_scrollToItem2".}
proc fcQTreeWidget_vtbl(self: pointer): pointer {.importc: "QTreeWidget_vtbl".}
proc fcQTreeWidget_vdata(self: pointer): pointer {.importc: "QTreeWidget_vdata".}
type cQTreeWidgetVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setSelectionModel*: proc(self: pointer, selectionModel: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  mimeTypes*: proc(self: pointer): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  mimeData*: proc(self: pointer, items: struct_miqt_array): pointer {.cdecl, raises: [], gcsafe.}
  dropMimeData*: proc(self: pointer, parent: pointer, index: cint, data: pointer, action: cint): bool {.cdecl, raises: [], gcsafe.}
  supportedDropActions*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  setRootIndex*: proc(self: pointer, index: pointer): void {.cdecl, raises: [], gcsafe.}
  keyboardSearch*: proc(self: pointer, search: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
  visualRect*: proc(self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  scrollTo*: proc(self: pointer, index: pointer, hint: cint): void {.cdecl, raises: [], gcsafe.}
  indexAt*: proc(self: pointer, p: pointer): pointer {.cdecl, raises: [], gcsafe.}
  doItemsLayout*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  reset*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  dataChanged*: proc(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.cdecl, raises: [], gcsafe.}
  selectAll*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  verticalScrollbarValueChanged*: proc(self: pointer, value: cint): void {.cdecl, raises: [], gcsafe.}
  scrollContentsBy*: proc(self: pointer, dx: cint, dy: cint): void {.cdecl, raises: [], gcsafe.}
  rowsInserted*: proc(self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl, raises: [], gcsafe.}
  rowsAboutToBeRemoved*: proc(self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl, raises: [], gcsafe.}
  moveCursor*: proc(self: pointer, cursorAction: cint, modifiers: cint): pointer {.cdecl, raises: [], gcsafe.}
  horizontalOffset*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  verticalOffset*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setSelection*: proc(self: pointer, rect: pointer, command: cint): void {.cdecl, raises: [], gcsafe.}
  visualRegionForSelection*: proc(self: pointer, selection: pointer): pointer {.cdecl, raises: [], gcsafe.}
  selectedIndexes*: proc(self: pointer): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  drawRow*: proc(self: pointer, painter: pointer, options: pointer, index: pointer): void {.cdecl, raises: [], gcsafe.}
  drawBranches*: proc(self: pointer, painter: pointer, rect: pointer, index: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  viewportEvent*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  updateGeometries*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  viewportSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sizeHintForColumn*: proc(self: pointer, column: cint): cint {.cdecl, raises: [], gcsafe.}
  horizontalScrollbarAction*: proc(self: pointer, action: cint): void {.cdecl, raises: [], gcsafe.}
  isIndexHidden*: proc(self: pointer, index: pointer): bool {.cdecl, raises: [], gcsafe.}
  selectionChanged*: proc(self: pointer, selected: pointer, deselected: pointer): void {.cdecl, raises: [], gcsafe.}
  currentChanged*: proc(self: pointer, current: pointer, previous: pointer): void {.cdecl, raises: [], gcsafe.}
  sizeHintForRow*: proc(self: pointer, row: cint): cint {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(self: pointer, query: cint): pointer {.cdecl, raises: [], gcsafe.}
  updateEditorData*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  updateEditorGeometries*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  verticalScrollbarAction*: proc(self: pointer, action: cint): void {.cdecl, raises: [], gcsafe.}
  horizontalScrollbarValueChanged*: proc(self: pointer, value: cint): void {.cdecl, raises: [], gcsafe.}
  closeEditor*: proc(self: pointer, editor: pointer, hint: cint): void {.cdecl, raises: [], gcsafe.}
  commitData*: proc(self: pointer, editor: pointer): void {.cdecl, raises: [], gcsafe.}
  editorDestroyed*: proc(self: pointer, editor: pointer): void {.cdecl, raises: [], gcsafe.}
  edit2*: proc(self: pointer, index: pointer, trigger: cint, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  selectionCommand*: proc(self: pointer, index: pointer, event: pointer): cint {.cdecl, raises: [], gcsafe.}
  startDrag*: proc(self: pointer, supportedActions: cint): void {.cdecl, raises: [], gcsafe.}
  viewOptions*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, objectVal: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setupViewport*: proc(self: pointer, viewport: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
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
proc fcQTreeWidget_virtualbase_metaObject(self: pointer): pointer {.importc: "QTreeWidget_virtualbase_metaObject".}
proc fcQTreeWidget_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QTreeWidget_virtualbase_metacast".}
proc fcQTreeWidget_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTreeWidget_virtualbase_metacall".}
proc fcQTreeWidget_virtualbase_setSelectionModel(self: pointer, selectionModel: pointer): void {.importc: "QTreeWidget_virtualbase_setSelectionModel".}
proc fcQTreeWidget_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QTreeWidget_virtualbase_event".}
proc fcQTreeWidget_virtualbase_mimeTypes(self: pointer): struct_miqt_array {.importc: "QTreeWidget_virtualbase_mimeTypes".}
proc fcQTreeWidget_virtualbase_mimeData(self: pointer, items: struct_miqt_array): pointer {.importc: "QTreeWidget_virtualbase_mimeData".}
proc fcQTreeWidget_virtualbase_dropMimeData(self: pointer, parent: pointer, index: cint, data: pointer, action: cint): bool {.importc: "QTreeWidget_virtualbase_dropMimeData".}
proc fcQTreeWidget_virtualbase_supportedDropActions(self: pointer): cint {.importc: "QTreeWidget_virtualbase_supportedDropActions".}
proc fcQTreeWidget_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QTreeWidget_virtualbase_dropEvent".}
proc fcQTreeWidget_virtualbase_setRootIndex(self: pointer, index: pointer): void {.importc: "QTreeWidget_virtualbase_setRootIndex".}
proc fcQTreeWidget_virtualbase_keyboardSearch(self: pointer, search: struct_miqt_string): void {.importc: "QTreeWidget_virtualbase_keyboardSearch".}
proc fcQTreeWidget_virtualbase_visualRect(self: pointer, index: pointer): pointer {.importc: "QTreeWidget_virtualbase_visualRect".}
proc fcQTreeWidget_virtualbase_scrollTo(self: pointer, index: pointer, hint: cint): void {.importc: "QTreeWidget_virtualbase_scrollTo".}
proc fcQTreeWidget_virtualbase_indexAt(self: pointer, p: pointer): pointer {.importc: "QTreeWidget_virtualbase_indexAt".}
proc fcQTreeWidget_virtualbase_doItemsLayout(self: pointer): void {.importc: "QTreeWidget_virtualbase_doItemsLayout".}
proc fcQTreeWidget_virtualbase_reset(self: pointer): void {.importc: "QTreeWidget_virtualbase_reset".}
proc fcQTreeWidget_virtualbase_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.importc: "QTreeWidget_virtualbase_dataChanged".}
proc fcQTreeWidget_virtualbase_selectAll(self: pointer): void {.importc: "QTreeWidget_virtualbase_selectAll".}
proc fcQTreeWidget_virtualbase_verticalScrollbarValueChanged(self: pointer, value: cint): void {.importc: "QTreeWidget_virtualbase_verticalScrollbarValueChanged".}
proc fcQTreeWidget_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.importc: "QTreeWidget_virtualbase_scrollContentsBy".}
proc fcQTreeWidget_virtualbase_rowsInserted(self: pointer, parent: pointer, start: cint, endVal: cint): void {.importc: "QTreeWidget_virtualbase_rowsInserted".}
proc fcQTreeWidget_virtualbase_rowsAboutToBeRemoved(self: pointer, parent: pointer, start: cint, endVal: cint): void {.importc: "QTreeWidget_virtualbase_rowsAboutToBeRemoved".}
proc fcQTreeWidget_virtualbase_moveCursor(self: pointer, cursorAction: cint, modifiers: cint): pointer {.importc: "QTreeWidget_virtualbase_moveCursor".}
proc fcQTreeWidget_virtualbase_horizontalOffset(self: pointer): cint {.importc: "QTreeWidget_virtualbase_horizontalOffset".}
proc fcQTreeWidget_virtualbase_verticalOffset(self: pointer): cint {.importc: "QTreeWidget_virtualbase_verticalOffset".}
proc fcQTreeWidget_virtualbase_setSelection(self: pointer, rect: pointer, command: cint): void {.importc: "QTreeWidget_virtualbase_setSelection".}
proc fcQTreeWidget_virtualbase_visualRegionForSelection(self: pointer, selection: pointer): pointer {.importc: "QTreeWidget_virtualbase_visualRegionForSelection".}
proc fcQTreeWidget_virtualbase_selectedIndexes(self: pointer): struct_miqt_array {.importc: "QTreeWidget_virtualbase_selectedIndexes".}
proc fcQTreeWidget_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QTreeWidget_virtualbase_timerEvent".}
proc fcQTreeWidget_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QTreeWidget_virtualbase_paintEvent".}
proc fcQTreeWidget_virtualbase_drawRow(self: pointer, painter: pointer, options: pointer, index: pointer): void {.importc: "QTreeWidget_virtualbase_drawRow".}
proc fcQTreeWidget_virtualbase_drawBranches(self: pointer, painter: pointer, rect: pointer, index: pointer): void {.importc: "QTreeWidget_virtualbase_drawBranches".}
proc fcQTreeWidget_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QTreeWidget_virtualbase_mousePressEvent".}
proc fcQTreeWidget_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QTreeWidget_virtualbase_mouseReleaseEvent".}
proc fcQTreeWidget_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QTreeWidget_virtualbase_mouseDoubleClickEvent".}
proc fcQTreeWidget_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QTreeWidget_virtualbase_mouseMoveEvent".}
proc fcQTreeWidget_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QTreeWidget_virtualbase_keyPressEvent".}
proc fcQTreeWidget_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QTreeWidget_virtualbase_dragMoveEvent".}
proc fcQTreeWidget_virtualbase_viewportEvent(self: pointer, event: pointer): bool {.importc: "QTreeWidget_virtualbase_viewportEvent".}
proc fcQTreeWidget_virtualbase_updateGeometries(self: pointer): void {.importc: "QTreeWidget_virtualbase_updateGeometries".}
proc fcQTreeWidget_virtualbase_viewportSizeHint(self: pointer): pointer {.importc: "QTreeWidget_virtualbase_viewportSizeHint".}
proc fcQTreeWidget_virtualbase_sizeHintForColumn(self: pointer, column: cint): cint {.importc: "QTreeWidget_virtualbase_sizeHintForColumn".}
proc fcQTreeWidget_virtualbase_horizontalScrollbarAction(self: pointer, action: cint): void {.importc: "QTreeWidget_virtualbase_horizontalScrollbarAction".}
proc fcQTreeWidget_virtualbase_isIndexHidden(self: pointer, index: pointer): bool {.importc: "QTreeWidget_virtualbase_isIndexHidden".}
proc fcQTreeWidget_virtualbase_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void {.importc: "QTreeWidget_virtualbase_selectionChanged".}
proc fcQTreeWidget_virtualbase_currentChanged(self: pointer, current: pointer, previous: pointer): void {.importc: "QTreeWidget_virtualbase_currentChanged".}
proc fcQTreeWidget_virtualbase_sizeHintForRow(self: pointer, row: cint): cint {.importc: "QTreeWidget_virtualbase_sizeHintForRow".}
proc fcQTreeWidget_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QTreeWidget_virtualbase_inputMethodQuery".}
proc fcQTreeWidget_virtualbase_updateEditorData(self: pointer): void {.importc: "QTreeWidget_virtualbase_updateEditorData".}
proc fcQTreeWidget_virtualbase_updateEditorGeometries(self: pointer): void {.importc: "QTreeWidget_virtualbase_updateEditorGeometries".}
proc fcQTreeWidget_virtualbase_verticalScrollbarAction(self: pointer, action: cint): void {.importc: "QTreeWidget_virtualbase_verticalScrollbarAction".}
proc fcQTreeWidget_virtualbase_horizontalScrollbarValueChanged(self: pointer, value: cint): void {.importc: "QTreeWidget_virtualbase_horizontalScrollbarValueChanged".}
proc fcQTreeWidget_virtualbase_closeEditor(self: pointer, editor: pointer, hint: cint): void {.importc: "QTreeWidget_virtualbase_closeEditor".}
proc fcQTreeWidget_virtualbase_commitData(self: pointer, editor: pointer): void {.importc: "QTreeWidget_virtualbase_commitData".}
proc fcQTreeWidget_virtualbase_editorDestroyed(self: pointer, editor: pointer): void {.importc: "QTreeWidget_virtualbase_editorDestroyed".}
proc fcQTreeWidget_virtualbase_edit2(self: pointer, index: pointer, trigger: cint, event: pointer): bool {.importc: "QTreeWidget_virtualbase_edit2".}
proc fcQTreeWidget_virtualbase_selectionCommand(self: pointer, index: pointer, event: pointer): cint {.importc: "QTreeWidget_virtualbase_selectionCommand".}
proc fcQTreeWidget_virtualbase_startDrag(self: pointer, supportedActions: cint): void {.importc: "QTreeWidget_virtualbase_startDrag".}
proc fcQTreeWidget_virtualbase_viewOptions(self: pointer): pointer {.importc: "QTreeWidget_virtualbase_viewOptions".}
proc fcQTreeWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QTreeWidget_virtualbase_focusNextPrevChild".}
proc fcQTreeWidget_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QTreeWidget_virtualbase_dragEnterEvent".}
proc fcQTreeWidget_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QTreeWidget_virtualbase_dragLeaveEvent".}
proc fcQTreeWidget_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QTreeWidget_virtualbase_focusInEvent".}
proc fcQTreeWidget_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QTreeWidget_virtualbase_focusOutEvent".}
proc fcQTreeWidget_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QTreeWidget_virtualbase_resizeEvent".}
proc fcQTreeWidget_virtualbase_inputMethodEvent(self: pointer, event: pointer): void {.importc: "QTreeWidget_virtualbase_inputMethodEvent".}
proc fcQTreeWidget_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool {.importc: "QTreeWidget_virtualbase_eventFilter".}
proc fcQTreeWidget_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QTreeWidget_virtualbase_minimumSizeHint".}
proc fcQTreeWidget_virtualbase_sizeHint(self: pointer): pointer {.importc: "QTreeWidget_virtualbase_sizeHint".}
proc fcQTreeWidget_virtualbase_setupViewport(self: pointer, viewport: pointer): void {.importc: "QTreeWidget_virtualbase_setupViewport".}
proc fcQTreeWidget_virtualbase_wheelEvent(self: pointer, param1: pointer): void {.importc: "QTreeWidget_virtualbase_wheelEvent".}
proc fcQTreeWidget_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void {.importc: "QTreeWidget_virtualbase_contextMenuEvent".}
proc fcQTreeWidget_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QTreeWidget_virtualbase_changeEvent".}
proc fcQTreeWidget_virtualbase_devType(self: pointer): cint {.importc: "QTreeWidget_virtualbase_devType".}
proc fcQTreeWidget_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QTreeWidget_virtualbase_setVisible".}
proc fcQTreeWidget_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QTreeWidget_virtualbase_heightForWidth".}
proc fcQTreeWidget_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QTreeWidget_virtualbase_hasHeightForWidth".}
proc fcQTreeWidget_virtualbase_paintEngine(self: pointer): pointer {.importc: "QTreeWidget_virtualbase_paintEngine".}
proc fcQTreeWidget_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QTreeWidget_virtualbase_keyReleaseEvent".}
proc fcQTreeWidget_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QTreeWidget_virtualbase_enterEvent".}
proc fcQTreeWidget_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QTreeWidget_virtualbase_leaveEvent".}
proc fcQTreeWidget_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QTreeWidget_virtualbase_moveEvent".}
proc fcQTreeWidget_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QTreeWidget_virtualbase_closeEvent".}
proc fcQTreeWidget_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QTreeWidget_virtualbase_tabletEvent".}
proc fcQTreeWidget_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QTreeWidget_virtualbase_actionEvent".}
proc fcQTreeWidget_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QTreeWidget_virtualbase_showEvent".}
proc fcQTreeWidget_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QTreeWidget_virtualbase_hideEvent".}
proc fcQTreeWidget_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QTreeWidget_virtualbase_nativeEvent".}
proc fcQTreeWidget_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QTreeWidget_virtualbase_metric".}
proc fcQTreeWidget_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QTreeWidget_virtualbase_initPainter".}
proc fcQTreeWidget_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QTreeWidget_virtualbase_redirected".}
proc fcQTreeWidget_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QTreeWidget_virtualbase_sharedPainter".}
proc fcQTreeWidget_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QTreeWidget_virtualbase_childEvent".}
proc fcQTreeWidget_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QTreeWidget_virtualbase_customEvent".}
proc fcQTreeWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QTreeWidget_virtualbase_connectNotify".}
proc fcQTreeWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QTreeWidget_virtualbase_disconnectNotify".}
proc fcQTreeWidget_protectedbase_items(self: pointer, data: pointer): struct_miqt_array {.importc: "QTreeWidget_protectedbase_items".}
proc fcQTreeWidget_protectedbase_indexFromItem(self: pointer, item: pointer): pointer {.importc: "QTreeWidget_protectedbase_indexFromItem".}
proc fcQTreeWidget_protectedbase_indexFromItemWithItem(self: pointer, item: pointer): pointer {.importc: "QTreeWidget_protectedbase_indexFromItemWithItem".}
proc fcQTreeWidget_protectedbase_itemFromIndex(self: pointer, index: pointer): pointer {.importc: "QTreeWidget_protectedbase_itemFromIndex".}
proc fcQTreeWidget_protectedbase_indexFromItem2(self: pointer, item: pointer, column: cint): pointer {.importc: "QTreeWidget_protectedbase_indexFromItem2".}
proc fcQTreeWidget_protectedbase_indexFromItem22(self: pointer, item: pointer, column: cint): pointer {.importc: "QTreeWidget_protectedbase_indexFromItem22".}
proc fcQTreeWidget_protectedbase_columnResized(self: pointer, column: cint, oldSize: cint, newSize: cint): void {.importc: "QTreeWidget_protectedbase_columnResized".}
proc fcQTreeWidget_protectedbase_columnCountChanged(self: pointer, oldCount: cint, newCount: cint): void {.importc: "QTreeWidget_protectedbase_columnCountChanged".}
proc fcQTreeWidget_protectedbase_columnMoved(self: pointer): void {.importc: "QTreeWidget_protectedbase_columnMoved".}
proc fcQTreeWidget_protectedbase_reexpand(self: pointer): void {.importc: "QTreeWidget_protectedbase_reexpand".}
proc fcQTreeWidget_protectedbase_rowsRemoved(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QTreeWidget_protectedbase_rowsRemoved".}
proc fcQTreeWidget_protectedbase_drawTree(self: pointer, painter: pointer, region: pointer): void {.importc: "QTreeWidget_protectedbase_drawTree".}
proc fcQTreeWidget_protectedbase_indexRowSizeHint(self: pointer, index: pointer): cint {.importc: "QTreeWidget_protectedbase_indexRowSizeHint".}
proc fcQTreeWidget_protectedbase_rowHeight(self: pointer, index: pointer): cint {.importc: "QTreeWidget_protectedbase_rowHeight".}
proc fcQTreeWidget_protectedbase_setHorizontalStepsPerItem(self: pointer, steps: cint): void {.importc: "QTreeWidget_protectedbase_setHorizontalStepsPerItem".}
proc fcQTreeWidget_protectedbase_horizontalStepsPerItem(self: pointer): cint {.importc: "QTreeWidget_protectedbase_horizontalStepsPerItem".}
proc fcQTreeWidget_protectedbase_setVerticalStepsPerItem(self: pointer, steps: cint): void {.importc: "QTreeWidget_protectedbase_setVerticalStepsPerItem".}
proc fcQTreeWidget_protectedbase_verticalStepsPerItem(self: pointer): cint {.importc: "QTreeWidget_protectedbase_verticalStepsPerItem".}
proc fcQTreeWidget_protectedbase_state(self: pointer): cint {.importc: "QTreeWidget_protectedbase_state".}
proc fcQTreeWidget_protectedbase_setState(self: pointer, state: cint): void {.importc: "QTreeWidget_protectedbase_setState".}
proc fcQTreeWidget_protectedbase_scheduleDelayedItemsLayout(self: pointer): void {.importc: "QTreeWidget_protectedbase_scheduleDelayedItemsLayout".}
proc fcQTreeWidget_protectedbase_executeDelayedItemsLayout(self: pointer): void {.importc: "QTreeWidget_protectedbase_executeDelayedItemsLayout".}
proc fcQTreeWidget_protectedbase_setDirtyRegion(self: pointer, region: pointer): void {.importc: "QTreeWidget_protectedbase_setDirtyRegion".}
proc fcQTreeWidget_protectedbase_scrollDirtyRegion(self: pointer, dx: cint, dy: cint): void {.importc: "QTreeWidget_protectedbase_scrollDirtyRegion".}
proc fcQTreeWidget_protectedbase_dirtyRegionOffset(self: pointer): pointer {.importc: "QTreeWidget_protectedbase_dirtyRegionOffset".}
proc fcQTreeWidget_protectedbase_startAutoScroll(self: pointer): void {.importc: "QTreeWidget_protectedbase_startAutoScroll".}
proc fcQTreeWidget_protectedbase_stopAutoScroll(self: pointer): void {.importc: "QTreeWidget_protectedbase_stopAutoScroll".}
proc fcQTreeWidget_protectedbase_doAutoScroll(self: pointer): void {.importc: "QTreeWidget_protectedbase_doAutoScroll".}
proc fcQTreeWidget_protectedbase_dropIndicatorPosition(self: pointer): cint {.importc: "QTreeWidget_protectedbase_dropIndicatorPosition".}
proc fcQTreeWidget_protectedbase_setViewportMargins(self: pointer, left: cint, top: cint, right: cint, bottom: cint): void {.importc: "QTreeWidget_protectedbase_setViewportMargins".}
proc fcQTreeWidget_protectedbase_viewportMargins(self: pointer): pointer {.importc: "QTreeWidget_protectedbase_viewportMargins".}
proc fcQTreeWidget_protectedbase_drawFrame(self: pointer, param1: pointer): void {.importc: "QTreeWidget_protectedbase_drawFrame".}
proc fcQTreeWidget_protectedbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QTreeWidget_protectedbase_initStyleOption".}
proc fcQTreeWidget_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QTreeWidget_protectedbase_updateMicroFocus".}
proc fcQTreeWidget_protectedbase_create(self: pointer): void {.importc: "QTreeWidget_protectedbase_create".}
proc fcQTreeWidget_protectedbase_destroy(self: pointer): void {.importc: "QTreeWidget_protectedbase_destroy".}
proc fcQTreeWidget_protectedbase_focusNextChild(self: pointer): bool {.importc: "QTreeWidget_protectedbase_focusNextChild".}
proc fcQTreeWidget_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QTreeWidget_protectedbase_focusPreviousChild".}
proc fcQTreeWidget_protectedbase_sender(self: pointer): pointer {.importc: "QTreeWidget_protectedbase_sender".}
proc fcQTreeWidget_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QTreeWidget_protectedbase_senderSignalIndex".}
proc fcQTreeWidget_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QTreeWidget_protectedbase_receivers".}
proc fcQTreeWidget_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QTreeWidget_protectedbase_isSignalConnected".}
proc fcQTreeWidget_new(vtbl, vdata: pointer, parent: pointer): ptr cQTreeWidget {.importc: "QTreeWidget_new".}
proc fcQTreeWidget_new2(vtbl, vdata: pointer): ptr cQTreeWidget {.importc: "QTreeWidget_new2".}
proc fcQTreeWidget_staticMetaObject(): pointer {.importc: "QTreeWidget_staticMetaObject".}

proc clone*(self: gen_qtreewidget_types.QTreeWidgetItem): gen_qtreewidget_types.QTreeWidgetItem =
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidgetItem_clone(self.h), owned: false)

proc treeWidget*(self: gen_qtreewidget_types.QTreeWidgetItem): gen_qtreewidget_types.QTreeWidget =
  gen_qtreewidget_types.QTreeWidget(h: fcQTreeWidgetItem_treeWidget(self.h), owned: false)

proc setSelected*(self: gen_qtreewidget_types.QTreeWidgetItem, select: bool): void =
  fcQTreeWidgetItem_setSelected(self.h, select)

proc isSelected*(self: gen_qtreewidget_types.QTreeWidgetItem): bool =
  fcQTreeWidgetItem_isSelected(self.h)

proc setHidden*(self: gen_qtreewidget_types.QTreeWidgetItem, hide: bool): void =
  fcQTreeWidgetItem_setHidden(self.h, hide)

proc isHidden*(self: gen_qtreewidget_types.QTreeWidgetItem): bool =
  fcQTreeWidgetItem_isHidden(self.h)

proc setExpanded*(self: gen_qtreewidget_types.QTreeWidgetItem, expand: bool): void =
  fcQTreeWidgetItem_setExpanded(self.h, expand)

proc isExpanded*(self: gen_qtreewidget_types.QTreeWidgetItem): bool =
  fcQTreeWidgetItem_isExpanded(self.h)

proc setFirstColumnSpanned*(self: gen_qtreewidget_types.QTreeWidgetItem, span: bool): void =
  fcQTreeWidgetItem_setFirstColumnSpanned(self.h, span)

proc isFirstColumnSpanned*(self: gen_qtreewidget_types.QTreeWidgetItem): bool =
  fcQTreeWidgetItem_isFirstColumnSpanned(self.h)

proc setDisabled*(self: gen_qtreewidget_types.QTreeWidgetItem, disabled: bool): void =
  fcQTreeWidgetItem_setDisabled(self.h, disabled)

proc isDisabled*(self: gen_qtreewidget_types.QTreeWidgetItem): bool =
  fcQTreeWidgetItem_isDisabled(self.h)

proc setChildIndicatorPolicy*(self: gen_qtreewidget_types.QTreeWidgetItem, policy: cint): void =
  fcQTreeWidgetItem_setChildIndicatorPolicy(self.h, cint(policy))

proc childIndicatorPolicy*(self: gen_qtreewidget_types.QTreeWidgetItem): cint =
  cint(fcQTreeWidgetItem_childIndicatorPolicy(self.h))

proc flags*(self: gen_qtreewidget_types.QTreeWidgetItem): cint =
  cint(fcQTreeWidgetItem_flags(self.h))

proc setFlags*(self: gen_qtreewidget_types.QTreeWidgetItem, flags: cint): void =
  fcQTreeWidgetItem_setFlags(self.h, cint(flags))

proc text*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint): string =
  let v_ms = fcQTreeWidgetItem_text(self.h, column)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setText*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint, text: openArray[char]): void =
  fcQTreeWidgetItem_setText(self.h, column, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc icon*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQTreeWidgetItem_icon(self.h, column), owned: true)

proc setIcon*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint, icon: gen_qicon_types.QIcon): void =
  fcQTreeWidgetItem_setIcon(self.h, column, icon.h)

proc statusTip*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint): string =
  let v_ms = fcQTreeWidgetItem_statusTip(self.h, column)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setStatusTip*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint, statusTip: openArray[char]): void =
  fcQTreeWidgetItem_setStatusTip(self.h, column, struct_miqt_string(data: if len(statusTip) > 0: addr statusTip[0] else: nil, len: csize_t(len(statusTip))))

proc toolTip*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint): string =
  let v_ms = fcQTreeWidgetItem_toolTip(self.h, column)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setToolTip*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint, toolTip: openArray[char]): void =
  fcQTreeWidgetItem_setToolTip(self.h, column, struct_miqt_string(data: if len(toolTip) > 0: addr toolTip[0] else: nil, len: csize_t(len(toolTip))))

proc whatsThis*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint): string =
  let v_ms = fcQTreeWidgetItem_whatsThis(self.h, column)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setWhatsThis*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint, whatsThis: openArray[char]): void =
  fcQTreeWidgetItem_setWhatsThis(self.h, column, struct_miqt_string(data: if len(whatsThis) > 0: addr whatsThis[0] else: nil, len: csize_t(len(whatsThis))))

proc font*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQTreeWidgetItem_font(self.h, column), owned: true)

proc setFont*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint, font: gen_qfont_types.QFont): void =
  fcQTreeWidgetItem_setFont(self.h, column, font.h)

proc textAlignment*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint): cint =
  fcQTreeWidgetItem_textAlignment(self.h, column)

proc setTextAlignment*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint, alignment: cint): void =
  fcQTreeWidgetItem_setTextAlignment(self.h, column, alignment)

proc backgroundColor*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQTreeWidgetItem_backgroundColor(self.h, column), owned: true)

proc setBackgroundColor*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint, color: gen_qcolor_types.QColor): void =
  fcQTreeWidgetItem_setBackgroundColor(self.h, column, color.h)

proc background*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQTreeWidgetItem_background(self.h, column), owned: true)

proc setBackground*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint, brush: gen_qbrush_types.QBrush): void =
  fcQTreeWidgetItem_setBackground(self.h, column, brush.h)

proc textColor*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQTreeWidgetItem_textColor(self.h, column), owned: true)

proc setTextColor*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint, color: gen_qcolor_types.QColor): void =
  fcQTreeWidgetItem_setTextColor(self.h, column, color.h)

proc foreground*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQTreeWidgetItem_foreground(self.h, column), owned: true)

proc setForeground*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint, brush: gen_qbrush_types.QBrush): void =
  fcQTreeWidgetItem_setForeground(self.h, column, brush.h)

proc checkState*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint): cint =
  cint(fcQTreeWidgetItem_checkState(self.h, column))

proc setCheckState*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint, state: cint): void =
  fcQTreeWidgetItem_setCheckState(self.h, column, cint(state))

proc sizeHint*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTreeWidgetItem_sizeHint(self.h, column), owned: true)

proc setSizeHint*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint, size: gen_qsize_types.QSize): void =
  fcQTreeWidgetItem_setSizeHint(self.h, column, size.h)

proc data*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQTreeWidgetItem_data(self.h, column, role), owned: true)

proc setData*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint, role: cint, value: gen_qvariant_types.QVariant): void =
  fcQTreeWidgetItem_setData(self.h, column, role, value.h)

proc operatorLesser*(self: gen_qtreewidget_types.QTreeWidgetItem, other: gen_qtreewidget_types.QTreeWidgetItem): bool =
  fcQTreeWidgetItem_operatorLesser(self.h, other.h)

proc read*(self: gen_qtreewidget_types.QTreeWidgetItem, inVal: gen_qdatastream_types.QDataStream): void =
  fcQTreeWidgetItem_read(self.h, inVal.h)

proc write*(self: gen_qtreewidget_types.QTreeWidgetItem, outVal: gen_qdatastream_types.QDataStream): void =
  fcQTreeWidgetItem_write(self.h, outVal.h)

proc operatorAssign*(self: gen_qtreewidget_types.QTreeWidgetItem, other: gen_qtreewidget_types.QTreeWidgetItem): void =
  fcQTreeWidgetItem_operatorAssign(self.h, other.h)

proc parent*(self: gen_qtreewidget_types.QTreeWidgetItem): gen_qtreewidget_types.QTreeWidgetItem =
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidgetItem_parent(self.h), owned: false)

proc child*(self: gen_qtreewidget_types.QTreeWidgetItem, index: cint): gen_qtreewidget_types.QTreeWidgetItem =
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidgetItem_child(self.h, index), owned: false)

proc childCount*(self: gen_qtreewidget_types.QTreeWidgetItem): cint =
  fcQTreeWidgetItem_childCount(self.h)

proc columnCount*(self: gen_qtreewidget_types.QTreeWidgetItem): cint =
  fcQTreeWidgetItem_columnCount(self.h)

proc indexOfChild*(self: gen_qtreewidget_types.QTreeWidgetItem, child: gen_qtreewidget_types.QTreeWidgetItem): cint =
  fcQTreeWidgetItem_indexOfChild(self.h, child.h)

proc addChild*(self: gen_qtreewidget_types.QTreeWidgetItem, child: gen_qtreewidget_types.QTreeWidgetItem): void =
  fcQTreeWidgetItem_addChild(self.h, child.h)

proc insertChild*(self: gen_qtreewidget_types.QTreeWidgetItem, index: cint, child: gen_qtreewidget_types.QTreeWidgetItem): void =
  fcQTreeWidgetItem_insertChild(self.h, index, child.h)

proc removeChild*(self: gen_qtreewidget_types.QTreeWidgetItem, child: gen_qtreewidget_types.QTreeWidgetItem): void =
  fcQTreeWidgetItem_removeChild(self.h, child.h)

proc takeChild*(self: gen_qtreewidget_types.QTreeWidgetItem, index: cint): gen_qtreewidget_types.QTreeWidgetItem =
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidgetItem_takeChild(self.h, index), owned: false)

proc addChildren*(self: gen_qtreewidget_types.QTreeWidgetItem, children: openArray[gen_qtreewidget_types.QTreeWidgetItem]): void =
  var children_CArray = newSeq[pointer](len(children))
  for i in 0..<len(children):
    children_CArray[i] = children[i].h

  fcQTreeWidgetItem_addChildren(self.h, struct_miqt_array(len: csize_t(len(children)), data: if len(children) == 0: nil else: addr(children_CArray[0])))

proc insertChildren*(self: gen_qtreewidget_types.QTreeWidgetItem, index: cint, children: openArray[gen_qtreewidget_types.QTreeWidgetItem]): void =
  var children_CArray = newSeq[pointer](len(children))
  for i in 0..<len(children):
    children_CArray[i] = children[i].h

  fcQTreeWidgetItem_insertChildren(self.h, index, struct_miqt_array(len: csize_t(len(children)), data: if len(children) == 0: nil else: addr(children_CArray[0])))

proc takeChildren*(self: gen_qtreewidget_types.QTreeWidgetItem): seq[gen_qtreewidget_types.QTreeWidgetItem] =
  var v_ma = fcQTreeWidgetItem_takeChildren(self.h)
  var vx_ret = newSeq[gen_qtreewidget_types.QTreeWidgetItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qtreewidget_types.QTreeWidgetItem(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc typeX*(self: gen_qtreewidget_types.QTreeWidgetItem): cint =
  fcQTreeWidgetItem_typeX(self.h)

proc sortChildren*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint, order: cint): void =
  fcQTreeWidgetItem_sortChildren(self.h, column, cint(order))

type QTreeWidgetItemcloneProc* = proc(self: QTreeWidgetItem): gen_qtreewidget_types.QTreeWidgetItem {.raises: [], gcsafe.}
type QTreeWidgetItemdataProc* = proc(self: QTreeWidgetItem, column: cint, role: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QTreeWidgetItemsetDataProc* = proc(self: QTreeWidgetItem, column: cint, role: cint, value: gen_qvariant_types.QVariant): void {.raises: [], gcsafe.}
type QTreeWidgetItemoperatorLesserProc* = proc(self: QTreeWidgetItem, other: gen_qtreewidget_types.QTreeWidgetItem): bool {.raises: [], gcsafe.}
type QTreeWidgetItemreadProc* = proc(self: QTreeWidgetItem, inVal: gen_qdatastream_types.QDataStream): void {.raises: [], gcsafe.}
type QTreeWidgetItemwriteProc* = proc(self: QTreeWidgetItem, outVal: gen_qdatastream_types.QDataStream): void {.raises: [], gcsafe.}
type QTreeWidgetItemVTable* {.inheritable, pure.} = object
  vtbl: cQTreeWidgetItemVTable
  clone*: QTreeWidgetItemcloneProc
  data*: QTreeWidgetItemdataProc
  setData*: QTreeWidgetItemsetDataProc
  operatorLesser*: QTreeWidgetItemoperatorLesserProc
  read*: QTreeWidgetItemreadProc
  write*: QTreeWidgetItemwriteProc
proc QTreeWidgetItemclone*(self: gen_qtreewidget_types.QTreeWidgetItem): gen_qtreewidget_types.QTreeWidgetItem =
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidgetItem_virtualbase_clone(self.h), owned: false)

proc cQTreeWidgetItem_vtable_callback_clone(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetItemVTable](fcQTreeWidgetItem_vdata(self))
  let self = QTreeWidgetItem(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTreeWidgetItemdata*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQTreeWidgetItem_virtualbase_data(self.h, column, role), owned: true)

proc cQTreeWidgetItem_vtable_callback_data(self: pointer, column: cint, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetItemVTable](fcQTreeWidgetItem_vdata(self))
  let self = QTreeWidgetItem(h: self)
  let slotval1 = column
  let slotval2 = role
  var virtualReturn = vtbl[].data(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTreeWidgetItemsetData*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint, role: cint, value: gen_qvariant_types.QVariant): void =
  fcQTreeWidgetItem_virtualbase_setData(self.h, column, role, value.h)

proc cQTreeWidgetItem_vtable_callback_setData(self: pointer, column: cint, role: cint, value: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetItemVTable](fcQTreeWidgetItem_vdata(self))
  let self = QTreeWidgetItem(h: self)
  let slotval1 = column
  let slotval2 = role
  let slotval3 = gen_qvariant_types.QVariant(h: value, owned: false)
  vtbl[].setData(self, slotval1, slotval2, slotval3)

proc QTreeWidgetItemoperatorLesser*(self: gen_qtreewidget_types.QTreeWidgetItem, other: gen_qtreewidget_types.QTreeWidgetItem): bool =
  fcQTreeWidgetItem_virtualbase_operatorLesser(self.h, other.h)

proc cQTreeWidgetItem_vtable_callback_operatorLesser(self: pointer, other: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetItemVTable](fcQTreeWidgetItem_vdata(self))
  let self = QTreeWidgetItem(h: self)
  let slotval1 = gen_qtreewidget_types.QTreeWidgetItem(h: other, owned: false)
  var virtualReturn = vtbl[].operatorLesser(self, slotval1)
  virtualReturn

proc QTreeWidgetItemread*(self: gen_qtreewidget_types.QTreeWidgetItem, inVal: gen_qdatastream_types.QDataStream): void =
  fcQTreeWidgetItem_virtualbase_read(self.h, inVal.h)

proc cQTreeWidgetItem_vtable_callback_read(self: pointer, inVal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetItemVTable](fcQTreeWidgetItem_vdata(self))
  let self = QTreeWidgetItem(h: self)
  let slotval1 = gen_qdatastream_types.QDataStream(h: inVal, owned: false)
  vtbl[].read(self, slotval1)

proc QTreeWidgetItemwrite*(self: gen_qtreewidget_types.QTreeWidgetItem, outVal: gen_qdatastream_types.QDataStream): void =
  fcQTreeWidgetItem_virtualbase_write(self.h, outVal.h)

proc cQTreeWidgetItem_vtable_callback_write(self: pointer, outVal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetItemVTable](fcQTreeWidgetItem_vdata(self))
  let self = QTreeWidgetItem(h: self)
  let slotval1 = gen_qdatastream_types.QDataStream(h: outVal, owned: false)
  vtbl[].write(self, slotval1)

type VirtualQTreeWidgetItem* {.inheritable.} = ref object of QTreeWidgetItem
  vtbl*: cQTreeWidgetItemVTable
method clone*(self: VirtualQTreeWidgetItem): gen_qtreewidget_types.QTreeWidgetItem {.base.} =
  QTreeWidgetItemclone(self[])
proc cQTreeWidgetItem_method_callback_clone(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTreeWidgetItem](fcQTreeWidgetItem_vdata(self))
  var virtualReturn = inst.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method data*(self: VirtualQTreeWidgetItem, column: cint, role: cint): gen_qvariant_types.QVariant {.base.} =
  QTreeWidgetItemdata(self[], column, role)
proc cQTreeWidgetItem_method_callback_data(self: pointer, column: cint, role: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQTreeWidgetItem](fcQTreeWidgetItem_vdata(self))
  let slotval1 = column
  let slotval2 = role
  var virtualReturn = inst.data(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method setData*(self: VirtualQTreeWidgetItem, column: cint, role: cint, value: gen_qvariant_types.QVariant): void {.base.} =
  QTreeWidgetItemsetData(self[], column, role, value)
proc cQTreeWidgetItem_method_callback_setData(self: pointer, column: cint, role: cint, value: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidgetItem](fcQTreeWidgetItem_vdata(self))
  let slotval1 = column
  let slotval2 = role
  let slotval3 = gen_qvariant_types.QVariant(h: value, owned: false)
  inst.setData(slotval1, slotval2, slotval3)

method operatorLesser*(self: VirtualQTreeWidgetItem, other: gen_qtreewidget_types.QTreeWidgetItem): bool {.base.} =
  QTreeWidgetItemoperatorLesser(self[], other)
proc cQTreeWidgetItem_method_callback_operatorLesser(self: pointer, other: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTreeWidgetItem](fcQTreeWidgetItem_vdata(self))
  let slotval1 = gen_qtreewidget_types.QTreeWidgetItem(h: other, owned: false)
  var virtualReturn = inst.operatorLesser(slotval1)
  virtualReturn

method read*(self: VirtualQTreeWidgetItem, inVal: gen_qdatastream_types.QDataStream): void {.base.} =
  QTreeWidgetItemread(self[], inVal)
proc cQTreeWidgetItem_method_callback_read(self: pointer, inVal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidgetItem](fcQTreeWidgetItem_vdata(self))
  let slotval1 = gen_qdatastream_types.QDataStream(h: inVal, owned: false)
  inst.read(slotval1)

method write*(self: VirtualQTreeWidgetItem, outVal: gen_qdatastream_types.QDataStream): void {.base.} =
  QTreeWidgetItemwrite(self[], outVal)
proc cQTreeWidgetItem_method_callback_write(self: pointer, outVal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidgetItem](fcQTreeWidgetItem_vdata(self))
  let slotval1 = gen_qdatastream_types.QDataStream(h: outVal, owned: false)
  inst.write(slotval1)

proc emitDataChanged*(self: gen_qtreewidget_types.QTreeWidgetItem): void =
  fcQTreeWidgetItem_protectedbase_emitDataChanged(self.h)

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    vtbl: ref QTreeWidgetItemVTable = nil): gen_qtreewidget_types.QTreeWidgetItem =
  let vtbl = if vtbl == nil: new QTreeWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTreeWidgetItemVTable](fcQTreeWidgetItem_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = cQTreeWidgetItem_vtable_callback_clone
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = cQTreeWidgetItem_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = cQTreeWidgetItem_vtable_callback_setData
  if not isNil(vtbl[].operatorLesser):
    vtbl[].vtbl.operatorLesser = cQTreeWidgetItem_vtable_callback_operatorLesser
  if not isNil(vtbl[].read):
    vtbl[].vtbl.read = cQTreeWidgetItem_vtable_callback_read
  if not isNil(vtbl[].write):
    vtbl[].vtbl.write = cQTreeWidgetItem_vtable_callback_write
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidgetItem_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    strings: openArray[string],
    vtbl: ref QTreeWidgetItemVTable = nil): gen_qtreewidget_types.QTreeWidgetItem =
  var strings_CArray = newSeq[struct_miqt_string](len(strings))
  for i in 0..<len(strings):
    strings_CArray[i] = struct_miqt_string(data: if len(strings[i]) > 0: addr strings[i][0] else: nil, len: csize_t(len(strings[i])))

  let vtbl = if vtbl == nil: new QTreeWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTreeWidgetItemVTable](fcQTreeWidgetItem_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = cQTreeWidgetItem_vtable_callback_clone
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = cQTreeWidgetItem_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = cQTreeWidgetItem_vtable_callback_setData
  if not isNil(vtbl[].operatorLesser):
    vtbl[].vtbl.operatorLesser = cQTreeWidgetItem_vtable_callback_operatorLesser
  if not isNil(vtbl[].read):
    vtbl[].vtbl.read = cQTreeWidgetItem_vtable_callback_read
  if not isNil(vtbl[].write):
    vtbl[].vtbl.write = cQTreeWidgetItem_vtable_callback_write
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidgetItem_new2(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_array(len: csize_t(len(strings)), data: if len(strings) == 0: nil else: addr(strings_CArray[0]))), owned: true)

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    treeview: gen_qtreewidget_types.QTreeWidget,
    vtbl: ref QTreeWidgetItemVTable = nil): gen_qtreewidget_types.QTreeWidgetItem =
  let vtbl = if vtbl == nil: new QTreeWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTreeWidgetItemVTable](fcQTreeWidgetItem_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = cQTreeWidgetItem_vtable_callback_clone
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = cQTreeWidgetItem_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = cQTreeWidgetItem_vtable_callback_setData
  if not isNil(vtbl[].operatorLesser):
    vtbl[].vtbl.operatorLesser = cQTreeWidgetItem_vtable_callback_operatorLesser
  if not isNil(vtbl[].read):
    vtbl[].vtbl.read = cQTreeWidgetItem_vtable_callback_read
  if not isNil(vtbl[].write):
    vtbl[].vtbl.write = cQTreeWidgetItem_vtable_callback_write
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidgetItem_new3(addr(vtbl[].vtbl), addr(vtbl[]), treeview.h), owned: true)

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    treeview: gen_qtreewidget_types.QTreeWidget, strings: openArray[string],
    vtbl: ref QTreeWidgetItemVTable = nil): gen_qtreewidget_types.QTreeWidgetItem =
  var strings_CArray = newSeq[struct_miqt_string](len(strings))
  for i in 0..<len(strings):
    strings_CArray[i] = struct_miqt_string(data: if len(strings[i]) > 0: addr strings[i][0] else: nil, len: csize_t(len(strings[i])))

  let vtbl = if vtbl == nil: new QTreeWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTreeWidgetItemVTable](fcQTreeWidgetItem_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = cQTreeWidgetItem_vtable_callback_clone
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = cQTreeWidgetItem_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = cQTreeWidgetItem_vtable_callback_setData
  if not isNil(vtbl[].operatorLesser):
    vtbl[].vtbl.operatorLesser = cQTreeWidgetItem_vtable_callback_operatorLesser
  if not isNil(vtbl[].read):
    vtbl[].vtbl.read = cQTreeWidgetItem_vtable_callback_read
  if not isNil(vtbl[].write):
    vtbl[].vtbl.write = cQTreeWidgetItem_vtable_callback_write
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidgetItem_new4(addr(vtbl[].vtbl), addr(vtbl[]), treeview.h, struct_miqt_array(len: csize_t(len(strings)), data: if len(strings) == 0: nil else: addr(strings_CArray[0]))), owned: true)

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    treeview: gen_qtreewidget_types.QTreeWidget, after: gen_qtreewidget_types.QTreeWidgetItem,
    vtbl: ref QTreeWidgetItemVTable = nil): gen_qtreewidget_types.QTreeWidgetItem =
  let vtbl = if vtbl == nil: new QTreeWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTreeWidgetItemVTable](fcQTreeWidgetItem_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = cQTreeWidgetItem_vtable_callback_clone
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = cQTreeWidgetItem_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = cQTreeWidgetItem_vtable_callback_setData
  if not isNil(vtbl[].operatorLesser):
    vtbl[].vtbl.operatorLesser = cQTreeWidgetItem_vtable_callback_operatorLesser
  if not isNil(vtbl[].read):
    vtbl[].vtbl.read = cQTreeWidgetItem_vtable_callback_read
  if not isNil(vtbl[].write):
    vtbl[].vtbl.write = cQTreeWidgetItem_vtable_callback_write
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidgetItem_new5(addr(vtbl[].vtbl), addr(vtbl[]), treeview.h, after.h), owned: true)

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    parent: gen_qtreewidget_types.QTreeWidgetItem,
    vtbl: ref QTreeWidgetItemVTable = nil): gen_qtreewidget_types.QTreeWidgetItem =
  let vtbl = if vtbl == nil: new QTreeWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTreeWidgetItemVTable](fcQTreeWidgetItem_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = cQTreeWidgetItem_vtable_callback_clone
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = cQTreeWidgetItem_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = cQTreeWidgetItem_vtable_callback_setData
  if not isNil(vtbl[].operatorLesser):
    vtbl[].vtbl.operatorLesser = cQTreeWidgetItem_vtable_callback_operatorLesser
  if not isNil(vtbl[].read):
    vtbl[].vtbl.read = cQTreeWidgetItem_vtable_callback_read
  if not isNil(vtbl[].write):
    vtbl[].vtbl.write = cQTreeWidgetItem_vtable_callback_write
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidgetItem_new6(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    parent: gen_qtreewidget_types.QTreeWidgetItem, strings: openArray[string],
    vtbl: ref QTreeWidgetItemVTable = nil): gen_qtreewidget_types.QTreeWidgetItem =
  var strings_CArray = newSeq[struct_miqt_string](len(strings))
  for i in 0..<len(strings):
    strings_CArray[i] = struct_miqt_string(data: if len(strings[i]) > 0: addr strings[i][0] else: nil, len: csize_t(len(strings[i])))

  let vtbl = if vtbl == nil: new QTreeWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTreeWidgetItemVTable](fcQTreeWidgetItem_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = cQTreeWidgetItem_vtable_callback_clone
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = cQTreeWidgetItem_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = cQTreeWidgetItem_vtable_callback_setData
  if not isNil(vtbl[].operatorLesser):
    vtbl[].vtbl.operatorLesser = cQTreeWidgetItem_vtable_callback_operatorLesser
  if not isNil(vtbl[].read):
    vtbl[].vtbl.read = cQTreeWidgetItem_vtable_callback_read
  if not isNil(vtbl[].write):
    vtbl[].vtbl.write = cQTreeWidgetItem_vtable_callback_write
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidgetItem_new7(addr(vtbl[].vtbl), addr(vtbl[]), parent.h, struct_miqt_array(len: csize_t(len(strings)), data: if len(strings) == 0: nil else: addr(strings_CArray[0]))), owned: true)

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    parent: gen_qtreewidget_types.QTreeWidgetItem, after: gen_qtreewidget_types.QTreeWidgetItem,
    vtbl: ref QTreeWidgetItemVTable = nil): gen_qtreewidget_types.QTreeWidgetItem =
  let vtbl = if vtbl == nil: new QTreeWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTreeWidgetItemVTable](fcQTreeWidgetItem_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = cQTreeWidgetItem_vtable_callback_clone
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = cQTreeWidgetItem_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = cQTreeWidgetItem_vtable_callback_setData
  if not isNil(vtbl[].operatorLesser):
    vtbl[].vtbl.operatorLesser = cQTreeWidgetItem_vtable_callback_operatorLesser
  if not isNil(vtbl[].read):
    vtbl[].vtbl.read = cQTreeWidgetItem_vtable_callback_read
  if not isNil(vtbl[].write):
    vtbl[].vtbl.write = cQTreeWidgetItem_vtable_callback_write
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidgetItem_new8(addr(vtbl[].vtbl), addr(vtbl[]), parent.h, after.h), owned: true)

proc create2*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    other: gen_qtreewidget_types.QTreeWidgetItem,
    vtbl: ref QTreeWidgetItemVTable = nil): gen_qtreewidget_types.QTreeWidgetItem =
  let vtbl = if vtbl == nil: new QTreeWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTreeWidgetItemVTable](fcQTreeWidgetItem_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = cQTreeWidgetItem_vtable_callback_clone
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = cQTreeWidgetItem_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = cQTreeWidgetItem_vtable_callback_setData
  if not isNil(vtbl[].operatorLesser):
    vtbl[].vtbl.operatorLesser = cQTreeWidgetItem_vtable_callback_operatorLesser
  if not isNil(vtbl[].read):
    vtbl[].vtbl.read = cQTreeWidgetItem_vtable_callback_read
  if not isNil(vtbl[].write):
    vtbl[].vtbl.write = cQTreeWidgetItem_vtable_callback_write
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidgetItem_new9(addr(vtbl[].vtbl), addr(vtbl[]), other.h), owned: true)

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    typeVal: cint,
    vtbl: ref QTreeWidgetItemVTable = nil): gen_qtreewidget_types.QTreeWidgetItem =
  let vtbl = if vtbl == nil: new QTreeWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTreeWidgetItemVTable](fcQTreeWidgetItem_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = cQTreeWidgetItem_vtable_callback_clone
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = cQTreeWidgetItem_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = cQTreeWidgetItem_vtable_callback_setData
  if not isNil(vtbl[].operatorLesser):
    vtbl[].vtbl.operatorLesser = cQTreeWidgetItem_vtable_callback_operatorLesser
  if not isNil(vtbl[].read):
    vtbl[].vtbl.read = cQTreeWidgetItem_vtable_callback_read
  if not isNil(vtbl[].write):
    vtbl[].vtbl.write = cQTreeWidgetItem_vtable_callback_write
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidgetItem_new10(addr(vtbl[].vtbl), addr(vtbl[]), typeVal), owned: true)

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    strings: openArray[string], typeVal: cint,
    vtbl: ref QTreeWidgetItemVTable = nil): gen_qtreewidget_types.QTreeWidgetItem =
  var strings_CArray = newSeq[struct_miqt_string](len(strings))
  for i in 0..<len(strings):
    strings_CArray[i] = struct_miqt_string(data: if len(strings[i]) > 0: addr strings[i][0] else: nil, len: csize_t(len(strings[i])))

  let vtbl = if vtbl == nil: new QTreeWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTreeWidgetItemVTable](fcQTreeWidgetItem_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = cQTreeWidgetItem_vtable_callback_clone
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = cQTreeWidgetItem_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = cQTreeWidgetItem_vtable_callback_setData
  if not isNil(vtbl[].operatorLesser):
    vtbl[].vtbl.operatorLesser = cQTreeWidgetItem_vtable_callback_operatorLesser
  if not isNil(vtbl[].read):
    vtbl[].vtbl.read = cQTreeWidgetItem_vtable_callback_read
  if not isNil(vtbl[].write):
    vtbl[].vtbl.write = cQTreeWidgetItem_vtable_callback_write
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidgetItem_new11(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_array(len: csize_t(len(strings)), data: if len(strings) == 0: nil else: addr(strings_CArray[0])), typeVal), owned: true)

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    treeview: gen_qtreewidget_types.QTreeWidget, typeVal: cint,
    vtbl: ref QTreeWidgetItemVTable = nil): gen_qtreewidget_types.QTreeWidgetItem =
  let vtbl = if vtbl == nil: new QTreeWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTreeWidgetItemVTable](fcQTreeWidgetItem_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = cQTreeWidgetItem_vtable_callback_clone
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = cQTreeWidgetItem_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = cQTreeWidgetItem_vtable_callback_setData
  if not isNil(vtbl[].operatorLesser):
    vtbl[].vtbl.operatorLesser = cQTreeWidgetItem_vtable_callback_operatorLesser
  if not isNil(vtbl[].read):
    vtbl[].vtbl.read = cQTreeWidgetItem_vtable_callback_read
  if not isNil(vtbl[].write):
    vtbl[].vtbl.write = cQTreeWidgetItem_vtable_callback_write
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidgetItem_new12(addr(vtbl[].vtbl), addr(vtbl[]), treeview.h, typeVal), owned: true)

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    treeview: gen_qtreewidget_types.QTreeWidget, strings: openArray[string], typeVal: cint,
    vtbl: ref QTreeWidgetItemVTable = nil): gen_qtreewidget_types.QTreeWidgetItem =
  var strings_CArray = newSeq[struct_miqt_string](len(strings))
  for i in 0..<len(strings):
    strings_CArray[i] = struct_miqt_string(data: if len(strings[i]) > 0: addr strings[i][0] else: nil, len: csize_t(len(strings[i])))

  let vtbl = if vtbl == nil: new QTreeWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTreeWidgetItemVTable](fcQTreeWidgetItem_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = cQTreeWidgetItem_vtable_callback_clone
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = cQTreeWidgetItem_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = cQTreeWidgetItem_vtable_callback_setData
  if not isNil(vtbl[].operatorLesser):
    vtbl[].vtbl.operatorLesser = cQTreeWidgetItem_vtable_callback_operatorLesser
  if not isNil(vtbl[].read):
    vtbl[].vtbl.read = cQTreeWidgetItem_vtable_callback_read
  if not isNil(vtbl[].write):
    vtbl[].vtbl.write = cQTreeWidgetItem_vtable_callback_write
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidgetItem_new13(addr(vtbl[].vtbl), addr(vtbl[]), treeview.h, struct_miqt_array(len: csize_t(len(strings)), data: if len(strings) == 0: nil else: addr(strings_CArray[0])), typeVal), owned: true)

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    treeview: gen_qtreewidget_types.QTreeWidget, after: gen_qtreewidget_types.QTreeWidgetItem, typeVal: cint,
    vtbl: ref QTreeWidgetItemVTable = nil): gen_qtreewidget_types.QTreeWidgetItem =
  let vtbl = if vtbl == nil: new QTreeWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTreeWidgetItemVTable](fcQTreeWidgetItem_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = cQTreeWidgetItem_vtable_callback_clone
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = cQTreeWidgetItem_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = cQTreeWidgetItem_vtable_callback_setData
  if not isNil(vtbl[].operatorLesser):
    vtbl[].vtbl.operatorLesser = cQTreeWidgetItem_vtable_callback_operatorLesser
  if not isNil(vtbl[].read):
    vtbl[].vtbl.read = cQTreeWidgetItem_vtable_callback_read
  if not isNil(vtbl[].write):
    vtbl[].vtbl.write = cQTreeWidgetItem_vtable_callback_write
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidgetItem_new14(addr(vtbl[].vtbl), addr(vtbl[]), treeview.h, after.h, typeVal), owned: true)

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    parent: gen_qtreewidget_types.QTreeWidgetItem, typeVal: cint,
    vtbl: ref QTreeWidgetItemVTable = nil): gen_qtreewidget_types.QTreeWidgetItem =
  let vtbl = if vtbl == nil: new QTreeWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTreeWidgetItemVTable](fcQTreeWidgetItem_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = cQTreeWidgetItem_vtable_callback_clone
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = cQTreeWidgetItem_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = cQTreeWidgetItem_vtable_callback_setData
  if not isNil(vtbl[].operatorLesser):
    vtbl[].vtbl.operatorLesser = cQTreeWidgetItem_vtable_callback_operatorLesser
  if not isNil(vtbl[].read):
    vtbl[].vtbl.read = cQTreeWidgetItem_vtable_callback_read
  if not isNil(vtbl[].write):
    vtbl[].vtbl.write = cQTreeWidgetItem_vtable_callback_write
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidgetItem_new15(addr(vtbl[].vtbl), addr(vtbl[]), parent.h, typeVal), owned: true)

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    parent: gen_qtreewidget_types.QTreeWidgetItem, strings: openArray[string], typeVal: cint,
    vtbl: ref QTreeWidgetItemVTable = nil): gen_qtreewidget_types.QTreeWidgetItem =
  var strings_CArray = newSeq[struct_miqt_string](len(strings))
  for i in 0..<len(strings):
    strings_CArray[i] = struct_miqt_string(data: if len(strings[i]) > 0: addr strings[i][0] else: nil, len: csize_t(len(strings[i])))

  let vtbl = if vtbl == nil: new QTreeWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTreeWidgetItemVTable](fcQTreeWidgetItem_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = cQTreeWidgetItem_vtable_callback_clone
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = cQTreeWidgetItem_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = cQTreeWidgetItem_vtable_callback_setData
  if not isNil(vtbl[].operatorLesser):
    vtbl[].vtbl.operatorLesser = cQTreeWidgetItem_vtable_callback_operatorLesser
  if not isNil(vtbl[].read):
    vtbl[].vtbl.read = cQTreeWidgetItem_vtable_callback_read
  if not isNil(vtbl[].write):
    vtbl[].vtbl.write = cQTreeWidgetItem_vtable_callback_write
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidgetItem_new16(addr(vtbl[].vtbl), addr(vtbl[]), parent.h, struct_miqt_array(len: csize_t(len(strings)), data: if len(strings) == 0: nil else: addr(strings_CArray[0])), typeVal), owned: true)

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    parent: gen_qtreewidget_types.QTreeWidgetItem, after: gen_qtreewidget_types.QTreeWidgetItem, typeVal: cint,
    vtbl: ref QTreeWidgetItemVTable = nil): gen_qtreewidget_types.QTreeWidgetItem =
  let vtbl = if vtbl == nil: new QTreeWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTreeWidgetItemVTable](fcQTreeWidgetItem_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = cQTreeWidgetItem_vtable_callback_clone
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = cQTreeWidgetItem_vtable_callback_data
  if not isNil(vtbl[].setData):
    vtbl[].vtbl.setData = cQTreeWidgetItem_vtable_callback_setData
  if not isNil(vtbl[].operatorLesser):
    vtbl[].vtbl.operatorLesser = cQTreeWidgetItem_vtable_callback_operatorLesser
  if not isNil(vtbl[].read):
    vtbl[].vtbl.read = cQTreeWidgetItem_vtable_callback_read
  if not isNil(vtbl[].write):
    vtbl[].vtbl.write = cQTreeWidgetItem_vtable_callback_write
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidgetItem_new17(addr(vtbl[].vtbl), addr(vtbl[]), parent.h, after.h, typeVal), owned: true)

const cQTreeWidgetItem_mvtbl = cQTreeWidgetItemVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQTreeWidgetItem()[])](self.fcQTreeWidgetItem_vtbl())
    inst[].h = nil
    inst[].owned = false,
  clone: cQTreeWidgetItem_method_callback_clone,
  data: cQTreeWidgetItem_method_callback_data,
  setData: cQTreeWidgetItem_method_callback_setData,
  operatorLesser: cQTreeWidgetItem_method_callback_operatorLesser,
  read: cQTreeWidgetItem_method_callback_read,
  write: cQTreeWidgetItem_method_callback_write,
)
proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    inst: VirtualQTreeWidgetItem) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTreeWidgetItem_new(addr(cQTreeWidgetItem_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    strings: openArray[string],
    inst: VirtualQTreeWidgetItem) =
  var strings_CArray = newSeq[struct_miqt_string](len(strings))
  for i in 0..<len(strings):
    strings_CArray[i] = struct_miqt_string(data: if len(strings[i]) > 0: addr strings[i][0] else: nil, len: csize_t(len(strings[i])))

  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTreeWidgetItem_new2(addr(cQTreeWidgetItem_mvtbl), addr(inst[]), struct_miqt_array(len: csize_t(len(strings)), data: if len(strings) == 0: nil else: addr(strings_CArray[0])))
  inst[].owned = true

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    treeview: gen_qtreewidget_types.QTreeWidget,
    inst: VirtualQTreeWidgetItem) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTreeWidgetItem_new3(addr(cQTreeWidgetItem_mvtbl), addr(inst[]), treeview.h)
  inst[].owned = true

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    treeview: gen_qtreewidget_types.QTreeWidget, strings: openArray[string],
    inst: VirtualQTreeWidgetItem) =
  var strings_CArray = newSeq[struct_miqt_string](len(strings))
  for i in 0..<len(strings):
    strings_CArray[i] = struct_miqt_string(data: if len(strings[i]) > 0: addr strings[i][0] else: nil, len: csize_t(len(strings[i])))

  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTreeWidgetItem_new4(addr(cQTreeWidgetItem_mvtbl), addr(inst[]), treeview.h, struct_miqt_array(len: csize_t(len(strings)), data: if len(strings) == 0: nil else: addr(strings_CArray[0])))
  inst[].owned = true

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    treeview: gen_qtreewidget_types.QTreeWidget, after: gen_qtreewidget_types.QTreeWidgetItem,
    inst: VirtualQTreeWidgetItem) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTreeWidgetItem_new5(addr(cQTreeWidgetItem_mvtbl), addr(inst[]), treeview.h, after.h)
  inst[].owned = true

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    parent: gen_qtreewidget_types.QTreeWidgetItem,
    inst: VirtualQTreeWidgetItem) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTreeWidgetItem_new6(addr(cQTreeWidgetItem_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    parent: gen_qtreewidget_types.QTreeWidgetItem, strings: openArray[string],
    inst: VirtualQTreeWidgetItem) =
  var strings_CArray = newSeq[struct_miqt_string](len(strings))
  for i in 0..<len(strings):
    strings_CArray[i] = struct_miqt_string(data: if len(strings[i]) > 0: addr strings[i][0] else: nil, len: csize_t(len(strings[i])))

  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTreeWidgetItem_new7(addr(cQTreeWidgetItem_mvtbl), addr(inst[]), parent.h, struct_miqt_array(len: csize_t(len(strings)), data: if len(strings) == 0: nil else: addr(strings_CArray[0])))
  inst[].owned = true

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    parent: gen_qtreewidget_types.QTreeWidgetItem, after: gen_qtreewidget_types.QTreeWidgetItem,
    inst: VirtualQTreeWidgetItem) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTreeWidgetItem_new8(addr(cQTreeWidgetItem_mvtbl), addr(inst[]), parent.h, after.h)
  inst[].owned = true

proc create2*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    other: gen_qtreewidget_types.QTreeWidgetItem,
    inst: VirtualQTreeWidgetItem) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTreeWidgetItem_new9(addr(cQTreeWidgetItem_mvtbl), addr(inst[]), other.h)
  inst[].owned = true

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    typeVal: cint,
    inst: VirtualQTreeWidgetItem) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTreeWidgetItem_new10(addr(cQTreeWidgetItem_mvtbl), addr(inst[]), typeVal)
  inst[].owned = true

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    strings: openArray[string], typeVal: cint,
    inst: VirtualQTreeWidgetItem) =
  var strings_CArray = newSeq[struct_miqt_string](len(strings))
  for i in 0..<len(strings):
    strings_CArray[i] = struct_miqt_string(data: if len(strings[i]) > 0: addr strings[i][0] else: nil, len: csize_t(len(strings[i])))

  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTreeWidgetItem_new11(addr(cQTreeWidgetItem_mvtbl), addr(inst[]), struct_miqt_array(len: csize_t(len(strings)), data: if len(strings) == 0: nil else: addr(strings_CArray[0])), typeVal)
  inst[].owned = true

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    treeview: gen_qtreewidget_types.QTreeWidget, typeVal: cint,
    inst: VirtualQTreeWidgetItem) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTreeWidgetItem_new12(addr(cQTreeWidgetItem_mvtbl), addr(inst[]), treeview.h, typeVal)
  inst[].owned = true

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    treeview: gen_qtreewidget_types.QTreeWidget, strings: openArray[string], typeVal: cint,
    inst: VirtualQTreeWidgetItem) =
  var strings_CArray = newSeq[struct_miqt_string](len(strings))
  for i in 0..<len(strings):
    strings_CArray[i] = struct_miqt_string(data: if len(strings[i]) > 0: addr strings[i][0] else: nil, len: csize_t(len(strings[i])))

  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTreeWidgetItem_new13(addr(cQTreeWidgetItem_mvtbl), addr(inst[]), treeview.h, struct_miqt_array(len: csize_t(len(strings)), data: if len(strings) == 0: nil else: addr(strings_CArray[0])), typeVal)
  inst[].owned = true

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    treeview: gen_qtreewidget_types.QTreeWidget, after: gen_qtreewidget_types.QTreeWidgetItem, typeVal: cint,
    inst: VirtualQTreeWidgetItem) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTreeWidgetItem_new14(addr(cQTreeWidgetItem_mvtbl), addr(inst[]), treeview.h, after.h, typeVal)
  inst[].owned = true

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    parent: gen_qtreewidget_types.QTreeWidgetItem, typeVal: cint,
    inst: VirtualQTreeWidgetItem) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTreeWidgetItem_new15(addr(cQTreeWidgetItem_mvtbl), addr(inst[]), parent.h, typeVal)
  inst[].owned = true

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    parent: gen_qtreewidget_types.QTreeWidgetItem, strings: openArray[string], typeVal: cint,
    inst: VirtualQTreeWidgetItem) =
  var strings_CArray = newSeq[struct_miqt_string](len(strings))
  for i in 0..<len(strings):
    strings_CArray[i] = struct_miqt_string(data: if len(strings[i]) > 0: addr strings[i][0] else: nil, len: csize_t(len(strings[i])))

  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTreeWidgetItem_new16(addr(cQTreeWidgetItem_mvtbl), addr(inst[]), parent.h, struct_miqt_array(len: csize_t(len(strings)), data: if len(strings) == 0: nil else: addr(strings_CArray[0])), typeVal)
  inst[].owned = true

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    parent: gen_qtreewidget_types.QTreeWidgetItem, after: gen_qtreewidget_types.QTreeWidgetItem, typeVal: cint,
    inst: VirtualQTreeWidgetItem) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTreeWidgetItem_new17(addr(cQTreeWidgetItem_mvtbl), addr(inst[]), parent.h, after.h, typeVal)
  inst[].owned = true

proc metaObject*(self: gen_qtreewidget_types.QTreeWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTreeWidget_metaObject(self.h), owned: false)

proc metacast*(self: gen_qtreewidget_types.QTreeWidget, param1: cstring): pointer =
  fcQTreeWidget_metacast(self.h, param1)

proc metacall*(self: gen_qtreewidget_types.QTreeWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQTreeWidget_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qtreewidget_types.QTreeWidget, s: cstring): string =
  let v_ms = fcQTreeWidget_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtreewidget_types.QTreeWidget, s: cstring): string =
  let v_ms = fcQTreeWidget_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc columnCount*(self: gen_qtreewidget_types.QTreeWidget): cint =
  fcQTreeWidget_columnCount(self.h)

proc setColumnCount*(self: gen_qtreewidget_types.QTreeWidget, columns: cint): void =
  fcQTreeWidget_setColumnCount(self.h, columns)

proc invisibleRootItem*(self: gen_qtreewidget_types.QTreeWidget): gen_qtreewidget_types.QTreeWidgetItem =
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidget_invisibleRootItem(self.h), owned: false)

proc topLevelItem*(self: gen_qtreewidget_types.QTreeWidget, index: cint): gen_qtreewidget_types.QTreeWidgetItem =
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidget_topLevelItem(self.h, index), owned: false)

proc topLevelItemCount*(self: gen_qtreewidget_types.QTreeWidget): cint =
  fcQTreeWidget_topLevelItemCount(self.h)

proc insertTopLevelItem*(self: gen_qtreewidget_types.QTreeWidget, index: cint, item: gen_qtreewidget_types.QTreeWidgetItem): void =
  fcQTreeWidget_insertTopLevelItem(self.h, index, item.h)

proc addTopLevelItem*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem): void =
  fcQTreeWidget_addTopLevelItem(self.h, item.h)

proc takeTopLevelItem*(self: gen_qtreewidget_types.QTreeWidget, index: cint): gen_qtreewidget_types.QTreeWidgetItem =
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidget_takeTopLevelItem(self.h, index), owned: false)

proc indexOfTopLevelItem*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem): cint =
  fcQTreeWidget_indexOfTopLevelItem(self.h, item.h)

proc insertTopLevelItems*(self: gen_qtreewidget_types.QTreeWidget, index: cint, items: openArray[gen_qtreewidget_types.QTreeWidgetItem]): void =
  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  fcQTreeWidget_insertTopLevelItems(self.h, index, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])))

proc addTopLevelItems*(self: gen_qtreewidget_types.QTreeWidget, items: openArray[gen_qtreewidget_types.QTreeWidgetItem]): void =
  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  fcQTreeWidget_addTopLevelItems(self.h, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])))

proc headerItem*(self: gen_qtreewidget_types.QTreeWidget): gen_qtreewidget_types.QTreeWidgetItem =
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidget_headerItem(self.h), owned: false)

proc setHeaderItem*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem): void =
  fcQTreeWidget_setHeaderItem(self.h, item.h)

proc setHeaderLabels*(self: gen_qtreewidget_types.QTreeWidget, labels: openArray[string]): void =
  var labels_CArray = newSeq[struct_miqt_string](len(labels))
  for i in 0..<len(labels):
    labels_CArray[i] = struct_miqt_string(data: if len(labels[i]) > 0: addr labels[i][0] else: nil, len: csize_t(len(labels[i])))

  fcQTreeWidget_setHeaderLabels(self.h, struct_miqt_array(len: csize_t(len(labels)), data: if len(labels) == 0: nil else: addr(labels_CArray[0])))

proc setHeaderLabel*(self: gen_qtreewidget_types.QTreeWidget, label: openArray[char]): void =
  fcQTreeWidget_setHeaderLabel(self.h, struct_miqt_string(data: if len(label) > 0: addr label[0] else: nil, len: csize_t(len(label))))

proc currentItem*(self: gen_qtreewidget_types.QTreeWidget): gen_qtreewidget_types.QTreeWidgetItem =
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidget_currentItem(self.h), owned: false)

proc currentColumn*(self: gen_qtreewidget_types.QTreeWidget): cint =
  fcQTreeWidget_currentColumn(self.h)

proc setCurrentItem*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem): void =
  fcQTreeWidget_setCurrentItem(self.h, item.h)

proc setCurrentItem*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem, column: cint): void =
  fcQTreeWidget_setCurrentItem2(self.h, item.h, column)

proc setCurrentItem*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem, column: cint, command: cint): void =
  fcQTreeWidget_setCurrentItem3(self.h, item.h, column, cint(command))

proc itemAt*(self: gen_qtreewidget_types.QTreeWidget, p: gen_qpoint_types.QPoint): gen_qtreewidget_types.QTreeWidgetItem =
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidget_itemAt(self.h, p.h), owned: false)

proc itemAt*(self: gen_qtreewidget_types.QTreeWidget, x: cint, y: cint): gen_qtreewidget_types.QTreeWidgetItem =
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidget_itemAt2(self.h, x, y), owned: false)

proc visualItemRect*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQTreeWidget_visualItemRect(self.h, item.h), owned: true)

proc sortColumn*(self: gen_qtreewidget_types.QTreeWidget): cint =
  fcQTreeWidget_sortColumn(self.h)

proc sortItems*(self: gen_qtreewidget_types.QTreeWidget, column: cint, order: cint): void =
  fcQTreeWidget_sortItems(self.h, column, cint(order))

proc editItem*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem): void =
  fcQTreeWidget_editItem(self.h, item.h)

proc openPersistentEditor*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem): void =
  fcQTreeWidget_openPersistentEditor(self.h, item.h)

proc closePersistentEditor*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem): void =
  fcQTreeWidget_closePersistentEditor(self.h, item.h)

proc isPersistentEditorOpen*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem): bool =
  fcQTreeWidget_isPersistentEditorOpen(self.h, item.h)

proc itemWidget*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem, column: cint): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQTreeWidget_itemWidget(self.h, item.h, column), owned: false)

proc setItemWidget*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem, column: cint, widget: gen_qwidget_types.QWidget): void =
  fcQTreeWidget_setItemWidget(self.h, item.h, column, widget.h)

proc removeItemWidget*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem, column: cint): void =
  fcQTreeWidget_removeItemWidget(self.h, item.h, column)

proc isItemSelected*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem): bool =
  fcQTreeWidget_isItemSelected(self.h, item.h)

proc setItemSelected*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem, select: bool): void =
  fcQTreeWidget_setItemSelected(self.h, item.h, select)

proc selectedItems*(self: gen_qtreewidget_types.QTreeWidget): seq[gen_qtreewidget_types.QTreeWidgetItem] =
  var v_ma = fcQTreeWidget_selectedItems(self.h)
  var vx_ret = newSeq[gen_qtreewidget_types.QTreeWidgetItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qtreewidget_types.QTreeWidgetItem(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc findItems*(self: gen_qtreewidget_types.QTreeWidget, text: openArray[char], flags: cint): seq[gen_qtreewidget_types.QTreeWidgetItem] =
  var v_ma = fcQTreeWidget_findItems(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), cint(flags))
  var vx_ret = newSeq[gen_qtreewidget_types.QTreeWidgetItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qtreewidget_types.QTreeWidgetItem(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc isItemHidden*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem): bool =
  fcQTreeWidget_isItemHidden(self.h, item.h)

proc setItemHidden*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem, hide: bool): void =
  fcQTreeWidget_setItemHidden(self.h, item.h, hide)

proc isItemExpanded*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem): bool =
  fcQTreeWidget_isItemExpanded(self.h, item.h)

proc setItemExpanded*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem, expand: bool): void =
  fcQTreeWidget_setItemExpanded(self.h, item.h, expand)

proc isFirstItemColumnSpanned*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem): bool =
  fcQTreeWidget_isFirstItemColumnSpanned(self.h, item.h)

proc setFirstItemColumnSpanned*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem, span: bool): void =
  fcQTreeWidget_setFirstItemColumnSpanned(self.h, item.h, span)

proc itemAbove*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem): gen_qtreewidget_types.QTreeWidgetItem =
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidget_itemAbove(self.h, item.h), owned: false)

proc itemBelow*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem): gen_qtreewidget_types.QTreeWidgetItem =
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidget_itemBelow(self.h, item.h), owned: false)

proc setSelectionModel*(self: gen_qtreewidget_types.QTreeWidget, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void =
  fcQTreeWidget_setSelectionModel(self.h, selectionModel.h)

proc scrollToItem*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem): void =
  fcQTreeWidget_scrollToItem(self.h, item.h)

proc expandItem*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem): void =
  fcQTreeWidget_expandItem(self.h, item.h)

proc collapseItem*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem): void =
  fcQTreeWidget_collapseItem(self.h, item.h)

proc clear*(self: gen_qtreewidget_types.QTreeWidget): void =
  fcQTreeWidget_clear(self.h)

proc itemPressed*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem, column: cint): void =
  fcQTreeWidget_itemPressed(self.h, item.h, column)

type QTreeWidgetitemPressedSlot* = proc(item: gen_qtreewidget_types.QTreeWidgetItem, column: cint)
proc cQTreeWidget_slot_callback_itemPressed(slot: int, item: pointer, column: cint) {.cdecl.} =
  let nimfunc = cast[ptr QTreeWidgetitemPressedSlot](cast[pointer](slot))
  let slotval1 = gen_qtreewidget_types.QTreeWidgetItem(h: item, owned: false)

  let slotval2 = column

  nimfunc[](slotval1, slotval2)

proc cQTreeWidget_slot_callback_itemPressed_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTreeWidgetitemPressedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onitemPressed*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetitemPressedSlot) =
  var tmp = new QTreeWidgetitemPressedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_connect_itemPressed(self.h, cast[int](addr tmp[]), cQTreeWidget_slot_callback_itemPressed, cQTreeWidget_slot_callback_itemPressed_release)

proc itemClicked*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem, column: cint): void =
  fcQTreeWidget_itemClicked(self.h, item.h, column)

type QTreeWidgetitemClickedSlot* = proc(item: gen_qtreewidget_types.QTreeWidgetItem, column: cint)
proc cQTreeWidget_slot_callback_itemClicked(slot: int, item: pointer, column: cint) {.cdecl.} =
  let nimfunc = cast[ptr QTreeWidgetitemClickedSlot](cast[pointer](slot))
  let slotval1 = gen_qtreewidget_types.QTreeWidgetItem(h: item, owned: false)

  let slotval2 = column

  nimfunc[](slotval1, slotval2)

proc cQTreeWidget_slot_callback_itemClicked_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTreeWidgetitemClickedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onitemClicked*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetitemClickedSlot) =
  var tmp = new QTreeWidgetitemClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_connect_itemClicked(self.h, cast[int](addr tmp[]), cQTreeWidget_slot_callback_itemClicked, cQTreeWidget_slot_callback_itemClicked_release)

proc itemDoubleClicked*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem, column: cint): void =
  fcQTreeWidget_itemDoubleClicked(self.h, item.h, column)

type QTreeWidgetitemDoubleClickedSlot* = proc(item: gen_qtreewidget_types.QTreeWidgetItem, column: cint)
proc cQTreeWidget_slot_callback_itemDoubleClicked(slot: int, item: pointer, column: cint) {.cdecl.} =
  let nimfunc = cast[ptr QTreeWidgetitemDoubleClickedSlot](cast[pointer](slot))
  let slotval1 = gen_qtreewidget_types.QTreeWidgetItem(h: item, owned: false)

  let slotval2 = column

  nimfunc[](slotval1, slotval2)

proc cQTreeWidget_slot_callback_itemDoubleClicked_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTreeWidgetitemDoubleClickedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onitemDoubleClicked*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetitemDoubleClickedSlot) =
  var tmp = new QTreeWidgetitemDoubleClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_connect_itemDoubleClicked(self.h, cast[int](addr tmp[]), cQTreeWidget_slot_callback_itemDoubleClicked, cQTreeWidget_slot_callback_itemDoubleClicked_release)

proc itemActivated*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem, column: cint): void =
  fcQTreeWidget_itemActivated(self.h, item.h, column)

type QTreeWidgetitemActivatedSlot* = proc(item: gen_qtreewidget_types.QTreeWidgetItem, column: cint)
proc cQTreeWidget_slot_callback_itemActivated(slot: int, item: pointer, column: cint) {.cdecl.} =
  let nimfunc = cast[ptr QTreeWidgetitemActivatedSlot](cast[pointer](slot))
  let slotval1 = gen_qtreewidget_types.QTreeWidgetItem(h: item, owned: false)

  let slotval2 = column

  nimfunc[](slotval1, slotval2)

proc cQTreeWidget_slot_callback_itemActivated_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTreeWidgetitemActivatedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onitemActivated*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetitemActivatedSlot) =
  var tmp = new QTreeWidgetitemActivatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_connect_itemActivated(self.h, cast[int](addr tmp[]), cQTreeWidget_slot_callback_itemActivated, cQTreeWidget_slot_callback_itemActivated_release)

proc itemEntered*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem, column: cint): void =
  fcQTreeWidget_itemEntered(self.h, item.h, column)

type QTreeWidgetitemEnteredSlot* = proc(item: gen_qtreewidget_types.QTreeWidgetItem, column: cint)
proc cQTreeWidget_slot_callback_itemEntered(slot: int, item: pointer, column: cint) {.cdecl.} =
  let nimfunc = cast[ptr QTreeWidgetitemEnteredSlot](cast[pointer](slot))
  let slotval1 = gen_qtreewidget_types.QTreeWidgetItem(h: item, owned: false)

  let slotval2 = column

  nimfunc[](slotval1, slotval2)

proc cQTreeWidget_slot_callback_itemEntered_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTreeWidgetitemEnteredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onitemEntered*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetitemEnteredSlot) =
  var tmp = new QTreeWidgetitemEnteredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_connect_itemEntered(self.h, cast[int](addr tmp[]), cQTreeWidget_slot_callback_itemEntered, cQTreeWidget_slot_callback_itemEntered_release)

proc itemChanged*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem, column: cint): void =
  fcQTreeWidget_itemChanged(self.h, item.h, column)

type QTreeWidgetitemChangedSlot* = proc(item: gen_qtreewidget_types.QTreeWidgetItem, column: cint)
proc cQTreeWidget_slot_callback_itemChanged(slot: int, item: pointer, column: cint) {.cdecl.} =
  let nimfunc = cast[ptr QTreeWidgetitemChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qtreewidget_types.QTreeWidgetItem(h: item, owned: false)

  let slotval2 = column

  nimfunc[](slotval1, slotval2)

proc cQTreeWidget_slot_callback_itemChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTreeWidgetitemChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onitemChanged*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetitemChangedSlot) =
  var tmp = new QTreeWidgetitemChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_connect_itemChanged(self.h, cast[int](addr tmp[]), cQTreeWidget_slot_callback_itemChanged, cQTreeWidget_slot_callback_itemChanged_release)

proc itemExpanded*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem): void =
  fcQTreeWidget_itemExpanded(self.h, item.h)

type QTreeWidgetitemExpandedSlot* = proc(item: gen_qtreewidget_types.QTreeWidgetItem)
proc cQTreeWidget_slot_callback_itemExpanded(slot: int, item: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QTreeWidgetitemExpandedSlot](cast[pointer](slot))
  let slotval1 = gen_qtreewidget_types.QTreeWidgetItem(h: item, owned: false)

  nimfunc[](slotval1)

proc cQTreeWidget_slot_callback_itemExpanded_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTreeWidgetitemExpandedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onitemExpanded*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetitemExpandedSlot) =
  var tmp = new QTreeWidgetitemExpandedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_connect_itemExpanded(self.h, cast[int](addr tmp[]), cQTreeWidget_slot_callback_itemExpanded, cQTreeWidget_slot_callback_itemExpanded_release)

proc itemCollapsed*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem): void =
  fcQTreeWidget_itemCollapsed(self.h, item.h)

type QTreeWidgetitemCollapsedSlot* = proc(item: gen_qtreewidget_types.QTreeWidgetItem)
proc cQTreeWidget_slot_callback_itemCollapsed(slot: int, item: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QTreeWidgetitemCollapsedSlot](cast[pointer](slot))
  let slotval1 = gen_qtreewidget_types.QTreeWidgetItem(h: item, owned: false)

  nimfunc[](slotval1)

proc cQTreeWidget_slot_callback_itemCollapsed_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTreeWidgetitemCollapsedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onitemCollapsed*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetitemCollapsedSlot) =
  var tmp = new QTreeWidgetitemCollapsedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_connect_itemCollapsed(self.h, cast[int](addr tmp[]), cQTreeWidget_slot_callback_itemCollapsed, cQTreeWidget_slot_callback_itemCollapsed_release)

proc currentItemChanged*(self: gen_qtreewidget_types.QTreeWidget, current: gen_qtreewidget_types.QTreeWidgetItem, previous: gen_qtreewidget_types.QTreeWidgetItem): void =
  fcQTreeWidget_currentItemChanged(self.h, current.h, previous.h)

type QTreeWidgetcurrentItemChangedSlot* = proc(current: gen_qtreewidget_types.QTreeWidgetItem, previous: gen_qtreewidget_types.QTreeWidgetItem)
proc cQTreeWidget_slot_callback_currentItemChanged(slot: int, current: pointer, previous: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QTreeWidgetcurrentItemChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qtreewidget_types.QTreeWidgetItem(h: current, owned: false)

  let slotval2 = gen_qtreewidget_types.QTreeWidgetItem(h: previous, owned: false)

  nimfunc[](slotval1, slotval2)

proc cQTreeWidget_slot_callback_currentItemChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTreeWidgetcurrentItemChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncurrentItemChanged*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetcurrentItemChangedSlot) =
  var tmp = new QTreeWidgetcurrentItemChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_connect_currentItemChanged(self.h, cast[int](addr tmp[]), cQTreeWidget_slot_callback_currentItemChanged, cQTreeWidget_slot_callback_currentItemChanged_release)

proc itemSelectionChanged*(self: gen_qtreewidget_types.QTreeWidget): void =
  fcQTreeWidget_itemSelectionChanged(self.h)

type QTreeWidgetitemSelectionChangedSlot* = proc()
proc cQTreeWidget_slot_callback_itemSelectionChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QTreeWidgetitemSelectionChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQTreeWidget_slot_callback_itemSelectionChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTreeWidgetitemSelectionChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onitemSelectionChanged*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetitemSelectionChangedSlot) =
  var tmp = new QTreeWidgetitemSelectionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_connect_itemSelectionChanged(self.h, cast[int](addr tmp[]), cQTreeWidget_slot_callback_itemSelectionChanged, cQTreeWidget_slot_callback_itemSelectionChanged_release)

proc tr*(_: type gen_qtreewidget_types.QTreeWidget, s: cstring, c: cstring): string =
  let v_ms = fcQTreeWidget_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qtreewidget_types.QTreeWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTreeWidget_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtreewidget_types.QTreeWidget, s: cstring, c: cstring): string =
  let v_ms = fcQTreeWidget_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtreewidget_types.QTreeWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTreeWidget_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc editItem*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem, column: cint): void =
  fcQTreeWidget_editItem2(self.h, item.h, column)

proc openPersistentEditor*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem, column: cint): void =
  fcQTreeWidget_openPersistentEditor2(self.h, item.h, column)

proc closePersistentEditor*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem, column: cint): void =
  fcQTreeWidget_closePersistentEditor2(self.h, item.h, column)

proc isPersistentEditorOpen*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem, column: cint): bool =
  fcQTreeWidget_isPersistentEditorOpen2(self.h, item.h, column)

proc findItems*(self: gen_qtreewidget_types.QTreeWidget, text: openArray[char], flags: cint, column: cint): seq[gen_qtreewidget_types.QTreeWidgetItem] =
  var v_ma = fcQTreeWidget_findItems3(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), cint(flags), column)
  var vx_ret = newSeq[gen_qtreewidget_types.QTreeWidgetItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qtreewidget_types.QTreeWidgetItem(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc scrollToItem*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem, hint: cint): void =
  fcQTreeWidget_scrollToItem2(self.h, item.h, cint(hint))

type QTreeWidgetmetaObjectProc* = proc(self: QTreeWidget): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QTreeWidgetmetacastProc* = proc(self: QTreeWidget, param1: cstring): pointer {.raises: [], gcsafe.}
type QTreeWidgetmetacallProc* = proc(self: QTreeWidget, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QTreeWidgetsetSelectionModelProc* = proc(self: QTreeWidget, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void {.raises: [], gcsafe.}
type QTreeWidgeteventProc* = proc(self: QTreeWidget, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTreeWidgetmimeTypesProc* = proc(self: QTreeWidget): seq[string] {.raises: [], gcsafe.}
type QTreeWidgetmimeDataProc* = proc(self: QTreeWidget, items: openArray[gen_qtreewidget_types.QTreeWidgetItem]): gen_qmimedata_types.QMimeData {.raises: [], gcsafe.}
type QTreeWidgetdropMimeDataProc* = proc(self: QTreeWidget, parent: gen_qtreewidget_types.QTreeWidgetItem, index: cint, data: gen_qmimedata_types.QMimeData, action: cint): bool {.raises: [], gcsafe.}
type QTreeWidgetsupportedDropActionsProc* = proc(self: QTreeWidget): cint {.raises: [], gcsafe.}
type QTreeWidgetdropEventProc* = proc(self: QTreeWidget, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QTreeWidgetsetRootIndexProc* = proc(self: QTreeWidget, index: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QTreeWidgetkeyboardSearchProc* = proc(self: QTreeWidget, search: openArray[char]): void {.raises: [], gcsafe.}
type QTreeWidgetvisualRectProc* = proc(self: QTreeWidget, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect {.raises: [], gcsafe.}
type QTreeWidgetscrollToProc* = proc(self: QTreeWidget, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void {.raises: [], gcsafe.}
type QTreeWidgetindexAtProc* = proc(self: QTreeWidget, p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QTreeWidgetdoItemsLayoutProc* = proc(self: QTreeWidget): void {.raises: [], gcsafe.}
type QTreeWidgetresetProc* = proc(self: QTreeWidget): void {.raises: [], gcsafe.}
type QTreeWidgetdataChangedProc* = proc(self: QTreeWidget, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: openArray[cint]): void {.raises: [], gcsafe.}
type QTreeWidgetselectAllProc* = proc(self: QTreeWidget): void {.raises: [], gcsafe.}
type QTreeWidgetverticalScrollbarValueChangedProc* = proc(self: QTreeWidget, value: cint): void {.raises: [], gcsafe.}
type QTreeWidgetscrollContentsByProc* = proc(self: QTreeWidget, dx: cint, dy: cint): void {.raises: [], gcsafe.}
type QTreeWidgetrowsInsertedProc* = proc(self: QTreeWidget, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void {.raises: [], gcsafe.}
type QTreeWidgetrowsAboutToBeRemovedProc* = proc(self: QTreeWidget, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void {.raises: [], gcsafe.}
type QTreeWidgetmoveCursorProc* = proc(self: QTreeWidget, cursorAction: cint, modifiers: cint): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QTreeWidgethorizontalOffsetProc* = proc(self: QTreeWidget): cint {.raises: [], gcsafe.}
type QTreeWidgetverticalOffsetProc* = proc(self: QTreeWidget): cint {.raises: [], gcsafe.}
type QTreeWidgetsetSelectionProc* = proc(self: QTreeWidget, rect: gen_qrect_types.QRect, command: cint): void {.raises: [], gcsafe.}
type QTreeWidgetvisualRegionForSelectionProc* = proc(self: QTreeWidget, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion {.raises: [], gcsafe.}
type QTreeWidgetselectedIndexesProc* = proc(self: QTreeWidget): seq[gen_qabstractitemmodel_types.QModelIndex] {.raises: [], gcsafe.}
type QTreeWidgettimerEventProc* = proc(self: QTreeWidget, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QTreeWidgetpaintEventProc* = proc(self: QTreeWidget, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QTreeWidgetdrawRowProc* = proc(self: QTreeWidget, painter: gen_qpainter_types.QPainter, options: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QTreeWidgetdrawBranchesProc* = proc(self: QTreeWidget, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, index: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QTreeWidgetmousePressEventProc* = proc(self: QTreeWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QTreeWidgetmouseReleaseEventProc* = proc(self: QTreeWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QTreeWidgetmouseDoubleClickEventProc* = proc(self: QTreeWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QTreeWidgetmouseMoveEventProc* = proc(self: QTreeWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QTreeWidgetkeyPressEventProc* = proc(self: QTreeWidget, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QTreeWidgetdragMoveEventProc* = proc(self: QTreeWidget, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QTreeWidgetviewportEventProc* = proc(self: QTreeWidget, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTreeWidgetupdateGeometriesProc* = proc(self: QTreeWidget): void {.raises: [], gcsafe.}
type QTreeWidgetviewportSizeHintProc* = proc(self: QTreeWidget): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QTreeWidgetsizeHintForColumnProc* = proc(self: QTreeWidget, column: cint): cint {.raises: [], gcsafe.}
type QTreeWidgethorizontalScrollbarActionProc* = proc(self: QTreeWidget, action: cint): void {.raises: [], gcsafe.}
type QTreeWidgetisIndexHiddenProc* = proc(self: QTreeWidget, index: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QTreeWidgetselectionChangedProc* = proc(self: QTreeWidget, selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void {.raises: [], gcsafe.}
type QTreeWidgetcurrentChangedProc* = proc(self: QTreeWidget, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QTreeWidgetsizeHintForRowProc* = proc(self: QTreeWidget, row: cint): cint {.raises: [], gcsafe.}
type QTreeWidgetinputMethodQueryProc* = proc(self: QTreeWidget, query: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QTreeWidgetupdateEditorDataProc* = proc(self: QTreeWidget): void {.raises: [], gcsafe.}
type QTreeWidgetupdateEditorGeometriesProc* = proc(self: QTreeWidget): void {.raises: [], gcsafe.}
type QTreeWidgetverticalScrollbarActionProc* = proc(self: QTreeWidget, action: cint): void {.raises: [], gcsafe.}
type QTreeWidgethorizontalScrollbarValueChangedProc* = proc(self: QTreeWidget, value: cint): void {.raises: [], gcsafe.}
type QTreeWidgetcloseEditorProc* = proc(self: QTreeWidget, editor: gen_qwidget_types.QWidget, hint: cint): void {.raises: [], gcsafe.}
type QTreeWidgetcommitDataProc* = proc(self: QTreeWidget, editor: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QTreeWidgeteditorDestroyedProc* = proc(self: QTreeWidget, editor: gen_qobject_types.QObject): void {.raises: [], gcsafe.}
type QTreeWidgetedit2Proc* = proc(self: QTreeWidget, index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTreeWidgetselectionCommandProc* = proc(self: QTreeWidget, index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint {.raises: [], gcsafe.}
type QTreeWidgetstartDragProc* = proc(self: QTreeWidget, supportedActions: cint): void {.raises: [], gcsafe.}
type QTreeWidgetviewOptionsProc* = proc(self: QTreeWidget): gen_qstyleoption_types.QStyleOptionViewItem {.raises: [], gcsafe.}
type QTreeWidgetfocusNextPrevChildProc* = proc(self: QTreeWidget, next: bool): bool {.raises: [], gcsafe.}
type QTreeWidgetdragEnterEventProc* = proc(self: QTreeWidget, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QTreeWidgetdragLeaveEventProc* = proc(self: QTreeWidget, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QTreeWidgetfocusInEventProc* = proc(self: QTreeWidget, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QTreeWidgetfocusOutEventProc* = proc(self: QTreeWidget, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QTreeWidgetresizeEventProc* = proc(self: QTreeWidget, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QTreeWidgetinputMethodEventProc* = proc(self: QTreeWidget, event: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QTreeWidgeteventFilterProc* = proc(self: QTreeWidget, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTreeWidgetminimumSizeHintProc* = proc(self: QTreeWidget): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QTreeWidgetsizeHintProc* = proc(self: QTreeWidget): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QTreeWidgetsetupViewportProc* = proc(self: QTreeWidget, viewport: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QTreeWidgetwheelEventProc* = proc(self: QTreeWidget, param1: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QTreeWidgetcontextMenuEventProc* = proc(self: QTreeWidget, param1: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QTreeWidgetchangeEventProc* = proc(self: QTreeWidget, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTreeWidgetdevTypeProc* = proc(self: QTreeWidget): cint {.raises: [], gcsafe.}
type QTreeWidgetsetVisibleProc* = proc(self: QTreeWidget, visible: bool): void {.raises: [], gcsafe.}
type QTreeWidgetheightForWidthProc* = proc(self: QTreeWidget, param1: cint): cint {.raises: [], gcsafe.}
type QTreeWidgethasHeightForWidthProc* = proc(self: QTreeWidget): bool {.raises: [], gcsafe.}
type QTreeWidgetpaintEngineProc* = proc(self: QTreeWidget): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QTreeWidgetkeyReleaseEventProc* = proc(self: QTreeWidget, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QTreeWidgetenterEventProc* = proc(self: QTreeWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTreeWidgetleaveEventProc* = proc(self: QTreeWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTreeWidgetmoveEventProc* = proc(self: QTreeWidget, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QTreeWidgetcloseEventProc* = proc(self: QTreeWidget, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QTreeWidgettabletEventProc* = proc(self: QTreeWidget, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QTreeWidgetactionEventProc* = proc(self: QTreeWidget, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QTreeWidgetshowEventProc* = proc(self: QTreeWidget, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QTreeWidgethideEventProc* = proc(self: QTreeWidget, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QTreeWidgetnativeEventProc* = proc(self: QTreeWidget, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QTreeWidgetmetricProc* = proc(self: QTreeWidget, param1: cint): cint {.raises: [], gcsafe.}
type QTreeWidgetinitPainterProc* = proc(self: QTreeWidget, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QTreeWidgetredirectedProc* = proc(self: QTreeWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QTreeWidgetsharedPainterProc* = proc(self: QTreeWidget): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QTreeWidgetchildEventProc* = proc(self: QTreeWidget, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QTreeWidgetcustomEventProc* = proc(self: QTreeWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTreeWidgetconnectNotifyProc* = proc(self: QTreeWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTreeWidgetdisconnectNotifyProc* = proc(self: QTreeWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTreeWidgetVTable* {.inheritable, pure.} = object
  vtbl: cQTreeWidgetVTable
  metaObject*: QTreeWidgetmetaObjectProc
  metacast*: QTreeWidgetmetacastProc
  metacall*: QTreeWidgetmetacallProc
  setSelectionModel*: QTreeWidgetsetSelectionModelProc
  event*: QTreeWidgeteventProc
  mimeTypes*: QTreeWidgetmimeTypesProc
  mimeData*: QTreeWidgetmimeDataProc
  dropMimeData*: QTreeWidgetdropMimeDataProc
  supportedDropActions*: QTreeWidgetsupportedDropActionsProc
  dropEvent*: QTreeWidgetdropEventProc
  setRootIndex*: QTreeWidgetsetRootIndexProc
  keyboardSearch*: QTreeWidgetkeyboardSearchProc
  visualRect*: QTreeWidgetvisualRectProc
  scrollTo*: QTreeWidgetscrollToProc
  indexAt*: QTreeWidgetindexAtProc
  doItemsLayout*: QTreeWidgetdoItemsLayoutProc
  reset*: QTreeWidgetresetProc
  dataChanged*: QTreeWidgetdataChangedProc
  selectAll*: QTreeWidgetselectAllProc
  verticalScrollbarValueChanged*: QTreeWidgetverticalScrollbarValueChangedProc
  scrollContentsBy*: QTreeWidgetscrollContentsByProc
  rowsInserted*: QTreeWidgetrowsInsertedProc
  rowsAboutToBeRemoved*: QTreeWidgetrowsAboutToBeRemovedProc
  moveCursor*: QTreeWidgetmoveCursorProc
  horizontalOffset*: QTreeWidgethorizontalOffsetProc
  verticalOffset*: QTreeWidgetverticalOffsetProc
  setSelection*: QTreeWidgetsetSelectionProc
  visualRegionForSelection*: QTreeWidgetvisualRegionForSelectionProc
  selectedIndexes*: QTreeWidgetselectedIndexesProc
  timerEvent*: QTreeWidgettimerEventProc
  paintEvent*: QTreeWidgetpaintEventProc
  drawRow*: QTreeWidgetdrawRowProc
  drawBranches*: QTreeWidgetdrawBranchesProc
  mousePressEvent*: QTreeWidgetmousePressEventProc
  mouseReleaseEvent*: QTreeWidgetmouseReleaseEventProc
  mouseDoubleClickEvent*: QTreeWidgetmouseDoubleClickEventProc
  mouseMoveEvent*: QTreeWidgetmouseMoveEventProc
  keyPressEvent*: QTreeWidgetkeyPressEventProc
  dragMoveEvent*: QTreeWidgetdragMoveEventProc
  viewportEvent*: QTreeWidgetviewportEventProc
  updateGeometries*: QTreeWidgetupdateGeometriesProc
  viewportSizeHint*: QTreeWidgetviewportSizeHintProc
  sizeHintForColumn*: QTreeWidgetsizeHintForColumnProc
  horizontalScrollbarAction*: QTreeWidgethorizontalScrollbarActionProc
  isIndexHidden*: QTreeWidgetisIndexHiddenProc
  selectionChanged*: QTreeWidgetselectionChangedProc
  currentChanged*: QTreeWidgetcurrentChangedProc
  sizeHintForRow*: QTreeWidgetsizeHintForRowProc
  inputMethodQuery*: QTreeWidgetinputMethodQueryProc
  updateEditorData*: QTreeWidgetupdateEditorDataProc
  updateEditorGeometries*: QTreeWidgetupdateEditorGeometriesProc
  verticalScrollbarAction*: QTreeWidgetverticalScrollbarActionProc
  horizontalScrollbarValueChanged*: QTreeWidgethorizontalScrollbarValueChangedProc
  closeEditor*: QTreeWidgetcloseEditorProc
  commitData*: QTreeWidgetcommitDataProc
  editorDestroyed*: QTreeWidgeteditorDestroyedProc
  edit2*: QTreeWidgetedit2Proc
  selectionCommand*: QTreeWidgetselectionCommandProc
  startDrag*: QTreeWidgetstartDragProc
  viewOptions*: QTreeWidgetviewOptionsProc
  focusNextPrevChild*: QTreeWidgetfocusNextPrevChildProc
  dragEnterEvent*: QTreeWidgetdragEnterEventProc
  dragLeaveEvent*: QTreeWidgetdragLeaveEventProc
  focusInEvent*: QTreeWidgetfocusInEventProc
  focusOutEvent*: QTreeWidgetfocusOutEventProc
  resizeEvent*: QTreeWidgetresizeEventProc
  inputMethodEvent*: QTreeWidgetinputMethodEventProc
  eventFilter*: QTreeWidgeteventFilterProc
  minimumSizeHint*: QTreeWidgetminimumSizeHintProc
  sizeHint*: QTreeWidgetsizeHintProc
  setupViewport*: QTreeWidgetsetupViewportProc
  wheelEvent*: QTreeWidgetwheelEventProc
  contextMenuEvent*: QTreeWidgetcontextMenuEventProc
  changeEvent*: QTreeWidgetchangeEventProc
  devType*: QTreeWidgetdevTypeProc
  setVisible*: QTreeWidgetsetVisibleProc
  heightForWidth*: QTreeWidgetheightForWidthProc
  hasHeightForWidth*: QTreeWidgethasHeightForWidthProc
  paintEngine*: QTreeWidgetpaintEngineProc
  keyReleaseEvent*: QTreeWidgetkeyReleaseEventProc
  enterEvent*: QTreeWidgetenterEventProc
  leaveEvent*: QTreeWidgetleaveEventProc
  moveEvent*: QTreeWidgetmoveEventProc
  closeEvent*: QTreeWidgetcloseEventProc
  tabletEvent*: QTreeWidgettabletEventProc
  actionEvent*: QTreeWidgetactionEventProc
  showEvent*: QTreeWidgetshowEventProc
  hideEvent*: QTreeWidgethideEventProc
  nativeEvent*: QTreeWidgetnativeEventProc
  metric*: QTreeWidgetmetricProc
  initPainter*: QTreeWidgetinitPainterProc
  redirected*: QTreeWidgetredirectedProc
  sharedPainter*: QTreeWidgetsharedPainterProc
  childEvent*: QTreeWidgetchildEventProc
  customEvent*: QTreeWidgetcustomEventProc
  connectNotify*: QTreeWidgetconnectNotifyProc
  disconnectNotify*: QTreeWidgetdisconnectNotifyProc
proc QTreeWidgetmetaObject*(self: gen_qtreewidget_types.QTreeWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTreeWidget_virtualbase_metaObject(self.h), owned: false)

proc cQTreeWidget_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTreeWidgetmetacast*(self: gen_qtreewidget_types.QTreeWidget, param1: cstring): pointer =
  fcQTreeWidget_virtualbase_metacast(self.h, param1)

proc cQTreeWidget_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QTreeWidgetmetacall*(self: gen_qtreewidget_types.QTreeWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQTreeWidget_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQTreeWidget_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTreeWidgetsetSelectionModel*(self: gen_qtreewidget_types.QTreeWidget, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void =
  fcQTreeWidget_virtualbase_setSelectionModel(self.h, selectionModel.h)

proc cQTreeWidget_vtable_callback_setSelectionModel(self: pointer, selectionModel: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelectionModel(h: selectionModel, owned: false)
  vtbl[].setSelectionModel(self, slotval1)

proc QTreeWidgetevent*(self: gen_qtreewidget_types.QTreeWidget, e: gen_qcoreevent_types.QEvent): bool =
  fcQTreeWidget_virtualbase_event(self.h, e.h)

proc cQTreeWidget_vtable_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QTreeWidgetmimeTypes*(self: gen_qtreewidget_types.QTreeWidget): seq[string] =
  var v_ma = fcQTreeWidget_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc cQTreeWidget_vtable_callback_mimeTypes(self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  var virtualReturn = vtbl[].mimeTypes(self)
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_miqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_miqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = cast[cstring](if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil)
    if len(virtualReturn[i]) > 0: copyMem(cast[pointer](virtualReturn_i_copy), addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QTreeWidgetmimeData*(self: gen_qtreewidget_types.QTreeWidget, items: openArray[gen_qtreewidget_types.QTreeWidgetItem]): gen_qmimedata_types.QMimeData =
  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  gen_qmimedata_types.QMimeData(h: fcQTreeWidget_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0]))), owned: false)

proc cQTreeWidget_vtable_callback_mimeData(self: pointer, items: struct_miqt_array): pointer {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  var vitems_ma = items
  var vitemsx_ret = newSeq[gen_qtreewidget_types.QTreeWidgetItem](int(vitems_ma.len))
  let vitems_outCast = cast[ptr UncheckedArray[pointer]](vitems_ma.data)
  for i in 0 ..< vitems_ma.len:
    vitemsx_ret[i] = gen_qtreewidget_types.QTreeWidgetItem(h: vitems_outCast[i], owned: false)
  c_free(vitems_ma.data)
  let slotval1 = vitemsx_ret
  var virtualReturn = vtbl[].mimeData(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTreeWidgetdropMimeData*(self: gen_qtreewidget_types.QTreeWidget, parent: gen_qtreewidget_types.QTreeWidgetItem, index: cint, data: gen_qmimedata_types.QMimeData, action: cint): bool =
  fcQTreeWidget_virtualbase_dropMimeData(self.h, parent.h, index, data.h, cint(action))

proc cQTreeWidget_vtable_callback_dropMimeData(self: pointer, parent: pointer, index: cint, data: pointer, action: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qtreewidget_types.QTreeWidgetItem(h: parent, owned: false)
  let slotval2 = index
  let slotval3 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval4 = cint(action)
  var virtualReturn = vtbl[].dropMimeData(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc QTreeWidgetsupportedDropActions*(self: gen_qtreewidget_types.QTreeWidget): cint =
  cint(fcQTreeWidget_virtualbase_supportedDropActions(self.h))

proc cQTreeWidget_vtable_callback_supportedDropActions(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  var virtualReturn = vtbl[].supportedDropActions(self)
  cint(virtualReturn)

proc QTreeWidgetdropEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QDropEvent): void =
  fcQTreeWidget_virtualbase_dropEvent(self.h, event.h)

proc cQTreeWidget_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QTreeWidgetsetRootIndex*(self: gen_qtreewidget_types.QTreeWidget, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQTreeWidget_virtualbase_setRootIndex(self.h, index.h)

proc cQTreeWidget_vtable_callback_setRootIndex(self: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  vtbl[].setRootIndex(self, slotval1)

proc QTreeWidgetkeyboardSearch*(self: gen_qtreewidget_types.QTreeWidget, search: openArray[char]): void =
  fcQTreeWidget_virtualbase_keyboardSearch(self.h, struct_miqt_string(data: if len(search) > 0: addr search[0] else: nil, len: csize_t(len(search))))

proc cQTreeWidget_vtable_callback_keyboardSearch(self: pointer, search: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let vsearch_ms = search
  let vsearchx_ret = string.fromBytes(vsearch_ms)
  c_free(vsearch_ms.data)
  let slotval1 = vsearchx_ret
  vtbl[].keyboardSearch(self, slotval1)

proc QTreeWidgetvisualRect*(self: gen_qtreewidget_types.QTreeWidget, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQTreeWidget_virtualbase_visualRect(self.h, index.h), owned: true)

proc cQTreeWidget_vtable_callback_visualRect(self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].visualRect(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTreeWidgetscrollTo*(self: gen_qtreewidget_types.QTreeWidget, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void =
  fcQTreeWidget_virtualbase_scrollTo(self.h, index.h, cint(hint))

proc cQTreeWidget_vtable_callback_scrollTo(self: pointer, index: pointer, hint: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = cint(hint)
  vtbl[].scrollTo(self, slotval1, slotval2)

proc QTreeWidgetindexAt*(self: gen_qtreewidget_types.QTreeWidget, p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTreeWidget_virtualbase_indexAt(self.h, p.h), owned: true)

proc cQTreeWidget_vtable_callback_indexAt(self: pointer, p: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: p, owned: false)
  var virtualReturn = vtbl[].indexAt(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTreeWidgetdoItemsLayout*(self: gen_qtreewidget_types.QTreeWidget): void =
  fcQTreeWidget_virtualbase_doItemsLayout(self.h)

proc cQTreeWidget_vtable_callback_doItemsLayout(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  vtbl[].doItemsLayout(self)

proc QTreeWidgetreset*(self: gen_qtreewidget_types.QTreeWidget): void =
  fcQTreeWidget_virtualbase_reset(self.h)

proc cQTreeWidget_vtable_callback_reset(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  vtbl[].reset(self)

proc QTreeWidgetdataChanged*(self: gen_qtreewidget_types.QTreeWidget, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: openArray[cint]): void =
  var roles_CArray = newSeq[cint](len(roles))
  for i in 0..<len(roles):
    roles_CArray[i] = roles[i]

  fcQTreeWidget_virtualbase_dataChanged(self.h, topLeft.h, bottomRight.h, struct_miqt_array(len: csize_t(len(roles)), data: if len(roles) == 0: nil else: addr(roles_CArray[0])))

proc cQTreeWidget_vtable_callback_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
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

proc QTreeWidgetselectAll*(self: gen_qtreewidget_types.QTreeWidget): void =
  fcQTreeWidget_virtualbase_selectAll(self.h)

proc cQTreeWidget_vtable_callback_selectAll(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  vtbl[].selectAll(self)

proc QTreeWidgetverticalScrollbarValueChanged*(self: gen_qtreewidget_types.QTreeWidget, value: cint): void =
  fcQTreeWidget_virtualbase_verticalScrollbarValueChanged(self.h, value)

proc cQTreeWidget_vtable_callback_verticalScrollbarValueChanged(self: pointer, value: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = value
  vtbl[].verticalScrollbarValueChanged(self, slotval1)

proc QTreeWidgetscrollContentsBy*(self: gen_qtreewidget_types.QTreeWidget, dx: cint, dy: cint): void =
  fcQTreeWidget_virtualbase_scrollContentsBy(self.h, dx, dy)

proc cQTreeWidget_vtable_callback_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = dx
  let slotval2 = dy
  vtbl[].scrollContentsBy(self, slotval1, slotval2)

proc QTreeWidgetrowsInserted*(self: gen_qtreewidget_types.QTreeWidget, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fcQTreeWidget_virtualbase_rowsInserted(self.h, parent.h, start, endVal)

proc cQTreeWidget_vtable_callback_rowsInserted(self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  let slotval2 = start
  let slotval3 = endVal
  vtbl[].rowsInserted(self, slotval1, slotval2, slotval3)

proc QTreeWidgetrowsAboutToBeRemoved*(self: gen_qtreewidget_types.QTreeWidget, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fcQTreeWidget_virtualbase_rowsAboutToBeRemoved(self.h, parent.h, start, endVal)

proc cQTreeWidget_vtable_callback_rowsAboutToBeRemoved(self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  let slotval2 = start
  let slotval3 = endVal
  vtbl[].rowsAboutToBeRemoved(self, slotval1, slotval2, slotval3)

proc QTreeWidgetmoveCursor*(self: gen_qtreewidget_types.QTreeWidget, cursorAction: cint, modifiers: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTreeWidget_virtualbase_moveCursor(self.h, cint(cursorAction), cint(modifiers)), owned: true)

proc cQTreeWidget_vtable_callback_moveCursor(self: pointer, cursorAction: cint, modifiers: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = cint(cursorAction)
  let slotval2 = cint(modifiers)
  var virtualReturn = vtbl[].moveCursor(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTreeWidgethorizontalOffset*(self: gen_qtreewidget_types.QTreeWidget): cint =
  fcQTreeWidget_virtualbase_horizontalOffset(self.h)

proc cQTreeWidget_vtable_callback_horizontalOffset(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  var virtualReturn = vtbl[].horizontalOffset(self)
  virtualReturn

proc QTreeWidgetverticalOffset*(self: gen_qtreewidget_types.QTreeWidget): cint =
  fcQTreeWidget_virtualbase_verticalOffset(self.h)

proc cQTreeWidget_vtable_callback_verticalOffset(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  var virtualReturn = vtbl[].verticalOffset(self)
  virtualReturn

proc QTreeWidgetsetSelection*(self: gen_qtreewidget_types.QTreeWidget, rect: gen_qrect_types.QRect, command: cint): void =
  fcQTreeWidget_virtualbase_setSelection(self.h, rect.h, cint(command))

proc cQTreeWidget_vtable_callback_setSelection(self: pointer, rect: pointer, command: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qrect_types.QRect(h: rect, owned: false)
  let slotval2 = cint(command)
  vtbl[].setSelection(self, slotval1, slotval2)

proc QTreeWidgetvisualRegionForSelection*(self: gen_qtreewidget_types.QTreeWidget, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQTreeWidget_virtualbase_visualRegionForSelection(self.h, selection.h), owned: true)

proc cQTreeWidget_vtable_callback_visualRegionForSelection(self: pointer, selection: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection, owned: false)
  var virtualReturn = vtbl[].visualRegionForSelection(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTreeWidgetselectedIndexes*(self: gen_qtreewidget_types.QTreeWidget): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQTreeWidget_virtualbase_selectedIndexes(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc cQTreeWidget_vtable_callback_selectedIndexes(self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  var virtualReturn = vtbl[].selectedIndexes(self)
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn[i].owned = false # TODO move?
    let virtualReturn_i_h = virtualReturn[i].h
    virtualReturn[i].h = nil
    virtualReturn_CArray[i] = virtualReturn_i_h

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QTreeWidgettimerEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQTreeWidget_virtualbase_timerEvent(self.h, event.h)

proc cQTreeWidget_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QTreeWidgetpaintEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QPaintEvent): void =
  fcQTreeWidget_virtualbase_paintEvent(self.h, event.h)

proc cQTreeWidget_vtable_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QTreeWidgetdrawRow*(self: gen_qtreewidget_types.QTreeWidget, painter: gen_qpainter_types.QPainter, options: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQTreeWidget_virtualbase_drawRow(self.h, painter.h, options.h, index.h)

proc cQTreeWidget_vtable_callback_drawRow(self: pointer, painter: pointer, options: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: options, owned: false)
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  vtbl[].drawRow(self, slotval1, slotval2, slotval3)

proc QTreeWidgetdrawBranches*(self: gen_qtreewidget_types.QTreeWidget, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQTreeWidget_virtualbase_drawBranches(self.h, painter.h, rect.h, index.h)

proc cQTreeWidget_vtable_callback_drawBranches(self: pointer, painter: pointer, rect: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qrect_types.QRect(h: rect, owned: false)
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  vtbl[].drawBranches(self, slotval1, slotval2, slotval3)

proc QTreeWidgetmousePressEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQTreeWidget_virtualbase_mousePressEvent(self.h, event.h)

proc cQTreeWidget_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QTreeWidgetmouseReleaseEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQTreeWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

proc cQTreeWidget_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QTreeWidgetmouseDoubleClickEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQTreeWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc cQTreeWidget_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QTreeWidgetmouseMoveEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQTreeWidget_virtualbase_mouseMoveEvent(self.h, event.h)

proc cQTreeWidget_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QTreeWidgetkeyPressEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQTreeWidget_virtualbase_keyPressEvent(self.h, event.h)

proc cQTreeWidget_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QTreeWidgetdragMoveEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QDragMoveEvent): void =
  fcQTreeWidget_virtualbase_dragMoveEvent(self.h, event.h)

proc cQTreeWidget_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QTreeWidgetviewportEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qcoreevent_types.QEvent): bool =
  fcQTreeWidget_virtualbase_viewportEvent(self.h, event.h)

proc cQTreeWidget_vtable_callback_viewportEvent(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].viewportEvent(self, slotval1)
  virtualReturn

proc QTreeWidgetupdateGeometries*(self: gen_qtreewidget_types.QTreeWidget): void =
  fcQTreeWidget_virtualbase_updateGeometries(self.h)

proc cQTreeWidget_vtable_callback_updateGeometries(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  vtbl[].updateGeometries(self)

proc QTreeWidgetviewportSizeHint*(self: gen_qtreewidget_types.QTreeWidget): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTreeWidget_virtualbase_viewportSizeHint(self.h), owned: true)

proc cQTreeWidget_vtable_callback_viewportSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  var virtualReturn = vtbl[].viewportSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTreeWidgetsizeHintForColumn*(self: gen_qtreewidget_types.QTreeWidget, column: cint): cint =
  fcQTreeWidget_virtualbase_sizeHintForColumn(self.h, column)

proc cQTreeWidget_vtable_callback_sizeHintForColumn(self: pointer, column: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = column
  var virtualReturn = vtbl[].sizeHintForColumn(self, slotval1)
  virtualReturn

proc QTreeWidgethorizontalScrollbarAction*(self: gen_qtreewidget_types.QTreeWidget, action: cint): void =
  fcQTreeWidget_virtualbase_horizontalScrollbarAction(self.h, action)

proc cQTreeWidget_vtable_callback_horizontalScrollbarAction(self: pointer, action: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = action
  vtbl[].horizontalScrollbarAction(self, slotval1)

proc QTreeWidgetisIndexHidden*(self: gen_qtreewidget_types.QTreeWidget, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQTreeWidget_virtualbase_isIndexHidden(self.h, index.h)

proc cQTreeWidget_vtable_callback_isIndexHidden(self: pointer, index: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].isIndexHidden(self, slotval1)
  virtualReturn

proc QTreeWidgetselectionChanged*(self: gen_qtreewidget_types.QTreeWidget, selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void =
  fcQTreeWidget_virtualbase_selectionChanged(self.h, selected.h, deselected.h)

proc cQTreeWidget_vtable_callback_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selected, owned: false)
  let slotval2 = gen_qitemselectionmodel_types.QItemSelection(h: deselected, owned: false)
  vtbl[].selectionChanged(self, slotval1, slotval2)

proc QTreeWidgetcurrentChanged*(self: gen_qtreewidget_types.QTreeWidget, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQTreeWidget_virtualbase_currentChanged(self.h, current.h, previous.h)

proc cQTreeWidget_vtable_callback_currentChanged(self: pointer, current: pointer, previous: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: current, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: previous, owned: false)
  vtbl[].currentChanged(self, slotval1, slotval2)

proc QTreeWidgetsizeHintForRow*(self: gen_qtreewidget_types.QTreeWidget, row: cint): cint =
  fcQTreeWidget_virtualbase_sizeHintForRow(self.h, row)

proc cQTreeWidget_vtable_callback_sizeHintForRow(self: pointer, row: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = row
  var virtualReturn = vtbl[].sizeHintForRow(self, slotval1)
  virtualReturn

proc QTreeWidgetinputMethodQuery*(self: gen_qtreewidget_types.QTreeWidget, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQTreeWidget_virtualbase_inputMethodQuery(self.h, cint(query)), owned: true)

proc cQTreeWidget_vtable_callback_inputMethodQuery(self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = cint(query)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTreeWidgetupdateEditorData*(self: gen_qtreewidget_types.QTreeWidget): void =
  fcQTreeWidget_virtualbase_updateEditorData(self.h)

proc cQTreeWidget_vtable_callback_updateEditorData(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  vtbl[].updateEditorData(self)

proc QTreeWidgetupdateEditorGeometries*(self: gen_qtreewidget_types.QTreeWidget): void =
  fcQTreeWidget_virtualbase_updateEditorGeometries(self.h)

proc cQTreeWidget_vtable_callback_updateEditorGeometries(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  vtbl[].updateEditorGeometries(self)

proc QTreeWidgetverticalScrollbarAction*(self: gen_qtreewidget_types.QTreeWidget, action: cint): void =
  fcQTreeWidget_virtualbase_verticalScrollbarAction(self.h, action)

proc cQTreeWidget_vtable_callback_verticalScrollbarAction(self: pointer, action: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = action
  vtbl[].verticalScrollbarAction(self, slotval1)

proc QTreeWidgethorizontalScrollbarValueChanged*(self: gen_qtreewidget_types.QTreeWidget, value: cint): void =
  fcQTreeWidget_virtualbase_horizontalScrollbarValueChanged(self.h, value)

proc cQTreeWidget_vtable_callback_horizontalScrollbarValueChanged(self: pointer, value: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = value
  vtbl[].horizontalScrollbarValueChanged(self, slotval1)

proc QTreeWidgetcloseEditor*(self: gen_qtreewidget_types.QTreeWidget, editor: gen_qwidget_types.QWidget, hint: cint): void =
  fcQTreeWidget_virtualbase_closeEditor(self.h, editor.h, cint(hint))

proc cQTreeWidget_vtable_callback_closeEditor(self: pointer, editor: pointer, hint: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  let slotval2 = cint(hint)
  vtbl[].closeEditor(self, slotval1, slotval2)

proc QTreeWidgetcommitData*(self: gen_qtreewidget_types.QTreeWidget, editor: gen_qwidget_types.QWidget): void =
  fcQTreeWidget_virtualbase_commitData(self.h, editor.h)

proc cQTreeWidget_vtable_callback_commitData(self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  vtbl[].commitData(self, slotval1)

proc QTreeWidgeteditorDestroyed*(self: gen_qtreewidget_types.QTreeWidget, editor: gen_qobject_types.QObject): void =
  fcQTreeWidget_virtualbase_editorDestroyed(self.h, editor.h)

proc cQTreeWidget_vtable_callback_editorDestroyed(self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qobject_types.QObject(h: editor, owned: false)
  vtbl[].editorDestroyed(self, slotval1)

proc QTreeWidgetedit*(self: gen_qtreewidget_types.QTreeWidget, index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool =
  fcQTreeWidget_virtualbase_edit2(self.h, index.h, cint(trigger), event.h)

proc cQTreeWidget_vtable_callback_edit2(self: pointer, index: pointer, trigger: cint, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = cint(trigger)
  let slotval3 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].edit2(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTreeWidgetselectionCommand*(self: gen_qtreewidget_types.QTreeWidget, index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint =
  cint(fcQTreeWidget_virtualbase_selectionCommand(self.h, index.h, event.h))

proc cQTreeWidget_vtable_callback_selectionCommand(self: pointer, index: pointer, event: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].selectionCommand(self, slotval1, slotval2)
  cint(virtualReturn)

proc QTreeWidgetstartDrag*(self: gen_qtreewidget_types.QTreeWidget, supportedActions: cint): void =
  fcQTreeWidget_virtualbase_startDrag(self.h, cint(supportedActions))

proc cQTreeWidget_vtable_callback_startDrag(self: pointer, supportedActions: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = cint(supportedActions)
  vtbl[].startDrag(self, slotval1)

proc QTreeWidgetviewOptions*(self: gen_qtreewidget_types.QTreeWidget): gen_qstyleoption_types.QStyleOptionViewItem =
  gen_qstyleoption_types.QStyleOptionViewItem(h: fcQTreeWidget_virtualbase_viewOptions(self.h), owned: true)

proc cQTreeWidget_vtable_callback_viewOptions(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  var virtualReturn = vtbl[].viewOptions(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTreeWidgetfocusNextPrevChild*(self: gen_qtreewidget_types.QTreeWidget, next: bool): bool =
  fcQTreeWidget_virtualbase_focusNextPrevChild(self.h, next)

proc cQTreeWidget_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QTreeWidgetdragEnterEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QDragEnterEvent): void =
  fcQTreeWidget_virtualbase_dragEnterEvent(self.h, event.h)

proc cQTreeWidget_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QTreeWidgetdragLeaveEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQTreeWidget_virtualbase_dragLeaveEvent(self.h, event.h)

proc cQTreeWidget_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QTreeWidgetfocusInEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQTreeWidget_virtualbase_focusInEvent(self.h, event.h)

proc cQTreeWidget_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QTreeWidgetfocusOutEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQTreeWidget_virtualbase_focusOutEvent(self.h, event.h)

proc cQTreeWidget_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QTreeWidgetresizeEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QResizeEvent): void =
  fcQTreeWidget_virtualbase_resizeEvent(self.h, event.h)

proc cQTreeWidget_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QTreeWidgetinputMethodEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QInputMethodEvent): void =
  fcQTreeWidget_virtualbase_inputMethodEvent(self.h, event.h)

proc cQTreeWidget_vtable_callback_inputMethodEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QTreeWidgeteventFilter*(self: gen_qtreewidget_types.QTreeWidget, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQTreeWidget_virtualbase_eventFilter(self.h, objectVal.h, event.h)

proc cQTreeWidget_vtable_callback_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qobject_types.QObject(h: objectVal, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QTreeWidgetminimumSizeHint*(self: gen_qtreewidget_types.QTreeWidget): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTreeWidget_virtualbase_minimumSizeHint(self.h), owned: true)

proc cQTreeWidget_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTreeWidgetsizeHint*(self: gen_qtreewidget_types.QTreeWidget): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTreeWidget_virtualbase_sizeHint(self.h), owned: true)

proc cQTreeWidget_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTreeWidgetsetupViewport*(self: gen_qtreewidget_types.QTreeWidget, viewport: gen_qwidget_types.QWidget): void =
  fcQTreeWidget_virtualbase_setupViewport(self.h, viewport.h)

proc cQTreeWidget_vtable_callback_setupViewport(self: pointer, viewport: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: viewport, owned: false)
  vtbl[].setupViewport(self, slotval1)

proc QTreeWidgetwheelEvent*(self: gen_qtreewidget_types.QTreeWidget, param1: gen_qevent_types.QWheelEvent): void =
  fcQTreeWidget_virtualbase_wheelEvent(self.h, param1.h)

proc cQTreeWidget_vtable_callback_wheelEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QTreeWidgetcontextMenuEvent*(self: gen_qtreewidget_types.QTreeWidget, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQTreeWidget_virtualbase_contextMenuEvent(self.h, param1.h)

proc cQTreeWidget_vtable_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QTreeWidgetchangeEvent*(self: gen_qtreewidget_types.QTreeWidget, param1: gen_qcoreevent_types.QEvent): void =
  fcQTreeWidget_virtualbase_changeEvent(self.h, param1.h)

proc cQTreeWidget_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QTreeWidgetdevType*(self: gen_qtreewidget_types.QTreeWidget): cint =
  fcQTreeWidget_virtualbase_devType(self.h)

proc cQTreeWidget_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QTreeWidgetsetVisible*(self: gen_qtreewidget_types.QTreeWidget, visible: bool): void =
  fcQTreeWidget_virtualbase_setVisible(self.h, visible)

proc cQTreeWidget_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QTreeWidgetheightForWidth*(self: gen_qtreewidget_types.QTreeWidget, param1: cint): cint =
  fcQTreeWidget_virtualbase_heightForWidth(self.h, param1)

proc cQTreeWidget_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QTreeWidgethasHeightForWidth*(self: gen_qtreewidget_types.QTreeWidget): bool =
  fcQTreeWidget_virtualbase_hasHeightForWidth(self.h)

proc cQTreeWidget_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QTreeWidgetpaintEngine*(self: gen_qtreewidget_types.QTreeWidget): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQTreeWidget_virtualbase_paintEngine(self.h), owned: false)

proc cQTreeWidget_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTreeWidgetkeyReleaseEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQTreeWidget_virtualbase_keyReleaseEvent(self.h, event.h)

proc cQTreeWidget_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QTreeWidgetenterEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQTreeWidget_virtualbase_enterEvent(self.h, event.h)

proc cQTreeWidget_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QTreeWidgetleaveEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQTreeWidget_virtualbase_leaveEvent(self.h, event.h)

proc cQTreeWidget_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QTreeWidgetmoveEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QMoveEvent): void =
  fcQTreeWidget_virtualbase_moveEvent(self.h, event.h)

proc cQTreeWidget_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QTreeWidgetcloseEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QCloseEvent): void =
  fcQTreeWidget_virtualbase_closeEvent(self.h, event.h)

proc cQTreeWidget_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QTreeWidgettabletEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QTabletEvent): void =
  fcQTreeWidget_virtualbase_tabletEvent(self.h, event.h)

proc cQTreeWidget_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QTreeWidgetactionEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QActionEvent): void =
  fcQTreeWidget_virtualbase_actionEvent(self.h, event.h)

proc cQTreeWidget_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QTreeWidgetshowEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QShowEvent): void =
  fcQTreeWidget_virtualbase_showEvent(self.h, event.h)

proc cQTreeWidget_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QTreeWidgethideEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QHideEvent): void =
  fcQTreeWidget_virtualbase_hideEvent(self.h, event.h)

proc cQTreeWidget_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QTreeWidgetnativeEvent*(self: gen_qtreewidget_types.QTreeWidget, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool =
  fcQTreeWidget_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc cQTreeWidget_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTreeWidgetmetric*(self: gen_qtreewidget_types.QTreeWidget, param1: cint): cint =
  fcQTreeWidget_virtualbase_metric(self.h, cint(param1))

proc cQTreeWidget_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QTreeWidgetinitPainter*(self: gen_qtreewidget_types.QTreeWidget, painter: gen_qpainter_types.QPainter): void =
  fcQTreeWidget_virtualbase_initPainter(self.h, painter.h)

proc cQTreeWidget_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QTreeWidgetredirected*(self: gen_qtreewidget_types.QTreeWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQTreeWidget_virtualbase_redirected(self.h, offset.h), owned: false)

proc cQTreeWidget_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTreeWidgetsharedPainter*(self: gen_qtreewidget_types.QTreeWidget): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQTreeWidget_virtualbase_sharedPainter(self.h), owned: false)

proc cQTreeWidget_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTreeWidgetchildEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qcoreevent_types.QChildEvent): void =
  fcQTreeWidget_virtualbase_childEvent(self.h, event.h)

proc cQTreeWidget_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QTreeWidgetcustomEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQTreeWidget_virtualbase_customEvent(self.h, event.h)

proc cQTreeWidget_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QTreeWidgetconnectNotify*(self: gen_qtreewidget_types.QTreeWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTreeWidget_virtualbase_connectNotify(self.h, signal.h)

proc cQTreeWidget_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QTreeWidgetdisconnectNotify*(self: gen_qtreewidget_types.QTreeWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTreeWidget_virtualbase_disconnectNotify(self.h, signal.h)

proc cQTreeWidget_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](fcQTreeWidget_vdata(self))
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQTreeWidget* {.inheritable.} = ref object of QTreeWidget
  vtbl*: cQTreeWidgetVTable
method metaObject*(self: VirtualQTreeWidget): gen_qobjectdefs_types.QMetaObject {.base.} =
  QTreeWidgetmetaObject(self[])
proc cQTreeWidget_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQTreeWidget, param1: cstring): pointer {.base.} =
  QTreeWidgetmetacast(self[], param1)
proc cQTreeWidget_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQTreeWidget, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QTreeWidgetmetacall(self[], param1, param2, param3)
proc cQTreeWidget_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method setSelectionModel*(self: VirtualQTreeWidget, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void {.base.} =
  QTreeWidgetsetSelectionModel(self[], selectionModel)
proc cQTreeWidget_method_callback_setSelectionModel(self: pointer, selectionModel: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelectionModel(h: selectionModel, owned: false)
  inst.setSelectionModel(slotval1)

method event*(self: VirtualQTreeWidget, e: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTreeWidgetevent(self[], e)
proc cQTreeWidget_method_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method mimeTypes*(self: VirtualQTreeWidget): seq[string] {.base.} =
  QTreeWidgetmimeTypes(self[])
proc cQTreeWidget_method_callback_mimeTypes(self: pointer): struct_miqt_array {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  var virtualReturn = inst.mimeTypes()
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_miqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_miqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = cast[cstring](if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil)
    if len(virtualReturn[i]) > 0: copyMem(cast[pointer](virtualReturn_i_copy), addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

method mimeData*(self: VirtualQTreeWidget, items: openArray[gen_qtreewidget_types.QTreeWidgetItem]): gen_qmimedata_types.QMimeData {.base.} =
  QTreeWidgetmimeData(self[], items)
proc cQTreeWidget_method_callback_mimeData(self: pointer, items: struct_miqt_array): pointer {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  var vitems_ma = items
  var vitemsx_ret = newSeq[gen_qtreewidget_types.QTreeWidgetItem](int(vitems_ma.len))
  let vitems_outCast = cast[ptr UncheckedArray[pointer]](vitems_ma.data)
  for i in 0 ..< vitems_ma.len:
    vitemsx_ret[i] = gen_qtreewidget_types.QTreeWidgetItem(h: vitems_outCast[i], owned: false)
  c_free(vitems_ma.data)
  let slotval1 = vitemsx_ret
  var virtualReturn = inst.mimeData(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method dropMimeData*(self: VirtualQTreeWidget, parent: gen_qtreewidget_types.QTreeWidgetItem, index: cint, data: gen_qmimedata_types.QMimeData, action: cint): bool {.base.} =
  QTreeWidgetdropMimeData(self[], parent, index, data, action)
proc cQTreeWidget_method_callback_dropMimeData(self: pointer, parent: pointer, index: cint, data: pointer, action: cint): bool {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qtreewidget_types.QTreeWidgetItem(h: parent, owned: false)
  let slotval2 = index
  let slotval3 = gen_qmimedata_types.QMimeData(h: data, owned: false)
  let slotval4 = cint(action)
  var virtualReturn = inst.dropMimeData(slotval1, slotval2, slotval3, slotval4)
  virtualReturn

method supportedDropActions*(self: VirtualQTreeWidget): cint {.base.} =
  QTreeWidgetsupportedDropActions(self[])
proc cQTreeWidget_method_callback_supportedDropActions(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  var virtualReturn = inst.supportedDropActions()
  cint(virtualReturn)

method dropEvent*(self: VirtualQTreeWidget, event: gen_qevent_types.QDropEvent): void {.base.} =
  QTreeWidgetdropEvent(self[], event)
proc cQTreeWidget_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

method setRootIndex*(self: VirtualQTreeWidget, index: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QTreeWidgetsetRootIndex(self[], index)
proc cQTreeWidget_method_callback_setRootIndex(self: pointer, index: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  inst.setRootIndex(slotval1)

method keyboardSearch*(self: VirtualQTreeWidget, search: openArray[char]): void {.base.} =
  QTreeWidgetkeyboardSearch(self[], search)
proc cQTreeWidget_method_callback_keyboardSearch(self: pointer, search: struct_miqt_string): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let vsearch_ms = search
  let vsearchx_ret = string.fromBytes(vsearch_ms)
  c_free(vsearch_ms.data)
  let slotval1 = vsearchx_ret
  inst.keyboardSearch(slotval1)

method visualRect*(self: VirtualQTreeWidget, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect {.base.} =
  QTreeWidgetvisualRect(self[], index)
proc cQTreeWidget_method_callback_visualRect(self: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.visualRect(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method scrollTo*(self: VirtualQTreeWidget, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void {.base.} =
  QTreeWidgetscrollTo(self[], index, hint)
proc cQTreeWidget_method_callback_scrollTo(self: pointer, index: pointer, hint: cint): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = cint(hint)
  inst.scrollTo(slotval1, slotval2)

method indexAt*(self: VirtualQTreeWidget, p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QTreeWidgetindexAt(self[], p)
proc cQTreeWidget_method_callback_indexAt(self: pointer, p: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: p, owned: false)
  var virtualReturn = inst.indexAt(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method doItemsLayout*(self: VirtualQTreeWidget): void {.base.} =
  QTreeWidgetdoItemsLayout(self[])
proc cQTreeWidget_method_callback_doItemsLayout(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  inst.doItemsLayout()

method reset*(self: VirtualQTreeWidget): void {.base.} =
  QTreeWidgetreset(self[])
proc cQTreeWidget_method_callback_reset(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  inst.reset()

method dataChanged*(self: VirtualQTreeWidget, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: openArray[cint]): void {.base.} =
  QTreeWidgetdataChanged(self[], topLeft, bottomRight, roles)
proc cQTreeWidget_method_callback_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
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

method selectAll*(self: VirtualQTreeWidget): void {.base.} =
  QTreeWidgetselectAll(self[])
proc cQTreeWidget_method_callback_selectAll(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  inst.selectAll()

method verticalScrollbarValueChanged*(self: VirtualQTreeWidget, value: cint): void {.base.} =
  QTreeWidgetverticalScrollbarValueChanged(self[], value)
proc cQTreeWidget_method_callback_verticalScrollbarValueChanged(self: pointer, value: cint): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = value
  inst.verticalScrollbarValueChanged(slotval1)

method scrollContentsBy*(self: VirtualQTreeWidget, dx: cint, dy: cint): void {.base.} =
  QTreeWidgetscrollContentsBy(self[], dx, dy)
proc cQTreeWidget_method_callback_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = dx
  let slotval2 = dy
  inst.scrollContentsBy(slotval1, slotval2)

method rowsInserted*(self: VirtualQTreeWidget, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void {.base.} =
  QTreeWidgetrowsInserted(self[], parent, start, endVal)
proc cQTreeWidget_method_callback_rowsInserted(self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  let slotval2 = start
  let slotval3 = endVal
  inst.rowsInserted(slotval1, slotval2, slotval3)

method rowsAboutToBeRemoved*(self: VirtualQTreeWidget, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void {.base.} =
  QTreeWidgetrowsAboutToBeRemoved(self[], parent, start, endVal)
proc cQTreeWidget_method_callback_rowsAboutToBeRemoved(self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  let slotval2 = start
  let slotval3 = endVal
  inst.rowsAboutToBeRemoved(slotval1, slotval2, slotval3)

method moveCursor*(self: VirtualQTreeWidget, cursorAction: cint, modifiers: cint): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QTreeWidgetmoveCursor(self[], cursorAction, modifiers)
proc cQTreeWidget_method_callback_moveCursor(self: pointer, cursorAction: cint, modifiers: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = cint(cursorAction)
  let slotval2 = cint(modifiers)
  var virtualReturn = inst.moveCursor(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method horizontalOffset*(self: VirtualQTreeWidget): cint {.base.} =
  QTreeWidgethorizontalOffset(self[])
proc cQTreeWidget_method_callback_horizontalOffset(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  var virtualReturn = inst.horizontalOffset()
  virtualReturn

method verticalOffset*(self: VirtualQTreeWidget): cint {.base.} =
  QTreeWidgetverticalOffset(self[])
proc cQTreeWidget_method_callback_verticalOffset(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  var virtualReturn = inst.verticalOffset()
  virtualReturn

method setSelection*(self: VirtualQTreeWidget, rect: gen_qrect_types.QRect, command: cint): void {.base.} =
  QTreeWidgetsetSelection(self[], rect, command)
proc cQTreeWidget_method_callback_setSelection(self: pointer, rect: pointer, command: cint): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qrect_types.QRect(h: rect, owned: false)
  let slotval2 = cint(command)
  inst.setSelection(slotval1, slotval2)

method visualRegionForSelection*(self: VirtualQTreeWidget, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion {.base.} =
  QTreeWidgetvisualRegionForSelection(self[], selection)
proc cQTreeWidget_method_callback_visualRegionForSelection(self: pointer, selection: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection, owned: false)
  var virtualReturn = inst.visualRegionForSelection(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method selectedIndexes*(self: VirtualQTreeWidget): seq[gen_qabstractitemmodel_types.QModelIndex] {.base.} =
  QTreeWidgetselectedIndexes(self[])
proc cQTreeWidget_method_callback_selectedIndexes(self: pointer): struct_miqt_array {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  var virtualReturn = inst.selectedIndexes()
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn[i].owned = false # TODO move?
    let virtualReturn_i_h = virtualReturn[i].h
    virtualReturn[i].h = nil
    virtualReturn_CArray[i] = virtualReturn_i_h

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

method timerEvent*(self: VirtualQTreeWidget, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QTreeWidgettimerEvent(self[], event)
proc cQTreeWidget_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method paintEvent*(self: VirtualQTreeWidget, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QTreeWidgetpaintEvent(self[], event)
proc cQTreeWidget_method_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  inst.paintEvent(slotval1)

method drawRow*(self: VirtualQTreeWidget, painter: gen_qpainter_types.QPainter, options: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QTreeWidgetdrawRow(self[], painter, options, index)
proc cQTreeWidget_method_callback_drawRow(self: pointer, painter: pointer, options: pointer, index: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: options, owned: false)
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  inst.drawRow(slotval1, slotval2, slotval3)

method drawBranches*(self: VirtualQTreeWidget, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, index: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QTreeWidgetdrawBranches(self[], painter, rect, index)
proc cQTreeWidget_method_callback_drawBranches(self: pointer, painter: pointer, rect: pointer, index: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  let slotval2 = gen_qrect_types.QRect(h: rect, owned: false)
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  inst.drawBranches(slotval1, slotval2, slotval3)

method mousePressEvent*(self: VirtualQTreeWidget, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QTreeWidgetmousePressEvent(self[], event)
proc cQTreeWidget_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQTreeWidget, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QTreeWidgetmouseReleaseEvent(self[], event)
proc cQTreeWidget_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQTreeWidget, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QTreeWidgetmouseDoubleClickEvent(self[], event)
proc cQTreeWidget_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method mouseMoveEvent*(self: VirtualQTreeWidget, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QTreeWidgetmouseMoveEvent(self[], event)
proc cQTreeWidget_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

method keyPressEvent*(self: VirtualQTreeWidget, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QTreeWidgetkeyPressEvent(self[], event)
proc cQTreeWidget_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyPressEvent(slotval1)

method dragMoveEvent*(self: VirtualQTreeWidget, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QTreeWidgetdragMoveEvent(self[], event)
proc cQTreeWidget_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

method viewportEvent*(self: VirtualQTreeWidget, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTreeWidgetviewportEvent(self[], event)
proc cQTreeWidget_method_callback_viewportEvent(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.viewportEvent(slotval1)
  virtualReturn

method updateGeometries*(self: VirtualQTreeWidget): void {.base.} =
  QTreeWidgetupdateGeometries(self[])
proc cQTreeWidget_method_callback_updateGeometries(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  inst.updateGeometries()

method viewportSizeHint*(self: VirtualQTreeWidget): gen_qsize_types.QSize {.base.} =
  QTreeWidgetviewportSizeHint(self[])
proc cQTreeWidget_method_callback_viewportSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  var virtualReturn = inst.viewportSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sizeHintForColumn*(self: VirtualQTreeWidget, column: cint): cint {.base.} =
  QTreeWidgetsizeHintForColumn(self[], column)
proc cQTreeWidget_method_callback_sizeHintForColumn(self: pointer, column: cint): cint {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = column
  var virtualReturn = inst.sizeHintForColumn(slotval1)
  virtualReturn

method horizontalScrollbarAction*(self: VirtualQTreeWidget, action: cint): void {.base.} =
  QTreeWidgethorizontalScrollbarAction(self[], action)
proc cQTreeWidget_method_callback_horizontalScrollbarAction(self: pointer, action: cint): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = action
  inst.horizontalScrollbarAction(slotval1)

method isIndexHidden*(self: VirtualQTreeWidget, index: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QTreeWidgetisIndexHidden(self[], index)
proc cQTreeWidget_method_callback_isIndexHidden(self: pointer, index: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.isIndexHidden(slotval1)
  virtualReturn

method selectionChanged*(self: VirtualQTreeWidget, selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void {.base.} =
  QTreeWidgetselectionChanged(self[], selected, deselected)
proc cQTreeWidget_method_callback_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selected, owned: false)
  let slotval2 = gen_qitemselectionmodel_types.QItemSelection(h: deselected, owned: false)
  inst.selectionChanged(slotval1, slotval2)

method currentChanged*(self: VirtualQTreeWidget, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QTreeWidgetcurrentChanged(self[], current, previous)
proc cQTreeWidget_method_callback_currentChanged(self: pointer, current: pointer, previous: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: current, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: previous, owned: false)
  inst.currentChanged(slotval1, slotval2)

method sizeHintForRow*(self: VirtualQTreeWidget, row: cint): cint {.base.} =
  QTreeWidgetsizeHintForRow(self[], row)
proc cQTreeWidget_method_callback_sizeHintForRow(self: pointer, row: cint): cint {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = row
  var virtualReturn = inst.sizeHintForRow(slotval1)
  virtualReturn

method inputMethodQuery*(self: VirtualQTreeWidget, query: cint): gen_qvariant_types.QVariant {.base.} =
  QTreeWidgetinputMethodQuery(self[], query)
proc cQTreeWidget_method_callback_inputMethodQuery(self: pointer, query: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = cint(query)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method updateEditorData*(self: VirtualQTreeWidget): void {.base.} =
  QTreeWidgetupdateEditorData(self[])
proc cQTreeWidget_method_callback_updateEditorData(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  inst.updateEditorData()

method updateEditorGeometries*(self: VirtualQTreeWidget): void {.base.} =
  QTreeWidgetupdateEditorGeometries(self[])
proc cQTreeWidget_method_callback_updateEditorGeometries(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  inst.updateEditorGeometries()

method verticalScrollbarAction*(self: VirtualQTreeWidget, action: cint): void {.base.} =
  QTreeWidgetverticalScrollbarAction(self[], action)
proc cQTreeWidget_method_callback_verticalScrollbarAction(self: pointer, action: cint): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = action
  inst.verticalScrollbarAction(slotval1)

method horizontalScrollbarValueChanged*(self: VirtualQTreeWidget, value: cint): void {.base.} =
  QTreeWidgethorizontalScrollbarValueChanged(self[], value)
proc cQTreeWidget_method_callback_horizontalScrollbarValueChanged(self: pointer, value: cint): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = value
  inst.horizontalScrollbarValueChanged(slotval1)

method closeEditor*(self: VirtualQTreeWidget, editor: gen_qwidget_types.QWidget, hint: cint): void {.base.} =
  QTreeWidgetcloseEditor(self[], editor, hint)
proc cQTreeWidget_method_callback_closeEditor(self: pointer, editor: pointer, hint: cint): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  let slotval2 = cint(hint)
  inst.closeEditor(slotval1, slotval2)

method commitData*(self: VirtualQTreeWidget, editor: gen_qwidget_types.QWidget): void {.base.} =
  QTreeWidgetcommitData(self[], editor)
proc cQTreeWidget_method_callback_commitData(self: pointer, editor: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  inst.commitData(slotval1)

method editorDestroyed*(self: VirtualQTreeWidget, editor: gen_qobject_types.QObject): void {.base.} =
  QTreeWidgeteditorDestroyed(self[], editor)
proc cQTreeWidget_method_callback_editorDestroyed(self: pointer, editor: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: editor, owned: false)
  inst.editorDestroyed(slotval1)

method edit*(self: VirtualQTreeWidget, index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTreeWidgetedit(self[], index, trigger, event)
proc cQTreeWidget_method_callback_edit2(self: pointer, index: pointer, trigger: cint, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = cint(trigger)
  let slotval3 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.edit(slotval1, slotval2, slotval3)
  virtualReturn

method selectionCommand*(self: VirtualQTreeWidget, index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint {.base.} =
  QTreeWidgetselectionCommand(self[], index, event)
proc cQTreeWidget_method_callback_selectionCommand(self: pointer, index: pointer, event: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.selectionCommand(slotval1, slotval2)
  cint(virtualReturn)

method startDrag*(self: VirtualQTreeWidget, supportedActions: cint): void {.base.} =
  QTreeWidgetstartDrag(self[], supportedActions)
proc cQTreeWidget_method_callback_startDrag(self: pointer, supportedActions: cint): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = cint(supportedActions)
  inst.startDrag(slotval1)

method viewOptions*(self: VirtualQTreeWidget): gen_qstyleoption_types.QStyleOptionViewItem {.base.} =
  QTreeWidgetviewOptions(self[])
proc cQTreeWidget_method_callback_viewOptions(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  var virtualReturn = inst.viewOptions()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQTreeWidget, next: bool): bool {.base.} =
  QTreeWidgetfocusNextPrevChild(self[], next)
proc cQTreeWidget_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method dragEnterEvent*(self: VirtualQTreeWidget, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QTreeWidgetdragEnterEvent(self[], event)
proc cQTreeWidget_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

method dragLeaveEvent*(self: VirtualQTreeWidget, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QTreeWidgetdragLeaveEvent(self[], event)
proc cQTreeWidget_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

method focusInEvent*(self: VirtualQTreeWidget, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QTreeWidgetfocusInEvent(self[], event)
proc cQTreeWidget_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQTreeWidget, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QTreeWidgetfocusOutEvent(self[], event)
proc cQTreeWidget_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

method resizeEvent*(self: VirtualQTreeWidget, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QTreeWidgetresizeEvent(self[], event)
proc cQTreeWidget_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

method inputMethodEvent*(self: VirtualQTreeWidget, event: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QTreeWidgetinputMethodEvent(self[], event)
proc cQTreeWidget_method_callback_inputMethodEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event, owned: false)
  inst.inputMethodEvent(slotval1)

method eventFilter*(self: VirtualQTreeWidget, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTreeWidgeteventFilter(self[], objectVal, event)
proc cQTreeWidget_method_callback_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: objectVal, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method minimumSizeHint*(self: VirtualQTreeWidget): gen_qsize_types.QSize {.base.} =
  QTreeWidgetminimumSizeHint(self[])
proc cQTreeWidget_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sizeHint*(self: VirtualQTreeWidget): gen_qsize_types.QSize {.base.} =
  QTreeWidgetsizeHint(self[])
proc cQTreeWidget_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method setupViewport*(self: VirtualQTreeWidget, viewport: gen_qwidget_types.QWidget): void {.base.} =
  QTreeWidgetsetupViewport(self[], viewport)
proc cQTreeWidget_method_callback_setupViewport(self: pointer, viewport: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: viewport, owned: false)
  inst.setupViewport(slotval1)

method wheelEvent*(self: VirtualQTreeWidget, param1: gen_qevent_types.QWheelEvent): void {.base.} =
  QTreeWidgetwheelEvent(self[], param1)
proc cQTreeWidget_method_callback_wheelEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1, owned: false)
  inst.wheelEvent(slotval1)

method contextMenuEvent*(self: VirtualQTreeWidget, param1: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QTreeWidgetcontextMenuEvent(self[], param1)
proc cQTreeWidget_method_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  inst.contextMenuEvent(slotval1)

method changeEvent*(self: VirtualQTreeWidget, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QTreeWidgetchangeEvent(self[], param1)
proc cQTreeWidget_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.changeEvent(slotval1)

method devType*(self: VirtualQTreeWidget): cint {.base.} =
  QTreeWidgetdevType(self[])
proc cQTreeWidget_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

method setVisible*(self: VirtualQTreeWidget, visible: bool): void {.base.} =
  QTreeWidgetsetVisible(self[], visible)
proc cQTreeWidget_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

method heightForWidth*(self: VirtualQTreeWidget, param1: cint): cint {.base.} =
  QTreeWidgetheightForWidth(self[], param1)
proc cQTreeWidget_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQTreeWidget): bool {.base.} =
  QTreeWidgethasHeightForWidth(self[])
proc cQTreeWidget_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQTreeWidget): gen_qpaintengine_types.QPaintEngine {.base.} =
  QTreeWidgetpaintEngine(self[])
proc cQTreeWidget_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method keyReleaseEvent*(self: VirtualQTreeWidget, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QTreeWidgetkeyReleaseEvent(self[], event)
proc cQTreeWidget_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

method enterEvent*(self: VirtualQTreeWidget, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QTreeWidgetenterEvent(self[], event)
proc cQTreeWidget_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

method leaveEvent*(self: VirtualQTreeWidget, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QTreeWidgetleaveEvent(self[], event)
proc cQTreeWidget_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

method moveEvent*(self: VirtualQTreeWidget, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QTreeWidgetmoveEvent(self[], event)
proc cQTreeWidget_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

method closeEvent*(self: VirtualQTreeWidget, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QTreeWidgetcloseEvent(self[], event)
proc cQTreeWidget_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

method tabletEvent*(self: VirtualQTreeWidget, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QTreeWidgettabletEvent(self[], event)
proc cQTreeWidget_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

method actionEvent*(self: VirtualQTreeWidget, event: gen_qevent_types.QActionEvent): void {.base.} =
  QTreeWidgetactionEvent(self[], event)
proc cQTreeWidget_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

method showEvent*(self: VirtualQTreeWidget, event: gen_qevent_types.QShowEvent): void {.base.} =
  QTreeWidgetshowEvent(self[], event)
proc cQTreeWidget_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

method hideEvent*(self: VirtualQTreeWidget, event: gen_qevent_types.QHideEvent): void {.base.} =
  QTreeWidgethideEvent(self[], event)
proc cQTreeWidget_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

method nativeEvent*(self: VirtualQTreeWidget, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.base.} =
  QTreeWidgetnativeEvent(self[], eventType, message, resultVal)
proc cQTreeWidget_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method metric*(self: VirtualQTreeWidget, param1: cint): cint {.base.} =
  QTreeWidgetmetric(self[], param1)
proc cQTreeWidget_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQTreeWidget, painter: gen_qpainter_types.QPainter): void {.base.} =
  QTreeWidgetinitPainter(self[], painter)
proc cQTreeWidget_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

method redirected*(self: VirtualQTreeWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QTreeWidgetredirected(self[], offset)
proc cQTreeWidget_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQTreeWidget): gen_qpainter_types.QPainter {.base.} =
  QTreeWidgetsharedPainter(self[])
proc cQTreeWidget_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method childEvent*(self: VirtualQTreeWidget, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QTreeWidgetchildEvent(self[], event)
proc cQTreeWidget_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQTreeWidget, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QTreeWidgetcustomEvent(self[], event)
proc cQTreeWidget_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQTreeWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QTreeWidgetconnectNotify(self[], signal)
proc cQTreeWidget_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQTreeWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QTreeWidgetdisconnectNotify(self[], signal)
proc cQTreeWidget_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTreeWidget](fcQTreeWidget_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc items*(self: gen_qtreewidget_types.QTreeWidget, data: gen_qmimedata_types.QMimeData): seq[gen_qtreewidget_types.QTreeWidgetItem] =
  var v_ma = fcQTreeWidget_protectedbase_items(self.h, data.h)
  var vx_ret = newSeq[gen_qtreewidget_types.QTreeWidgetItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qtreewidget_types.QTreeWidgetItem(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc indexFromItem*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTreeWidget_protectedbase_indexFromItem(self.h, item.h), owned: true)

proc indexFromItem*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTreeWidget_protectedbase_indexFromItemWithItem(self.h, item.h), owned: true)

proc itemFromIndex*(self: gen_qtreewidget_types.QTreeWidget, index: gen_qabstractitemmodel_types.QModelIndex): gen_qtreewidget_types.QTreeWidgetItem =
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidget_protectedbase_itemFromIndex(self.h, index.h), owned: false)

proc indexFromItem*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem, column: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTreeWidget_protectedbase_indexFromItem2(self.h, item.h, column), owned: true)

proc indexFromItem*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem, column: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTreeWidget_protectedbase_indexFromItem22(self.h, item.h, column), owned: true)

proc columnResized*(self: gen_qtreewidget_types.QTreeWidget, column: cint, oldSize: cint, newSize: cint): void =
  fcQTreeWidget_protectedbase_columnResized(self.h, column, oldSize, newSize)

proc columnCountChanged*(self: gen_qtreewidget_types.QTreeWidget, oldCount: cint, newCount: cint): void =
  fcQTreeWidget_protectedbase_columnCountChanged(self.h, oldCount, newCount)

proc columnMoved*(self: gen_qtreewidget_types.QTreeWidget): void =
  fcQTreeWidget_protectedbase_columnMoved(self.h)

proc reexpand*(self: gen_qtreewidget_types.QTreeWidget): void =
  fcQTreeWidget_protectedbase_reexpand(self.h)

proc rowsRemoved*(self: gen_qtreewidget_types.QTreeWidget, parent: gen_qabstractitemmodel_types.QModelIndex, first: cint, last: cint): void =
  fcQTreeWidget_protectedbase_rowsRemoved(self.h, parent.h, first, last)

proc drawTree*(self: gen_qtreewidget_types.QTreeWidget, painter: gen_qpainter_types.QPainter, region: gen_qregion_types.QRegion): void =
  fcQTreeWidget_protectedbase_drawTree(self.h, painter.h, region.h)

proc indexRowSizeHint*(self: gen_qtreewidget_types.QTreeWidget, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQTreeWidget_protectedbase_indexRowSizeHint(self.h, index.h)

proc rowHeight*(self: gen_qtreewidget_types.QTreeWidget, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQTreeWidget_protectedbase_rowHeight(self.h, index.h)

proc setHorizontalStepsPerItem*(self: gen_qtreewidget_types.QTreeWidget, steps: cint): void =
  fcQTreeWidget_protectedbase_setHorizontalStepsPerItem(self.h, steps)

proc horizontalStepsPerItem*(self: gen_qtreewidget_types.QTreeWidget): cint =
  fcQTreeWidget_protectedbase_horizontalStepsPerItem(self.h)

proc setVerticalStepsPerItem*(self: gen_qtreewidget_types.QTreeWidget, steps: cint): void =
  fcQTreeWidget_protectedbase_setVerticalStepsPerItem(self.h, steps)

proc verticalStepsPerItem*(self: gen_qtreewidget_types.QTreeWidget): cint =
  fcQTreeWidget_protectedbase_verticalStepsPerItem(self.h)

proc state*(self: gen_qtreewidget_types.QTreeWidget): cint =
  cint(fcQTreeWidget_protectedbase_state(self.h))

proc setState*(self: gen_qtreewidget_types.QTreeWidget, state: cint): void =
  fcQTreeWidget_protectedbase_setState(self.h, cint(state))

proc scheduleDelayedItemsLayout*(self: gen_qtreewidget_types.QTreeWidget): void =
  fcQTreeWidget_protectedbase_scheduleDelayedItemsLayout(self.h)

proc executeDelayedItemsLayout*(self: gen_qtreewidget_types.QTreeWidget): void =
  fcQTreeWidget_protectedbase_executeDelayedItemsLayout(self.h)

proc setDirtyRegion*(self: gen_qtreewidget_types.QTreeWidget, region: gen_qregion_types.QRegion): void =
  fcQTreeWidget_protectedbase_setDirtyRegion(self.h, region.h)

proc scrollDirtyRegion*(self: gen_qtreewidget_types.QTreeWidget, dx: cint, dy: cint): void =
  fcQTreeWidget_protectedbase_scrollDirtyRegion(self.h, dx, dy)

proc dirtyRegionOffset*(self: gen_qtreewidget_types.QTreeWidget): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQTreeWidget_protectedbase_dirtyRegionOffset(self.h), owned: true)

proc startAutoScroll*(self: gen_qtreewidget_types.QTreeWidget): void =
  fcQTreeWidget_protectedbase_startAutoScroll(self.h)

proc stopAutoScroll*(self: gen_qtreewidget_types.QTreeWidget): void =
  fcQTreeWidget_protectedbase_stopAutoScroll(self.h)

proc doAutoScroll*(self: gen_qtreewidget_types.QTreeWidget): void =
  fcQTreeWidget_protectedbase_doAutoScroll(self.h)

proc dropIndicatorPosition*(self: gen_qtreewidget_types.QTreeWidget): cint =
  cint(fcQTreeWidget_protectedbase_dropIndicatorPosition(self.h))

proc setViewportMargins*(self: gen_qtreewidget_types.QTreeWidget, left: cint, top: cint, right: cint, bottom: cint): void =
  fcQTreeWidget_protectedbase_setViewportMargins(self.h, left, top, right, bottom)

proc viewportMargins*(self: gen_qtreewidget_types.QTreeWidget): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQTreeWidget_protectedbase_viewportMargins(self.h), owned: true)

proc drawFrame*(self: gen_qtreewidget_types.QTreeWidget, param1: gen_qpainter_types.QPainter): void =
  fcQTreeWidget_protectedbase_drawFrame(self.h, param1.h)

proc initStyleOption*(self: gen_qtreewidget_types.QTreeWidget, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fcQTreeWidget_protectedbase_initStyleOption(self.h, option.h)

proc updateMicroFocus*(self: gen_qtreewidget_types.QTreeWidget): void =
  fcQTreeWidget_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qtreewidget_types.QTreeWidget): void =
  fcQTreeWidget_protectedbase_create(self.h)

proc destroy*(self: gen_qtreewidget_types.QTreeWidget): void =
  fcQTreeWidget_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qtreewidget_types.QTreeWidget): bool =
  fcQTreeWidget_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qtreewidget_types.QTreeWidget): bool =
  fcQTreeWidget_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qtreewidget_types.QTreeWidget): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQTreeWidget_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qtreewidget_types.QTreeWidget): cint =
  fcQTreeWidget_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qtreewidget_types.QTreeWidget, signal: cstring): cint =
  fcQTreeWidget_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qtreewidget_types.QTreeWidget, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQTreeWidget_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qtreewidget_types.QTreeWidget,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QTreeWidgetVTable = nil): gen_qtreewidget_types.QTreeWidget =
  let vtbl = if vtbl == nil: new QTreeWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTreeWidgetVTable](fcQTreeWidget_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQTreeWidget_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQTreeWidget_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQTreeWidget_vtable_callback_metacall
  if not isNil(vtbl[].setSelectionModel):
    vtbl[].vtbl.setSelectionModel = cQTreeWidget_vtable_callback_setSelectionModel
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQTreeWidget_vtable_callback_event
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = cQTreeWidget_vtable_callback_mimeTypes
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = cQTreeWidget_vtable_callback_mimeData
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = cQTreeWidget_vtable_callback_dropMimeData
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = cQTreeWidget_vtable_callback_supportedDropActions
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQTreeWidget_vtable_callback_dropEvent
  if not isNil(vtbl[].setRootIndex):
    vtbl[].vtbl.setRootIndex = cQTreeWidget_vtable_callback_setRootIndex
  if not isNil(vtbl[].keyboardSearch):
    vtbl[].vtbl.keyboardSearch = cQTreeWidget_vtable_callback_keyboardSearch
  if not isNil(vtbl[].visualRect):
    vtbl[].vtbl.visualRect = cQTreeWidget_vtable_callback_visualRect
  if not isNil(vtbl[].scrollTo):
    vtbl[].vtbl.scrollTo = cQTreeWidget_vtable_callback_scrollTo
  if not isNil(vtbl[].indexAt):
    vtbl[].vtbl.indexAt = cQTreeWidget_vtable_callback_indexAt
  if not isNil(vtbl[].doItemsLayout):
    vtbl[].vtbl.doItemsLayout = cQTreeWidget_vtable_callback_doItemsLayout
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = cQTreeWidget_vtable_callback_reset
  if not isNil(vtbl[].dataChanged):
    vtbl[].vtbl.dataChanged = cQTreeWidget_vtable_callback_dataChanged
  if not isNil(vtbl[].selectAll):
    vtbl[].vtbl.selectAll = cQTreeWidget_vtable_callback_selectAll
  if not isNil(vtbl[].verticalScrollbarValueChanged):
    vtbl[].vtbl.verticalScrollbarValueChanged = cQTreeWidget_vtable_callback_verticalScrollbarValueChanged
  if not isNil(vtbl[].scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = cQTreeWidget_vtable_callback_scrollContentsBy
  if not isNil(vtbl[].rowsInserted):
    vtbl[].vtbl.rowsInserted = cQTreeWidget_vtable_callback_rowsInserted
  if not isNil(vtbl[].rowsAboutToBeRemoved):
    vtbl[].vtbl.rowsAboutToBeRemoved = cQTreeWidget_vtable_callback_rowsAboutToBeRemoved
  if not isNil(vtbl[].moveCursor):
    vtbl[].vtbl.moveCursor = cQTreeWidget_vtable_callback_moveCursor
  if not isNil(vtbl[].horizontalOffset):
    vtbl[].vtbl.horizontalOffset = cQTreeWidget_vtable_callback_horizontalOffset
  if not isNil(vtbl[].verticalOffset):
    vtbl[].vtbl.verticalOffset = cQTreeWidget_vtable_callback_verticalOffset
  if not isNil(vtbl[].setSelection):
    vtbl[].vtbl.setSelection = cQTreeWidget_vtable_callback_setSelection
  if not isNil(vtbl[].visualRegionForSelection):
    vtbl[].vtbl.visualRegionForSelection = cQTreeWidget_vtable_callback_visualRegionForSelection
  if not isNil(vtbl[].selectedIndexes):
    vtbl[].vtbl.selectedIndexes = cQTreeWidget_vtable_callback_selectedIndexes
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQTreeWidget_vtable_callback_timerEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQTreeWidget_vtable_callback_paintEvent
  if not isNil(vtbl[].drawRow):
    vtbl[].vtbl.drawRow = cQTreeWidget_vtable_callback_drawRow
  if not isNil(vtbl[].drawBranches):
    vtbl[].vtbl.drawBranches = cQTreeWidget_vtable_callback_drawBranches
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQTreeWidget_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQTreeWidget_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQTreeWidget_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQTreeWidget_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQTreeWidget_vtable_callback_keyPressEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQTreeWidget_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].viewportEvent):
    vtbl[].vtbl.viewportEvent = cQTreeWidget_vtable_callback_viewportEvent
  if not isNil(vtbl[].updateGeometries):
    vtbl[].vtbl.updateGeometries = cQTreeWidget_vtable_callback_updateGeometries
  if not isNil(vtbl[].viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = cQTreeWidget_vtable_callback_viewportSizeHint
  if not isNil(vtbl[].sizeHintForColumn):
    vtbl[].vtbl.sizeHintForColumn = cQTreeWidget_vtable_callback_sizeHintForColumn
  if not isNil(vtbl[].horizontalScrollbarAction):
    vtbl[].vtbl.horizontalScrollbarAction = cQTreeWidget_vtable_callback_horizontalScrollbarAction
  if not isNil(vtbl[].isIndexHidden):
    vtbl[].vtbl.isIndexHidden = cQTreeWidget_vtable_callback_isIndexHidden
  if not isNil(vtbl[].selectionChanged):
    vtbl[].vtbl.selectionChanged = cQTreeWidget_vtable_callback_selectionChanged
  if not isNil(vtbl[].currentChanged):
    vtbl[].vtbl.currentChanged = cQTreeWidget_vtable_callback_currentChanged
  if not isNil(vtbl[].sizeHintForRow):
    vtbl[].vtbl.sizeHintForRow = cQTreeWidget_vtable_callback_sizeHintForRow
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQTreeWidget_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].updateEditorData):
    vtbl[].vtbl.updateEditorData = cQTreeWidget_vtable_callback_updateEditorData
  if not isNil(vtbl[].updateEditorGeometries):
    vtbl[].vtbl.updateEditorGeometries = cQTreeWidget_vtable_callback_updateEditorGeometries
  if not isNil(vtbl[].verticalScrollbarAction):
    vtbl[].vtbl.verticalScrollbarAction = cQTreeWidget_vtable_callback_verticalScrollbarAction
  if not isNil(vtbl[].horizontalScrollbarValueChanged):
    vtbl[].vtbl.horizontalScrollbarValueChanged = cQTreeWidget_vtable_callback_horizontalScrollbarValueChanged
  if not isNil(vtbl[].closeEditor):
    vtbl[].vtbl.closeEditor = cQTreeWidget_vtable_callback_closeEditor
  if not isNil(vtbl[].commitData):
    vtbl[].vtbl.commitData = cQTreeWidget_vtable_callback_commitData
  if not isNil(vtbl[].editorDestroyed):
    vtbl[].vtbl.editorDestroyed = cQTreeWidget_vtable_callback_editorDestroyed
  if not isNil(vtbl[].edit2):
    vtbl[].vtbl.edit2 = cQTreeWidget_vtable_callback_edit2
  if not isNil(vtbl[].selectionCommand):
    vtbl[].vtbl.selectionCommand = cQTreeWidget_vtable_callback_selectionCommand
  if not isNil(vtbl[].startDrag):
    vtbl[].vtbl.startDrag = cQTreeWidget_vtable_callback_startDrag
  if not isNil(vtbl[].viewOptions):
    vtbl[].vtbl.viewOptions = cQTreeWidget_vtable_callback_viewOptions
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQTreeWidget_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQTreeWidget_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQTreeWidget_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQTreeWidget_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQTreeWidget_vtable_callback_focusOutEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQTreeWidget_vtable_callback_resizeEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQTreeWidget_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQTreeWidget_vtable_callback_eventFilter
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQTreeWidget_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQTreeWidget_vtable_callback_sizeHint
  if not isNil(vtbl[].setupViewport):
    vtbl[].vtbl.setupViewport = cQTreeWidget_vtable_callback_setupViewport
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQTreeWidget_vtable_callback_wheelEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQTreeWidget_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQTreeWidget_vtable_callback_changeEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQTreeWidget_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQTreeWidget_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQTreeWidget_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQTreeWidget_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQTreeWidget_vtable_callback_paintEngine
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQTreeWidget_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQTreeWidget_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQTreeWidget_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQTreeWidget_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQTreeWidget_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQTreeWidget_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQTreeWidget_vtable_callback_actionEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQTreeWidget_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQTreeWidget_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQTreeWidget_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQTreeWidget_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQTreeWidget_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQTreeWidget_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQTreeWidget_vtable_callback_sharedPainter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQTreeWidget_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQTreeWidget_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQTreeWidget_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQTreeWidget_vtable_callback_disconnectNotify
  gen_qtreewidget_types.QTreeWidget(h: fcQTreeWidget_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qtreewidget_types.QTreeWidget,
    vtbl: ref QTreeWidgetVTable = nil): gen_qtreewidget_types.QTreeWidget =
  let vtbl = if vtbl == nil: new QTreeWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTreeWidgetVTable](fcQTreeWidget_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQTreeWidget_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQTreeWidget_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQTreeWidget_vtable_callback_metacall
  if not isNil(vtbl[].setSelectionModel):
    vtbl[].vtbl.setSelectionModel = cQTreeWidget_vtable_callback_setSelectionModel
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQTreeWidget_vtable_callback_event
  if not isNil(vtbl[].mimeTypes):
    vtbl[].vtbl.mimeTypes = cQTreeWidget_vtable_callback_mimeTypes
  if not isNil(vtbl[].mimeData):
    vtbl[].vtbl.mimeData = cQTreeWidget_vtable_callback_mimeData
  if not isNil(vtbl[].dropMimeData):
    vtbl[].vtbl.dropMimeData = cQTreeWidget_vtable_callback_dropMimeData
  if not isNil(vtbl[].supportedDropActions):
    vtbl[].vtbl.supportedDropActions = cQTreeWidget_vtable_callback_supportedDropActions
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQTreeWidget_vtable_callback_dropEvent
  if not isNil(vtbl[].setRootIndex):
    vtbl[].vtbl.setRootIndex = cQTreeWidget_vtable_callback_setRootIndex
  if not isNil(vtbl[].keyboardSearch):
    vtbl[].vtbl.keyboardSearch = cQTreeWidget_vtable_callback_keyboardSearch
  if not isNil(vtbl[].visualRect):
    vtbl[].vtbl.visualRect = cQTreeWidget_vtable_callback_visualRect
  if not isNil(vtbl[].scrollTo):
    vtbl[].vtbl.scrollTo = cQTreeWidget_vtable_callback_scrollTo
  if not isNil(vtbl[].indexAt):
    vtbl[].vtbl.indexAt = cQTreeWidget_vtable_callback_indexAt
  if not isNil(vtbl[].doItemsLayout):
    vtbl[].vtbl.doItemsLayout = cQTreeWidget_vtable_callback_doItemsLayout
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = cQTreeWidget_vtable_callback_reset
  if not isNil(vtbl[].dataChanged):
    vtbl[].vtbl.dataChanged = cQTreeWidget_vtable_callback_dataChanged
  if not isNil(vtbl[].selectAll):
    vtbl[].vtbl.selectAll = cQTreeWidget_vtable_callback_selectAll
  if not isNil(vtbl[].verticalScrollbarValueChanged):
    vtbl[].vtbl.verticalScrollbarValueChanged = cQTreeWidget_vtable_callback_verticalScrollbarValueChanged
  if not isNil(vtbl[].scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = cQTreeWidget_vtable_callback_scrollContentsBy
  if not isNil(vtbl[].rowsInserted):
    vtbl[].vtbl.rowsInserted = cQTreeWidget_vtable_callback_rowsInserted
  if not isNil(vtbl[].rowsAboutToBeRemoved):
    vtbl[].vtbl.rowsAboutToBeRemoved = cQTreeWidget_vtable_callback_rowsAboutToBeRemoved
  if not isNil(vtbl[].moveCursor):
    vtbl[].vtbl.moveCursor = cQTreeWidget_vtable_callback_moveCursor
  if not isNil(vtbl[].horizontalOffset):
    vtbl[].vtbl.horizontalOffset = cQTreeWidget_vtable_callback_horizontalOffset
  if not isNil(vtbl[].verticalOffset):
    vtbl[].vtbl.verticalOffset = cQTreeWidget_vtable_callback_verticalOffset
  if not isNil(vtbl[].setSelection):
    vtbl[].vtbl.setSelection = cQTreeWidget_vtable_callback_setSelection
  if not isNil(vtbl[].visualRegionForSelection):
    vtbl[].vtbl.visualRegionForSelection = cQTreeWidget_vtable_callback_visualRegionForSelection
  if not isNil(vtbl[].selectedIndexes):
    vtbl[].vtbl.selectedIndexes = cQTreeWidget_vtable_callback_selectedIndexes
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQTreeWidget_vtable_callback_timerEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQTreeWidget_vtable_callback_paintEvent
  if not isNil(vtbl[].drawRow):
    vtbl[].vtbl.drawRow = cQTreeWidget_vtable_callback_drawRow
  if not isNil(vtbl[].drawBranches):
    vtbl[].vtbl.drawBranches = cQTreeWidget_vtable_callback_drawBranches
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQTreeWidget_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQTreeWidget_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQTreeWidget_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQTreeWidget_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQTreeWidget_vtable_callback_keyPressEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQTreeWidget_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].viewportEvent):
    vtbl[].vtbl.viewportEvent = cQTreeWidget_vtable_callback_viewportEvent
  if not isNil(vtbl[].updateGeometries):
    vtbl[].vtbl.updateGeometries = cQTreeWidget_vtable_callback_updateGeometries
  if not isNil(vtbl[].viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = cQTreeWidget_vtable_callback_viewportSizeHint
  if not isNil(vtbl[].sizeHintForColumn):
    vtbl[].vtbl.sizeHintForColumn = cQTreeWidget_vtable_callback_sizeHintForColumn
  if not isNil(vtbl[].horizontalScrollbarAction):
    vtbl[].vtbl.horizontalScrollbarAction = cQTreeWidget_vtable_callback_horizontalScrollbarAction
  if not isNil(vtbl[].isIndexHidden):
    vtbl[].vtbl.isIndexHidden = cQTreeWidget_vtable_callback_isIndexHidden
  if not isNil(vtbl[].selectionChanged):
    vtbl[].vtbl.selectionChanged = cQTreeWidget_vtable_callback_selectionChanged
  if not isNil(vtbl[].currentChanged):
    vtbl[].vtbl.currentChanged = cQTreeWidget_vtable_callback_currentChanged
  if not isNil(vtbl[].sizeHintForRow):
    vtbl[].vtbl.sizeHintForRow = cQTreeWidget_vtable_callback_sizeHintForRow
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQTreeWidget_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].updateEditorData):
    vtbl[].vtbl.updateEditorData = cQTreeWidget_vtable_callback_updateEditorData
  if not isNil(vtbl[].updateEditorGeometries):
    vtbl[].vtbl.updateEditorGeometries = cQTreeWidget_vtable_callback_updateEditorGeometries
  if not isNil(vtbl[].verticalScrollbarAction):
    vtbl[].vtbl.verticalScrollbarAction = cQTreeWidget_vtable_callback_verticalScrollbarAction
  if not isNil(vtbl[].horizontalScrollbarValueChanged):
    vtbl[].vtbl.horizontalScrollbarValueChanged = cQTreeWidget_vtable_callback_horizontalScrollbarValueChanged
  if not isNil(vtbl[].closeEditor):
    vtbl[].vtbl.closeEditor = cQTreeWidget_vtable_callback_closeEditor
  if not isNil(vtbl[].commitData):
    vtbl[].vtbl.commitData = cQTreeWidget_vtable_callback_commitData
  if not isNil(vtbl[].editorDestroyed):
    vtbl[].vtbl.editorDestroyed = cQTreeWidget_vtable_callback_editorDestroyed
  if not isNil(vtbl[].edit2):
    vtbl[].vtbl.edit2 = cQTreeWidget_vtable_callback_edit2
  if not isNil(vtbl[].selectionCommand):
    vtbl[].vtbl.selectionCommand = cQTreeWidget_vtable_callback_selectionCommand
  if not isNil(vtbl[].startDrag):
    vtbl[].vtbl.startDrag = cQTreeWidget_vtable_callback_startDrag
  if not isNil(vtbl[].viewOptions):
    vtbl[].vtbl.viewOptions = cQTreeWidget_vtable_callback_viewOptions
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQTreeWidget_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQTreeWidget_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQTreeWidget_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQTreeWidget_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQTreeWidget_vtable_callback_focusOutEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQTreeWidget_vtable_callback_resizeEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQTreeWidget_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQTreeWidget_vtable_callback_eventFilter
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQTreeWidget_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQTreeWidget_vtable_callback_sizeHint
  if not isNil(vtbl[].setupViewport):
    vtbl[].vtbl.setupViewport = cQTreeWidget_vtable_callback_setupViewport
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQTreeWidget_vtable_callback_wheelEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQTreeWidget_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQTreeWidget_vtable_callback_changeEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQTreeWidget_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQTreeWidget_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQTreeWidget_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQTreeWidget_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQTreeWidget_vtable_callback_paintEngine
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQTreeWidget_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQTreeWidget_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQTreeWidget_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQTreeWidget_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQTreeWidget_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQTreeWidget_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQTreeWidget_vtable_callback_actionEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQTreeWidget_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQTreeWidget_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQTreeWidget_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQTreeWidget_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQTreeWidget_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQTreeWidget_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQTreeWidget_vtable_callback_sharedPainter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQTreeWidget_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQTreeWidget_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQTreeWidget_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQTreeWidget_vtable_callback_disconnectNotify
  gen_qtreewidget_types.QTreeWidget(h: fcQTreeWidget_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQTreeWidget_mvtbl = cQTreeWidgetVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQTreeWidget()[])](self.fcQTreeWidget_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQTreeWidget_method_callback_metaObject,
  metacast: cQTreeWidget_method_callback_metacast,
  metacall: cQTreeWidget_method_callback_metacall,
  setSelectionModel: cQTreeWidget_method_callback_setSelectionModel,
  event: cQTreeWidget_method_callback_event,
  mimeTypes: cQTreeWidget_method_callback_mimeTypes,
  mimeData: cQTreeWidget_method_callback_mimeData,
  dropMimeData: cQTreeWidget_method_callback_dropMimeData,
  supportedDropActions: cQTreeWidget_method_callback_supportedDropActions,
  dropEvent: cQTreeWidget_method_callback_dropEvent,
  setRootIndex: cQTreeWidget_method_callback_setRootIndex,
  keyboardSearch: cQTreeWidget_method_callback_keyboardSearch,
  visualRect: cQTreeWidget_method_callback_visualRect,
  scrollTo: cQTreeWidget_method_callback_scrollTo,
  indexAt: cQTreeWidget_method_callback_indexAt,
  doItemsLayout: cQTreeWidget_method_callback_doItemsLayout,
  reset: cQTreeWidget_method_callback_reset,
  dataChanged: cQTreeWidget_method_callback_dataChanged,
  selectAll: cQTreeWidget_method_callback_selectAll,
  verticalScrollbarValueChanged: cQTreeWidget_method_callback_verticalScrollbarValueChanged,
  scrollContentsBy: cQTreeWidget_method_callback_scrollContentsBy,
  rowsInserted: cQTreeWidget_method_callback_rowsInserted,
  rowsAboutToBeRemoved: cQTreeWidget_method_callback_rowsAboutToBeRemoved,
  moveCursor: cQTreeWidget_method_callback_moveCursor,
  horizontalOffset: cQTreeWidget_method_callback_horizontalOffset,
  verticalOffset: cQTreeWidget_method_callback_verticalOffset,
  setSelection: cQTreeWidget_method_callback_setSelection,
  visualRegionForSelection: cQTreeWidget_method_callback_visualRegionForSelection,
  selectedIndexes: cQTreeWidget_method_callback_selectedIndexes,
  timerEvent: cQTreeWidget_method_callback_timerEvent,
  paintEvent: cQTreeWidget_method_callback_paintEvent,
  drawRow: cQTreeWidget_method_callback_drawRow,
  drawBranches: cQTreeWidget_method_callback_drawBranches,
  mousePressEvent: cQTreeWidget_method_callback_mousePressEvent,
  mouseReleaseEvent: cQTreeWidget_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: cQTreeWidget_method_callback_mouseDoubleClickEvent,
  mouseMoveEvent: cQTreeWidget_method_callback_mouseMoveEvent,
  keyPressEvent: cQTreeWidget_method_callback_keyPressEvent,
  dragMoveEvent: cQTreeWidget_method_callback_dragMoveEvent,
  viewportEvent: cQTreeWidget_method_callback_viewportEvent,
  updateGeometries: cQTreeWidget_method_callback_updateGeometries,
  viewportSizeHint: cQTreeWidget_method_callback_viewportSizeHint,
  sizeHintForColumn: cQTreeWidget_method_callback_sizeHintForColumn,
  horizontalScrollbarAction: cQTreeWidget_method_callback_horizontalScrollbarAction,
  isIndexHidden: cQTreeWidget_method_callback_isIndexHidden,
  selectionChanged: cQTreeWidget_method_callback_selectionChanged,
  currentChanged: cQTreeWidget_method_callback_currentChanged,
  sizeHintForRow: cQTreeWidget_method_callback_sizeHintForRow,
  inputMethodQuery: cQTreeWidget_method_callback_inputMethodQuery,
  updateEditorData: cQTreeWidget_method_callback_updateEditorData,
  updateEditorGeometries: cQTreeWidget_method_callback_updateEditorGeometries,
  verticalScrollbarAction: cQTreeWidget_method_callback_verticalScrollbarAction,
  horizontalScrollbarValueChanged: cQTreeWidget_method_callback_horizontalScrollbarValueChanged,
  closeEditor: cQTreeWidget_method_callback_closeEditor,
  commitData: cQTreeWidget_method_callback_commitData,
  editorDestroyed: cQTreeWidget_method_callback_editorDestroyed,
  edit2: cQTreeWidget_method_callback_edit2,
  selectionCommand: cQTreeWidget_method_callback_selectionCommand,
  startDrag: cQTreeWidget_method_callback_startDrag,
  viewOptions: cQTreeWidget_method_callback_viewOptions,
  focusNextPrevChild: cQTreeWidget_method_callback_focusNextPrevChild,
  dragEnterEvent: cQTreeWidget_method_callback_dragEnterEvent,
  dragLeaveEvent: cQTreeWidget_method_callback_dragLeaveEvent,
  focusInEvent: cQTreeWidget_method_callback_focusInEvent,
  focusOutEvent: cQTreeWidget_method_callback_focusOutEvent,
  resizeEvent: cQTreeWidget_method_callback_resizeEvent,
  inputMethodEvent: cQTreeWidget_method_callback_inputMethodEvent,
  eventFilter: cQTreeWidget_method_callback_eventFilter,
  minimumSizeHint: cQTreeWidget_method_callback_minimumSizeHint,
  sizeHint: cQTreeWidget_method_callback_sizeHint,
  setupViewport: cQTreeWidget_method_callback_setupViewport,
  wheelEvent: cQTreeWidget_method_callback_wheelEvent,
  contextMenuEvent: cQTreeWidget_method_callback_contextMenuEvent,
  changeEvent: cQTreeWidget_method_callback_changeEvent,
  devType: cQTreeWidget_method_callback_devType,
  setVisible: cQTreeWidget_method_callback_setVisible,
  heightForWidth: cQTreeWidget_method_callback_heightForWidth,
  hasHeightForWidth: cQTreeWidget_method_callback_hasHeightForWidth,
  paintEngine: cQTreeWidget_method_callback_paintEngine,
  keyReleaseEvent: cQTreeWidget_method_callback_keyReleaseEvent,
  enterEvent: cQTreeWidget_method_callback_enterEvent,
  leaveEvent: cQTreeWidget_method_callback_leaveEvent,
  moveEvent: cQTreeWidget_method_callback_moveEvent,
  closeEvent: cQTreeWidget_method_callback_closeEvent,
  tabletEvent: cQTreeWidget_method_callback_tabletEvent,
  actionEvent: cQTreeWidget_method_callback_actionEvent,
  showEvent: cQTreeWidget_method_callback_showEvent,
  hideEvent: cQTreeWidget_method_callback_hideEvent,
  nativeEvent: cQTreeWidget_method_callback_nativeEvent,
  metric: cQTreeWidget_method_callback_metric,
  initPainter: cQTreeWidget_method_callback_initPainter,
  redirected: cQTreeWidget_method_callback_redirected,
  sharedPainter: cQTreeWidget_method_callback_sharedPainter,
  childEvent: cQTreeWidget_method_callback_childEvent,
  customEvent: cQTreeWidget_method_callback_customEvent,
  connectNotify: cQTreeWidget_method_callback_connectNotify,
  disconnectNotify: cQTreeWidget_method_callback_disconnectNotify,
)
proc create*(T: type gen_qtreewidget_types.QTreeWidget,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQTreeWidget) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTreeWidget_new(addr(cQTreeWidget_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qtreewidget_types.QTreeWidget,
    inst: VirtualQTreeWidget) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTreeWidget_new2(addr(cQTreeWidget_mvtbl), addr(inst[]))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qtreewidget_types.QTreeWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTreeWidget_staticMetaObject())
