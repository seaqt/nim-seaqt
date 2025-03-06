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
{.compile("gen_qtreewidget.cpp", cflags).}


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

proc fcQTreeWidgetItem_clone(self: pointer, ): pointer {.importc: "QTreeWidgetItem_clone".}
proc fcQTreeWidgetItem_treeWidget(self: pointer, ): pointer {.importc: "QTreeWidgetItem_treeWidget".}
proc fcQTreeWidgetItem_setSelected(self: pointer, select: bool): void {.importc: "QTreeWidgetItem_setSelected".}
proc fcQTreeWidgetItem_isSelected(self: pointer, ): bool {.importc: "QTreeWidgetItem_isSelected".}
proc fcQTreeWidgetItem_setHidden(self: pointer, hide: bool): void {.importc: "QTreeWidgetItem_setHidden".}
proc fcQTreeWidgetItem_isHidden(self: pointer, ): bool {.importc: "QTreeWidgetItem_isHidden".}
proc fcQTreeWidgetItem_setExpanded(self: pointer, expand: bool): void {.importc: "QTreeWidgetItem_setExpanded".}
proc fcQTreeWidgetItem_isExpanded(self: pointer, ): bool {.importc: "QTreeWidgetItem_isExpanded".}
proc fcQTreeWidgetItem_setFirstColumnSpanned(self: pointer, span: bool): void {.importc: "QTreeWidgetItem_setFirstColumnSpanned".}
proc fcQTreeWidgetItem_isFirstColumnSpanned(self: pointer, ): bool {.importc: "QTreeWidgetItem_isFirstColumnSpanned".}
proc fcQTreeWidgetItem_setDisabled(self: pointer, disabled: bool): void {.importc: "QTreeWidgetItem_setDisabled".}
proc fcQTreeWidgetItem_isDisabled(self: pointer, ): bool {.importc: "QTreeWidgetItem_isDisabled".}
proc fcQTreeWidgetItem_setChildIndicatorPolicy(self: pointer, policy: cint): void {.importc: "QTreeWidgetItem_setChildIndicatorPolicy".}
proc fcQTreeWidgetItem_childIndicatorPolicy(self: pointer, ): cint {.importc: "QTreeWidgetItem_childIndicatorPolicy".}
proc fcQTreeWidgetItem_flags(self: pointer, ): cint {.importc: "QTreeWidgetItem_flags".}
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
proc fcQTreeWidgetItem_parent(self: pointer, ): pointer {.importc: "QTreeWidgetItem_parent".}
proc fcQTreeWidgetItem_child(self: pointer, index: cint): pointer {.importc: "QTreeWidgetItem_child".}
proc fcQTreeWidgetItem_childCount(self: pointer, ): cint {.importc: "QTreeWidgetItem_childCount".}
proc fcQTreeWidgetItem_columnCount(self: pointer, ): cint {.importc: "QTreeWidgetItem_columnCount".}
proc fcQTreeWidgetItem_indexOfChild(self: pointer, child: pointer): cint {.importc: "QTreeWidgetItem_indexOfChild".}
proc fcQTreeWidgetItem_addChild(self: pointer, child: pointer): void {.importc: "QTreeWidgetItem_addChild".}
proc fcQTreeWidgetItem_insertChild(self: pointer, index: cint, child: pointer): void {.importc: "QTreeWidgetItem_insertChild".}
proc fcQTreeWidgetItem_removeChild(self: pointer, child: pointer): void {.importc: "QTreeWidgetItem_removeChild".}
proc fcQTreeWidgetItem_takeChild(self: pointer, index: cint): pointer {.importc: "QTreeWidgetItem_takeChild".}
proc fcQTreeWidgetItem_addChildren(self: pointer, children: struct_miqt_array): void {.importc: "QTreeWidgetItem_addChildren".}
proc fcQTreeWidgetItem_insertChildren(self: pointer, index: cint, children: struct_miqt_array): void {.importc: "QTreeWidgetItem_insertChildren".}
proc fcQTreeWidgetItem_takeChildren(self: pointer, ): struct_miqt_array {.importc: "QTreeWidgetItem_takeChildren".}
proc fcQTreeWidgetItem_typeX(self: pointer, ): cint {.importc: "QTreeWidgetItem_type".}
proc fcQTreeWidgetItem_sortChildren(self: pointer, column: cint, order: cint): void {.importc: "QTreeWidgetItem_sortChildren".}
type cQTreeWidgetItemVTable = object
  destructor*: proc(vtbl: ptr cQTreeWidgetItemVTable, self: ptr cQTreeWidgetItem) {.cdecl, raises:[], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  data*: proc(vtbl, self: pointer, column: cint, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  setData*: proc(vtbl, self: pointer, column: cint, role: cint, value: pointer): void {.cdecl, raises: [], gcsafe.}
  operatorLesser*: proc(vtbl, self: pointer, other: pointer): bool {.cdecl, raises: [], gcsafe.}
  read*: proc(vtbl, self: pointer, inVal: pointer): void {.cdecl, raises: [], gcsafe.}
  write*: proc(vtbl, self: pointer, outVal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQTreeWidgetItem_virtualbase_clone(self: pointer, ): pointer {.importc: "QTreeWidgetItem_virtualbase_clone".}
proc fcQTreeWidgetItem_virtualbase_data(self: pointer, column: cint, role: cint): pointer {.importc: "QTreeWidgetItem_virtualbase_data".}
proc fcQTreeWidgetItem_virtualbase_setData(self: pointer, column: cint, role: cint, value: pointer): void {.importc: "QTreeWidgetItem_virtualbase_setData".}
proc fcQTreeWidgetItem_virtualbase_operatorLesser(self: pointer, other: pointer): bool {.importc: "QTreeWidgetItem_virtualbase_operatorLesser".}
proc fcQTreeWidgetItem_virtualbase_read(self: pointer, inVal: pointer): void {.importc: "QTreeWidgetItem_virtualbase_read".}
proc fcQTreeWidgetItem_virtualbase_write(self: pointer, outVal: pointer): void {.importc: "QTreeWidgetItem_virtualbase_write".}
proc fcQTreeWidgetItem_protectedbase_emitDataChanged(self: pointer, ): void {.importc: "QTreeWidgetItem_protectedbase_emitDataChanged".}
proc fcQTreeWidgetItem_new(vtbl: pointer, ): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new".}
proc fcQTreeWidgetItem_new2(vtbl: pointer, strings: struct_miqt_array): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new2".}
proc fcQTreeWidgetItem_new3(vtbl: pointer, treeview: pointer): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new3".}
proc fcQTreeWidgetItem_new4(vtbl: pointer, treeview: pointer, strings: struct_miqt_array): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new4".}
proc fcQTreeWidgetItem_new5(vtbl: pointer, treeview: pointer, after: pointer): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new5".}
proc fcQTreeWidgetItem_new6(vtbl: pointer, parent: pointer): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new6".}
proc fcQTreeWidgetItem_new7(vtbl: pointer, parent: pointer, strings: struct_miqt_array): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new7".}
proc fcQTreeWidgetItem_new8(vtbl: pointer, parent: pointer, after: pointer): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new8".}
proc fcQTreeWidgetItem_new9(vtbl: pointer, other: pointer): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new9".}
proc fcQTreeWidgetItem_new10(vtbl: pointer, typeVal: cint): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new10".}
proc fcQTreeWidgetItem_new11(vtbl: pointer, strings: struct_miqt_array, typeVal: cint): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new11".}
proc fcQTreeWidgetItem_new12(vtbl: pointer, treeview: pointer, typeVal: cint): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new12".}
proc fcQTreeWidgetItem_new13(vtbl: pointer, treeview: pointer, strings: struct_miqt_array, typeVal: cint): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new13".}
proc fcQTreeWidgetItem_new14(vtbl: pointer, treeview: pointer, after: pointer, typeVal: cint): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new14".}
proc fcQTreeWidgetItem_new15(vtbl: pointer, parent: pointer, typeVal: cint): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new15".}
proc fcQTreeWidgetItem_new16(vtbl: pointer, parent: pointer, strings: struct_miqt_array, typeVal: cint): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new16".}
proc fcQTreeWidgetItem_new17(vtbl: pointer, parent: pointer, after: pointer, typeVal: cint): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new17".}
proc fcQTreeWidgetItem_delete(self: pointer) {.importc: "QTreeWidgetItem_delete".}
proc fcQTreeWidget_metaObject(self: pointer, ): pointer {.importc: "QTreeWidget_metaObject".}
proc fcQTreeWidget_metacast(self: pointer, param1: cstring): pointer {.importc: "QTreeWidget_metacast".}
proc fcQTreeWidget_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTreeWidget_metacall".}
proc fcQTreeWidget_tr(s: cstring): struct_miqt_string {.importc: "QTreeWidget_tr".}
proc fcQTreeWidget_trUtf8(s: cstring): struct_miqt_string {.importc: "QTreeWidget_trUtf8".}
proc fcQTreeWidget_columnCount(self: pointer, ): cint {.importc: "QTreeWidget_columnCount".}
proc fcQTreeWidget_setColumnCount(self: pointer, columns: cint): void {.importc: "QTreeWidget_setColumnCount".}
proc fcQTreeWidget_invisibleRootItem(self: pointer, ): pointer {.importc: "QTreeWidget_invisibleRootItem".}
proc fcQTreeWidget_topLevelItem(self: pointer, index: cint): pointer {.importc: "QTreeWidget_topLevelItem".}
proc fcQTreeWidget_topLevelItemCount(self: pointer, ): cint {.importc: "QTreeWidget_topLevelItemCount".}
proc fcQTreeWidget_insertTopLevelItem(self: pointer, index: cint, item: pointer): void {.importc: "QTreeWidget_insertTopLevelItem".}
proc fcQTreeWidget_addTopLevelItem(self: pointer, item: pointer): void {.importc: "QTreeWidget_addTopLevelItem".}
proc fcQTreeWidget_takeTopLevelItem(self: pointer, index: cint): pointer {.importc: "QTreeWidget_takeTopLevelItem".}
proc fcQTreeWidget_indexOfTopLevelItem(self: pointer, item: pointer): cint {.importc: "QTreeWidget_indexOfTopLevelItem".}
proc fcQTreeWidget_insertTopLevelItems(self: pointer, index: cint, items: struct_miqt_array): void {.importc: "QTreeWidget_insertTopLevelItems".}
proc fcQTreeWidget_addTopLevelItems(self: pointer, items: struct_miqt_array): void {.importc: "QTreeWidget_addTopLevelItems".}
proc fcQTreeWidget_headerItem(self: pointer, ): pointer {.importc: "QTreeWidget_headerItem".}
proc fcQTreeWidget_setHeaderItem(self: pointer, item: pointer): void {.importc: "QTreeWidget_setHeaderItem".}
proc fcQTreeWidget_setHeaderLabels(self: pointer, labels: struct_miqt_array): void {.importc: "QTreeWidget_setHeaderLabels".}
proc fcQTreeWidget_setHeaderLabel(self: pointer, label: struct_miqt_string): void {.importc: "QTreeWidget_setHeaderLabel".}
proc fcQTreeWidget_currentItem(self: pointer, ): pointer {.importc: "QTreeWidget_currentItem".}
proc fcQTreeWidget_currentColumn(self: pointer, ): cint {.importc: "QTreeWidget_currentColumn".}
proc fcQTreeWidget_setCurrentItem(self: pointer, item: pointer): void {.importc: "QTreeWidget_setCurrentItem".}
proc fcQTreeWidget_setCurrentItem2(self: pointer, item: pointer, column: cint): void {.importc: "QTreeWidget_setCurrentItem2".}
proc fcQTreeWidget_setCurrentItem3(self: pointer, item: pointer, column: cint, command: cint): void {.importc: "QTreeWidget_setCurrentItem3".}
proc fcQTreeWidget_itemAt(self: pointer, p: pointer): pointer {.importc: "QTreeWidget_itemAt".}
proc fcQTreeWidget_itemAt2(self: pointer, x: cint, y: cint): pointer {.importc: "QTreeWidget_itemAt2".}
proc fcQTreeWidget_visualItemRect(self: pointer, item: pointer): pointer {.importc: "QTreeWidget_visualItemRect".}
proc fcQTreeWidget_sortColumn(self: pointer, ): cint {.importc: "QTreeWidget_sortColumn".}
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
proc fcQTreeWidget_selectedItems(self: pointer, ): struct_miqt_array {.importc: "QTreeWidget_selectedItems".}
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
proc fcQTreeWidget_clear(self: pointer, ): void {.importc: "QTreeWidget_clear".}
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
proc fcQTreeWidget_itemSelectionChanged(self: pointer, ): void {.importc: "QTreeWidget_itemSelectionChanged".}
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
type cQTreeWidgetVTable = object
  destructor*: proc(vtbl: ptr cQTreeWidgetVTable, self: ptr cQTreeWidget) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setSelectionModel*: proc(vtbl, self: pointer, selectionModel: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  mimeTypes*: proc(vtbl, self: pointer, ): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  mimeData*: proc(vtbl, self: pointer, items: struct_miqt_array): pointer {.cdecl, raises: [], gcsafe.}
  dropMimeData*: proc(vtbl, self: pointer, parent: pointer, index: cint, data: pointer, action: cint): bool {.cdecl, raises: [], gcsafe.}
  supportedDropActions*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  setRootIndex*: proc(vtbl, self: pointer, index: pointer): void {.cdecl, raises: [], gcsafe.}
  keyboardSearch*: proc(vtbl, self: pointer, search: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
  visualRect*: proc(vtbl, self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  scrollTo*: proc(vtbl, self: pointer, index: pointer, hint: cint): void {.cdecl, raises: [], gcsafe.}
  indexAt*: proc(vtbl, self: pointer, p: pointer): pointer {.cdecl, raises: [], gcsafe.}
  doItemsLayout*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  reset*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  dataChanged*: proc(vtbl, self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.cdecl, raises: [], gcsafe.}
  selectAll*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  verticalScrollbarValueChanged*: proc(vtbl, self: pointer, value: cint): void {.cdecl, raises: [], gcsafe.}
  scrollContentsBy*: proc(vtbl, self: pointer, dx: cint, dy: cint): void {.cdecl, raises: [], gcsafe.}
  rowsInserted*: proc(vtbl, self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl, raises: [], gcsafe.}
  rowsAboutToBeRemoved*: proc(vtbl, self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl, raises: [], gcsafe.}
  moveCursor*: proc(vtbl, self: pointer, cursorAction: cint, modifiers: cint): pointer {.cdecl, raises: [], gcsafe.}
  horizontalOffset*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  verticalOffset*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setSelection*: proc(vtbl, self: pointer, rect: pointer, command: cint): void {.cdecl, raises: [], gcsafe.}
  visualRegionForSelection*: proc(vtbl, self: pointer, selection: pointer): pointer {.cdecl, raises: [], gcsafe.}
  selectedIndexes*: proc(vtbl, self: pointer, ): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  drawRow*: proc(vtbl, self: pointer, painter: pointer, options: pointer, index: pointer): void {.cdecl, raises: [], gcsafe.}
  drawBranches*: proc(vtbl, self: pointer, painter: pointer, rect: pointer, index: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  viewportEvent*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  updateGeometries*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  viewportSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  sizeHintForColumn*: proc(vtbl, self: pointer, column: cint): cint {.cdecl, raises: [], gcsafe.}
  horizontalScrollbarAction*: proc(vtbl, self: pointer, action: cint): void {.cdecl, raises: [], gcsafe.}
  isIndexHidden*: proc(vtbl, self: pointer, index: pointer): bool {.cdecl, raises: [], gcsafe.}
  selectionChanged*: proc(vtbl, self: pointer, selected: pointer, deselected: pointer): void {.cdecl, raises: [], gcsafe.}
  currentChanged*: proc(vtbl, self: pointer, current: pointer, previous: pointer): void {.cdecl, raises: [], gcsafe.}
  sizeHintForRow*: proc(vtbl, self: pointer, row: cint): cint {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, query: cint): pointer {.cdecl, raises: [], gcsafe.}
  updateEditorData*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  updateEditorGeometries*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  verticalScrollbarAction*: proc(vtbl, self: pointer, action: cint): void {.cdecl, raises: [], gcsafe.}
  horizontalScrollbarValueChanged*: proc(vtbl, self: pointer, value: cint): void {.cdecl, raises: [], gcsafe.}
  closeEditor*: proc(vtbl, self: pointer, editor: pointer, hint: cint): void {.cdecl, raises: [], gcsafe.}
  commitData*: proc(vtbl, self: pointer, editor: pointer): void {.cdecl, raises: [], gcsafe.}
  editorDestroyed*: proc(vtbl, self: pointer, editor: pointer): void {.cdecl, raises: [], gcsafe.}
  edit2*: proc(vtbl, self: pointer, index: pointer, trigger: cint, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  selectionCommand*: proc(vtbl, self: pointer, index: pointer, event: pointer): cint {.cdecl, raises: [], gcsafe.}
  startDrag*: proc(vtbl, self: pointer, supportedActions: cint): void {.cdecl, raises: [], gcsafe.}
  viewOptions*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(vtbl, self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, objectVal: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setupViewport*: proc(vtbl, self: pointer, viewport: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
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
proc fcQTreeWidget_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QTreeWidget_virtualbase_metaObject".}
proc fcQTreeWidget_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QTreeWidget_virtualbase_metacast".}
proc fcQTreeWidget_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTreeWidget_virtualbase_metacall".}
proc fcQTreeWidget_virtualbase_setSelectionModel(self: pointer, selectionModel: pointer): void {.importc: "QTreeWidget_virtualbase_setSelectionModel".}
proc fcQTreeWidget_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QTreeWidget_virtualbase_event".}
proc fcQTreeWidget_virtualbase_mimeTypes(self: pointer, ): struct_miqt_array {.importc: "QTreeWidget_virtualbase_mimeTypes".}
proc fcQTreeWidget_virtualbase_mimeData(self: pointer, items: struct_miqt_array): pointer {.importc: "QTreeWidget_virtualbase_mimeData".}
proc fcQTreeWidget_virtualbase_dropMimeData(self: pointer, parent: pointer, index: cint, data: pointer, action: cint): bool {.importc: "QTreeWidget_virtualbase_dropMimeData".}
proc fcQTreeWidget_virtualbase_supportedDropActions(self: pointer, ): cint {.importc: "QTreeWidget_virtualbase_supportedDropActions".}
proc fcQTreeWidget_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QTreeWidget_virtualbase_dropEvent".}
proc fcQTreeWidget_virtualbase_setRootIndex(self: pointer, index: pointer): void {.importc: "QTreeWidget_virtualbase_setRootIndex".}
proc fcQTreeWidget_virtualbase_keyboardSearch(self: pointer, search: struct_miqt_string): void {.importc: "QTreeWidget_virtualbase_keyboardSearch".}
proc fcQTreeWidget_virtualbase_visualRect(self: pointer, index: pointer): pointer {.importc: "QTreeWidget_virtualbase_visualRect".}
proc fcQTreeWidget_virtualbase_scrollTo(self: pointer, index: pointer, hint: cint): void {.importc: "QTreeWidget_virtualbase_scrollTo".}
proc fcQTreeWidget_virtualbase_indexAt(self: pointer, p: pointer): pointer {.importc: "QTreeWidget_virtualbase_indexAt".}
proc fcQTreeWidget_virtualbase_doItemsLayout(self: pointer, ): void {.importc: "QTreeWidget_virtualbase_doItemsLayout".}
proc fcQTreeWidget_virtualbase_reset(self: pointer, ): void {.importc: "QTreeWidget_virtualbase_reset".}
proc fcQTreeWidget_virtualbase_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.importc: "QTreeWidget_virtualbase_dataChanged".}
proc fcQTreeWidget_virtualbase_selectAll(self: pointer, ): void {.importc: "QTreeWidget_virtualbase_selectAll".}
proc fcQTreeWidget_virtualbase_verticalScrollbarValueChanged(self: pointer, value: cint): void {.importc: "QTreeWidget_virtualbase_verticalScrollbarValueChanged".}
proc fcQTreeWidget_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.importc: "QTreeWidget_virtualbase_scrollContentsBy".}
proc fcQTreeWidget_virtualbase_rowsInserted(self: pointer, parent: pointer, start: cint, endVal: cint): void {.importc: "QTreeWidget_virtualbase_rowsInserted".}
proc fcQTreeWidget_virtualbase_rowsAboutToBeRemoved(self: pointer, parent: pointer, start: cint, endVal: cint): void {.importc: "QTreeWidget_virtualbase_rowsAboutToBeRemoved".}
proc fcQTreeWidget_virtualbase_moveCursor(self: pointer, cursorAction: cint, modifiers: cint): pointer {.importc: "QTreeWidget_virtualbase_moveCursor".}
proc fcQTreeWidget_virtualbase_horizontalOffset(self: pointer, ): cint {.importc: "QTreeWidget_virtualbase_horizontalOffset".}
proc fcQTreeWidget_virtualbase_verticalOffset(self: pointer, ): cint {.importc: "QTreeWidget_virtualbase_verticalOffset".}
proc fcQTreeWidget_virtualbase_setSelection(self: pointer, rect: pointer, command: cint): void {.importc: "QTreeWidget_virtualbase_setSelection".}
proc fcQTreeWidget_virtualbase_visualRegionForSelection(self: pointer, selection: pointer): pointer {.importc: "QTreeWidget_virtualbase_visualRegionForSelection".}
proc fcQTreeWidget_virtualbase_selectedIndexes(self: pointer, ): struct_miqt_array {.importc: "QTreeWidget_virtualbase_selectedIndexes".}
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
proc fcQTreeWidget_virtualbase_updateGeometries(self: pointer, ): void {.importc: "QTreeWidget_virtualbase_updateGeometries".}
proc fcQTreeWidget_virtualbase_viewportSizeHint(self: pointer, ): pointer {.importc: "QTreeWidget_virtualbase_viewportSizeHint".}
proc fcQTreeWidget_virtualbase_sizeHintForColumn(self: pointer, column: cint): cint {.importc: "QTreeWidget_virtualbase_sizeHintForColumn".}
proc fcQTreeWidget_virtualbase_horizontalScrollbarAction(self: pointer, action: cint): void {.importc: "QTreeWidget_virtualbase_horizontalScrollbarAction".}
proc fcQTreeWidget_virtualbase_isIndexHidden(self: pointer, index: pointer): bool {.importc: "QTreeWidget_virtualbase_isIndexHidden".}
proc fcQTreeWidget_virtualbase_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void {.importc: "QTreeWidget_virtualbase_selectionChanged".}
proc fcQTreeWidget_virtualbase_currentChanged(self: pointer, current: pointer, previous: pointer): void {.importc: "QTreeWidget_virtualbase_currentChanged".}
proc fcQTreeWidget_virtualbase_sizeHintForRow(self: pointer, row: cint): cint {.importc: "QTreeWidget_virtualbase_sizeHintForRow".}
proc fcQTreeWidget_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QTreeWidget_virtualbase_inputMethodQuery".}
proc fcQTreeWidget_virtualbase_updateEditorData(self: pointer, ): void {.importc: "QTreeWidget_virtualbase_updateEditorData".}
proc fcQTreeWidget_virtualbase_updateEditorGeometries(self: pointer, ): void {.importc: "QTreeWidget_virtualbase_updateEditorGeometries".}
proc fcQTreeWidget_virtualbase_verticalScrollbarAction(self: pointer, action: cint): void {.importc: "QTreeWidget_virtualbase_verticalScrollbarAction".}
proc fcQTreeWidget_virtualbase_horizontalScrollbarValueChanged(self: pointer, value: cint): void {.importc: "QTreeWidget_virtualbase_horizontalScrollbarValueChanged".}
proc fcQTreeWidget_virtualbase_closeEditor(self: pointer, editor: pointer, hint: cint): void {.importc: "QTreeWidget_virtualbase_closeEditor".}
proc fcQTreeWidget_virtualbase_commitData(self: pointer, editor: pointer): void {.importc: "QTreeWidget_virtualbase_commitData".}
proc fcQTreeWidget_virtualbase_editorDestroyed(self: pointer, editor: pointer): void {.importc: "QTreeWidget_virtualbase_editorDestroyed".}
proc fcQTreeWidget_virtualbase_edit2(self: pointer, index: pointer, trigger: cint, event: pointer): bool {.importc: "QTreeWidget_virtualbase_edit2".}
proc fcQTreeWidget_virtualbase_selectionCommand(self: pointer, index: pointer, event: pointer): cint {.importc: "QTreeWidget_virtualbase_selectionCommand".}
proc fcQTreeWidget_virtualbase_startDrag(self: pointer, supportedActions: cint): void {.importc: "QTreeWidget_virtualbase_startDrag".}
proc fcQTreeWidget_virtualbase_viewOptions(self: pointer, ): pointer {.importc: "QTreeWidget_virtualbase_viewOptions".}
proc fcQTreeWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QTreeWidget_virtualbase_focusNextPrevChild".}
proc fcQTreeWidget_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QTreeWidget_virtualbase_dragEnterEvent".}
proc fcQTreeWidget_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QTreeWidget_virtualbase_dragLeaveEvent".}
proc fcQTreeWidget_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QTreeWidget_virtualbase_focusInEvent".}
proc fcQTreeWidget_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QTreeWidget_virtualbase_focusOutEvent".}
proc fcQTreeWidget_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QTreeWidget_virtualbase_resizeEvent".}
proc fcQTreeWidget_virtualbase_inputMethodEvent(self: pointer, event: pointer): void {.importc: "QTreeWidget_virtualbase_inputMethodEvent".}
proc fcQTreeWidget_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool {.importc: "QTreeWidget_virtualbase_eventFilter".}
proc fcQTreeWidget_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QTreeWidget_virtualbase_minimumSizeHint".}
proc fcQTreeWidget_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QTreeWidget_virtualbase_sizeHint".}
proc fcQTreeWidget_virtualbase_setupViewport(self: pointer, viewport: pointer): void {.importc: "QTreeWidget_virtualbase_setupViewport".}
proc fcQTreeWidget_virtualbase_wheelEvent(self: pointer, param1: pointer): void {.importc: "QTreeWidget_virtualbase_wheelEvent".}
proc fcQTreeWidget_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void {.importc: "QTreeWidget_virtualbase_contextMenuEvent".}
proc fcQTreeWidget_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QTreeWidget_virtualbase_changeEvent".}
proc fcQTreeWidget_virtualbase_devType(self: pointer, ): cint {.importc: "QTreeWidget_virtualbase_devType".}
proc fcQTreeWidget_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QTreeWidget_virtualbase_setVisible".}
proc fcQTreeWidget_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QTreeWidget_virtualbase_heightForWidth".}
proc fcQTreeWidget_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QTreeWidget_virtualbase_hasHeightForWidth".}
proc fcQTreeWidget_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QTreeWidget_virtualbase_paintEngine".}
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
proc fcQTreeWidget_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QTreeWidget_virtualbase_sharedPainter".}
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
proc fcQTreeWidget_protectedbase_columnMoved(self: pointer, ): void {.importc: "QTreeWidget_protectedbase_columnMoved".}
proc fcQTreeWidget_protectedbase_reexpand(self: pointer, ): void {.importc: "QTreeWidget_protectedbase_reexpand".}
proc fcQTreeWidget_protectedbase_rowsRemoved(self: pointer, parent: pointer, first: cint, last: cint): void {.importc: "QTreeWidget_protectedbase_rowsRemoved".}
proc fcQTreeWidget_protectedbase_drawTree(self: pointer, painter: pointer, region: pointer): void {.importc: "QTreeWidget_protectedbase_drawTree".}
proc fcQTreeWidget_protectedbase_indexRowSizeHint(self: pointer, index: pointer): cint {.importc: "QTreeWidget_protectedbase_indexRowSizeHint".}
proc fcQTreeWidget_protectedbase_rowHeight(self: pointer, index: pointer): cint {.importc: "QTreeWidget_protectedbase_rowHeight".}
proc fcQTreeWidget_protectedbase_setHorizontalStepsPerItem(self: pointer, steps: cint): void {.importc: "QTreeWidget_protectedbase_setHorizontalStepsPerItem".}
proc fcQTreeWidget_protectedbase_horizontalStepsPerItem(self: pointer, ): cint {.importc: "QTreeWidget_protectedbase_horizontalStepsPerItem".}
proc fcQTreeWidget_protectedbase_setVerticalStepsPerItem(self: pointer, steps: cint): void {.importc: "QTreeWidget_protectedbase_setVerticalStepsPerItem".}
proc fcQTreeWidget_protectedbase_verticalStepsPerItem(self: pointer, ): cint {.importc: "QTreeWidget_protectedbase_verticalStepsPerItem".}
proc fcQTreeWidget_protectedbase_state(self: pointer, ): cint {.importc: "QTreeWidget_protectedbase_state".}
proc fcQTreeWidget_protectedbase_setState(self: pointer, state: cint): void {.importc: "QTreeWidget_protectedbase_setState".}
proc fcQTreeWidget_protectedbase_scheduleDelayedItemsLayout(self: pointer, ): void {.importc: "QTreeWidget_protectedbase_scheduleDelayedItemsLayout".}
proc fcQTreeWidget_protectedbase_executeDelayedItemsLayout(self: pointer, ): void {.importc: "QTreeWidget_protectedbase_executeDelayedItemsLayout".}
proc fcQTreeWidget_protectedbase_setDirtyRegion(self: pointer, region: pointer): void {.importc: "QTreeWidget_protectedbase_setDirtyRegion".}
proc fcQTreeWidget_protectedbase_scrollDirtyRegion(self: pointer, dx: cint, dy: cint): void {.importc: "QTreeWidget_protectedbase_scrollDirtyRegion".}
proc fcQTreeWidget_protectedbase_dirtyRegionOffset(self: pointer, ): pointer {.importc: "QTreeWidget_protectedbase_dirtyRegionOffset".}
proc fcQTreeWidget_protectedbase_startAutoScroll(self: pointer, ): void {.importc: "QTreeWidget_protectedbase_startAutoScroll".}
proc fcQTreeWidget_protectedbase_stopAutoScroll(self: pointer, ): void {.importc: "QTreeWidget_protectedbase_stopAutoScroll".}
proc fcQTreeWidget_protectedbase_doAutoScroll(self: pointer, ): void {.importc: "QTreeWidget_protectedbase_doAutoScroll".}
proc fcQTreeWidget_protectedbase_dropIndicatorPosition(self: pointer, ): cint {.importc: "QTreeWidget_protectedbase_dropIndicatorPosition".}
proc fcQTreeWidget_protectedbase_setViewportMargins(self: pointer, left: cint, top: cint, right: cint, bottom: cint): void {.importc: "QTreeWidget_protectedbase_setViewportMargins".}
proc fcQTreeWidget_protectedbase_viewportMargins(self: pointer, ): pointer {.importc: "QTreeWidget_protectedbase_viewportMargins".}
proc fcQTreeWidget_protectedbase_drawFrame(self: pointer, param1: pointer): void {.importc: "QTreeWidget_protectedbase_drawFrame".}
proc fcQTreeWidget_protectedbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QTreeWidget_protectedbase_initStyleOption".}
proc fcQTreeWidget_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QTreeWidget_protectedbase_updateMicroFocus".}
proc fcQTreeWidget_protectedbase_create(self: pointer, ): void {.importc: "QTreeWidget_protectedbase_create".}
proc fcQTreeWidget_protectedbase_destroy(self: pointer, ): void {.importc: "QTreeWidget_protectedbase_destroy".}
proc fcQTreeWidget_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QTreeWidget_protectedbase_focusNextChild".}
proc fcQTreeWidget_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QTreeWidget_protectedbase_focusPreviousChild".}
proc fcQTreeWidget_protectedbase_sender(self: pointer, ): pointer {.importc: "QTreeWidget_protectedbase_sender".}
proc fcQTreeWidget_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QTreeWidget_protectedbase_senderSignalIndex".}
proc fcQTreeWidget_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QTreeWidget_protectedbase_receivers".}
proc fcQTreeWidget_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QTreeWidget_protectedbase_isSignalConnected".}
proc fcQTreeWidget_new(vtbl: pointer, parent: pointer): ptr cQTreeWidget {.importc: "QTreeWidget_new".}
proc fcQTreeWidget_new2(vtbl: pointer, ): ptr cQTreeWidget {.importc: "QTreeWidget_new2".}
proc fcQTreeWidget_staticMetaObject(): pointer {.importc: "QTreeWidget_staticMetaObject".}
proc fcQTreeWidget_delete(self: pointer) {.importc: "QTreeWidget_delete".}

proc clone*(self: gen_qtreewidget_types.QTreeWidgetItem, ): gen_qtreewidget_types.QTreeWidgetItem =
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidgetItem_clone(self.h))

proc treeWidget*(self: gen_qtreewidget_types.QTreeWidgetItem, ): gen_qtreewidget_types.QTreeWidget =
  gen_qtreewidget_types.QTreeWidget(h: fcQTreeWidgetItem_treeWidget(self.h))

proc setSelected*(self: gen_qtreewidget_types.QTreeWidgetItem, select: bool): void =
  fcQTreeWidgetItem_setSelected(self.h, select)

proc isSelected*(self: gen_qtreewidget_types.QTreeWidgetItem, ): bool =
  fcQTreeWidgetItem_isSelected(self.h)

proc setHidden*(self: gen_qtreewidget_types.QTreeWidgetItem, hide: bool): void =
  fcQTreeWidgetItem_setHidden(self.h, hide)

proc isHidden*(self: gen_qtreewidget_types.QTreeWidgetItem, ): bool =
  fcQTreeWidgetItem_isHidden(self.h)

proc setExpanded*(self: gen_qtreewidget_types.QTreeWidgetItem, expand: bool): void =
  fcQTreeWidgetItem_setExpanded(self.h, expand)

proc isExpanded*(self: gen_qtreewidget_types.QTreeWidgetItem, ): bool =
  fcQTreeWidgetItem_isExpanded(self.h)

proc setFirstColumnSpanned*(self: gen_qtreewidget_types.QTreeWidgetItem, span: bool): void =
  fcQTreeWidgetItem_setFirstColumnSpanned(self.h, span)

proc isFirstColumnSpanned*(self: gen_qtreewidget_types.QTreeWidgetItem, ): bool =
  fcQTreeWidgetItem_isFirstColumnSpanned(self.h)

proc setDisabled*(self: gen_qtreewidget_types.QTreeWidgetItem, disabled: bool): void =
  fcQTreeWidgetItem_setDisabled(self.h, disabled)

proc isDisabled*(self: gen_qtreewidget_types.QTreeWidgetItem, ): bool =
  fcQTreeWidgetItem_isDisabled(self.h)

proc setChildIndicatorPolicy*(self: gen_qtreewidget_types.QTreeWidgetItem, policy: cint): void =
  fcQTreeWidgetItem_setChildIndicatorPolicy(self.h, cint(policy))

proc childIndicatorPolicy*(self: gen_qtreewidget_types.QTreeWidgetItem, ): cint =
  cint(fcQTreeWidgetItem_childIndicatorPolicy(self.h))

proc flags*(self: gen_qtreewidget_types.QTreeWidgetItem, ): cint =
  cint(fcQTreeWidgetItem_flags(self.h))

proc setFlags*(self: gen_qtreewidget_types.QTreeWidgetItem, flags: cint): void =
  fcQTreeWidgetItem_setFlags(self.h, cint(flags))

proc text*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint): string =
  let v_ms = fcQTreeWidgetItem_text(self.h, column)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setText*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint, text: string): void =
  fcQTreeWidgetItem_setText(self.h, column, struct_miqt_string(data: text, len: csize_t(len(text))))

proc icon*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQTreeWidgetItem_icon(self.h, column))

proc setIcon*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint, icon: gen_qicon_types.QIcon): void =
  fcQTreeWidgetItem_setIcon(self.h, column, icon.h)

proc statusTip*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint): string =
  let v_ms = fcQTreeWidgetItem_statusTip(self.h, column)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setStatusTip*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint, statusTip: string): void =
  fcQTreeWidgetItem_setStatusTip(self.h, column, struct_miqt_string(data: statusTip, len: csize_t(len(statusTip))))

proc toolTip*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint): string =
  let v_ms = fcQTreeWidgetItem_toolTip(self.h, column)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setToolTip*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint, toolTip: string): void =
  fcQTreeWidgetItem_setToolTip(self.h, column, struct_miqt_string(data: toolTip, len: csize_t(len(toolTip))))

proc whatsThis*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint): string =
  let v_ms = fcQTreeWidgetItem_whatsThis(self.h, column)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setWhatsThis*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint, whatsThis: string): void =
  fcQTreeWidgetItem_setWhatsThis(self.h, column, struct_miqt_string(data: whatsThis, len: csize_t(len(whatsThis))))

proc font*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQTreeWidgetItem_font(self.h, column))

proc setFont*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint, font: gen_qfont_types.QFont): void =
  fcQTreeWidgetItem_setFont(self.h, column, font.h)

proc textAlignment*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint): cint =
  fcQTreeWidgetItem_textAlignment(self.h, column)

proc setTextAlignment*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint, alignment: cint): void =
  fcQTreeWidgetItem_setTextAlignment(self.h, column, alignment)

proc backgroundColor*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQTreeWidgetItem_backgroundColor(self.h, column))

proc setBackgroundColor*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint, color: gen_qcolor_types.QColor): void =
  fcQTreeWidgetItem_setBackgroundColor(self.h, column, color.h)

proc background*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQTreeWidgetItem_background(self.h, column))

proc setBackground*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint, brush: gen_qbrush_types.QBrush): void =
  fcQTreeWidgetItem_setBackground(self.h, column, brush.h)

proc textColor*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQTreeWidgetItem_textColor(self.h, column))

proc setTextColor*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint, color: gen_qcolor_types.QColor): void =
  fcQTreeWidgetItem_setTextColor(self.h, column, color.h)

proc foreground*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQTreeWidgetItem_foreground(self.h, column))

proc setForeground*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint, brush: gen_qbrush_types.QBrush): void =
  fcQTreeWidgetItem_setForeground(self.h, column, brush.h)

proc checkState*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint): cint =
  cint(fcQTreeWidgetItem_checkState(self.h, column))

proc setCheckState*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint, state: cint): void =
  fcQTreeWidgetItem_setCheckState(self.h, column, cint(state))

proc sizeHint*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTreeWidgetItem_sizeHint(self.h, column))

proc setSizeHint*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint, size: gen_qsize_types.QSize): void =
  fcQTreeWidgetItem_setSizeHint(self.h, column, size.h)

proc data*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQTreeWidgetItem_data(self.h, column, role))

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

proc parent*(self: gen_qtreewidget_types.QTreeWidgetItem, ): gen_qtreewidget_types.QTreeWidgetItem =
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidgetItem_parent(self.h))

proc child*(self: gen_qtreewidget_types.QTreeWidgetItem, index: cint): gen_qtreewidget_types.QTreeWidgetItem =
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidgetItem_child(self.h, index))

proc childCount*(self: gen_qtreewidget_types.QTreeWidgetItem, ): cint =
  fcQTreeWidgetItem_childCount(self.h)

proc columnCount*(self: gen_qtreewidget_types.QTreeWidgetItem, ): cint =
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
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidgetItem_takeChild(self.h, index))

proc addChildren*(self: gen_qtreewidget_types.QTreeWidgetItem, children: seq[gen_qtreewidget_types.QTreeWidgetItem]): void =
  var children_CArray = newSeq[pointer](len(children))
  for i in 0..<len(children):
    children_CArray[i] = children[i].h

  fcQTreeWidgetItem_addChildren(self.h, struct_miqt_array(len: csize_t(len(children)), data: if len(children) == 0: nil else: addr(children_CArray[0])))

proc insertChildren*(self: gen_qtreewidget_types.QTreeWidgetItem, index: cint, children: seq[gen_qtreewidget_types.QTreeWidgetItem]): void =
  var children_CArray = newSeq[pointer](len(children))
  for i in 0..<len(children):
    children_CArray[i] = children[i].h

  fcQTreeWidgetItem_insertChildren(self.h, index, struct_miqt_array(len: csize_t(len(children)), data: if len(children) == 0: nil else: addr(children_CArray[0])))

proc takeChildren*(self: gen_qtreewidget_types.QTreeWidgetItem, ): seq[gen_qtreewidget_types.QTreeWidgetItem] =
  var v_ma = fcQTreeWidgetItem_takeChildren(self.h)
  var vx_ret = newSeq[gen_qtreewidget_types.QTreeWidgetItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qtreewidget_types.QTreeWidgetItem(h: v_outCast[i])
  vx_ret

proc typeX*(self: gen_qtreewidget_types.QTreeWidgetItem, ): cint =
  fcQTreeWidgetItem_typeX(self.h)

proc sortChildren*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint, order: cint): void =
  fcQTreeWidgetItem_sortChildren(self.h, column, cint(order))

type QTreeWidgetItemcloneProc* = proc(self: QTreeWidgetItem): gen_qtreewidget_types.QTreeWidgetItem {.raises: [], gcsafe.}
type QTreeWidgetItemdataProc* = proc(self: QTreeWidgetItem, column: cint, role: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QTreeWidgetItemsetDataProc* = proc(self: QTreeWidgetItem, column: cint, role: cint, value: gen_qvariant_types.QVariant): void {.raises: [], gcsafe.}
type QTreeWidgetItemoperatorLesserProc* = proc(self: QTreeWidgetItem, other: gen_qtreewidget_types.QTreeWidgetItem): bool {.raises: [], gcsafe.}
type QTreeWidgetItemreadProc* = proc(self: QTreeWidgetItem, inVal: gen_qdatastream_types.QDataStream): void {.raises: [], gcsafe.}
type QTreeWidgetItemwriteProc* = proc(self: QTreeWidgetItem, outVal: gen_qdatastream_types.QDataStream): void {.raises: [], gcsafe.}
type QTreeWidgetItemVTable* = object
  vtbl: cQTreeWidgetItemVTable
  clone*: QTreeWidgetItemcloneProc
  data*: QTreeWidgetItemdataProc
  setData*: QTreeWidgetItemsetDataProc
  operatorLesser*: QTreeWidgetItemoperatorLesserProc
  read*: QTreeWidgetItemreadProc
  write*: QTreeWidgetItemwriteProc
proc QTreeWidgetItemclone*(self: gen_qtreewidget_types.QTreeWidgetItem, ): gen_qtreewidget_types.QTreeWidgetItem =
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidgetItem_virtualbase_clone(self.h))

proc miqt_exec_callback_cQTreeWidgetItem_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetItemVTable](vtbl)
  let self = QTreeWidgetItem(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.h

proc QTreeWidgetItemdata*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQTreeWidgetItem_virtualbase_data(self.h, column, role))

proc miqt_exec_callback_cQTreeWidgetItem_data(vtbl: pointer, self: pointer, column: cint, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetItemVTable](vtbl)
  let self = QTreeWidgetItem(h: self)
  let slotval1 = column
  let slotval2 = role
  var virtualReturn = vtbl[].data(self, slotval1, slotval2)
  virtualReturn.h

proc QTreeWidgetItemsetData*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint, role: cint, value: gen_qvariant_types.QVariant): void =
  fcQTreeWidgetItem_virtualbase_setData(self.h, column, role, value.h)

proc miqt_exec_callback_cQTreeWidgetItem_setData(vtbl: pointer, self: pointer, column: cint, role: cint, value: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetItemVTable](vtbl)
  let self = QTreeWidgetItem(h: self)
  let slotval1 = column
  let slotval2 = role
  let slotval3 = gen_qvariant_types.QVariant(h: value)
  vtbl[].setData(self, slotval1, slotval2, slotval3)

proc QTreeWidgetItemoperatorLesser*(self: gen_qtreewidget_types.QTreeWidgetItem, other: gen_qtreewidget_types.QTreeWidgetItem): bool =
  fcQTreeWidgetItem_virtualbase_operatorLesser(self.h, other.h)

proc miqt_exec_callback_cQTreeWidgetItem_operatorLesser(vtbl: pointer, self: pointer, other: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetItemVTable](vtbl)
  let self = QTreeWidgetItem(h: self)
  let slotval1 = gen_qtreewidget_types.QTreeWidgetItem(h: other)
  var virtualReturn = vtbl[].operatorLesser(self, slotval1)
  virtualReturn

proc QTreeWidgetItemread*(self: gen_qtreewidget_types.QTreeWidgetItem, inVal: gen_qdatastream_types.QDataStream): void =
  fcQTreeWidgetItem_virtualbase_read(self.h, inVal.h)

proc miqt_exec_callback_cQTreeWidgetItem_read(vtbl: pointer, self: pointer, inVal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetItemVTable](vtbl)
  let self = QTreeWidgetItem(h: self)
  let slotval1 = gen_qdatastream_types.QDataStream(h: inVal)
  vtbl[].read(self, slotval1)

proc QTreeWidgetItemwrite*(self: gen_qtreewidget_types.QTreeWidgetItem, outVal: gen_qdatastream_types.QDataStream): void =
  fcQTreeWidgetItem_virtualbase_write(self.h, outVal.h)

proc miqt_exec_callback_cQTreeWidgetItem_write(vtbl: pointer, self: pointer, outVal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetItemVTable](vtbl)
  let self = QTreeWidgetItem(h: self)
  let slotval1 = gen_qdatastream_types.QDataStream(h: outVal)
  vtbl[].write(self, slotval1)

proc emitDataChanged*(self: gen_qtreewidget_types.QTreeWidgetItem, ): void =
  fcQTreeWidgetItem_protectedbase_emitDataChanged(self.h)

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    vtbl: ref QTreeWidgetItemVTable = nil): gen_qtreewidget_types.QTreeWidgetItem =
  let vtbl = if vtbl == nil: new QTreeWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTreeWidgetItemVTable, _: ptr cQTreeWidgetItem) {.cdecl.} =
    let vtbl = cast[ref QTreeWidgetItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQTreeWidgetItem_clone
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQTreeWidgetItem_data
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQTreeWidgetItem_setData
  if not isNil(vtbl.operatorLesser):
    vtbl[].vtbl.operatorLesser = miqt_exec_callback_cQTreeWidgetItem_operatorLesser
  if not isNil(vtbl.read):
    vtbl[].vtbl.read = miqt_exec_callback_cQTreeWidgetItem_read
  if not isNil(vtbl.write):
    vtbl[].vtbl.write = miqt_exec_callback_cQTreeWidgetItem_write
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidgetItem_new(addr(vtbl[]), ))

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    strings: seq[string],
    vtbl: ref QTreeWidgetItemVTable = nil): gen_qtreewidget_types.QTreeWidgetItem =
  var strings_CArray = newSeq[struct_miqt_string](len(strings))
  for i in 0..<len(strings):
    strings_CArray[i] = struct_miqt_string(data: strings[i], len: csize_t(len(strings[i])))

  let vtbl = if vtbl == nil: new QTreeWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTreeWidgetItemVTable, _: ptr cQTreeWidgetItem) {.cdecl.} =
    let vtbl = cast[ref QTreeWidgetItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQTreeWidgetItem_clone
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQTreeWidgetItem_data
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQTreeWidgetItem_setData
  if not isNil(vtbl.operatorLesser):
    vtbl[].vtbl.operatorLesser = miqt_exec_callback_cQTreeWidgetItem_operatorLesser
  if not isNil(vtbl.read):
    vtbl[].vtbl.read = miqt_exec_callback_cQTreeWidgetItem_read
  if not isNil(vtbl.write):
    vtbl[].vtbl.write = miqt_exec_callback_cQTreeWidgetItem_write
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidgetItem_new2(addr(vtbl[]), struct_miqt_array(len: csize_t(len(strings)), data: if len(strings) == 0: nil else: addr(strings_CArray[0]))))

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    treeview: gen_qtreewidget_types.QTreeWidget,
    vtbl: ref QTreeWidgetItemVTable = nil): gen_qtreewidget_types.QTreeWidgetItem =
  let vtbl = if vtbl == nil: new QTreeWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTreeWidgetItemVTable, _: ptr cQTreeWidgetItem) {.cdecl.} =
    let vtbl = cast[ref QTreeWidgetItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQTreeWidgetItem_clone
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQTreeWidgetItem_data
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQTreeWidgetItem_setData
  if not isNil(vtbl.operatorLesser):
    vtbl[].vtbl.operatorLesser = miqt_exec_callback_cQTreeWidgetItem_operatorLesser
  if not isNil(vtbl.read):
    vtbl[].vtbl.read = miqt_exec_callback_cQTreeWidgetItem_read
  if not isNil(vtbl.write):
    vtbl[].vtbl.write = miqt_exec_callback_cQTreeWidgetItem_write
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidgetItem_new3(addr(vtbl[]), treeview.h))

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    treeview: gen_qtreewidget_types.QTreeWidget, strings: seq[string],
    vtbl: ref QTreeWidgetItemVTable = nil): gen_qtreewidget_types.QTreeWidgetItem =
  var strings_CArray = newSeq[struct_miqt_string](len(strings))
  for i in 0..<len(strings):
    strings_CArray[i] = struct_miqt_string(data: strings[i], len: csize_t(len(strings[i])))

  let vtbl = if vtbl == nil: new QTreeWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTreeWidgetItemVTable, _: ptr cQTreeWidgetItem) {.cdecl.} =
    let vtbl = cast[ref QTreeWidgetItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQTreeWidgetItem_clone
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQTreeWidgetItem_data
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQTreeWidgetItem_setData
  if not isNil(vtbl.operatorLesser):
    vtbl[].vtbl.operatorLesser = miqt_exec_callback_cQTreeWidgetItem_operatorLesser
  if not isNil(vtbl.read):
    vtbl[].vtbl.read = miqt_exec_callback_cQTreeWidgetItem_read
  if not isNil(vtbl.write):
    vtbl[].vtbl.write = miqt_exec_callback_cQTreeWidgetItem_write
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidgetItem_new4(addr(vtbl[]), treeview.h, struct_miqt_array(len: csize_t(len(strings)), data: if len(strings) == 0: nil else: addr(strings_CArray[0]))))

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    treeview: gen_qtreewidget_types.QTreeWidget, after: gen_qtreewidget_types.QTreeWidgetItem,
    vtbl: ref QTreeWidgetItemVTable = nil): gen_qtreewidget_types.QTreeWidgetItem =
  let vtbl = if vtbl == nil: new QTreeWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTreeWidgetItemVTable, _: ptr cQTreeWidgetItem) {.cdecl.} =
    let vtbl = cast[ref QTreeWidgetItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQTreeWidgetItem_clone
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQTreeWidgetItem_data
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQTreeWidgetItem_setData
  if not isNil(vtbl.operatorLesser):
    vtbl[].vtbl.operatorLesser = miqt_exec_callback_cQTreeWidgetItem_operatorLesser
  if not isNil(vtbl.read):
    vtbl[].vtbl.read = miqt_exec_callback_cQTreeWidgetItem_read
  if not isNil(vtbl.write):
    vtbl[].vtbl.write = miqt_exec_callback_cQTreeWidgetItem_write
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidgetItem_new5(addr(vtbl[]), treeview.h, after.h))

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    parent: gen_qtreewidget_types.QTreeWidgetItem,
    vtbl: ref QTreeWidgetItemVTable = nil): gen_qtreewidget_types.QTreeWidgetItem =
  let vtbl = if vtbl == nil: new QTreeWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTreeWidgetItemVTable, _: ptr cQTreeWidgetItem) {.cdecl.} =
    let vtbl = cast[ref QTreeWidgetItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQTreeWidgetItem_clone
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQTreeWidgetItem_data
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQTreeWidgetItem_setData
  if not isNil(vtbl.operatorLesser):
    vtbl[].vtbl.operatorLesser = miqt_exec_callback_cQTreeWidgetItem_operatorLesser
  if not isNil(vtbl.read):
    vtbl[].vtbl.read = miqt_exec_callback_cQTreeWidgetItem_read
  if not isNil(vtbl.write):
    vtbl[].vtbl.write = miqt_exec_callback_cQTreeWidgetItem_write
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidgetItem_new6(addr(vtbl[]), parent.h))

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    parent: gen_qtreewidget_types.QTreeWidgetItem, strings: seq[string],
    vtbl: ref QTreeWidgetItemVTable = nil): gen_qtreewidget_types.QTreeWidgetItem =
  var strings_CArray = newSeq[struct_miqt_string](len(strings))
  for i in 0..<len(strings):
    strings_CArray[i] = struct_miqt_string(data: strings[i], len: csize_t(len(strings[i])))

  let vtbl = if vtbl == nil: new QTreeWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTreeWidgetItemVTable, _: ptr cQTreeWidgetItem) {.cdecl.} =
    let vtbl = cast[ref QTreeWidgetItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQTreeWidgetItem_clone
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQTreeWidgetItem_data
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQTreeWidgetItem_setData
  if not isNil(vtbl.operatorLesser):
    vtbl[].vtbl.operatorLesser = miqt_exec_callback_cQTreeWidgetItem_operatorLesser
  if not isNil(vtbl.read):
    vtbl[].vtbl.read = miqt_exec_callback_cQTreeWidgetItem_read
  if not isNil(vtbl.write):
    vtbl[].vtbl.write = miqt_exec_callback_cQTreeWidgetItem_write
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidgetItem_new7(addr(vtbl[]), parent.h, struct_miqt_array(len: csize_t(len(strings)), data: if len(strings) == 0: nil else: addr(strings_CArray[0]))))

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    parent: gen_qtreewidget_types.QTreeWidgetItem, after: gen_qtreewidget_types.QTreeWidgetItem,
    vtbl: ref QTreeWidgetItemVTable = nil): gen_qtreewidget_types.QTreeWidgetItem =
  let vtbl = if vtbl == nil: new QTreeWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTreeWidgetItemVTable, _: ptr cQTreeWidgetItem) {.cdecl.} =
    let vtbl = cast[ref QTreeWidgetItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQTreeWidgetItem_clone
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQTreeWidgetItem_data
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQTreeWidgetItem_setData
  if not isNil(vtbl.operatorLesser):
    vtbl[].vtbl.operatorLesser = miqt_exec_callback_cQTreeWidgetItem_operatorLesser
  if not isNil(vtbl.read):
    vtbl[].vtbl.read = miqt_exec_callback_cQTreeWidgetItem_read
  if not isNil(vtbl.write):
    vtbl[].vtbl.write = miqt_exec_callback_cQTreeWidgetItem_write
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidgetItem_new8(addr(vtbl[]), parent.h, after.h))

proc create2*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    other: gen_qtreewidget_types.QTreeWidgetItem,
    vtbl: ref QTreeWidgetItemVTable = nil): gen_qtreewidget_types.QTreeWidgetItem =
  let vtbl = if vtbl == nil: new QTreeWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTreeWidgetItemVTable, _: ptr cQTreeWidgetItem) {.cdecl.} =
    let vtbl = cast[ref QTreeWidgetItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQTreeWidgetItem_clone
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQTreeWidgetItem_data
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQTreeWidgetItem_setData
  if not isNil(vtbl.operatorLesser):
    vtbl[].vtbl.operatorLesser = miqt_exec_callback_cQTreeWidgetItem_operatorLesser
  if not isNil(vtbl.read):
    vtbl[].vtbl.read = miqt_exec_callback_cQTreeWidgetItem_read
  if not isNil(vtbl.write):
    vtbl[].vtbl.write = miqt_exec_callback_cQTreeWidgetItem_write
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidgetItem_new9(addr(vtbl[]), other.h))

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    typeVal: cint,
    vtbl: ref QTreeWidgetItemVTable = nil): gen_qtreewidget_types.QTreeWidgetItem =
  let vtbl = if vtbl == nil: new QTreeWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTreeWidgetItemVTable, _: ptr cQTreeWidgetItem) {.cdecl.} =
    let vtbl = cast[ref QTreeWidgetItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQTreeWidgetItem_clone
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQTreeWidgetItem_data
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQTreeWidgetItem_setData
  if not isNil(vtbl.operatorLesser):
    vtbl[].vtbl.operatorLesser = miqt_exec_callback_cQTreeWidgetItem_operatorLesser
  if not isNil(vtbl.read):
    vtbl[].vtbl.read = miqt_exec_callback_cQTreeWidgetItem_read
  if not isNil(vtbl.write):
    vtbl[].vtbl.write = miqt_exec_callback_cQTreeWidgetItem_write
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidgetItem_new10(addr(vtbl[]), typeVal))

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    strings: seq[string], typeVal: cint,
    vtbl: ref QTreeWidgetItemVTable = nil): gen_qtreewidget_types.QTreeWidgetItem =
  var strings_CArray = newSeq[struct_miqt_string](len(strings))
  for i in 0..<len(strings):
    strings_CArray[i] = struct_miqt_string(data: strings[i], len: csize_t(len(strings[i])))

  let vtbl = if vtbl == nil: new QTreeWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTreeWidgetItemVTable, _: ptr cQTreeWidgetItem) {.cdecl.} =
    let vtbl = cast[ref QTreeWidgetItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQTreeWidgetItem_clone
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQTreeWidgetItem_data
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQTreeWidgetItem_setData
  if not isNil(vtbl.operatorLesser):
    vtbl[].vtbl.operatorLesser = miqt_exec_callback_cQTreeWidgetItem_operatorLesser
  if not isNil(vtbl.read):
    vtbl[].vtbl.read = miqt_exec_callback_cQTreeWidgetItem_read
  if not isNil(vtbl.write):
    vtbl[].vtbl.write = miqt_exec_callback_cQTreeWidgetItem_write
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidgetItem_new11(addr(vtbl[]), struct_miqt_array(len: csize_t(len(strings)), data: if len(strings) == 0: nil else: addr(strings_CArray[0])), typeVal))

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    treeview: gen_qtreewidget_types.QTreeWidget, typeVal: cint,
    vtbl: ref QTreeWidgetItemVTable = nil): gen_qtreewidget_types.QTreeWidgetItem =
  let vtbl = if vtbl == nil: new QTreeWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTreeWidgetItemVTable, _: ptr cQTreeWidgetItem) {.cdecl.} =
    let vtbl = cast[ref QTreeWidgetItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQTreeWidgetItem_clone
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQTreeWidgetItem_data
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQTreeWidgetItem_setData
  if not isNil(vtbl.operatorLesser):
    vtbl[].vtbl.operatorLesser = miqt_exec_callback_cQTreeWidgetItem_operatorLesser
  if not isNil(vtbl.read):
    vtbl[].vtbl.read = miqt_exec_callback_cQTreeWidgetItem_read
  if not isNil(vtbl.write):
    vtbl[].vtbl.write = miqt_exec_callback_cQTreeWidgetItem_write
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidgetItem_new12(addr(vtbl[]), treeview.h, typeVal))

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    treeview: gen_qtreewidget_types.QTreeWidget, strings: seq[string], typeVal: cint,
    vtbl: ref QTreeWidgetItemVTable = nil): gen_qtreewidget_types.QTreeWidgetItem =
  var strings_CArray = newSeq[struct_miqt_string](len(strings))
  for i in 0..<len(strings):
    strings_CArray[i] = struct_miqt_string(data: strings[i], len: csize_t(len(strings[i])))

  let vtbl = if vtbl == nil: new QTreeWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTreeWidgetItemVTable, _: ptr cQTreeWidgetItem) {.cdecl.} =
    let vtbl = cast[ref QTreeWidgetItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQTreeWidgetItem_clone
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQTreeWidgetItem_data
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQTreeWidgetItem_setData
  if not isNil(vtbl.operatorLesser):
    vtbl[].vtbl.operatorLesser = miqt_exec_callback_cQTreeWidgetItem_operatorLesser
  if not isNil(vtbl.read):
    vtbl[].vtbl.read = miqt_exec_callback_cQTreeWidgetItem_read
  if not isNil(vtbl.write):
    vtbl[].vtbl.write = miqt_exec_callback_cQTreeWidgetItem_write
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidgetItem_new13(addr(vtbl[]), treeview.h, struct_miqt_array(len: csize_t(len(strings)), data: if len(strings) == 0: nil else: addr(strings_CArray[0])), typeVal))

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    treeview: gen_qtreewidget_types.QTreeWidget, after: gen_qtreewidget_types.QTreeWidgetItem, typeVal: cint,
    vtbl: ref QTreeWidgetItemVTable = nil): gen_qtreewidget_types.QTreeWidgetItem =
  let vtbl = if vtbl == nil: new QTreeWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTreeWidgetItemVTable, _: ptr cQTreeWidgetItem) {.cdecl.} =
    let vtbl = cast[ref QTreeWidgetItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQTreeWidgetItem_clone
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQTreeWidgetItem_data
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQTreeWidgetItem_setData
  if not isNil(vtbl.operatorLesser):
    vtbl[].vtbl.operatorLesser = miqt_exec_callback_cQTreeWidgetItem_operatorLesser
  if not isNil(vtbl.read):
    vtbl[].vtbl.read = miqt_exec_callback_cQTreeWidgetItem_read
  if not isNil(vtbl.write):
    vtbl[].vtbl.write = miqt_exec_callback_cQTreeWidgetItem_write
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidgetItem_new14(addr(vtbl[]), treeview.h, after.h, typeVal))

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    parent: gen_qtreewidget_types.QTreeWidgetItem, typeVal: cint,
    vtbl: ref QTreeWidgetItemVTable = nil): gen_qtreewidget_types.QTreeWidgetItem =
  let vtbl = if vtbl == nil: new QTreeWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTreeWidgetItemVTable, _: ptr cQTreeWidgetItem) {.cdecl.} =
    let vtbl = cast[ref QTreeWidgetItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQTreeWidgetItem_clone
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQTreeWidgetItem_data
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQTreeWidgetItem_setData
  if not isNil(vtbl.operatorLesser):
    vtbl[].vtbl.operatorLesser = miqt_exec_callback_cQTreeWidgetItem_operatorLesser
  if not isNil(vtbl.read):
    vtbl[].vtbl.read = miqt_exec_callback_cQTreeWidgetItem_read
  if not isNil(vtbl.write):
    vtbl[].vtbl.write = miqt_exec_callback_cQTreeWidgetItem_write
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidgetItem_new15(addr(vtbl[]), parent.h, typeVal))

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    parent: gen_qtreewidget_types.QTreeWidgetItem, strings: seq[string], typeVal: cint,
    vtbl: ref QTreeWidgetItemVTable = nil): gen_qtreewidget_types.QTreeWidgetItem =
  var strings_CArray = newSeq[struct_miqt_string](len(strings))
  for i in 0..<len(strings):
    strings_CArray[i] = struct_miqt_string(data: strings[i], len: csize_t(len(strings[i])))

  let vtbl = if vtbl == nil: new QTreeWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTreeWidgetItemVTable, _: ptr cQTreeWidgetItem) {.cdecl.} =
    let vtbl = cast[ref QTreeWidgetItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQTreeWidgetItem_clone
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQTreeWidgetItem_data
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQTreeWidgetItem_setData
  if not isNil(vtbl.operatorLesser):
    vtbl[].vtbl.operatorLesser = miqt_exec_callback_cQTreeWidgetItem_operatorLesser
  if not isNil(vtbl.read):
    vtbl[].vtbl.read = miqt_exec_callback_cQTreeWidgetItem_read
  if not isNil(vtbl.write):
    vtbl[].vtbl.write = miqt_exec_callback_cQTreeWidgetItem_write
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidgetItem_new16(addr(vtbl[]), parent.h, struct_miqt_array(len: csize_t(len(strings)), data: if len(strings) == 0: nil else: addr(strings_CArray[0])), typeVal))

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem,
    parent: gen_qtreewidget_types.QTreeWidgetItem, after: gen_qtreewidget_types.QTreeWidgetItem, typeVal: cint,
    vtbl: ref QTreeWidgetItemVTable = nil): gen_qtreewidget_types.QTreeWidgetItem =
  let vtbl = if vtbl == nil: new QTreeWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTreeWidgetItemVTable, _: ptr cQTreeWidgetItem) {.cdecl.} =
    let vtbl = cast[ref QTreeWidgetItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQTreeWidgetItem_clone
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQTreeWidgetItem_data
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQTreeWidgetItem_setData
  if not isNil(vtbl.operatorLesser):
    vtbl[].vtbl.operatorLesser = miqt_exec_callback_cQTreeWidgetItem_operatorLesser
  if not isNil(vtbl.read):
    vtbl[].vtbl.read = miqt_exec_callback_cQTreeWidgetItem_read
  if not isNil(vtbl.write):
    vtbl[].vtbl.write = miqt_exec_callback_cQTreeWidgetItem_write
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidgetItem_new17(addr(vtbl[]), parent.h, after.h, typeVal))

proc delete*(self: gen_qtreewidget_types.QTreeWidgetItem) =
  fcQTreeWidgetItem_delete(self.h)
proc metaObject*(self: gen_qtreewidget_types.QTreeWidget, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTreeWidget_metaObject(self.h))

proc metacast*(self: gen_qtreewidget_types.QTreeWidget, param1: cstring): pointer =
  fcQTreeWidget_metacast(self.h, param1)

proc metacall*(self: gen_qtreewidget_types.QTreeWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQTreeWidget_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qtreewidget_types.QTreeWidget, s: cstring): string =
  let v_ms = fcQTreeWidget_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtreewidget_types.QTreeWidget, s: cstring): string =
  let v_ms = fcQTreeWidget_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc columnCount*(self: gen_qtreewidget_types.QTreeWidget, ): cint =
  fcQTreeWidget_columnCount(self.h)

proc setColumnCount*(self: gen_qtreewidget_types.QTreeWidget, columns: cint): void =
  fcQTreeWidget_setColumnCount(self.h, columns)

proc invisibleRootItem*(self: gen_qtreewidget_types.QTreeWidget, ): gen_qtreewidget_types.QTreeWidgetItem =
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidget_invisibleRootItem(self.h))

proc topLevelItem*(self: gen_qtreewidget_types.QTreeWidget, index: cint): gen_qtreewidget_types.QTreeWidgetItem =
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidget_topLevelItem(self.h, index))

proc topLevelItemCount*(self: gen_qtreewidget_types.QTreeWidget, ): cint =
  fcQTreeWidget_topLevelItemCount(self.h)

proc insertTopLevelItem*(self: gen_qtreewidget_types.QTreeWidget, index: cint, item: gen_qtreewidget_types.QTreeWidgetItem): void =
  fcQTreeWidget_insertTopLevelItem(self.h, index, item.h)

proc addTopLevelItem*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem): void =
  fcQTreeWidget_addTopLevelItem(self.h, item.h)

proc takeTopLevelItem*(self: gen_qtreewidget_types.QTreeWidget, index: cint): gen_qtreewidget_types.QTreeWidgetItem =
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidget_takeTopLevelItem(self.h, index))

proc indexOfTopLevelItem*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem): cint =
  fcQTreeWidget_indexOfTopLevelItem(self.h, item.h)

proc insertTopLevelItems*(self: gen_qtreewidget_types.QTreeWidget, index: cint, items: seq[gen_qtreewidget_types.QTreeWidgetItem]): void =
  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  fcQTreeWidget_insertTopLevelItems(self.h, index, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])))

proc addTopLevelItems*(self: gen_qtreewidget_types.QTreeWidget, items: seq[gen_qtreewidget_types.QTreeWidgetItem]): void =
  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  fcQTreeWidget_addTopLevelItems(self.h, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])))

proc headerItem*(self: gen_qtreewidget_types.QTreeWidget, ): gen_qtreewidget_types.QTreeWidgetItem =
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidget_headerItem(self.h))

proc setHeaderItem*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem): void =
  fcQTreeWidget_setHeaderItem(self.h, item.h)

proc setHeaderLabels*(self: gen_qtreewidget_types.QTreeWidget, labels: seq[string]): void =
  var labels_CArray = newSeq[struct_miqt_string](len(labels))
  for i in 0..<len(labels):
    labels_CArray[i] = struct_miqt_string(data: labels[i], len: csize_t(len(labels[i])))

  fcQTreeWidget_setHeaderLabels(self.h, struct_miqt_array(len: csize_t(len(labels)), data: if len(labels) == 0: nil else: addr(labels_CArray[0])))

proc setHeaderLabel*(self: gen_qtreewidget_types.QTreeWidget, label: string): void =
  fcQTreeWidget_setHeaderLabel(self.h, struct_miqt_string(data: label, len: csize_t(len(label))))

proc currentItem*(self: gen_qtreewidget_types.QTreeWidget, ): gen_qtreewidget_types.QTreeWidgetItem =
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidget_currentItem(self.h))

proc currentColumn*(self: gen_qtreewidget_types.QTreeWidget, ): cint =
  fcQTreeWidget_currentColumn(self.h)

proc setCurrentItem*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem): void =
  fcQTreeWidget_setCurrentItem(self.h, item.h)

proc setCurrentItem*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem, column: cint): void =
  fcQTreeWidget_setCurrentItem2(self.h, item.h, column)

proc setCurrentItem*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem, column: cint, command: cint): void =
  fcQTreeWidget_setCurrentItem3(self.h, item.h, column, cint(command))

proc itemAt*(self: gen_qtreewidget_types.QTreeWidget, p: gen_qpoint_types.QPoint): gen_qtreewidget_types.QTreeWidgetItem =
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidget_itemAt(self.h, p.h))

proc itemAt*(self: gen_qtreewidget_types.QTreeWidget, x: cint, y: cint): gen_qtreewidget_types.QTreeWidgetItem =
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidget_itemAt2(self.h, x, y))

proc visualItemRect*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQTreeWidget_visualItemRect(self.h, item.h))

proc sortColumn*(self: gen_qtreewidget_types.QTreeWidget, ): cint =
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
  gen_qwidget_types.QWidget(h: fcQTreeWidget_itemWidget(self.h, item.h, column))

proc setItemWidget*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem, column: cint, widget: gen_qwidget_types.QWidget): void =
  fcQTreeWidget_setItemWidget(self.h, item.h, column, widget.h)

proc removeItemWidget*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem, column: cint): void =
  fcQTreeWidget_removeItemWidget(self.h, item.h, column)

proc isItemSelected*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem): bool =
  fcQTreeWidget_isItemSelected(self.h, item.h)

proc setItemSelected*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem, select: bool): void =
  fcQTreeWidget_setItemSelected(self.h, item.h, select)

proc selectedItems*(self: gen_qtreewidget_types.QTreeWidget, ): seq[gen_qtreewidget_types.QTreeWidgetItem] =
  var v_ma = fcQTreeWidget_selectedItems(self.h)
  var vx_ret = newSeq[gen_qtreewidget_types.QTreeWidgetItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qtreewidget_types.QTreeWidgetItem(h: v_outCast[i])
  vx_ret

proc findItems*(self: gen_qtreewidget_types.QTreeWidget, text: string, flags: cint): seq[gen_qtreewidget_types.QTreeWidgetItem] =
  var v_ma = fcQTreeWidget_findItems(self.h, struct_miqt_string(data: text, len: csize_t(len(text))), cint(flags))
  var vx_ret = newSeq[gen_qtreewidget_types.QTreeWidgetItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qtreewidget_types.QTreeWidgetItem(h: v_outCast[i])
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
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidget_itemAbove(self.h, item.h))

proc itemBelow*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem): gen_qtreewidget_types.QTreeWidgetItem =
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidget_itemBelow(self.h, item.h))

proc setSelectionModel*(self: gen_qtreewidget_types.QTreeWidget, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void =
  fcQTreeWidget_setSelectionModel(self.h, selectionModel.h)

proc scrollToItem*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem): void =
  fcQTreeWidget_scrollToItem(self.h, item.h)

proc expandItem*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem): void =
  fcQTreeWidget_expandItem(self.h, item.h)

proc collapseItem*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem): void =
  fcQTreeWidget_collapseItem(self.h, item.h)

proc clear*(self: gen_qtreewidget_types.QTreeWidget, ): void =
  fcQTreeWidget_clear(self.h)

proc itemPressed*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem, column: cint): void =
  fcQTreeWidget_itemPressed(self.h, item.h, column)

type QTreeWidgetitemPressedSlot* = proc(item: gen_qtreewidget_types.QTreeWidgetItem, column: cint)
proc miqt_exec_callback_cQTreeWidget_itemPressed(slot: int, item: pointer, column: cint) {.cdecl.} =
  let nimfunc = cast[ptr QTreeWidgetitemPressedSlot](cast[pointer](slot))
  let slotval1 = gen_qtreewidget_types.QTreeWidgetItem(h: item)

  let slotval2 = column

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQTreeWidget_itemPressed_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTreeWidgetitemPressedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onitemPressed*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetitemPressedSlot) =
  var tmp = new QTreeWidgetitemPressedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_connect_itemPressed(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQTreeWidget_itemPressed, miqt_exec_callback_cQTreeWidget_itemPressed_release)

proc itemClicked*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem, column: cint): void =
  fcQTreeWidget_itemClicked(self.h, item.h, column)

type QTreeWidgetitemClickedSlot* = proc(item: gen_qtreewidget_types.QTreeWidgetItem, column: cint)
proc miqt_exec_callback_cQTreeWidget_itemClicked(slot: int, item: pointer, column: cint) {.cdecl.} =
  let nimfunc = cast[ptr QTreeWidgetitemClickedSlot](cast[pointer](slot))
  let slotval1 = gen_qtreewidget_types.QTreeWidgetItem(h: item)

  let slotval2 = column

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQTreeWidget_itemClicked_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTreeWidgetitemClickedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onitemClicked*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetitemClickedSlot) =
  var tmp = new QTreeWidgetitemClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_connect_itemClicked(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQTreeWidget_itemClicked, miqt_exec_callback_cQTreeWidget_itemClicked_release)

proc itemDoubleClicked*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem, column: cint): void =
  fcQTreeWidget_itemDoubleClicked(self.h, item.h, column)

type QTreeWidgetitemDoubleClickedSlot* = proc(item: gen_qtreewidget_types.QTreeWidgetItem, column: cint)
proc miqt_exec_callback_cQTreeWidget_itemDoubleClicked(slot: int, item: pointer, column: cint) {.cdecl.} =
  let nimfunc = cast[ptr QTreeWidgetitemDoubleClickedSlot](cast[pointer](slot))
  let slotval1 = gen_qtreewidget_types.QTreeWidgetItem(h: item)

  let slotval2 = column

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQTreeWidget_itemDoubleClicked_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTreeWidgetitemDoubleClickedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onitemDoubleClicked*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetitemDoubleClickedSlot) =
  var tmp = new QTreeWidgetitemDoubleClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_connect_itemDoubleClicked(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQTreeWidget_itemDoubleClicked, miqt_exec_callback_cQTreeWidget_itemDoubleClicked_release)

proc itemActivated*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem, column: cint): void =
  fcQTreeWidget_itemActivated(self.h, item.h, column)

type QTreeWidgetitemActivatedSlot* = proc(item: gen_qtreewidget_types.QTreeWidgetItem, column: cint)
proc miqt_exec_callback_cQTreeWidget_itemActivated(slot: int, item: pointer, column: cint) {.cdecl.} =
  let nimfunc = cast[ptr QTreeWidgetitemActivatedSlot](cast[pointer](slot))
  let slotval1 = gen_qtreewidget_types.QTreeWidgetItem(h: item)

  let slotval2 = column

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQTreeWidget_itemActivated_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTreeWidgetitemActivatedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onitemActivated*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetitemActivatedSlot) =
  var tmp = new QTreeWidgetitemActivatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_connect_itemActivated(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQTreeWidget_itemActivated, miqt_exec_callback_cQTreeWidget_itemActivated_release)

proc itemEntered*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem, column: cint): void =
  fcQTreeWidget_itemEntered(self.h, item.h, column)

type QTreeWidgetitemEnteredSlot* = proc(item: gen_qtreewidget_types.QTreeWidgetItem, column: cint)
proc miqt_exec_callback_cQTreeWidget_itemEntered(slot: int, item: pointer, column: cint) {.cdecl.} =
  let nimfunc = cast[ptr QTreeWidgetitemEnteredSlot](cast[pointer](slot))
  let slotval1 = gen_qtreewidget_types.QTreeWidgetItem(h: item)

  let slotval2 = column

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQTreeWidget_itemEntered_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTreeWidgetitemEnteredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onitemEntered*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetitemEnteredSlot) =
  var tmp = new QTreeWidgetitemEnteredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_connect_itemEntered(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQTreeWidget_itemEntered, miqt_exec_callback_cQTreeWidget_itemEntered_release)

proc itemChanged*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem, column: cint): void =
  fcQTreeWidget_itemChanged(self.h, item.h, column)

type QTreeWidgetitemChangedSlot* = proc(item: gen_qtreewidget_types.QTreeWidgetItem, column: cint)
proc miqt_exec_callback_cQTreeWidget_itemChanged(slot: int, item: pointer, column: cint) {.cdecl.} =
  let nimfunc = cast[ptr QTreeWidgetitemChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qtreewidget_types.QTreeWidgetItem(h: item)

  let slotval2 = column

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQTreeWidget_itemChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTreeWidgetitemChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onitemChanged*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetitemChangedSlot) =
  var tmp = new QTreeWidgetitemChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_connect_itemChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQTreeWidget_itemChanged, miqt_exec_callback_cQTreeWidget_itemChanged_release)

proc itemExpanded*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem): void =
  fcQTreeWidget_itemExpanded(self.h, item.h)

type QTreeWidgetitemExpandedSlot* = proc(item: gen_qtreewidget_types.QTreeWidgetItem)
proc miqt_exec_callback_cQTreeWidget_itemExpanded(slot: int, item: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QTreeWidgetitemExpandedSlot](cast[pointer](slot))
  let slotval1 = gen_qtreewidget_types.QTreeWidgetItem(h: item)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQTreeWidget_itemExpanded_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTreeWidgetitemExpandedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onitemExpanded*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetitemExpandedSlot) =
  var tmp = new QTreeWidgetitemExpandedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_connect_itemExpanded(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQTreeWidget_itemExpanded, miqt_exec_callback_cQTreeWidget_itemExpanded_release)

proc itemCollapsed*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem): void =
  fcQTreeWidget_itemCollapsed(self.h, item.h)

type QTreeWidgetitemCollapsedSlot* = proc(item: gen_qtreewidget_types.QTreeWidgetItem)
proc miqt_exec_callback_cQTreeWidget_itemCollapsed(slot: int, item: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QTreeWidgetitemCollapsedSlot](cast[pointer](slot))
  let slotval1 = gen_qtreewidget_types.QTreeWidgetItem(h: item)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQTreeWidget_itemCollapsed_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTreeWidgetitemCollapsedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onitemCollapsed*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetitemCollapsedSlot) =
  var tmp = new QTreeWidgetitemCollapsedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_connect_itemCollapsed(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQTreeWidget_itemCollapsed, miqt_exec_callback_cQTreeWidget_itemCollapsed_release)

proc currentItemChanged*(self: gen_qtreewidget_types.QTreeWidget, current: gen_qtreewidget_types.QTreeWidgetItem, previous: gen_qtreewidget_types.QTreeWidgetItem): void =
  fcQTreeWidget_currentItemChanged(self.h, current.h, previous.h)

type QTreeWidgetcurrentItemChangedSlot* = proc(current: gen_qtreewidget_types.QTreeWidgetItem, previous: gen_qtreewidget_types.QTreeWidgetItem)
proc miqt_exec_callback_cQTreeWidget_currentItemChanged(slot: int, current: pointer, previous: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QTreeWidgetcurrentItemChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qtreewidget_types.QTreeWidgetItem(h: current)

  let slotval2 = gen_qtreewidget_types.QTreeWidgetItem(h: previous)

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQTreeWidget_currentItemChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTreeWidgetcurrentItemChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncurrentItemChanged*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetcurrentItemChangedSlot) =
  var tmp = new QTreeWidgetcurrentItemChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_connect_currentItemChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQTreeWidget_currentItemChanged, miqt_exec_callback_cQTreeWidget_currentItemChanged_release)

proc itemSelectionChanged*(self: gen_qtreewidget_types.QTreeWidget, ): void =
  fcQTreeWidget_itemSelectionChanged(self.h)

type QTreeWidgetitemSelectionChangedSlot* = proc()
proc miqt_exec_callback_cQTreeWidget_itemSelectionChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QTreeWidgetitemSelectionChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQTreeWidget_itemSelectionChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTreeWidgetitemSelectionChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onitemSelectionChanged*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetitemSelectionChangedSlot) =
  var tmp = new QTreeWidgetitemSelectionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_connect_itemSelectionChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQTreeWidget_itemSelectionChanged, miqt_exec_callback_cQTreeWidget_itemSelectionChanged_release)

proc tr*(_: type gen_qtreewidget_types.QTreeWidget, s: cstring, c: cstring): string =
  let v_ms = fcQTreeWidget_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qtreewidget_types.QTreeWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTreeWidget_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtreewidget_types.QTreeWidget, s: cstring, c: cstring): string =
  let v_ms = fcQTreeWidget_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtreewidget_types.QTreeWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTreeWidget_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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

proc findItems*(self: gen_qtreewidget_types.QTreeWidget, text: string, flags: cint, column: cint): seq[gen_qtreewidget_types.QTreeWidgetItem] =
  var v_ma = fcQTreeWidget_findItems3(self.h, struct_miqt_string(data: text, len: csize_t(len(text))), cint(flags), column)
  var vx_ret = newSeq[gen_qtreewidget_types.QTreeWidgetItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qtreewidget_types.QTreeWidgetItem(h: v_outCast[i])
  vx_ret

proc scrollToItem*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem, hint: cint): void =
  fcQTreeWidget_scrollToItem2(self.h, item.h, cint(hint))

type QTreeWidgetmetaObjectProc* = proc(self: QTreeWidget): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QTreeWidgetmetacastProc* = proc(self: QTreeWidget, param1: cstring): pointer {.raises: [], gcsafe.}
type QTreeWidgetmetacallProc* = proc(self: QTreeWidget, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QTreeWidgetsetSelectionModelProc* = proc(self: QTreeWidget, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void {.raises: [], gcsafe.}
type QTreeWidgeteventProc* = proc(self: QTreeWidget, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTreeWidgetmimeTypesProc* = proc(self: QTreeWidget): seq[string] {.raises: [], gcsafe.}
type QTreeWidgetmimeDataProc* = proc(self: QTreeWidget, items: seq[gen_qtreewidget_types.QTreeWidgetItem]): gen_qmimedata_types.QMimeData {.raises: [], gcsafe.}
type QTreeWidgetdropMimeDataProc* = proc(self: QTreeWidget, parent: gen_qtreewidget_types.QTreeWidgetItem, index: cint, data: gen_qmimedata_types.QMimeData, action: cint): bool {.raises: [], gcsafe.}
type QTreeWidgetsupportedDropActionsProc* = proc(self: QTreeWidget): cint {.raises: [], gcsafe.}
type QTreeWidgetdropEventProc* = proc(self: QTreeWidget, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QTreeWidgetsetRootIndexProc* = proc(self: QTreeWidget, index: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QTreeWidgetkeyboardSearchProc* = proc(self: QTreeWidget, search: string): void {.raises: [], gcsafe.}
type QTreeWidgetvisualRectProc* = proc(self: QTreeWidget, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect {.raises: [], gcsafe.}
type QTreeWidgetscrollToProc* = proc(self: QTreeWidget, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void {.raises: [], gcsafe.}
type QTreeWidgetindexAtProc* = proc(self: QTreeWidget, p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QTreeWidgetdoItemsLayoutProc* = proc(self: QTreeWidget): void {.raises: [], gcsafe.}
type QTreeWidgetresetProc* = proc(self: QTreeWidget): void {.raises: [], gcsafe.}
type QTreeWidgetdataChangedProc* = proc(self: QTreeWidget, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: seq[cint]): void {.raises: [], gcsafe.}
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
type QTreeWidgetnativeEventProc* = proc(self: QTreeWidget, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QTreeWidgetmetricProc* = proc(self: QTreeWidget, param1: cint): cint {.raises: [], gcsafe.}
type QTreeWidgetinitPainterProc* = proc(self: QTreeWidget, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QTreeWidgetredirectedProc* = proc(self: QTreeWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QTreeWidgetsharedPainterProc* = proc(self: QTreeWidget): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QTreeWidgetchildEventProc* = proc(self: QTreeWidget, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QTreeWidgetcustomEventProc* = proc(self: QTreeWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTreeWidgetconnectNotifyProc* = proc(self: QTreeWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTreeWidgetdisconnectNotifyProc* = proc(self: QTreeWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTreeWidgetVTable* = object
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
proc QTreeWidgetmetaObject*(self: gen_qtreewidget_types.QTreeWidget, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTreeWidget_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQTreeWidget_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QTreeWidgetmetacast*(self: gen_qtreewidget_types.QTreeWidget, param1: cstring): pointer =
  fcQTreeWidget_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQTreeWidget_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QTreeWidgetmetacall*(self: gen_qtreewidget_types.QTreeWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQTreeWidget_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQTreeWidget_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTreeWidgetsetSelectionModel*(self: gen_qtreewidget_types.QTreeWidget, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void =
  fcQTreeWidget_virtualbase_setSelectionModel(self.h, selectionModel.h)

proc miqt_exec_callback_cQTreeWidget_setSelectionModel(vtbl: pointer, self: pointer, selectionModel: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelectionModel(h: selectionModel)
  vtbl[].setSelectionModel(self, slotval1)

proc QTreeWidgetevent*(self: gen_qtreewidget_types.QTreeWidget, e: gen_qcoreevent_types.QEvent): bool =
  fcQTreeWidget_virtualbase_event(self.h, e.h)

proc miqt_exec_callback_cQTreeWidget_event(vtbl: pointer, self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QTreeWidgetmimeTypes*(self: gen_qtreewidget_types.QTreeWidget, ): seq[string] =
  var v_ma = fcQTreeWidget_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQTreeWidget_mimeTypes(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  var virtualReturn = vtbl[].mimeTypes(self)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QTreeWidgetmimeData*(self: gen_qtreewidget_types.QTreeWidget, items: seq[gen_qtreewidget_types.QTreeWidgetItem]): gen_qmimedata_types.QMimeData =
  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  gen_qmimedata_types.QMimeData(h: fcQTreeWidget_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0]))))

proc miqt_exec_callback_cQTreeWidget_mimeData(vtbl: pointer, self: pointer, items: struct_miqt_array): pointer {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  var vitems_ma = items
  var vitemsx_ret = newSeq[gen_qtreewidget_types.QTreeWidgetItem](int(vitems_ma.len))
  let vitems_outCast = cast[ptr UncheckedArray[pointer]](vitems_ma.data)
  for i in 0 ..< vitems_ma.len:
    vitemsx_ret[i] = gen_qtreewidget_types.QTreeWidgetItem(h: vitems_outCast[i])
  let slotval1 = vitemsx_ret
  var virtualReturn = vtbl[].mimeData(self, slotval1)
  virtualReturn.h

proc QTreeWidgetdropMimeData*(self: gen_qtreewidget_types.QTreeWidget, parent: gen_qtreewidget_types.QTreeWidgetItem, index: cint, data: gen_qmimedata_types.QMimeData, action: cint): bool =
  fcQTreeWidget_virtualbase_dropMimeData(self.h, parent.h, index, data.h, cint(action))

proc miqt_exec_callback_cQTreeWidget_dropMimeData(vtbl: pointer, self: pointer, parent: pointer, index: cint, data: pointer, action: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qtreewidget_types.QTreeWidgetItem(h: parent)
  let slotval2 = index
  let slotval3 = gen_qmimedata_types.QMimeData(h: data)
  let slotval4 = cint(action)
  var virtualReturn = vtbl[].dropMimeData(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc QTreeWidgetsupportedDropActions*(self: gen_qtreewidget_types.QTreeWidget, ): cint =
  cint(fcQTreeWidget_virtualbase_supportedDropActions(self.h))

proc miqt_exec_callback_cQTreeWidget_supportedDropActions(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  var virtualReturn = vtbl[].supportedDropActions(self)
  cint(virtualReturn)

proc QTreeWidgetdropEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QDropEvent): void =
  fcQTreeWidget_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeWidget_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QTreeWidgetsetRootIndex*(self: gen_qtreewidget_types.QTreeWidget, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQTreeWidget_virtualbase_setRootIndex(self.h, index.h)

proc miqt_exec_callback_cQTreeWidget_setRootIndex(vtbl: pointer, self: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  vtbl[].setRootIndex(self, slotval1)

proc QTreeWidgetkeyboardSearch*(self: gen_qtreewidget_types.QTreeWidget, search: string): void =
  fcQTreeWidget_virtualbase_keyboardSearch(self.h, struct_miqt_string(data: search, len: csize_t(len(search))))

proc miqt_exec_callback_cQTreeWidget_keyboardSearch(vtbl: pointer, self: pointer, search: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let vsearch_ms = search
  let vsearchx_ret = string.fromBytes(toOpenArrayByte(vsearch_ms.data, 0, int(vsearch_ms.len)-1))
  c_free(vsearch_ms.data)
  let slotval1 = vsearchx_ret
  vtbl[].keyboardSearch(self, slotval1)

proc QTreeWidgetvisualRect*(self: gen_qtreewidget_types.QTreeWidget, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQTreeWidget_virtualbase_visualRect(self.h, index.h))

proc miqt_exec_callback_cQTreeWidget_visualRect(vtbl: pointer, self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].visualRect(self, slotval1)
  virtualReturn.h

proc QTreeWidgetscrollTo*(self: gen_qtreewidget_types.QTreeWidget, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void =
  fcQTreeWidget_virtualbase_scrollTo(self.h, index.h, cint(hint))

proc miqt_exec_callback_cQTreeWidget_scrollTo(vtbl: pointer, self: pointer, index: pointer, hint: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let slotval2 = cint(hint)
  vtbl[].scrollTo(self, slotval1, slotval2)

proc QTreeWidgetindexAt*(self: gen_qtreewidget_types.QTreeWidget, p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTreeWidget_virtualbase_indexAt(self.h, p.h))

proc miqt_exec_callback_cQTreeWidget_indexAt(vtbl: pointer, self: pointer, p: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: p)
  var virtualReturn = vtbl[].indexAt(self, slotval1)
  virtualReturn.h

proc QTreeWidgetdoItemsLayout*(self: gen_qtreewidget_types.QTreeWidget, ): void =
  fcQTreeWidget_virtualbase_doItemsLayout(self.h)

proc miqt_exec_callback_cQTreeWidget_doItemsLayout(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  vtbl[].doItemsLayout(self)

proc QTreeWidgetreset*(self: gen_qtreewidget_types.QTreeWidget, ): void =
  fcQTreeWidget_virtualbase_reset(self.h)

proc miqt_exec_callback_cQTreeWidget_reset(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  vtbl[].reset(self)

proc QTreeWidgetdataChanged*(self: gen_qtreewidget_types.QTreeWidget, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: seq[cint]): void =
  var roles_CArray = newSeq[cint](len(roles))
  for i in 0..<len(roles):
    roles_CArray[i] = roles[i]

  fcQTreeWidget_virtualbase_dataChanged(self.h, topLeft.h, bottomRight.h, struct_miqt_array(len: csize_t(len(roles)), data: if len(roles) == 0: nil else: addr(roles_CArray[0])))

proc miqt_exec_callback_cQTreeWidget_dataChanged(vtbl: pointer, self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: topLeft)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: bottomRight)
  var vroles_ma = roles
  var vrolesx_ret = newSeq[cint](int(vroles_ma.len))
  let vroles_outCast = cast[ptr UncheckedArray[cint]](vroles_ma.data)
  for i in 0 ..< vroles_ma.len:
    vrolesx_ret[i] = vroles_outCast[i]
  let slotval3 = vrolesx_ret
  vtbl[].dataChanged(self, slotval1, slotval2, slotval3)

proc QTreeWidgetselectAll*(self: gen_qtreewidget_types.QTreeWidget, ): void =
  fcQTreeWidget_virtualbase_selectAll(self.h)

proc miqt_exec_callback_cQTreeWidget_selectAll(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  vtbl[].selectAll(self)

proc QTreeWidgetverticalScrollbarValueChanged*(self: gen_qtreewidget_types.QTreeWidget, value: cint): void =
  fcQTreeWidget_virtualbase_verticalScrollbarValueChanged(self.h, value)

proc miqt_exec_callback_cQTreeWidget_verticalScrollbarValueChanged(vtbl: pointer, self: pointer, value: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = value
  vtbl[].verticalScrollbarValueChanged(self, slotval1)

proc QTreeWidgetscrollContentsBy*(self: gen_qtreewidget_types.QTreeWidget, dx: cint, dy: cint): void =
  fcQTreeWidget_virtualbase_scrollContentsBy(self.h, dx, dy)

proc miqt_exec_callback_cQTreeWidget_scrollContentsBy(vtbl: pointer, self: pointer, dx: cint, dy: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = dx
  let slotval2 = dy
  vtbl[].scrollContentsBy(self, slotval1, slotval2)

proc QTreeWidgetrowsInserted*(self: gen_qtreewidget_types.QTreeWidget, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fcQTreeWidget_virtualbase_rowsInserted(self.h, parent.h, start, endVal)

proc miqt_exec_callback_cQTreeWidget_rowsInserted(vtbl: pointer, self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  let slotval2 = start
  let slotval3 = endVal
  vtbl[].rowsInserted(self, slotval1, slotval2, slotval3)

proc QTreeWidgetrowsAboutToBeRemoved*(self: gen_qtreewidget_types.QTreeWidget, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fcQTreeWidget_virtualbase_rowsAboutToBeRemoved(self.h, parent.h, start, endVal)

proc miqt_exec_callback_cQTreeWidget_rowsAboutToBeRemoved(vtbl: pointer, self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  let slotval2 = start
  let slotval3 = endVal
  vtbl[].rowsAboutToBeRemoved(self, slotval1, slotval2, slotval3)

proc QTreeWidgetmoveCursor*(self: gen_qtreewidget_types.QTreeWidget, cursorAction: cint, modifiers: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTreeWidget_virtualbase_moveCursor(self.h, cint(cursorAction), cint(modifiers)))

proc miqt_exec_callback_cQTreeWidget_moveCursor(vtbl: pointer, self: pointer, cursorAction: cint, modifiers: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = cint(cursorAction)
  let slotval2 = cint(modifiers)
  var virtualReturn = vtbl[].moveCursor(self, slotval1, slotval2)
  virtualReturn.h

proc QTreeWidgethorizontalOffset*(self: gen_qtreewidget_types.QTreeWidget, ): cint =
  fcQTreeWidget_virtualbase_horizontalOffset(self.h)

proc miqt_exec_callback_cQTreeWidget_horizontalOffset(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  var virtualReturn = vtbl[].horizontalOffset(self)
  virtualReturn

proc QTreeWidgetverticalOffset*(self: gen_qtreewidget_types.QTreeWidget, ): cint =
  fcQTreeWidget_virtualbase_verticalOffset(self.h)

proc miqt_exec_callback_cQTreeWidget_verticalOffset(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  var virtualReturn = vtbl[].verticalOffset(self)
  virtualReturn

proc QTreeWidgetsetSelection*(self: gen_qtreewidget_types.QTreeWidget, rect: gen_qrect_types.QRect, command: cint): void =
  fcQTreeWidget_virtualbase_setSelection(self.h, rect.h, cint(command))

proc miqt_exec_callback_cQTreeWidget_setSelection(vtbl: pointer, self: pointer, rect: pointer, command: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qrect_types.QRect(h: rect)
  let slotval2 = cint(command)
  vtbl[].setSelection(self, slotval1, slotval2)

proc QTreeWidgetvisualRegionForSelection*(self: gen_qtreewidget_types.QTreeWidget, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQTreeWidget_virtualbase_visualRegionForSelection(self.h, selection.h))

proc miqt_exec_callback_cQTreeWidget_visualRegionForSelection(vtbl: pointer, self: pointer, selection: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection)
  var virtualReturn = vtbl[].visualRegionForSelection(self, slotval1)
  virtualReturn.h

proc QTreeWidgetselectedIndexes*(self: gen_qtreewidget_types.QTreeWidget, ): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQTreeWidget_virtualbase_selectedIndexes(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  vx_ret

proc miqt_exec_callback_cQTreeWidget_selectedIndexes(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  var virtualReturn = vtbl[].selectedIndexes(self)
  var virtualReturn_CArray = newSeq[pointer](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QTreeWidgettimerEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQTreeWidget_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeWidget_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QTreeWidgetpaintEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QPaintEvent): void =
  fcQTreeWidget_virtualbase_paintEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeWidget_paintEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)
  vtbl[].paintEvent(self, slotval1)

proc QTreeWidgetdrawRow*(self: gen_qtreewidget_types.QTreeWidget, painter: gen_qpainter_types.QPainter, options: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQTreeWidget_virtualbase_drawRow(self.h, painter.h, options.h, index.h)

proc miqt_exec_callback_cQTreeWidget_drawRow(vtbl: pointer, self: pointer, painter: pointer, options: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: options)
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  vtbl[].drawRow(self, slotval1, slotval2, slotval3)

proc QTreeWidgetdrawBranches*(self: gen_qtreewidget_types.QTreeWidget, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQTreeWidget_virtualbase_drawBranches(self.h, painter.h, rect.h, index.h)

proc miqt_exec_callback_cQTreeWidget_drawBranches(vtbl: pointer, self: pointer, painter: pointer, rect: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  let slotval2 = gen_qrect_types.QRect(h: rect)
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  vtbl[].drawBranches(self, slotval1, slotval2, slotval3)

proc QTreeWidgetmousePressEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQTreeWidget_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeWidget_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QTreeWidgetmouseReleaseEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQTreeWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeWidget_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QTreeWidgetmouseDoubleClickEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQTreeWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeWidget_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QTreeWidgetmouseMoveEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQTreeWidget_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeWidget_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QTreeWidgetkeyPressEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQTreeWidget_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeWidget_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyPressEvent(self, slotval1)

proc QTreeWidgetdragMoveEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QDragMoveEvent): void =
  fcQTreeWidget_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeWidget_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QTreeWidgetviewportEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qcoreevent_types.QEvent): bool =
  fcQTreeWidget_virtualbase_viewportEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeWidget_viewportEvent(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].viewportEvent(self, slotval1)
  virtualReturn

proc QTreeWidgetupdateGeometries*(self: gen_qtreewidget_types.QTreeWidget, ): void =
  fcQTreeWidget_virtualbase_updateGeometries(self.h)

proc miqt_exec_callback_cQTreeWidget_updateGeometries(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  vtbl[].updateGeometries(self)

proc QTreeWidgetviewportSizeHint*(self: gen_qtreewidget_types.QTreeWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTreeWidget_virtualbase_viewportSizeHint(self.h))

proc miqt_exec_callback_cQTreeWidget_viewportSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  var virtualReturn = vtbl[].viewportSizeHint(self)
  virtualReturn.h

proc QTreeWidgetsizeHintForColumn*(self: gen_qtreewidget_types.QTreeWidget, column: cint): cint =
  fcQTreeWidget_virtualbase_sizeHintForColumn(self.h, column)

proc miqt_exec_callback_cQTreeWidget_sizeHintForColumn(vtbl: pointer, self: pointer, column: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = column
  var virtualReturn = vtbl[].sizeHintForColumn(self, slotval1)
  virtualReturn

proc QTreeWidgethorizontalScrollbarAction*(self: gen_qtreewidget_types.QTreeWidget, action: cint): void =
  fcQTreeWidget_virtualbase_horizontalScrollbarAction(self.h, action)

proc miqt_exec_callback_cQTreeWidget_horizontalScrollbarAction(vtbl: pointer, self: pointer, action: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = action
  vtbl[].horizontalScrollbarAction(self, slotval1)

proc QTreeWidgetisIndexHidden*(self: gen_qtreewidget_types.QTreeWidget, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQTreeWidget_virtualbase_isIndexHidden(self.h, index.h)

proc miqt_exec_callback_cQTreeWidget_isIndexHidden(vtbl: pointer, self: pointer, index: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].isIndexHidden(self, slotval1)
  virtualReturn

proc QTreeWidgetselectionChanged*(self: gen_qtreewidget_types.QTreeWidget, selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void =
  fcQTreeWidget_virtualbase_selectionChanged(self.h, selected.h, deselected.h)

proc miqt_exec_callback_cQTreeWidget_selectionChanged(vtbl: pointer, self: pointer, selected: pointer, deselected: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selected)
  let slotval2 = gen_qitemselectionmodel_types.QItemSelection(h: deselected)
  vtbl[].selectionChanged(self, slotval1, slotval2)

proc QTreeWidgetcurrentChanged*(self: gen_qtreewidget_types.QTreeWidget, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQTreeWidget_virtualbase_currentChanged(self.h, current.h, previous.h)

proc miqt_exec_callback_cQTreeWidget_currentChanged(vtbl: pointer, self: pointer, current: pointer, previous: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: current)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: previous)
  vtbl[].currentChanged(self, slotval1, slotval2)

proc QTreeWidgetsizeHintForRow*(self: gen_qtreewidget_types.QTreeWidget, row: cint): cint =
  fcQTreeWidget_virtualbase_sizeHintForRow(self.h, row)

proc miqt_exec_callback_cQTreeWidget_sizeHintForRow(vtbl: pointer, self: pointer, row: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = row
  var virtualReturn = vtbl[].sizeHintForRow(self, slotval1)
  virtualReturn

proc QTreeWidgetinputMethodQuery*(self: gen_qtreewidget_types.QTreeWidget, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQTreeWidget_virtualbase_inputMethodQuery(self.h, cint(query)))

proc miqt_exec_callback_cQTreeWidget_inputMethodQuery(vtbl: pointer, self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = cint(query)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QTreeWidgetupdateEditorData*(self: gen_qtreewidget_types.QTreeWidget, ): void =
  fcQTreeWidget_virtualbase_updateEditorData(self.h)

proc miqt_exec_callback_cQTreeWidget_updateEditorData(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  vtbl[].updateEditorData(self)

proc QTreeWidgetupdateEditorGeometries*(self: gen_qtreewidget_types.QTreeWidget, ): void =
  fcQTreeWidget_virtualbase_updateEditorGeometries(self.h)

proc miqt_exec_callback_cQTreeWidget_updateEditorGeometries(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  vtbl[].updateEditorGeometries(self)

proc QTreeWidgetverticalScrollbarAction*(self: gen_qtreewidget_types.QTreeWidget, action: cint): void =
  fcQTreeWidget_virtualbase_verticalScrollbarAction(self.h, action)

proc miqt_exec_callback_cQTreeWidget_verticalScrollbarAction(vtbl: pointer, self: pointer, action: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = action
  vtbl[].verticalScrollbarAction(self, slotval1)

proc QTreeWidgethorizontalScrollbarValueChanged*(self: gen_qtreewidget_types.QTreeWidget, value: cint): void =
  fcQTreeWidget_virtualbase_horizontalScrollbarValueChanged(self.h, value)

proc miqt_exec_callback_cQTreeWidget_horizontalScrollbarValueChanged(vtbl: pointer, self: pointer, value: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = value
  vtbl[].horizontalScrollbarValueChanged(self, slotval1)

proc QTreeWidgetcloseEditor*(self: gen_qtreewidget_types.QTreeWidget, editor: gen_qwidget_types.QWidget, hint: cint): void =
  fcQTreeWidget_virtualbase_closeEditor(self.h, editor.h, cint(hint))

proc miqt_exec_callback_cQTreeWidget_closeEditor(vtbl: pointer, self: pointer, editor: pointer, hint: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor)
  let slotval2 = cint(hint)
  vtbl[].closeEditor(self, slotval1, slotval2)

proc QTreeWidgetcommitData*(self: gen_qtreewidget_types.QTreeWidget, editor: gen_qwidget_types.QWidget): void =
  fcQTreeWidget_virtualbase_commitData(self.h, editor.h)

proc miqt_exec_callback_cQTreeWidget_commitData(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor)
  vtbl[].commitData(self, slotval1)

proc QTreeWidgeteditorDestroyed*(self: gen_qtreewidget_types.QTreeWidget, editor: gen_qobject_types.QObject): void =
  fcQTreeWidget_virtualbase_editorDestroyed(self.h, editor.h)

proc miqt_exec_callback_cQTreeWidget_editorDestroyed(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qobject_types.QObject(h: editor)
  vtbl[].editorDestroyed(self, slotval1)

proc QTreeWidgetedit*(self: gen_qtreewidget_types.QTreeWidget, index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool =
  fcQTreeWidget_virtualbase_edit2(self.h, index.h, cint(trigger), event.h)

proc miqt_exec_callback_cQTreeWidget_edit2(vtbl: pointer, self: pointer, index: pointer, trigger: cint, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let slotval2 = cint(trigger)
  let slotval3 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].edit2(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTreeWidgetselectionCommand*(self: gen_qtreewidget_types.QTreeWidget, index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint =
  cint(fcQTreeWidget_virtualbase_selectionCommand(self.h, index.h, event.h))

proc miqt_exec_callback_cQTreeWidget_selectionCommand(vtbl: pointer, self: pointer, index: pointer, event: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].selectionCommand(self, slotval1, slotval2)
  cint(virtualReturn)

proc QTreeWidgetstartDrag*(self: gen_qtreewidget_types.QTreeWidget, supportedActions: cint): void =
  fcQTreeWidget_virtualbase_startDrag(self.h, cint(supportedActions))

proc miqt_exec_callback_cQTreeWidget_startDrag(vtbl: pointer, self: pointer, supportedActions: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = cint(supportedActions)
  vtbl[].startDrag(self, slotval1)

proc QTreeWidgetviewOptions*(self: gen_qtreewidget_types.QTreeWidget, ): gen_qstyleoption_types.QStyleOptionViewItem =
  gen_qstyleoption_types.QStyleOptionViewItem(h: fcQTreeWidget_virtualbase_viewOptions(self.h))

proc miqt_exec_callback_cQTreeWidget_viewOptions(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  var virtualReturn = vtbl[].viewOptions(self)
  virtualReturn.h

proc QTreeWidgetfocusNextPrevChild*(self: gen_qtreewidget_types.QTreeWidget, next: bool): bool =
  fcQTreeWidget_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQTreeWidget_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QTreeWidgetdragEnterEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QDragEnterEvent): void =
  fcQTreeWidget_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeWidget_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QTreeWidgetdragLeaveEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQTreeWidget_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeWidget_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QTreeWidgetfocusInEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQTreeWidget_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeWidget_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QTreeWidgetfocusOutEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQTreeWidget_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeWidget_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QTreeWidgetresizeEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QResizeEvent): void =
  fcQTreeWidget_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeWidget_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)
  vtbl[].resizeEvent(self, slotval1)

proc QTreeWidgetinputMethodEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QInputMethodEvent): void =
  fcQTreeWidget_virtualbase_inputMethodEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeWidget_inputMethodEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)
  vtbl[].inputMethodEvent(self, slotval1)

proc QTreeWidgeteventFilter*(self: gen_qtreewidget_types.QTreeWidget, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQTreeWidget_virtualbase_eventFilter(self.h, objectVal.h, event.h)

proc miqt_exec_callback_cQTreeWidget_eventFilter(vtbl: pointer, self: pointer, objectVal: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qobject_types.QObject(h: objectVal)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QTreeWidgetminimumSizeHint*(self: gen_qtreewidget_types.QTreeWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTreeWidget_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQTreeWidget_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QTreeWidgetsizeHint*(self: gen_qtreewidget_types.QTreeWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTreeWidget_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQTreeWidget_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QTreeWidgetsetupViewport*(self: gen_qtreewidget_types.QTreeWidget, viewport: gen_qwidget_types.QWidget): void =
  fcQTreeWidget_virtualbase_setupViewport(self.h, viewport.h)

proc miqt_exec_callback_cQTreeWidget_setupViewport(vtbl: pointer, self: pointer, viewport: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: viewport)
  vtbl[].setupViewport(self, slotval1)

proc QTreeWidgetwheelEvent*(self: gen_qtreewidget_types.QTreeWidget, param1: gen_qevent_types.QWheelEvent): void =
  fcQTreeWidget_virtualbase_wheelEvent(self.h, param1.h)

proc miqt_exec_callback_cQTreeWidget_wheelEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1)
  vtbl[].wheelEvent(self, slotval1)

proc QTreeWidgetcontextMenuEvent*(self: gen_qtreewidget_types.QTreeWidget, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQTreeWidget_virtualbase_contextMenuEvent(self.h, param1.h)

proc miqt_exec_callback_cQTreeWidget_contextMenuEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)
  vtbl[].contextMenuEvent(self, slotval1)

proc QTreeWidgetchangeEvent*(self: gen_qtreewidget_types.QTreeWidget, param1: gen_qcoreevent_types.QEvent): void =
  fcQTreeWidget_virtualbase_changeEvent(self.h, param1.h)

proc miqt_exec_callback_cQTreeWidget_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  vtbl[].changeEvent(self, slotval1)

proc QTreeWidgetdevType*(self: gen_qtreewidget_types.QTreeWidget, ): cint =
  fcQTreeWidget_virtualbase_devType(self.h)

proc miqt_exec_callback_cQTreeWidget_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QTreeWidgetsetVisible*(self: gen_qtreewidget_types.QTreeWidget, visible: bool): void =
  fcQTreeWidget_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQTreeWidget_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QTreeWidgetheightForWidth*(self: gen_qtreewidget_types.QTreeWidget, param1: cint): cint =
  fcQTreeWidget_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQTreeWidget_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QTreeWidgethasHeightForWidth*(self: gen_qtreewidget_types.QTreeWidget, ): bool =
  fcQTreeWidget_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQTreeWidget_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QTreeWidgetpaintEngine*(self: gen_qtreewidget_types.QTreeWidget, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQTreeWidget_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQTreeWidget_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QTreeWidgetkeyReleaseEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQTreeWidget_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeWidget_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QTreeWidgetenterEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQTreeWidget_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeWidget_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QTreeWidgetleaveEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQTreeWidget_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeWidget_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QTreeWidgetmoveEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QMoveEvent): void =
  fcQTreeWidget_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeWidget_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QTreeWidgetcloseEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QCloseEvent): void =
  fcQTreeWidget_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeWidget_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QTreeWidgettabletEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QTabletEvent): void =
  fcQTreeWidget_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeWidget_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QTreeWidgetactionEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QActionEvent): void =
  fcQTreeWidget_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeWidget_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QTreeWidgetshowEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QShowEvent): void =
  fcQTreeWidget_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeWidget_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  vtbl[].showEvent(self, slotval1)

proc QTreeWidgethideEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QHideEvent): void =
  fcQTreeWidget_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeWidget_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QTreeWidgetnativeEvent*(self: gen_qtreewidget_types.QTreeWidget, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fcQTreeWidget_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQTreeWidget_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTreeWidgetmetric*(self: gen_qtreewidget_types.QTreeWidget, param1: cint): cint =
  fcQTreeWidget_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQTreeWidget_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QTreeWidgetinitPainter*(self: gen_qtreewidget_types.QTreeWidget, painter: gen_qpainter_types.QPainter): void =
  fcQTreeWidget_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQTreeWidget_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QTreeWidgetredirected*(self: gen_qtreewidget_types.QTreeWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQTreeWidget_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQTreeWidget_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QTreeWidgetsharedPainter*(self: gen_qtreewidget_types.QTreeWidget, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQTreeWidget_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQTreeWidget_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QTreeWidgetchildEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qcoreevent_types.QChildEvent): void =
  fcQTreeWidget_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeWidget_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QTreeWidgetcustomEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQTreeWidget_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeWidget_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QTreeWidgetconnectNotify*(self: gen_qtreewidget_types.QTreeWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTreeWidget_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQTreeWidget_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QTreeWidgetdisconnectNotify*(self: gen_qtreewidget_types.QTreeWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTreeWidget_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQTreeWidget_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeWidgetVTable](vtbl)
  let self = QTreeWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc items*(self: gen_qtreewidget_types.QTreeWidget, data: gen_qmimedata_types.QMimeData): seq[gen_qtreewidget_types.QTreeWidgetItem] =
  var v_ma = fcQTreeWidget_protectedbase_items(self.h, data.h)
  var vx_ret = newSeq[gen_qtreewidget_types.QTreeWidgetItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qtreewidget_types.QTreeWidgetItem(h: v_outCast[i])
  vx_ret

proc indexFromItem*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTreeWidget_protectedbase_indexFromItem(self.h, item.h))

proc indexFromItem*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTreeWidget_protectedbase_indexFromItemWithItem(self.h, item.h))

proc itemFromIndex*(self: gen_qtreewidget_types.QTreeWidget, index: gen_qabstractitemmodel_types.QModelIndex): gen_qtreewidget_types.QTreeWidgetItem =
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidget_protectedbase_itemFromIndex(self.h, index.h))

proc indexFromItem*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem, column: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTreeWidget_protectedbase_indexFromItem2(self.h, item.h, column))

proc indexFromItem*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem, column: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTreeWidget_protectedbase_indexFromItem22(self.h, item.h, column))

proc columnResized*(self: gen_qtreewidget_types.QTreeWidget, column: cint, oldSize: cint, newSize: cint): void =
  fcQTreeWidget_protectedbase_columnResized(self.h, column, oldSize, newSize)

proc columnCountChanged*(self: gen_qtreewidget_types.QTreeWidget, oldCount: cint, newCount: cint): void =
  fcQTreeWidget_protectedbase_columnCountChanged(self.h, oldCount, newCount)

proc columnMoved*(self: gen_qtreewidget_types.QTreeWidget, ): void =
  fcQTreeWidget_protectedbase_columnMoved(self.h)

proc reexpand*(self: gen_qtreewidget_types.QTreeWidget, ): void =
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

proc horizontalStepsPerItem*(self: gen_qtreewidget_types.QTreeWidget, ): cint =
  fcQTreeWidget_protectedbase_horizontalStepsPerItem(self.h)

proc setVerticalStepsPerItem*(self: gen_qtreewidget_types.QTreeWidget, steps: cint): void =
  fcQTreeWidget_protectedbase_setVerticalStepsPerItem(self.h, steps)

proc verticalStepsPerItem*(self: gen_qtreewidget_types.QTreeWidget, ): cint =
  fcQTreeWidget_protectedbase_verticalStepsPerItem(self.h)

proc state*(self: gen_qtreewidget_types.QTreeWidget, ): cint =
  cint(fcQTreeWidget_protectedbase_state(self.h))

proc setState*(self: gen_qtreewidget_types.QTreeWidget, state: cint): void =
  fcQTreeWidget_protectedbase_setState(self.h, cint(state))

proc scheduleDelayedItemsLayout*(self: gen_qtreewidget_types.QTreeWidget, ): void =
  fcQTreeWidget_protectedbase_scheduleDelayedItemsLayout(self.h)

proc executeDelayedItemsLayout*(self: gen_qtreewidget_types.QTreeWidget, ): void =
  fcQTreeWidget_protectedbase_executeDelayedItemsLayout(self.h)

proc setDirtyRegion*(self: gen_qtreewidget_types.QTreeWidget, region: gen_qregion_types.QRegion): void =
  fcQTreeWidget_protectedbase_setDirtyRegion(self.h, region.h)

proc scrollDirtyRegion*(self: gen_qtreewidget_types.QTreeWidget, dx: cint, dy: cint): void =
  fcQTreeWidget_protectedbase_scrollDirtyRegion(self.h, dx, dy)

proc dirtyRegionOffset*(self: gen_qtreewidget_types.QTreeWidget, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQTreeWidget_protectedbase_dirtyRegionOffset(self.h))

proc startAutoScroll*(self: gen_qtreewidget_types.QTreeWidget, ): void =
  fcQTreeWidget_protectedbase_startAutoScroll(self.h)

proc stopAutoScroll*(self: gen_qtreewidget_types.QTreeWidget, ): void =
  fcQTreeWidget_protectedbase_stopAutoScroll(self.h)

proc doAutoScroll*(self: gen_qtreewidget_types.QTreeWidget, ): void =
  fcQTreeWidget_protectedbase_doAutoScroll(self.h)

proc dropIndicatorPosition*(self: gen_qtreewidget_types.QTreeWidget, ): cint =
  cint(fcQTreeWidget_protectedbase_dropIndicatorPosition(self.h))

proc setViewportMargins*(self: gen_qtreewidget_types.QTreeWidget, left: cint, top: cint, right: cint, bottom: cint): void =
  fcQTreeWidget_protectedbase_setViewportMargins(self.h, left, top, right, bottom)

proc viewportMargins*(self: gen_qtreewidget_types.QTreeWidget, ): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQTreeWidget_protectedbase_viewportMargins(self.h))

proc drawFrame*(self: gen_qtreewidget_types.QTreeWidget, param1: gen_qpainter_types.QPainter): void =
  fcQTreeWidget_protectedbase_drawFrame(self.h, param1.h)

proc initStyleOption*(self: gen_qtreewidget_types.QTreeWidget, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fcQTreeWidget_protectedbase_initStyleOption(self.h, option.h)

proc updateMicroFocus*(self: gen_qtreewidget_types.QTreeWidget, ): void =
  fcQTreeWidget_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qtreewidget_types.QTreeWidget, ): void =
  fcQTreeWidget_protectedbase_create(self.h)

proc destroy*(self: gen_qtreewidget_types.QTreeWidget, ): void =
  fcQTreeWidget_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qtreewidget_types.QTreeWidget, ): bool =
  fcQTreeWidget_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qtreewidget_types.QTreeWidget, ): bool =
  fcQTreeWidget_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qtreewidget_types.QTreeWidget, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQTreeWidget_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qtreewidget_types.QTreeWidget, ): cint =
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
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTreeWidgetVTable, _: ptr cQTreeWidget) {.cdecl.} =
    let vtbl = cast[ref QTreeWidgetVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQTreeWidget_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQTreeWidget_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQTreeWidget_metacall
  if not isNil(vtbl.setSelectionModel):
    vtbl[].vtbl.setSelectionModel = miqt_exec_callback_cQTreeWidget_setSelectionModel
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQTreeWidget_event
  if not isNil(vtbl.mimeTypes):
    vtbl[].vtbl.mimeTypes = miqt_exec_callback_cQTreeWidget_mimeTypes
  if not isNil(vtbl.mimeData):
    vtbl[].vtbl.mimeData = miqt_exec_callback_cQTreeWidget_mimeData
  if not isNil(vtbl.dropMimeData):
    vtbl[].vtbl.dropMimeData = miqt_exec_callback_cQTreeWidget_dropMimeData
  if not isNil(vtbl.supportedDropActions):
    vtbl[].vtbl.supportedDropActions = miqt_exec_callback_cQTreeWidget_supportedDropActions
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQTreeWidget_dropEvent
  if not isNil(vtbl.setRootIndex):
    vtbl[].vtbl.setRootIndex = miqt_exec_callback_cQTreeWidget_setRootIndex
  if not isNil(vtbl.keyboardSearch):
    vtbl[].vtbl.keyboardSearch = miqt_exec_callback_cQTreeWidget_keyboardSearch
  if not isNil(vtbl.visualRect):
    vtbl[].vtbl.visualRect = miqt_exec_callback_cQTreeWidget_visualRect
  if not isNil(vtbl.scrollTo):
    vtbl[].vtbl.scrollTo = miqt_exec_callback_cQTreeWidget_scrollTo
  if not isNil(vtbl.indexAt):
    vtbl[].vtbl.indexAt = miqt_exec_callback_cQTreeWidget_indexAt
  if not isNil(vtbl.doItemsLayout):
    vtbl[].vtbl.doItemsLayout = miqt_exec_callback_cQTreeWidget_doItemsLayout
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQTreeWidget_reset
  if not isNil(vtbl.dataChanged):
    vtbl[].vtbl.dataChanged = miqt_exec_callback_cQTreeWidget_dataChanged
  if not isNil(vtbl.selectAll):
    vtbl[].vtbl.selectAll = miqt_exec_callback_cQTreeWidget_selectAll
  if not isNil(vtbl.verticalScrollbarValueChanged):
    vtbl[].vtbl.verticalScrollbarValueChanged = miqt_exec_callback_cQTreeWidget_verticalScrollbarValueChanged
  if not isNil(vtbl.scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = miqt_exec_callback_cQTreeWidget_scrollContentsBy
  if not isNil(vtbl.rowsInserted):
    vtbl[].vtbl.rowsInserted = miqt_exec_callback_cQTreeWidget_rowsInserted
  if not isNil(vtbl.rowsAboutToBeRemoved):
    vtbl[].vtbl.rowsAboutToBeRemoved = miqt_exec_callback_cQTreeWidget_rowsAboutToBeRemoved
  if not isNil(vtbl.moveCursor):
    vtbl[].vtbl.moveCursor = miqt_exec_callback_cQTreeWidget_moveCursor
  if not isNil(vtbl.horizontalOffset):
    vtbl[].vtbl.horizontalOffset = miqt_exec_callback_cQTreeWidget_horizontalOffset
  if not isNil(vtbl.verticalOffset):
    vtbl[].vtbl.verticalOffset = miqt_exec_callback_cQTreeWidget_verticalOffset
  if not isNil(vtbl.setSelection):
    vtbl[].vtbl.setSelection = miqt_exec_callback_cQTreeWidget_setSelection
  if not isNil(vtbl.visualRegionForSelection):
    vtbl[].vtbl.visualRegionForSelection = miqt_exec_callback_cQTreeWidget_visualRegionForSelection
  if not isNil(vtbl.selectedIndexes):
    vtbl[].vtbl.selectedIndexes = miqt_exec_callback_cQTreeWidget_selectedIndexes
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQTreeWidget_timerEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQTreeWidget_paintEvent
  if not isNil(vtbl.drawRow):
    vtbl[].vtbl.drawRow = miqt_exec_callback_cQTreeWidget_drawRow
  if not isNil(vtbl.drawBranches):
    vtbl[].vtbl.drawBranches = miqt_exec_callback_cQTreeWidget_drawBranches
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQTreeWidget_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQTreeWidget_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQTreeWidget_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQTreeWidget_mouseMoveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQTreeWidget_keyPressEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQTreeWidget_dragMoveEvent
  if not isNil(vtbl.viewportEvent):
    vtbl[].vtbl.viewportEvent = miqt_exec_callback_cQTreeWidget_viewportEvent
  if not isNil(vtbl.updateGeometries):
    vtbl[].vtbl.updateGeometries = miqt_exec_callback_cQTreeWidget_updateGeometries
  if not isNil(vtbl.viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = miqt_exec_callback_cQTreeWidget_viewportSizeHint
  if not isNil(vtbl.sizeHintForColumn):
    vtbl[].vtbl.sizeHintForColumn = miqt_exec_callback_cQTreeWidget_sizeHintForColumn
  if not isNil(vtbl.horizontalScrollbarAction):
    vtbl[].vtbl.horizontalScrollbarAction = miqt_exec_callback_cQTreeWidget_horizontalScrollbarAction
  if not isNil(vtbl.isIndexHidden):
    vtbl[].vtbl.isIndexHidden = miqt_exec_callback_cQTreeWidget_isIndexHidden
  if not isNil(vtbl.selectionChanged):
    vtbl[].vtbl.selectionChanged = miqt_exec_callback_cQTreeWidget_selectionChanged
  if not isNil(vtbl.currentChanged):
    vtbl[].vtbl.currentChanged = miqt_exec_callback_cQTreeWidget_currentChanged
  if not isNil(vtbl.sizeHintForRow):
    vtbl[].vtbl.sizeHintForRow = miqt_exec_callback_cQTreeWidget_sizeHintForRow
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQTreeWidget_inputMethodQuery
  if not isNil(vtbl.updateEditorData):
    vtbl[].vtbl.updateEditorData = miqt_exec_callback_cQTreeWidget_updateEditorData
  if not isNil(vtbl.updateEditorGeometries):
    vtbl[].vtbl.updateEditorGeometries = miqt_exec_callback_cQTreeWidget_updateEditorGeometries
  if not isNil(vtbl.verticalScrollbarAction):
    vtbl[].vtbl.verticalScrollbarAction = miqt_exec_callback_cQTreeWidget_verticalScrollbarAction
  if not isNil(vtbl.horizontalScrollbarValueChanged):
    vtbl[].vtbl.horizontalScrollbarValueChanged = miqt_exec_callback_cQTreeWidget_horizontalScrollbarValueChanged
  if not isNil(vtbl.closeEditor):
    vtbl[].vtbl.closeEditor = miqt_exec_callback_cQTreeWidget_closeEditor
  if not isNil(vtbl.commitData):
    vtbl[].vtbl.commitData = miqt_exec_callback_cQTreeWidget_commitData
  if not isNil(vtbl.editorDestroyed):
    vtbl[].vtbl.editorDestroyed = miqt_exec_callback_cQTreeWidget_editorDestroyed
  if not isNil(vtbl.edit2):
    vtbl[].vtbl.edit2 = miqt_exec_callback_cQTreeWidget_edit2
  if not isNil(vtbl.selectionCommand):
    vtbl[].vtbl.selectionCommand = miqt_exec_callback_cQTreeWidget_selectionCommand
  if not isNil(vtbl.startDrag):
    vtbl[].vtbl.startDrag = miqt_exec_callback_cQTreeWidget_startDrag
  if not isNil(vtbl.viewOptions):
    vtbl[].vtbl.viewOptions = miqt_exec_callback_cQTreeWidget_viewOptions
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQTreeWidget_focusNextPrevChild
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQTreeWidget_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQTreeWidget_dragLeaveEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQTreeWidget_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQTreeWidget_focusOutEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQTreeWidget_resizeEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQTreeWidget_inputMethodEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQTreeWidget_eventFilter
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQTreeWidget_minimumSizeHint
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQTreeWidget_sizeHint
  if not isNil(vtbl.setupViewport):
    vtbl[].vtbl.setupViewport = miqt_exec_callback_cQTreeWidget_setupViewport
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQTreeWidget_wheelEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQTreeWidget_contextMenuEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQTreeWidget_changeEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQTreeWidget_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQTreeWidget_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQTreeWidget_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQTreeWidget_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQTreeWidget_paintEngine
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQTreeWidget_keyReleaseEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQTreeWidget_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQTreeWidget_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQTreeWidget_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQTreeWidget_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQTreeWidget_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQTreeWidget_actionEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQTreeWidget_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQTreeWidget_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQTreeWidget_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQTreeWidget_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQTreeWidget_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQTreeWidget_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQTreeWidget_sharedPainter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQTreeWidget_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQTreeWidget_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQTreeWidget_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQTreeWidget_disconnectNotify
  gen_qtreewidget_types.QTreeWidget(h: fcQTreeWidget_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qtreewidget_types.QTreeWidget,
    vtbl: ref QTreeWidgetVTable = nil): gen_qtreewidget_types.QTreeWidget =
  let vtbl = if vtbl == nil: new QTreeWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTreeWidgetVTable, _: ptr cQTreeWidget) {.cdecl.} =
    let vtbl = cast[ref QTreeWidgetVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQTreeWidget_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQTreeWidget_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQTreeWidget_metacall
  if not isNil(vtbl.setSelectionModel):
    vtbl[].vtbl.setSelectionModel = miqt_exec_callback_cQTreeWidget_setSelectionModel
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQTreeWidget_event
  if not isNil(vtbl.mimeTypes):
    vtbl[].vtbl.mimeTypes = miqt_exec_callback_cQTreeWidget_mimeTypes
  if not isNil(vtbl.mimeData):
    vtbl[].vtbl.mimeData = miqt_exec_callback_cQTreeWidget_mimeData
  if not isNil(vtbl.dropMimeData):
    vtbl[].vtbl.dropMimeData = miqt_exec_callback_cQTreeWidget_dropMimeData
  if not isNil(vtbl.supportedDropActions):
    vtbl[].vtbl.supportedDropActions = miqt_exec_callback_cQTreeWidget_supportedDropActions
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQTreeWidget_dropEvent
  if not isNil(vtbl.setRootIndex):
    vtbl[].vtbl.setRootIndex = miqt_exec_callback_cQTreeWidget_setRootIndex
  if not isNil(vtbl.keyboardSearch):
    vtbl[].vtbl.keyboardSearch = miqt_exec_callback_cQTreeWidget_keyboardSearch
  if not isNil(vtbl.visualRect):
    vtbl[].vtbl.visualRect = miqt_exec_callback_cQTreeWidget_visualRect
  if not isNil(vtbl.scrollTo):
    vtbl[].vtbl.scrollTo = miqt_exec_callback_cQTreeWidget_scrollTo
  if not isNil(vtbl.indexAt):
    vtbl[].vtbl.indexAt = miqt_exec_callback_cQTreeWidget_indexAt
  if not isNil(vtbl.doItemsLayout):
    vtbl[].vtbl.doItemsLayout = miqt_exec_callback_cQTreeWidget_doItemsLayout
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQTreeWidget_reset
  if not isNil(vtbl.dataChanged):
    vtbl[].vtbl.dataChanged = miqt_exec_callback_cQTreeWidget_dataChanged
  if not isNil(vtbl.selectAll):
    vtbl[].vtbl.selectAll = miqt_exec_callback_cQTreeWidget_selectAll
  if not isNil(vtbl.verticalScrollbarValueChanged):
    vtbl[].vtbl.verticalScrollbarValueChanged = miqt_exec_callback_cQTreeWidget_verticalScrollbarValueChanged
  if not isNil(vtbl.scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = miqt_exec_callback_cQTreeWidget_scrollContentsBy
  if not isNil(vtbl.rowsInserted):
    vtbl[].vtbl.rowsInserted = miqt_exec_callback_cQTreeWidget_rowsInserted
  if not isNil(vtbl.rowsAboutToBeRemoved):
    vtbl[].vtbl.rowsAboutToBeRemoved = miqt_exec_callback_cQTreeWidget_rowsAboutToBeRemoved
  if not isNil(vtbl.moveCursor):
    vtbl[].vtbl.moveCursor = miqt_exec_callback_cQTreeWidget_moveCursor
  if not isNil(vtbl.horizontalOffset):
    vtbl[].vtbl.horizontalOffset = miqt_exec_callback_cQTreeWidget_horizontalOffset
  if not isNil(vtbl.verticalOffset):
    vtbl[].vtbl.verticalOffset = miqt_exec_callback_cQTreeWidget_verticalOffset
  if not isNil(vtbl.setSelection):
    vtbl[].vtbl.setSelection = miqt_exec_callback_cQTreeWidget_setSelection
  if not isNil(vtbl.visualRegionForSelection):
    vtbl[].vtbl.visualRegionForSelection = miqt_exec_callback_cQTreeWidget_visualRegionForSelection
  if not isNil(vtbl.selectedIndexes):
    vtbl[].vtbl.selectedIndexes = miqt_exec_callback_cQTreeWidget_selectedIndexes
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQTreeWidget_timerEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQTreeWidget_paintEvent
  if not isNil(vtbl.drawRow):
    vtbl[].vtbl.drawRow = miqt_exec_callback_cQTreeWidget_drawRow
  if not isNil(vtbl.drawBranches):
    vtbl[].vtbl.drawBranches = miqt_exec_callback_cQTreeWidget_drawBranches
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQTreeWidget_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQTreeWidget_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQTreeWidget_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQTreeWidget_mouseMoveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQTreeWidget_keyPressEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQTreeWidget_dragMoveEvent
  if not isNil(vtbl.viewportEvent):
    vtbl[].vtbl.viewportEvent = miqt_exec_callback_cQTreeWidget_viewportEvent
  if not isNil(vtbl.updateGeometries):
    vtbl[].vtbl.updateGeometries = miqt_exec_callback_cQTreeWidget_updateGeometries
  if not isNil(vtbl.viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = miqt_exec_callback_cQTreeWidget_viewportSizeHint
  if not isNil(vtbl.sizeHintForColumn):
    vtbl[].vtbl.sizeHintForColumn = miqt_exec_callback_cQTreeWidget_sizeHintForColumn
  if not isNil(vtbl.horizontalScrollbarAction):
    vtbl[].vtbl.horizontalScrollbarAction = miqt_exec_callback_cQTreeWidget_horizontalScrollbarAction
  if not isNil(vtbl.isIndexHidden):
    vtbl[].vtbl.isIndexHidden = miqt_exec_callback_cQTreeWidget_isIndexHidden
  if not isNil(vtbl.selectionChanged):
    vtbl[].vtbl.selectionChanged = miqt_exec_callback_cQTreeWidget_selectionChanged
  if not isNil(vtbl.currentChanged):
    vtbl[].vtbl.currentChanged = miqt_exec_callback_cQTreeWidget_currentChanged
  if not isNil(vtbl.sizeHintForRow):
    vtbl[].vtbl.sizeHintForRow = miqt_exec_callback_cQTreeWidget_sizeHintForRow
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQTreeWidget_inputMethodQuery
  if not isNil(vtbl.updateEditorData):
    vtbl[].vtbl.updateEditorData = miqt_exec_callback_cQTreeWidget_updateEditorData
  if not isNil(vtbl.updateEditorGeometries):
    vtbl[].vtbl.updateEditorGeometries = miqt_exec_callback_cQTreeWidget_updateEditorGeometries
  if not isNil(vtbl.verticalScrollbarAction):
    vtbl[].vtbl.verticalScrollbarAction = miqt_exec_callback_cQTreeWidget_verticalScrollbarAction
  if not isNil(vtbl.horizontalScrollbarValueChanged):
    vtbl[].vtbl.horizontalScrollbarValueChanged = miqt_exec_callback_cQTreeWidget_horizontalScrollbarValueChanged
  if not isNil(vtbl.closeEditor):
    vtbl[].vtbl.closeEditor = miqt_exec_callback_cQTreeWidget_closeEditor
  if not isNil(vtbl.commitData):
    vtbl[].vtbl.commitData = miqt_exec_callback_cQTreeWidget_commitData
  if not isNil(vtbl.editorDestroyed):
    vtbl[].vtbl.editorDestroyed = miqt_exec_callback_cQTreeWidget_editorDestroyed
  if not isNil(vtbl.edit2):
    vtbl[].vtbl.edit2 = miqt_exec_callback_cQTreeWidget_edit2
  if not isNil(vtbl.selectionCommand):
    vtbl[].vtbl.selectionCommand = miqt_exec_callback_cQTreeWidget_selectionCommand
  if not isNil(vtbl.startDrag):
    vtbl[].vtbl.startDrag = miqt_exec_callback_cQTreeWidget_startDrag
  if not isNil(vtbl.viewOptions):
    vtbl[].vtbl.viewOptions = miqt_exec_callback_cQTreeWidget_viewOptions
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQTreeWidget_focusNextPrevChild
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQTreeWidget_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQTreeWidget_dragLeaveEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQTreeWidget_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQTreeWidget_focusOutEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQTreeWidget_resizeEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQTreeWidget_inputMethodEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQTreeWidget_eventFilter
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQTreeWidget_minimumSizeHint
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQTreeWidget_sizeHint
  if not isNil(vtbl.setupViewport):
    vtbl[].vtbl.setupViewport = miqt_exec_callback_cQTreeWidget_setupViewport
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQTreeWidget_wheelEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQTreeWidget_contextMenuEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQTreeWidget_changeEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQTreeWidget_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQTreeWidget_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQTreeWidget_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQTreeWidget_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQTreeWidget_paintEngine
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQTreeWidget_keyReleaseEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQTreeWidget_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQTreeWidget_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQTreeWidget_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQTreeWidget_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQTreeWidget_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQTreeWidget_actionEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQTreeWidget_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQTreeWidget_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQTreeWidget_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQTreeWidget_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQTreeWidget_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQTreeWidget_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQTreeWidget_sharedPainter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQTreeWidget_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQTreeWidget_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQTreeWidget_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQTreeWidget_disconnectNotify
  gen_qtreewidget_types.QTreeWidget(h: fcQTreeWidget_new2(addr(vtbl[]), ))

proc staticMetaObject*(_: type gen_qtreewidget_types.QTreeWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTreeWidget_staticMetaObject())
proc delete*(self: gen_qtreewidget_types.QTreeWidget) =
  fcQTreeWidget_delete(self.h)
