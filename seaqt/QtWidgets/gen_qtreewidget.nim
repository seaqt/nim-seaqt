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
  ./gen_qtreeview,
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
  gen_qtreeview,
  gen_qwidget_types

type cQTreeWidgetItem*{.exportc: "QTreeWidgetItem", incompleteStruct.} = object
type cQTreeWidget*{.exportc: "QTreeWidget", incompleteStruct.} = object

proc fcQTreeWidgetItem_new(): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new".}
proc fcQTreeWidgetItem_new2(strings: struct_miqt_array): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new2".}
proc fcQTreeWidgetItem_new3(treeview: pointer): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new3".}
proc fcQTreeWidgetItem_new4(treeview: pointer, strings: struct_miqt_array): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new4".}
proc fcQTreeWidgetItem_new5(treeview: pointer, after: pointer): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new5".}
proc fcQTreeWidgetItem_new6(parent: pointer): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new6".}
proc fcQTreeWidgetItem_new7(parent: pointer, strings: struct_miqt_array): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new7".}
proc fcQTreeWidgetItem_new8(parent: pointer, after: pointer): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new8".}
proc fcQTreeWidgetItem_new9(other: pointer): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new9".}
proc fcQTreeWidgetItem_new10(typeVal: cint): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new10".}
proc fcQTreeWidgetItem_new11(strings: struct_miqt_array, typeVal: cint): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new11".}
proc fcQTreeWidgetItem_new12(treeview: pointer, typeVal: cint): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new12".}
proc fcQTreeWidgetItem_new13(treeview: pointer, strings: struct_miqt_array, typeVal: cint): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new13".}
proc fcQTreeWidgetItem_new14(treeview: pointer, after: pointer, typeVal: cint): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new14".}
proc fcQTreeWidgetItem_new15(parent: pointer, typeVal: cint): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new15".}
proc fcQTreeWidgetItem_new16(parent: pointer, strings: struct_miqt_array, typeVal: cint): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new16".}
proc fcQTreeWidgetItem_new17(parent: pointer, after: pointer, typeVal: cint): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new17".}
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
proc fcQTreeWidgetItem_setTextAlignment2(self: pointer, column: cint, alignment: cint): void {.importc: "QTreeWidgetItem_setTextAlignment2".}
proc fcQTreeWidgetItem_setTextAlignment3(self: pointer, column: cint, alignment: cint): void {.importc: "QTreeWidgetItem_setTextAlignment3".}
proc fcQTreeWidgetItem_background(self: pointer, column: cint): pointer {.importc: "QTreeWidgetItem_background".}
proc fcQTreeWidgetItem_setBackground(self: pointer, column: cint, brush: pointer): void {.importc: "QTreeWidgetItem_setBackground".}
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
proc fQTreeWidgetItem_virtualbase_clone(self: pointer, ): pointer{.importc: "QTreeWidgetItem_virtualbase_clone".}
proc fcQTreeWidgetItem_override_virtual_clone(self: pointer, slot: int) {.importc: "QTreeWidgetItem_override_virtual_clone".}
proc fQTreeWidgetItem_virtualbase_data(self: pointer, column: cint, role: cint): pointer{.importc: "QTreeWidgetItem_virtualbase_data".}
proc fcQTreeWidgetItem_override_virtual_data(self: pointer, slot: int) {.importc: "QTreeWidgetItem_override_virtual_data".}
proc fQTreeWidgetItem_virtualbase_setData(self: pointer, column: cint, role: cint, value: pointer): void{.importc: "QTreeWidgetItem_virtualbase_setData".}
proc fcQTreeWidgetItem_override_virtual_setData(self: pointer, slot: int) {.importc: "QTreeWidgetItem_override_virtual_setData".}
proc fQTreeWidgetItem_virtualbase_operatorLesser(self: pointer, other: pointer): bool{.importc: "QTreeWidgetItem_virtualbase_operatorLesser".}
proc fcQTreeWidgetItem_override_virtual_operatorLesser(self: pointer, slot: int) {.importc: "QTreeWidgetItem_override_virtual_operatorLesser".}
proc fQTreeWidgetItem_virtualbase_read(self: pointer, inVal: pointer): void{.importc: "QTreeWidgetItem_virtualbase_read".}
proc fcQTreeWidgetItem_override_virtual_read(self: pointer, slot: int) {.importc: "QTreeWidgetItem_override_virtual_read".}
proc fQTreeWidgetItem_virtualbase_write(self: pointer, outVal: pointer): void{.importc: "QTreeWidgetItem_virtualbase_write".}
proc fcQTreeWidgetItem_override_virtual_write(self: pointer, slot: int) {.importc: "QTreeWidgetItem_override_virtual_write".}
proc fcQTreeWidgetItem_delete(self: pointer) {.importc: "QTreeWidgetItem_delete".}
proc fcQTreeWidget_new(parent: pointer): ptr cQTreeWidget {.importc: "QTreeWidget_new".}
proc fcQTreeWidget_new2(): ptr cQTreeWidget {.importc: "QTreeWidget_new2".}
proc fcQTreeWidget_metaObject(self: pointer, ): pointer {.importc: "QTreeWidget_metaObject".}
proc fcQTreeWidget_metacast(self: pointer, param1: cstring): pointer {.importc: "QTreeWidget_metacast".}
proc fcQTreeWidget_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTreeWidget_metacall".}
proc fcQTreeWidget_tr(s: cstring): struct_miqt_string {.importc: "QTreeWidget_tr".}
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
proc fcQTreeWidget_selectedItems(self: pointer, ): struct_miqt_array {.importc: "QTreeWidget_selectedItems".}
proc fcQTreeWidget_findItems(self: pointer, text: struct_miqt_string, flags: cint): struct_miqt_array {.importc: "QTreeWidget_findItems".}
proc fcQTreeWidget_itemAbove(self: pointer, item: pointer): pointer {.importc: "QTreeWidget_itemAbove".}
proc fcQTreeWidget_itemBelow(self: pointer, item: pointer): pointer {.importc: "QTreeWidget_itemBelow".}
proc fcQTreeWidget_indexFromItem(self: pointer, item: pointer): pointer {.importc: "QTreeWidget_indexFromItem".}
proc fcQTreeWidget_itemFromIndex(self: pointer, index: pointer): pointer {.importc: "QTreeWidget_itemFromIndex".}
proc fcQTreeWidget_setSelectionModel(self: pointer, selectionModel: pointer): void {.importc: "QTreeWidget_setSelectionModel".}
proc fcQTreeWidget_scrollToItem(self: pointer, item: pointer): void {.importc: "QTreeWidget_scrollToItem".}
proc fcQTreeWidget_expandItem(self: pointer, item: pointer): void {.importc: "QTreeWidget_expandItem".}
proc fcQTreeWidget_collapseItem(self: pointer, item: pointer): void {.importc: "QTreeWidget_collapseItem".}
proc fcQTreeWidget_clear(self: pointer, ): void {.importc: "QTreeWidget_clear".}
proc fcQTreeWidget_itemPressed(self: pointer, item: pointer, column: cint): void {.importc: "QTreeWidget_itemPressed".}
proc fcQTreeWidget_connect_itemPressed(self: pointer, slot: int) {.importc: "QTreeWidget_connect_itemPressed".}
proc fcQTreeWidget_itemClicked(self: pointer, item: pointer, column: cint): void {.importc: "QTreeWidget_itemClicked".}
proc fcQTreeWidget_connect_itemClicked(self: pointer, slot: int) {.importc: "QTreeWidget_connect_itemClicked".}
proc fcQTreeWidget_itemDoubleClicked(self: pointer, item: pointer, column: cint): void {.importc: "QTreeWidget_itemDoubleClicked".}
proc fcQTreeWidget_connect_itemDoubleClicked(self: pointer, slot: int) {.importc: "QTreeWidget_connect_itemDoubleClicked".}
proc fcQTreeWidget_itemActivated(self: pointer, item: pointer, column: cint): void {.importc: "QTreeWidget_itemActivated".}
proc fcQTreeWidget_connect_itemActivated(self: pointer, slot: int) {.importc: "QTreeWidget_connect_itemActivated".}
proc fcQTreeWidget_itemEntered(self: pointer, item: pointer, column: cint): void {.importc: "QTreeWidget_itemEntered".}
proc fcQTreeWidget_connect_itemEntered(self: pointer, slot: int) {.importc: "QTreeWidget_connect_itemEntered".}
proc fcQTreeWidget_itemChanged(self: pointer, item: pointer, column: cint): void {.importc: "QTreeWidget_itemChanged".}
proc fcQTreeWidget_connect_itemChanged(self: pointer, slot: int) {.importc: "QTreeWidget_connect_itemChanged".}
proc fcQTreeWidget_itemExpanded(self: pointer, item: pointer): void {.importc: "QTreeWidget_itemExpanded".}
proc fcQTreeWidget_connect_itemExpanded(self: pointer, slot: int) {.importc: "QTreeWidget_connect_itemExpanded".}
proc fcQTreeWidget_itemCollapsed(self: pointer, item: pointer): void {.importc: "QTreeWidget_itemCollapsed".}
proc fcQTreeWidget_connect_itemCollapsed(self: pointer, slot: int) {.importc: "QTreeWidget_connect_itemCollapsed".}
proc fcQTreeWidget_currentItemChanged(self: pointer, current: pointer, previous: pointer): void {.importc: "QTreeWidget_currentItemChanged".}
proc fcQTreeWidget_connect_currentItemChanged(self: pointer, slot: int) {.importc: "QTreeWidget_connect_currentItemChanged".}
proc fcQTreeWidget_itemSelectionChanged(self: pointer, ): void {.importc: "QTreeWidget_itemSelectionChanged".}
proc fcQTreeWidget_connect_itemSelectionChanged(self: pointer, slot: int) {.importc: "QTreeWidget_connect_itemSelectionChanged".}
proc fcQTreeWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTreeWidget_tr2".}
proc fcQTreeWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTreeWidget_tr3".}
proc fcQTreeWidget_editItem2(self: pointer, item: pointer, column: cint): void {.importc: "QTreeWidget_editItem2".}
proc fcQTreeWidget_openPersistentEditor2(self: pointer, item: pointer, column: cint): void {.importc: "QTreeWidget_openPersistentEditor2".}
proc fcQTreeWidget_closePersistentEditor2(self: pointer, item: pointer, column: cint): void {.importc: "QTreeWidget_closePersistentEditor2".}
proc fcQTreeWidget_isPersistentEditorOpen2(self: pointer, item: pointer, column: cint): bool {.importc: "QTreeWidget_isPersistentEditorOpen2".}
proc fcQTreeWidget_findItems3(self: pointer, text: struct_miqt_string, flags: cint, column: cint): struct_miqt_array {.importc: "QTreeWidget_findItems3".}
proc fcQTreeWidget_indexFromItem2(self: pointer, item: pointer, column: cint): pointer {.importc: "QTreeWidget_indexFromItem2".}
proc fcQTreeWidget_scrollToItem2(self: pointer, item: pointer, hint: cint): void {.importc: "QTreeWidget_scrollToItem2".}
proc fQTreeWidget_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QTreeWidget_virtualbase_metaObject".}
proc fcQTreeWidget_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_metaObject".}
proc fQTreeWidget_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QTreeWidget_virtualbase_metacast".}
proc fcQTreeWidget_override_virtual_metacast(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_metacast".}
proc fQTreeWidget_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QTreeWidget_virtualbase_metacall".}
proc fcQTreeWidget_override_virtual_metacall(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_metacall".}
proc fQTreeWidget_virtualbase_setSelectionModel(self: pointer, selectionModel: pointer): void{.importc: "QTreeWidget_virtualbase_setSelectionModel".}
proc fcQTreeWidget_override_virtual_setSelectionModel(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_setSelectionModel".}
proc fQTreeWidget_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QTreeWidget_virtualbase_event".}
proc fcQTreeWidget_override_virtual_event(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_event".}
proc fQTreeWidget_virtualbase_mimeTypes(self: pointer, ): struct_miqt_array{.importc: "QTreeWidget_virtualbase_mimeTypes".}
proc fcQTreeWidget_override_virtual_mimeTypes(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_mimeTypes".}
proc fQTreeWidget_virtualbase_mimeData(self: pointer, items: struct_miqt_array): pointer{.importc: "QTreeWidget_virtualbase_mimeData".}
proc fcQTreeWidget_override_virtual_mimeData(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_mimeData".}
proc fQTreeWidget_virtualbase_dropMimeData(self: pointer, parent: pointer, index: cint, data: pointer, action: cint): bool{.importc: "QTreeWidget_virtualbase_dropMimeData".}
proc fcQTreeWidget_override_virtual_dropMimeData(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_dropMimeData".}
proc fQTreeWidget_virtualbase_supportedDropActions(self: pointer, ): cint{.importc: "QTreeWidget_virtualbase_supportedDropActions".}
proc fcQTreeWidget_override_virtual_supportedDropActions(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_supportedDropActions".}
proc fQTreeWidget_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_dropEvent".}
proc fcQTreeWidget_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_dropEvent".}
proc fQTreeWidget_virtualbase_setRootIndex(self: pointer, index: pointer): void{.importc: "QTreeWidget_virtualbase_setRootIndex".}
proc fcQTreeWidget_override_virtual_setRootIndex(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_setRootIndex".}
proc fQTreeWidget_virtualbase_keyboardSearch(self: pointer, search: struct_miqt_string): void{.importc: "QTreeWidget_virtualbase_keyboardSearch".}
proc fcQTreeWidget_override_virtual_keyboardSearch(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_keyboardSearch".}
proc fQTreeWidget_virtualbase_visualRect(self: pointer, index: pointer): pointer{.importc: "QTreeWidget_virtualbase_visualRect".}
proc fcQTreeWidget_override_virtual_visualRect(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_visualRect".}
proc fQTreeWidget_virtualbase_scrollTo(self: pointer, index: pointer, hint: cint): void{.importc: "QTreeWidget_virtualbase_scrollTo".}
proc fcQTreeWidget_override_virtual_scrollTo(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_scrollTo".}
proc fQTreeWidget_virtualbase_indexAt(self: pointer, p: pointer): pointer{.importc: "QTreeWidget_virtualbase_indexAt".}
proc fcQTreeWidget_override_virtual_indexAt(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_indexAt".}
proc fQTreeWidget_virtualbase_doItemsLayout(self: pointer, ): void{.importc: "QTreeWidget_virtualbase_doItemsLayout".}
proc fcQTreeWidget_override_virtual_doItemsLayout(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_doItemsLayout".}
proc fQTreeWidget_virtualbase_reset(self: pointer, ): void{.importc: "QTreeWidget_virtualbase_reset".}
proc fcQTreeWidget_override_virtual_reset(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_reset".}
proc fQTreeWidget_virtualbase_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void{.importc: "QTreeWidget_virtualbase_dataChanged".}
proc fcQTreeWidget_override_virtual_dataChanged(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_dataChanged".}
proc fQTreeWidget_virtualbase_selectAll(self: pointer, ): void{.importc: "QTreeWidget_virtualbase_selectAll".}
proc fcQTreeWidget_override_virtual_selectAll(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_selectAll".}
proc fQTreeWidget_virtualbase_verticalScrollbarValueChanged(self: pointer, value: cint): void{.importc: "QTreeWidget_virtualbase_verticalScrollbarValueChanged".}
proc fcQTreeWidget_override_virtual_verticalScrollbarValueChanged(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_verticalScrollbarValueChanged".}
proc fQTreeWidget_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void{.importc: "QTreeWidget_virtualbase_scrollContentsBy".}
proc fcQTreeWidget_override_virtual_scrollContentsBy(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_scrollContentsBy".}
proc fQTreeWidget_virtualbase_rowsInserted(self: pointer, parent: pointer, start: cint, endVal: cint): void{.importc: "QTreeWidget_virtualbase_rowsInserted".}
proc fcQTreeWidget_override_virtual_rowsInserted(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_rowsInserted".}
proc fQTreeWidget_virtualbase_rowsAboutToBeRemoved(self: pointer, parent: pointer, start: cint, endVal: cint): void{.importc: "QTreeWidget_virtualbase_rowsAboutToBeRemoved".}
proc fcQTreeWidget_override_virtual_rowsAboutToBeRemoved(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_rowsAboutToBeRemoved".}
proc fQTreeWidget_virtualbase_moveCursor(self: pointer, cursorAction: cint, modifiers: cint): pointer{.importc: "QTreeWidget_virtualbase_moveCursor".}
proc fcQTreeWidget_override_virtual_moveCursor(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_moveCursor".}
proc fQTreeWidget_virtualbase_horizontalOffset(self: pointer, ): cint{.importc: "QTreeWidget_virtualbase_horizontalOffset".}
proc fcQTreeWidget_override_virtual_horizontalOffset(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_horizontalOffset".}
proc fQTreeWidget_virtualbase_verticalOffset(self: pointer, ): cint{.importc: "QTreeWidget_virtualbase_verticalOffset".}
proc fcQTreeWidget_override_virtual_verticalOffset(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_verticalOffset".}
proc fQTreeWidget_virtualbase_setSelection(self: pointer, rect: pointer, command: cint): void{.importc: "QTreeWidget_virtualbase_setSelection".}
proc fcQTreeWidget_override_virtual_setSelection(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_setSelection".}
proc fQTreeWidget_virtualbase_visualRegionForSelection(self: pointer, selection: pointer): pointer{.importc: "QTreeWidget_virtualbase_visualRegionForSelection".}
proc fcQTreeWidget_override_virtual_visualRegionForSelection(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_visualRegionForSelection".}
proc fQTreeWidget_virtualbase_selectedIndexes(self: pointer, ): struct_miqt_array{.importc: "QTreeWidget_virtualbase_selectedIndexes".}
proc fcQTreeWidget_override_virtual_selectedIndexes(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_selectedIndexes".}
proc fQTreeWidget_virtualbase_changeEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_changeEvent".}
proc fcQTreeWidget_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_changeEvent".}
proc fQTreeWidget_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_timerEvent".}
proc fcQTreeWidget_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_timerEvent".}
proc fQTreeWidget_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_paintEvent".}
proc fcQTreeWidget_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_paintEvent".}
proc fQTreeWidget_virtualbase_drawRow(self: pointer, painter: pointer, options: pointer, index: pointer): void{.importc: "QTreeWidget_virtualbase_drawRow".}
proc fcQTreeWidget_override_virtual_drawRow(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_drawRow".}
proc fQTreeWidget_virtualbase_drawBranches(self: pointer, painter: pointer, rect: pointer, index: pointer): void{.importc: "QTreeWidget_virtualbase_drawBranches".}
proc fcQTreeWidget_override_virtual_drawBranches(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_drawBranches".}
proc fQTreeWidget_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_mousePressEvent".}
proc fcQTreeWidget_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_mousePressEvent".}
proc fQTreeWidget_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_mouseReleaseEvent".}
proc fcQTreeWidget_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_mouseReleaseEvent".}
proc fQTreeWidget_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_mouseDoubleClickEvent".}
proc fcQTreeWidget_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_mouseDoubleClickEvent".}
proc fQTreeWidget_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_mouseMoveEvent".}
proc fcQTreeWidget_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_mouseMoveEvent".}
proc fQTreeWidget_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_keyPressEvent".}
proc fcQTreeWidget_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_keyPressEvent".}
proc fQTreeWidget_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_dragMoveEvent".}
proc fcQTreeWidget_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_dragMoveEvent".}
proc fQTreeWidget_virtualbase_viewportEvent(self: pointer, event: pointer): bool{.importc: "QTreeWidget_virtualbase_viewportEvent".}
proc fcQTreeWidget_override_virtual_viewportEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_viewportEvent".}
proc fQTreeWidget_virtualbase_updateGeometries(self: pointer, ): void{.importc: "QTreeWidget_virtualbase_updateGeometries".}
proc fcQTreeWidget_override_virtual_updateGeometries(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_updateGeometries".}
proc fQTreeWidget_virtualbase_viewportSizeHint(self: pointer, ): pointer{.importc: "QTreeWidget_virtualbase_viewportSizeHint".}
proc fcQTreeWidget_override_virtual_viewportSizeHint(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_viewportSizeHint".}
proc fQTreeWidget_virtualbase_sizeHintForColumn(self: pointer, column: cint): cint{.importc: "QTreeWidget_virtualbase_sizeHintForColumn".}
proc fcQTreeWidget_override_virtual_sizeHintForColumn(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_sizeHintForColumn".}
proc fQTreeWidget_virtualbase_horizontalScrollbarAction(self: pointer, action: cint): void{.importc: "QTreeWidget_virtualbase_horizontalScrollbarAction".}
proc fcQTreeWidget_override_virtual_horizontalScrollbarAction(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_horizontalScrollbarAction".}
proc fQTreeWidget_virtualbase_isIndexHidden(self: pointer, index: pointer): bool{.importc: "QTreeWidget_virtualbase_isIndexHidden".}
proc fcQTreeWidget_override_virtual_isIndexHidden(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_isIndexHidden".}
proc fQTreeWidget_virtualbase_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void{.importc: "QTreeWidget_virtualbase_selectionChanged".}
proc fcQTreeWidget_override_virtual_selectionChanged(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_selectionChanged".}
proc fQTreeWidget_virtualbase_currentChanged(self: pointer, current: pointer, previous: pointer): void{.importc: "QTreeWidget_virtualbase_currentChanged".}
proc fcQTreeWidget_override_virtual_currentChanged(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_currentChanged".}
proc fQTreeWidget_virtualbase_sizeHintForRow(self: pointer, row: cint): cint{.importc: "QTreeWidget_virtualbase_sizeHintForRow".}
proc fcQTreeWidget_override_virtual_sizeHintForRow(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_sizeHintForRow".}
proc fQTreeWidget_virtualbase_itemDelegateForIndex(self: pointer, index: pointer): pointer{.importc: "QTreeWidget_virtualbase_itemDelegateForIndex".}
proc fcQTreeWidget_override_virtual_itemDelegateForIndex(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_itemDelegateForIndex".}
proc fQTreeWidget_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QTreeWidget_virtualbase_inputMethodQuery".}
proc fcQTreeWidget_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_inputMethodQuery".}
proc fQTreeWidget_virtualbase_updateEditorData(self: pointer, ): void{.importc: "QTreeWidget_virtualbase_updateEditorData".}
proc fcQTreeWidget_override_virtual_updateEditorData(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_updateEditorData".}
proc fQTreeWidget_virtualbase_updateEditorGeometries(self: pointer, ): void{.importc: "QTreeWidget_virtualbase_updateEditorGeometries".}
proc fcQTreeWidget_override_virtual_updateEditorGeometries(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_updateEditorGeometries".}
proc fQTreeWidget_virtualbase_verticalScrollbarAction(self: pointer, action: cint): void{.importc: "QTreeWidget_virtualbase_verticalScrollbarAction".}
proc fcQTreeWidget_override_virtual_verticalScrollbarAction(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_verticalScrollbarAction".}
proc fQTreeWidget_virtualbase_horizontalScrollbarValueChanged(self: pointer, value: cint): void{.importc: "QTreeWidget_virtualbase_horizontalScrollbarValueChanged".}
proc fcQTreeWidget_override_virtual_horizontalScrollbarValueChanged(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_horizontalScrollbarValueChanged".}
proc fQTreeWidget_virtualbase_closeEditor(self: pointer, editor: pointer, hint: cint): void{.importc: "QTreeWidget_virtualbase_closeEditor".}
proc fcQTreeWidget_override_virtual_closeEditor(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_closeEditor".}
proc fQTreeWidget_virtualbase_commitData(self: pointer, editor: pointer): void{.importc: "QTreeWidget_virtualbase_commitData".}
proc fcQTreeWidget_override_virtual_commitData(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_commitData".}
proc fQTreeWidget_virtualbase_editorDestroyed(self: pointer, editor: pointer): void{.importc: "QTreeWidget_virtualbase_editorDestroyed".}
proc fcQTreeWidget_override_virtual_editorDestroyed(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_editorDestroyed".}
proc fQTreeWidget_virtualbase_edit2(self: pointer, index: pointer, trigger: cint, event: pointer): bool{.importc: "QTreeWidget_virtualbase_edit2".}
proc fcQTreeWidget_override_virtual_edit2(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_edit2".}
proc fQTreeWidget_virtualbase_selectionCommand(self: pointer, index: pointer, event: pointer): cint{.importc: "QTreeWidget_virtualbase_selectionCommand".}
proc fcQTreeWidget_override_virtual_selectionCommand(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_selectionCommand".}
proc fQTreeWidget_virtualbase_startDrag(self: pointer, supportedActions: cint): void{.importc: "QTreeWidget_virtualbase_startDrag".}
proc fcQTreeWidget_override_virtual_startDrag(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_startDrag".}
proc fQTreeWidget_virtualbase_initViewItemOption(self: pointer, option: pointer): void{.importc: "QTreeWidget_virtualbase_initViewItemOption".}
proc fcQTreeWidget_override_virtual_initViewItemOption(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_initViewItemOption".}
proc fQTreeWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QTreeWidget_virtualbase_focusNextPrevChild".}
proc fcQTreeWidget_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_focusNextPrevChild".}
proc fQTreeWidget_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_dragEnterEvent".}
proc fcQTreeWidget_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_dragEnterEvent".}
proc fQTreeWidget_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_dragLeaveEvent".}
proc fcQTreeWidget_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_dragLeaveEvent".}
proc fQTreeWidget_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_focusInEvent".}
proc fcQTreeWidget_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_focusInEvent".}
proc fQTreeWidget_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_focusOutEvent".}
proc fcQTreeWidget_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_focusOutEvent".}
proc fQTreeWidget_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_resizeEvent".}
proc fcQTreeWidget_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_resizeEvent".}
proc fQTreeWidget_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_inputMethodEvent".}
proc fcQTreeWidget_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_inputMethodEvent".}
proc fQTreeWidget_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool{.importc: "QTreeWidget_virtualbase_eventFilter".}
proc fcQTreeWidget_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_eventFilter".}
proc fQTreeWidget_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QTreeWidget_virtualbase_minimumSizeHint".}
proc fcQTreeWidget_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_minimumSizeHint".}
proc fQTreeWidget_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QTreeWidget_virtualbase_sizeHint".}
proc fcQTreeWidget_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_sizeHint".}
proc fQTreeWidget_virtualbase_setupViewport(self: pointer, viewport: pointer): void{.importc: "QTreeWidget_virtualbase_setupViewport".}
proc fcQTreeWidget_override_virtual_setupViewport(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_setupViewport".}
proc fQTreeWidget_virtualbase_wheelEvent(self: pointer, param1: pointer): void{.importc: "QTreeWidget_virtualbase_wheelEvent".}
proc fcQTreeWidget_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_wheelEvent".}
proc fQTreeWidget_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QTreeWidget_virtualbase_contextMenuEvent".}
proc fcQTreeWidget_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_contextMenuEvent".}
proc fQTreeWidget_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QTreeWidget_virtualbase_initStyleOption".}
proc fcQTreeWidget_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_initStyleOption".}
proc fQTreeWidget_virtualbase_devType(self: pointer, ): cint{.importc: "QTreeWidget_virtualbase_devType".}
proc fcQTreeWidget_override_virtual_devType(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_devType".}
proc fQTreeWidget_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QTreeWidget_virtualbase_setVisible".}
proc fcQTreeWidget_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_setVisible".}
proc fQTreeWidget_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QTreeWidget_virtualbase_heightForWidth".}
proc fcQTreeWidget_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_heightForWidth".}
proc fQTreeWidget_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QTreeWidget_virtualbase_hasHeightForWidth".}
proc fcQTreeWidget_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_hasHeightForWidth".}
proc fQTreeWidget_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QTreeWidget_virtualbase_paintEngine".}
proc fcQTreeWidget_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_paintEngine".}
proc fQTreeWidget_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_keyReleaseEvent".}
proc fcQTreeWidget_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_keyReleaseEvent".}
proc fQTreeWidget_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_enterEvent".}
proc fcQTreeWidget_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_enterEvent".}
proc fQTreeWidget_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_leaveEvent".}
proc fcQTreeWidget_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_leaveEvent".}
proc fQTreeWidget_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_moveEvent".}
proc fcQTreeWidget_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_moveEvent".}
proc fQTreeWidget_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_closeEvent".}
proc fcQTreeWidget_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_closeEvent".}
proc fQTreeWidget_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_tabletEvent".}
proc fcQTreeWidget_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_tabletEvent".}
proc fQTreeWidget_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_actionEvent".}
proc fcQTreeWidget_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_actionEvent".}
proc fQTreeWidget_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_showEvent".}
proc fcQTreeWidget_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_showEvent".}
proc fQTreeWidget_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_hideEvent".}
proc fcQTreeWidget_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_hideEvent".}
proc fQTreeWidget_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QTreeWidget_virtualbase_nativeEvent".}
proc fcQTreeWidget_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_nativeEvent".}
proc fQTreeWidget_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QTreeWidget_virtualbase_metric".}
proc fcQTreeWidget_override_virtual_metric(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_metric".}
proc fQTreeWidget_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QTreeWidget_virtualbase_initPainter".}
proc fcQTreeWidget_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_initPainter".}
proc fQTreeWidget_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QTreeWidget_virtualbase_redirected".}
proc fcQTreeWidget_override_virtual_redirected(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_redirected".}
proc fQTreeWidget_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QTreeWidget_virtualbase_sharedPainter".}
proc fcQTreeWidget_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_sharedPainter".}
proc fQTreeWidget_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_childEvent".}
proc fcQTreeWidget_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_childEvent".}
proc fQTreeWidget_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_customEvent".}
proc fcQTreeWidget_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_customEvent".}
proc fQTreeWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QTreeWidget_virtualbase_connectNotify".}
proc fcQTreeWidget_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_connectNotify".}
proc fQTreeWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QTreeWidget_virtualbase_disconnectNotify".}
proc fcQTreeWidget_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_disconnectNotify".}
proc fcQTreeWidget_staticMetaObject(): pointer {.importc: "QTreeWidget_staticMetaObject".}
proc fcQTreeWidget_delete(self: pointer) {.importc: "QTreeWidget_delete".}


func init*(T: type gen_qtreewidget_types.QTreeWidgetItem, h: ptr cQTreeWidgetItem): gen_qtreewidget_types.QTreeWidgetItem =
  T(h: h)
proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem, ): gen_qtreewidget_types.QTreeWidgetItem =
  gen_qtreewidget_types.QTreeWidgetItem.init(fcQTreeWidgetItem_new())

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem, strings: seq[string]): gen_qtreewidget_types.QTreeWidgetItem =
  var strings_CArray = newSeq[struct_miqt_string](len(strings))
  for i in 0..<len(strings):
    strings_CArray[i] = struct_miqt_string(data: strings[i], len: csize_t(len(strings[i])))

  gen_qtreewidget_types.QTreeWidgetItem.init(fcQTreeWidgetItem_new2(struct_miqt_array(len: csize_t(len(strings)), data: if len(strings) == 0: nil else: addr(strings_CArray[0]))))

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem, treeview: gen_qtreewidget_types.QTreeWidget): gen_qtreewidget_types.QTreeWidgetItem =
  gen_qtreewidget_types.QTreeWidgetItem.init(fcQTreeWidgetItem_new3(treeview.h))

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem, treeview: gen_qtreewidget_types.QTreeWidget, strings: seq[string]): gen_qtreewidget_types.QTreeWidgetItem =
  var strings_CArray = newSeq[struct_miqt_string](len(strings))
  for i in 0..<len(strings):
    strings_CArray[i] = struct_miqt_string(data: strings[i], len: csize_t(len(strings[i])))

  gen_qtreewidget_types.QTreeWidgetItem.init(fcQTreeWidgetItem_new4(treeview.h, struct_miqt_array(len: csize_t(len(strings)), data: if len(strings) == 0: nil else: addr(strings_CArray[0]))))

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem, treeview: gen_qtreewidget_types.QTreeWidget, after: gen_qtreewidget_types.QTreeWidgetItem): gen_qtreewidget_types.QTreeWidgetItem =
  gen_qtreewidget_types.QTreeWidgetItem.init(fcQTreeWidgetItem_new5(treeview.h, after.h))

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem, parent: gen_qtreewidget_types.QTreeWidgetItem): gen_qtreewidget_types.QTreeWidgetItem =
  gen_qtreewidget_types.QTreeWidgetItem.init(fcQTreeWidgetItem_new6(parent.h))

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem, parent: gen_qtreewidget_types.QTreeWidgetItem, strings: seq[string]): gen_qtreewidget_types.QTreeWidgetItem =
  var strings_CArray = newSeq[struct_miqt_string](len(strings))
  for i in 0..<len(strings):
    strings_CArray[i] = struct_miqt_string(data: strings[i], len: csize_t(len(strings[i])))

  gen_qtreewidget_types.QTreeWidgetItem.init(fcQTreeWidgetItem_new7(parent.h, struct_miqt_array(len: csize_t(len(strings)), data: if len(strings) == 0: nil else: addr(strings_CArray[0]))))

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem, parent: gen_qtreewidget_types.QTreeWidgetItem, after: gen_qtreewidget_types.QTreeWidgetItem): gen_qtreewidget_types.QTreeWidgetItem =
  gen_qtreewidget_types.QTreeWidgetItem.init(fcQTreeWidgetItem_new8(parent.h, after.h))

proc create2*(T: type gen_qtreewidget_types.QTreeWidgetItem, other: gen_qtreewidget_types.QTreeWidgetItem): gen_qtreewidget_types.QTreeWidgetItem =
  gen_qtreewidget_types.QTreeWidgetItem.init(fcQTreeWidgetItem_new9(other.h))

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem, typeVal: cint): gen_qtreewidget_types.QTreeWidgetItem =
  gen_qtreewidget_types.QTreeWidgetItem.init(fcQTreeWidgetItem_new10(typeVal))

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem, strings: seq[string], typeVal: cint): gen_qtreewidget_types.QTreeWidgetItem =
  var strings_CArray = newSeq[struct_miqt_string](len(strings))
  for i in 0..<len(strings):
    strings_CArray[i] = struct_miqt_string(data: strings[i], len: csize_t(len(strings[i])))

  gen_qtreewidget_types.QTreeWidgetItem.init(fcQTreeWidgetItem_new11(struct_miqt_array(len: csize_t(len(strings)), data: if len(strings) == 0: nil else: addr(strings_CArray[0])), typeVal))

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem, treeview: gen_qtreewidget_types.QTreeWidget, typeVal: cint): gen_qtreewidget_types.QTreeWidgetItem =
  gen_qtreewidget_types.QTreeWidgetItem.init(fcQTreeWidgetItem_new12(treeview.h, typeVal))

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem, treeview: gen_qtreewidget_types.QTreeWidget, strings: seq[string], typeVal: cint): gen_qtreewidget_types.QTreeWidgetItem =
  var strings_CArray = newSeq[struct_miqt_string](len(strings))
  for i in 0..<len(strings):
    strings_CArray[i] = struct_miqt_string(data: strings[i], len: csize_t(len(strings[i])))

  gen_qtreewidget_types.QTreeWidgetItem.init(fcQTreeWidgetItem_new13(treeview.h, struct_miqt_array(len: csize_t(len(strings)), data: if len(strings) == 0: nil else: addr(strings_CArray[0])), typeVal))

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem, treeview: gen_qtreewidget_types.QTreeWidget, after: gen_qtreewidget_types.QTreeWidgetItem, typeVal: cint): gen_qtreewidget_types.QTreeWidgetItem =
  gen_qtreewidget_types.QTreeWidgetItem.init(fcQTreeWidgetItem_new14(treeview.h, after.h, typeVal))

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem, parent: gen_qtreewidget_types.QTreeWidgetItem, typeVal: cint): gen_qtreewidget_types.QTreeWidgetItem =
  gen_qtreewidget_types.QTreeWidgetItem.init(fcQTreeWidgetItem_new15(parent.h, typeVal))

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem, parent: gen_qtreewidget_types.QTreeWidgetItem, strings: seq[string], typeVal: cint): gen_qtreewidget_types.QTreeWidgetItem =
  var strings_CArray = newSeq[struct_miqt_string](len(strings))
  for i in 0..<len(strings):
    strings_CArray[i] = struct_miqt_string(data: strings[i], len: csize_t(len(strings[i])))

  gen_qtreewidget_types.QTreeWidgetItem.init(fcQTreeWidgetItem_new16(parent.h, struct_miqt_array(len: csize_t(len(strings)), data: if len(strings) == 0: nil else: addr(strings_CArray[0])), typeVal))

proc create*(T: type gen_qtreewidget_types.QTreeWidgetItem, parent: gen_qtreewidget_types.QTreeWidgetItem, after: gen_qtreewidget_types.QTreeWidgetItem, typeVal: cint): gen_qtreewidget_types.QTreeWidgetItem =
  gen_qtreewidget_types.QTreeWidgetItem.init(fcQTreeWidgetItem_new17(parent.h, after.h, typeVal))

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

proc setTextAlignment2*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint, alignment: cint): void =
  fcQTreeWidgetItem_setTextAlignment2(self.h, column, cint(alignment))

proc setTextAlignment3*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint, alignment: cint): void =
  fcQTreeWidgetItem_setTextAlignment3(self.h, column, cint(alignment))

proc background*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQTreeWidgetItem_background(self.h, column))

proc setBackground*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint, brush: gen_qbrush_types.QBrush): void =
  fcQTreeWidgetItem_setBackground(self.h, column, brush.h)

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

proc QTreeWidgetItemclone*(self: gen_qtreewidget_types.QTreeWidgetItem, ): gen_qtreewidget_types.QTreeWidgetItem =
  gen_qtreewidget_types.QTreeWidgetItem(h: fQTreeWidgetItem_virtualbase_clone(self.h))

type QTreeWidgetItemcloneProc* = proc(): gen_qtreewidget_types.QTreeWidgetItem
proc onclone*(self: gen_qtreewidget_types.QTreeWidgetItem, slot: QTreeWidgetItemcloneProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetItemcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidgetItem_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidgetItem_clone(self: ptr cQTreeWidgetItem, slot: int): pointer {.exportc: "miqt_exec_callback_QTreeWidgetItem_clone ".} =
  var nimfunc = cast[ptr QTreeWidgetItemcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTreeWidgetItemdata*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQTreeWidgetItem_virtualbase_data(self.h, column, role))

type QTreeWidgetItemdataProc* = proc(column: cint, role: cint): gen_qvariant_types.QVariant
proc ondata*(self: gen_qtreewidget_types.QTreeWidgetItem, slot: QTreeWidgetItemdataProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetItemdataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidgetItem_override_virtual_data(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidgetItem_data(self: ptr cQTreeWidgetItem, slot: int, column: cint, role: cint): pointer {.exportc: "miqt_exec_callback_QTreeWidgetItem_data ".} =
  var nimfunc = cast[ptr QTreeWidgetItemdataProc](cast[pointer](slot))
  let slotval1 = column

  let slotval2 = role


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QTreeWidgetItemsetData*(self: gen_qtreewidget_types.QTreeWidgetItem, column: cint, role: cint, value: gen_qvariant_types.QVariant): void =
  fQTreeWidgetItem_virtualbase_setData(self.h, column, role, value.h)

type QTreeWidgetItemsetDataProc* = proc(column: cint, role: cint, value: gen_qvariant_types.QVariant): void
proc onsetData*(self: gen_qtreewidget_types.QTreeWidgetItem, slot: QTreeWidgetItemsetDataProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetItemsetDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidgetItem_override_virtual_setData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidgetItem_setData(self: ptr cQTreeWidgetItem, slot: int, column: cint, role: cint, value: pointer): void {.exportc: "miqt_exec_callback_QTreeWidgetItem_setData ".} =
  var nimfunc = cast[ptr QTreeWidgetItemsetDataProc](cast[pointer](slot))
  let slotval1 = column

  let slotval2 = role

  let slotval3 = gen_qvariant_types.QVariant(h: value)


  nimfunc[](slotval1, slotval2, slotval3)
proc QTreeWidgetItemoperatorLesser*(self: gen_qtreewidget_types.QTreeWidgetItem, other: gen_qtreewidget_types.QTreeWidgetItem): bool =
  fQTreeWidgetItem_virtualbase_operatorLesser(self.h, other.h)

type QTreeWidgetItemoperatorLesserProc* = proc(other: gen_qtreewidget_types.QTreeWidgetItem): bool
proc onoperatorLesser*(self: gen_qtreewidget_types.QTreeWidgetItem, slot: QTreeWidgetItemoperatorLesserProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetItemoperatorLesserProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidgetItem_override_virtual_operatorLesser(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidgetItem_operatorLesser(self: ptr cQTreeWidgetItem, slot: int, other: pointer): bool {.exportc: "miqt_exec_callback_QTreeWidgetItem_operatorLesser ".} =
  var nimfunc = cast[ptr QTreeWidgetItemoperatorLesserProc](cast[pointer](slot))
  let slotval1 = gen_qtreewidget_types.QTreeWidgetItem(h: other)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTreeWidgetItemread*(self: gen_qtreewidget_types.QTreeWidgetItem, inVal: gen_qdatastream_types.QDataStream): void =
  fQTreeWidgetItem_virtualbase_read(self.h, inVal.h)

type QTreeWidgetItemreadProc* = proc(inVal: gen_qdatastream_types.QDataStream): void
proc onread*(self: gen_qtreewidget_types.QTreeWidgetItem, slot: QTreeWidgetItemreadProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetItemreadProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidgetItem_override_virtual_read(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidgetItem_read(self: ptr cQTreeWidgetItem, slot: int, inVal: pointer): void {.exportc: "miqt_exec_callback_QTreeWidgetItem_read ".} =
  var nimfunc = cast[ptr QTreeWidgetItemreadProc](cast[pointer](slot))
  let slotval1 = gen_qdatastream_types.QDataStream(h: inVal)


  nimfunc[](slotval1)
proc QTreeWidgetItemwrite*(self: gen_qtreewidget_types.QTreeWidgetItem, outVal: gen_qdatastream_types.QDataStream): void =
  fQTreeWidgetItem_virtualbase_write(self.h, outVal.h)

type QTreeWidgetItemwriteProc* = proc(outVal: gen_qdatastream_types.QDataStream): void
proc onwrite*(self: gen_qtreewidget_types.QTreeWidgetItem, slot: QTreeWidgetItemwriteProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetItemwriteProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidgetItem_override_virtual_write(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidgetItem_write(self: ptr cQTreeWidgetItem, slot: int, outVal: pointer): void {.exportc: "miqt_exec_callback_QTreeWidgetItem_write ".} =
  var nimfunc = cast[ptr QTreeWidgetItemwriteProc](cast[pointer](slot))
  let slotval1 = gen_qdatastream_types.QDataStream(h: outVal)


  nimfunc[](slotval1)
proc delete*(self: gen_qtreewidget_types.QTreeWidgetItem) =
  fcQTreeWidgetItem_delete(self.h)

func init*(T: type gen_qtreewidget_types.QTreeWidget, h: ptr cQTreeWidget): gen_qtreewidget_types.QTreeWidget =
  T(h: h)
proc create*(T: type gen_qtreewidget_types.QTreeWidget, parent: gen_qwidget_types.QWidget): gen_qtreewidget_types.QTreeWidget =
  gen_qtreewidget_types.QTreeWidget.init(fcQTreeWidget_new(parent.h))

proc create*(T: type gen_qtreewidget_types.QTreeWidget, ): gen_qtreewidget_types.QTreeWidget =
  gen_qtreewidget_types.QTreeWidget.init(fcQTreeWidget_new2())

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

proc itemAbove*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem): gen_qtreewidget_types.QTreeWidgetItem =
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidget_itemAbove(self.h, item.h))

proc itemBelow*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem): gen_qtreewidget_types.QTreeWidgetItem =
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidget_itemBelow(self.h, item.h))

proc indexFromItem*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTreeWidget_indexFromItem(self.h, item.h))

proc itemFromIndex*(self: gen_qtreewidget_types.QTreeWidget, index: gen_qabstractitemmodel_types.QModelIndex): gen_qtreewidget_types.QTreeWidgetItem =
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidget_itemFromIndex(self.h, index.h))

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
proc miqt_exec_callback_QTreeWidget_itemPressed(slot: int, item: pointer, column: cint) {.exportc.} =
  let nimfunc = cast[ptr QTreeWidgetitemPressedSlot](cast[pointer](slot))
  let slotval1 = gen_qtreewidget_types.QTreeWidgetItem(h: item)

  let slotval2 = column

  nimfunc[](slotval1, slotval2)

proc onitemPressed*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetitemPressedSlot) =
  var tmp = new QTreeWidgetitemPressedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_connect_itemPressed(self.h, cast[int](addr tmp[]))

proc itemClicked*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem, column: cint): void =
  fcQTreeWidget_itemClicked(self.h, item.h, column)

type QTreeWidgetitemClickedSlot* = proc(item: gen_qtreewidget_types.QTreeWidgetItem, column: cint)
proc miqt_exec_callback_QTreeWidget_itemClicked(slot: int, item: pointer, column: cint) {.exportc.} =
  let nimfunc = cast[ptr QTreeWidgetitemClickedSlot](cast[pointer](slot))
  let slotval1 = gen_qtreewidget_types.QTreeWidgetItem(h: item)

  let slotval2 = column

  nimfunc[](slotval1, slotval2)

proc onitemClicked*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetitemClickedSlot) =
  var tmp = new QTreeWidgetitemClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_connect_itemClicked(self.h, cast[int](addr tmp[]))

proc itemDoubleClicked*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem, column: cint): void =
  fcQTreeWidget_itemDoubleClicked(self.h, item.h, column)

type QTreeWidgetitemDoubleClickedSlot* = proc(item: gen_qtreewidget_types.QTreeWidgetItem, column: cint)
proc miqt_exec_callback_QTreeWidget_itemDoubleClicked(slot: int, item: pointer, column: cint) {.exportc.} =
  let nimfunc = cast[ptr QTreeWidgetitemDoubleClickedSlot](cast[pointer](slot))
  let slotval1 = gen_qtreewidget_types.QTreeWidgetItem(h: item)

  let slotval2 = column

  nimfunc[](slotval1, slotval2)

proc onitemDoubleClicked*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetitemDoubleClickedSlot) =
  var tmp = new QTreeWidgetitemDoubleClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_connect_itemDoubleClicked(self.h, cast[int](addr tmp[]))

proc itemActivated*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem, column: cint): void =
  fcQTreeWidget_itemActivated(self.h, item.h, column)

type QTreeWidgetitemActivatedSlot* = proc(item: gen_qtreewidget_types.QTreeWidgetItem, column: cint)
proc miqt_exec_callback_QTreeWidget_itemActivated(slot: int, item: pointer, column: cint) {.exportc.} =
  let nimfunc = cast[ptr QTreeWidgetitemActivatedSlot](cast[pointer](slot))
  let slotval1 = gen_qtreewidget_types.QTreeWidgetItem(h: item)

  let slotval2 = column

  nimfunc[](slotval1, slotval2)

proc onitemActivated*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetitemActivatedSlot) =
  var tmp = new QTreeWidgetitemActivatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_connect_itemActivated(self.h, cast[int](addr tmp[]))

proc itemEntered*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem, column: cint): void =
  fcQTreeWidget_itemEntered(self.h, item.h, column)

type QTreeWidgetitemEnteredSlot* = proc(item: gen_qtreewidget_types.QTreeWidgetItem, column: cint)
proc miqt_exec_callback_QTreeWidget_itemEntered(slot: int, item: pointer, column: cint) {.exportc.} =
  let nimfunc = cast[ptr QTreeWidgetitemEnteredSlot](cast[pointer](slot))
  let slotval1 = gen_qtreewidget_types.QTreeWidgetItem(h: item)

  let slotval2 = column

  nimfunc[](slotval1, slotval2)

proc onitemEntered*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetitemEnteredSlot) =
  var tmp = new QTreeWidgetitemEnteredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_connect_itemEntered(self.h, cast[int](addr tmp[]))

proc itemChanged*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem, column: cint): void =
  fcQTreeWidget_itemChanged(self.h, item.h, column)

type QTreeWidgetitemChangedSlot* = proc(item: gen_qtreewidget_types.QTreeWidgetItem, column: cint)
proc miqt_exec_callback_QTreeWidget_itemChanged(slot: int, item: pointer, column: cint) {.exportc.} =
  let nimfunc = cast[ptr QTreeWidgetitemChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qtreewidget_types.QTreeWidgetItem(h: item)

  let slotval2 = column

  nimfunc[](slotval1, slotval2)

proc onitemChanged*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetitemChangedSlot) =
  var tmp = new QTreeWidgetitemChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_connect_itemChanged(self.h, cast[int](addr tmp[]))

proc itemExpanded*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem): void =
  fcQTreeWidget_itemExpanded(self.h, item.h)

type QTreeWidgetitemExpandedSlot* = proc(item: gen_qtreewidget_types.QTreeWidgetItem)
proc miqt_exec_callback_QTreeWidget_itemExpanded(slot: int, item: pointer) {.exportc.} =
  let nimfunc = cast[ptr QTreeWidgetitemExpandedSlot](cast[pointer](slot))
  let slotval1 = gen_qtreewidget_types.QTreeWidgetItem(h: item)

  nimfunc[](slotval1)

proc onitemExpanded*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetitemExpandedSlot) =
  var tmp = new QTreeWidgetitemExpandedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_connect_itemExpanded(self.h, cast[int](addr tmp[]))

proc itemCollapsed*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem): void =
  fcQTreeWidget_itemCollapsed(self.h, item.h)

type QTreeWidgetitemCollapsedSlot* = proc(item: gen_qtreewidget_types.QTreeWidgetItem)
proc miqt_exec_callback_QTreeWidget_itemCollapsed(slot: int, item: pointer) {.exportc.} =
  let nimfunc = cast[ptr QTreeWidgetitemCollapsedSlot](cast[pointer](slot))
  let slotval1 = gen_qtreewidget_types.QTreeWidgetItem(h: item)

  nimfunc[](slotval1)

proc onitemCollapsed*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetitemCollapsedSlot) =
  var tmp = new QTreeWidgetitemCollapsedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_connect_itemCollapsed(self.h, cast[int](addr tmp[]))

proc currentItemChanged*(self: gen_qtreewidget_types.QTreeWidget, current: gen_qtreewidget_types.QTreeWidgetItem, previous: gen_qtreewidget_types.QTreeWidgetItem): void =
  fcQTreeWidget_currentItemChanged(self.h, current.h, previous.h)

type QTreeWidgetcurrentItemChangedSlot* = proc(current: gen_qtreewidget_types.QTreeWidgetItem, previous: gen_qtreewidget_types.QTreeWidgetItem)
proc miqt_exec_callback_QTreeWidget_currentItemChanged(slot: int, current: pointer, previous: pointer) {.exportc.} =
  let nimfunc = cast[ptr QTreeWidgetcurrentItemChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qtreewidget_types.QTreeWidgetItem(h: current)

  let slotval2 = gen_qtreewidget_types.QTreeWidgetItem(h: previous)

  nimfunc[](slotval1, slotval2)

proc oncurrentItemChanged*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetcurrentItemChangedSlot) =
  var tmp = new QTreeWidgetcurrentItemChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_connect_currentItemChanged(self.h, cast[int](addr tmp[]))

proc itemSelectionChanged*(self: gen_qtreewidget_types.QTreeWidget, ): void =
  fcQTreeWidget_itemSelectionChanged(self.h)

type QTreeWidgetitemSelectionChangedSlot* = proc()
proc miqt_exec_callback_QTreeWidget_itemSelectionChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QTreeWidgetitemSelectionChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onitemSelectionChanged*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetitemSelectionChangedSlot) =
  var tmp = new QTreeWidgetitemSelectionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_connect_itemSelectionChanged(self.h, cast[int](addr tmp[]))

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

proc indexFromItem*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem, column: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTreeWidget_indexFromItem2(self.h, item.h, column))

proc scrollToItem*(self: gen_qtreewidget_types.QTreeWidget, item: gen_qtreewidget_types.QTreeWidgetItem, hint: cint): void =
  fcQTreeWidget_scrollToItem2(self.h, item.h, cint(hint))

proc QTreeWidgetmetaObject*(self: gen_qtreewidget_types.QTreeWidget, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQTreeWidget_virtualbase_metaObject(self.h))

type QTreeWidgetmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetmetaObjectProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_metaObject(self: ptr cQTreeWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QTreeWidget_metaObject ".} =
  var nimfunc = cast[ptr QTreeWidgetmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTreeWidgetmetacast*(self: gen_qtreewidget_types.QTreeWidget, param1: cstring): pointer =
  fQTreeWidget_virtualbase_metacast(self.h, param1)

type QTreeWidgetmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetmetacastProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_metacast(self: ptr cQTreeWidget, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QTreeWidget_metacast ".} =
  var nimfunc = cast[ptr QTreeWidgetmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTreeWidgetmetacall*(self: gen_qtreewidget_types.QTreeWidget, param1: cint, param2: cint, param3: pointer): cint =
  fQTreeWidget_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QTreeWidgetmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetmetacallProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_metacall(self: ptr cQTreeWidget, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QTreeWidget_metacall ".} =
  var nimfunc = cast[ptr QTreeWidgetmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QTreeWidgetsetSelectionModel*(self: gen_qtreewidget_types.QTreeWidget, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void =
  fQTreeWidget_virtualbase_setSelectionModel(self.h, selectionModel.h)

type QTreeWidgetsetSelectionModelProc* = proc(selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void
proc onsetSelectionModel*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetsetSelectionModelProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetsetSelectionModelProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_setSelectionModel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_setSelectionModel(self: ptr cQTreeWidget, slot: int, selectionModel: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_setSelectionModel ".} =
  var nimfunc = cast[ptr QTreeWidgetsetSelectionModelProc](cast[pointer](slot))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelectionModel(h: selectionModel)


  nimfunc[](slotval1)
proc QTreeWidgetevent*(self: gen_qtreewidget_types.QTreeWidget, e: gen_qcoreevent_types.QEvent): bool =
  fQTreeWidget_virtualbase_event(self.h, e.h)

type QTreeWidgeteventProc* = proc(e: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgeteventProc) =
  # TODO check subclass
  var tmp = new QTreeWidgeteventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_event(self: ptr cQTreeWidget, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QTreeWidget_event ".} =
  var nimfunc = cast[ptr QTreeWidgeteventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTreeWidgetmimeTypes*(self: gen_qtreewidget_types.QTreeWidget, ): seq[string] =
  var v_ma = fQTreeWidget_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QTreeWidgetmimeTypesProc* = proc(): seq[string]
proc onmimeTypes*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetmimeTypesProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetmimeTypesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_mimeTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_mimeTypes(self: ptr cQTreeWidget, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QTreeWidget_mimeTypes ".} =
  var nimfunc = cast[ptr QTreeWidgetmimeTypesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QTreeWidgetmimeData*(self: gen_qtreewidget_types.QTreeWidget, items: seq[gen_qtreewidget_types.QTreeWidgetItem]): gen_qmimedata_types.QMimeData =
  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  gen_qmimedata_types.QMimeData(h: fQTreeWidget_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0]))))

type QTreeWidgetmimeDataProc* = proc(items: seq[gen_qtreewidget_types.QTreeWidgetItem]): gen_qmimedata_types.QMimeData
proc onmimeData*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetmimeDataProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetmimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_mimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_mimeData(self: ptr cQTreeWidget, slot: int, items: struct_miqt_array): pointer {.exportc: "miqt_exec_callback_QTreeWidget_mimeData ".} =
  var nimfunc = cast[ptr QTreeWidgetmimeDataProc](cast[pointer](slot))
  var vitems_ma = items
  var vitemsx_ret = newSeq[gen_qtreewidget_types.QTreeWidgetItem](int(vitems_ma.len))
  let vitems_outCast = cast[ptr UncheckedArray[pointer]](vitems_ma.data)
  for i in 0 ..< vitems_ma.len:
    vitemsx_ret[i] = gen_qtreewidget_types.QTreeWidgetItem(h: vitems_outCast[i])
  let slotval1 = vitemsx_ret


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QTreeWidgetdropMimeData*(self: gen_qtreewidget_types.QTreeWidget, parent: gen_qtreewidget_types.QTreeWidgetItem, index: cint, data: gen_qmimedata_types.QMimeData, action: cint): bool =
  fQTreeWidget_virtualbase_dropMimeData(self.h, parent.h, index, data.h, cint(action))

type QTreeWidgetdropMimeDataProc* = proc(parent: gen_qtreewidget_types.QTreeWidgetItem, index: cint, data: gen_qmimedata_types.QMimeData, action: cint): bool
proc ondropMimeData*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetdropMimeDataProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetdropMimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_dropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_dropMimeData(self: ptr cQTreeWidget, slot: int, parent: pointer, index: cint, data: pointer, action: cint): bool {.exportc: "miqt_exec_callback_QTreeWidget_dropMimeData ".} =
  var nimfunc = cast[ptr QTreeWidgetdropMimeDataProc](cast[pointer](slot))
  let slotval1 = gen_qtreewidget_types.QTreeWidgetItem(h: parent)

  let slotval2 = index

  let slotval3 = gen_qmimedata_types.QMimeData(h: data)

  let slotval4 = cint(action)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc QTreeWidgetsupportedDropActions*(self: gen_qtreewidget_types.QTreeWidget, ): cint =
  cint(fQTreeWidget_virtualbase_supportedDropActions(self.h))

type QTreeWidgetsupportedDropActionsProc* = proc(): cint
proc onsupportedDropActions*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetsupportedDropActionsProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetsupportedDropActionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_supportedDropActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_supportedDropActions(self: ptr cQTreeWidget, slot: int): cint {.exportc: "miqt_exec_callback_QTreeWidget_supportedDropActions ".} =
  var nimfunc = cast[ptr QTreeWidgetsupportedDropActionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QTreeWidgetdropEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QDropEvent): void =
  fQTreeWidget_virtualbase_dropEvent(self.h, event.h)

type QTreeWidgetdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetdropEventProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_dropEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_dropEvent ".} =
  var nimfunc = cast[ptr QTreeWidgetdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QTreeWidgetsetRootIndex*(self: gen_qtreewidget_types.QTreeWidget, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fQTreeWidget_virtualbase_setRootIndex(self.h, index.h)

type QTreeWidgetsetRootIndexProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): void
proc onsetRootIndex*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetsetRootIndexProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetsetRootIndexProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_setRootIndex(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_setRootIndex(self: ptr cQTreeWidget, slot: int, index: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_setRootIndex ".} =
  var nimfunc = cast[ptr QTreeWidgetsetRootIndexProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  nimfunc[](slotval1)
proc QTreeWidgetkeyboardSearch*(self: gen_qtreewidget_types.QTreeWidget, search: string): void =
  fQTreeWidget_virtualbase_keyboardSearch(self.h, struct_miqt_string(data: search, len: csize_t(len(search))))

type QTreeWidgetkeyboardSearchProc* = proc(search: string): void
proc onkeyboardSearch*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetkeyboardSearchProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetkeyboardSearchProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_keyboardSearch(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_keyboardSearch(self: ptr cQTreeWidget, slot: int, search: struct_miqt_string): void {.exportc: "miqt_exec_callback_QTreeWidget_keyboardSearch ".} =
  var nimfunc = cast[ptr QTreeWidgetkeyboardSearchProc](cast[pointer](slot))
  let vsearch_ms = search
  let vsearchx_ret = string.fromBytes(toOpenArrayByte(vsearch_ms.data, 0, int(vsearch_ms.len)-1))
  c_free(vsearch_ms.data)
  let slotval1 = vsearchx_ret


  nimfunc[](slotval1)
proc QTreeWidgetvisualRect*(self: gen_qtreewidget_types.QTreeWidget, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fQTreeWidget_virtualbase_visualRect(self.h, index.h))

type QTreeWidgetvisualRectProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect
proc onvisualRect*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetvisualRectProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetvisualRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_visualRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_visualRect(self: ptr cQTreeWidget, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QTreeWidget_visualRect ".} =
  var nimfunc = cast[ptr QTreeWidgetvisualRectProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QTreeWidgetscrollTo*(self: gen_qtreewidget_types.QTreeWidget, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void =
  fQTreeWidget_virtualbase_scrollTo(self.h, index.h, cint(hint))

type QTreeWidgetscrollToProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void
proc onscrollTo*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetscrollToProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetscrollToProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_scrollTo(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_scrollTo(self: ptr cQTreeWidget, slot: int, index: pointer, hint: cint): void {.exportc: "miqt_exec_callback_QTreeWidget_scrollTo ".} =
  var nimfunc = cast[ptr QTreeWidgetscrollToProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = cint(hint)


  nimfunc[](slotval1, slotval2)
proc QTreeWidgetindexAt*(self: gen_qtreewidget_types.QTreeWidget, p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQTreeWidget_virtualbase_indexAt(self.h, p.h))

type QTreeWidgetindexAtProc* = proc(p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex
proc onindexAt*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetindexAtProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetindexAtProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_indexAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_indexAt(self: ptr cQTreeWidget, slot: int, p: pointer): pointer {.exportc: "miqt_exec_callback_QTreeWidget_indexAt ".} =
  var nimfunc = cast[ptr QTreeWidgetindexAtProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: p)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QTreeWidgetdoItemsLayout*(self: gen_qtreewidget_types.QTreeWidget, ): void =
  fQTreeWidget_virtualbase_doItemsLayout(self.h)

type QTreeWidgetdoItemsLayoutProc* = proc(): void
proc ondoItemsLayout*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetdoItemsLayoutProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetdoItemsLayoutProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_doItemsLayout(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_doItemsLayout(self: ptr cQTreeWidget, slot: int): void {.exportc: "miqt_exec_callback_QTreeWidget_doItemsLayout ".} =
  var nimfunc = cast[ptr QTreeWidgetdoItemsLayoutProc](cast[pointer](slot))

  nimfunc[]()
proc QTreeWidgetreset*(self: gen_qtreewidget_types.QTreeWidget, ): void =
  fQTreeWidget_virtualbase_reset(self.h)

type QTreeWidgetresetProc* = proc(): void
proc onreset*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetresetProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetresetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_reset(self: ptr cQTreeWidget, slot: int): void {.exportc: "miqt_exec_callback_QTreeWidget_reset ".} =
  var nimfunc = cast[ptr QTreeWidgetresetProc](cast[pointer](slot))

  nimfunc[]()
proc QTreeWidgetdataChanged*(self: gen_qtreewidget_types.QTreeWidget, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: seq[cint]): void =
  var roles_CArray = newSeq[cint](len(roles))
  for i in 0..<len(roles):
    roles_CArray[i] = roles[i]

  fQTreeWidget_virtualbase_dataChanged(self.h, topLeft.h, bottomRight.h, struct_miqt_array(len: csize_t(len(roles)), data: if len(roles) == 0: nil else: addr(roles_CArray[0])))

type QTreeWidgetdataChangedProc* = proc(topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: seq[cint]): void
proc ondataChanged*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetdataChangedProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetdataChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_dataChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_dataChanged(self: ptr cQTreeWidget, slot: int, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.exportc: "miqt_exec_callback_QTreeWidget_dataChanged ".} =
  var nimfunc = cast[ptr QTreeWidgetdataChangedProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: topLeft)

  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: bottomRight)

  var vroles_ma = roles
  var vrolesx_ret = newSeq[cint](int(vroles_ma.len))
  let vroles_outCast = cast[ptr UncheckedArray[cint]](vroles_ma.data)
  for i in 0 ..< vroles_ma.len:
    vrolesx_ret[i] = vroles_outCast[i]
  let slotval3 = vrolesx_ret


  nimfunc[](slotval1, slotval2, slotval3)
proc QTreeWidgetselectAll*(self: gen_qtreewidget_types.QTreeWidget, ): void =
  fQTreeWidget_virtualbase_selectAll(self.h)

type QTreeWidgetselectAllProc* = proc(): void
proc onselectAll*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetselectAllProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetselectAllProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_selectAll(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_selectAll(self: ptr cQTreeWidget, slot: int): void {.exportc: "miqt_exec_callback_QTreeWidget_selectAll ".} =
  var nimfunc = cast[ptr QTreeWidgetselectAllProc](cast[pointer](slot))

  nimfunc[]()
proc QTreeWidgetverticalScrollbarValueChanged*(self: gen_qtreewidget_types.QTreeWidget, value: cint): void =
  fQTreeWidget_virtualbase_verticalScrollbarValueChanged(self.h, value)

type QTreeWidgetverticalScrollbarValueChangedProc* = proc(value: cint): void
proc onverticalScrollbarValueChanged*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetverticalScrollbarValueChangedProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetverticalScrollbarValueChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_verticalScrollbarValueChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_verticalScrollbarValueChanged(self: ptr cQTreeWidget, slot: int, value: cint): void {.exportc: "miqt_exec_callback_QTreeWidget_verticalScrollbarValueChanged ".} =
  var nimfunc = cast[ptr QTreeWidgetverticalScrollbarValueChangedProc](cast[pointer](slot))
  let slotval1 = value


  nimfunc[](slotval1)
proc QTreeWidgetscrollContentsBy*(self: gen_qtreewidget_types.QTreeWidget, dx: cint, dy: cint): void =
  fQTreeWidget_virtualbase_scrollContentsBy(self.h, dx, dy)

type QTreeWidgetscrollContentsByProc* = proc(dx: cint, dy: cint): void
proc onscrollContentsBy*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetscrollContentsByProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetscrollContentsByProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_scrollContentsBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_scrollContentsBy(self: ptr cQTreeWidget, slot: int, dx: cint, dy: cint): void {.exportc: "miqt_exec_callback_QTreeWidget_scrollContentsBy ".} =
  var nimfunc = cast[ptr QTreeWidgetscrollContentsByProc](cast[pointer](slot))
  let slotval1 = dx

  let slotval2 = dy


  nimfunc[](slotval1, slotval2)
proc QTreeWidgetrowsInserted*(self: gen_qtreewidget_types.QTreeWidget, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fQTreeWidget_virtualbase_rowsInserted(self.h, parent.h, start, endVal)

type QTreeWidgetrowsInsertedProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void
proc onrowsInserted*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetrowsInsertedProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetrowsInsertedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_rowsInserted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_rowsInserted(self: ptr cQTreeWidget, slot: int, parent: pointer, start: cint, endVal: cint): void {.exportc: "miqt_exec_callback_QTreeWidget_rowsInserted ".} =
  var nimfunc = cast[ptr QTreeWidgetrowsInsertedProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)

  let slotval2 = start

  let slotval3 = endVal


  nimfunc[](slotval1, slotval2, slotval3)
proc QTreeWidgetrowsAboutToBeRemoved*(self: gen_qtreewidget_types.QTreeWidget, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fQTreeWidget_virtualbase_rowsAboutToBeRemoved(self.h, parent.h, start, endVal)

type QTreeWidgetrowsAboutToBeRemovedProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void
proc onrowsAboutToBeRemoved*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetrowsAboutToBeRemovedProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetrowsAboutToBeRemovedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_rowsAboutToBeRemoved(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_rowsAboutToBeRemoved(self: ptr cQTreeWidget, slot: int, parent: pointer, start: cint, endVal: cint): void {.exportc: "miqt_exec_callback_QTreeWidget_rowsAboutToBeRemoved ".} =
  var nimfunc = cast[ptr QTreeWidgetrowsAboutToBeRemovedProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)

  let slotval2 = start

  let slotval3 = endVal


  nimfunc[](slotval1, slotval2, slotval3)
proc QTreeWidgetmoveCursor*(self: gen_qtreewidget_types.QTreeWidget, cursorAction: cint, modifiers: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQTreeWidget_virtualbase_moveCursor(self.h, cint(cursorAction), cint(modifiers)))

type QTreeWidgetmoveCursorProc* = proc(cursorAction: cint, modifiers: cint): gen_qabstractitemmodel_types.QModelIndex
proc onmoveCursor*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetmoveCursorProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetmoveCursorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_moveCursor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_moveCursor(self: ptr cQTreeWidget, slot: int, cursorAction: cint, modifiers: cint): pointer {.exportc: "miqt_exec_callback_QTreeWidget_moveCursor ".} =
  var nimfunc = cast[ptr QTreeWidgetmoveCursorProc](cast[pointer](slot))
  let slotval1 = cint(cursorAction)

  let slotval2 = cint(modifiers)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QTreeWidgethorizontalOffset*(self: gen_qtreewidget_types.QTreeWidget, ): cint =
  fQTreeWidget_virtualbase_horizontalOffset(self.h)

type QTreeWidgethorizontalOffsetProc* = proc(): cint
proc onhorizontalOffset*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgethorizontalOffsetProc) =
  # TODO check subclass
  var tmp = new QTreeWidgethorizontalOffsetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_horizontalOffset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_horizontalOffset(self: ptr cQTreeWidget, slot: int): cint {.exportc: "miqt_exec_callback_QTreeWidget_horizontalOffset ".} =
  var nimfunc = cast[ptr QTreeWidgethorizontalOffsetProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTreeWidgetverticalOffset*(self: gen_qtreewidget_types.QTreeWidget, ): cint =
  fQTreeWidget_virtualbase_verticalOffset(self.h)

type QTreeWidgetverticalOffsetProc* = proc(): cint
proc onverticalOffset*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetverticalOffsetProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetverticalOffsetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_verticalOffset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_verticalOffset(self: ptr cQTreeWidget, slot: int): cint {.exportc: "miqt_exec_callback_QTreeWidget_verticalOffset ".} =
  var nimfunc = cast[ptr QTreeWidgetverticalOffsetProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTreeWidgetsetSelection*(self: gen_qtreewidget_types.QTreeWidget, rect: gen_qrect_types.QRect, command: cint): void =
  fQTreeWidget_virtualbase_setSelection(self.h, rect.h, cint(command))

type QTreeWidgetsetSelectionProc* = proc(rect: gen_qrect_types.QRect, command: cint): void
proc onsetSelection*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetsetSelectionProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetsetSelectionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_setSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_setSelection(self: ptr cQTreeWidget, slot: int, rect: pointer, command: cint): void {.exportc: "miqt_exec_callback_QTreeWidget_setSelection ".} =
  var nimfunc = cast[ptr QTreeWidgetsetSelectionProc](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRect(h: rect)

  let slotval2 = cint(command)


  nimfunc[](slotval1, slotval2)
proc QTreeWidgetvisualRegionForSelection*(self: gen_qtreewidget_types.QTreeWidget, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fQTreeWidget_virtualbase_visualRegionForSelection(self.h, selection.h))

type QTreeWidgetvisualRegionForSelectionProc* = proc(selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion
proc onvisualRegionForSelection*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetvisualRegionForSelectionProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetvisualRegionForSelectionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_visualRegionForSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_visualRegionForSelection(self: ptr cQTreeWidget, slot: int, selection: pointer): pointer {.exportc: "miqt_exec_callback_QTreeWidget_visualRegionForSelection ".} =
  var nimfunc = cast[ptr QTreeWidgetvisualRegionForSelectionProc](cast[pointer](slot))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QTreeWidgetselectedIndexes*(self: gen_qtreewidget_types.QTreeWidget, ): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fQTreeWidget_virtualbase_selectedIndexes(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  vx_ret

type QTreeWidgetselectedIndexesProc* = proc(): seq[gen_qabstractitemmodel_types.QModelIndex]
proc onselectedIndexes*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetselectedIndexesProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetselectedIndexesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_selectedIndexes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_selectedIndexes(self: ptr cQTreeWidget, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QTreeWidget_selectedIndexes ".} =
  var nimfunc = cast[ptr QTreeWidgetselectedIndexesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[pointer](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QTreeWidgetchangeEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qcoreevent_types.QEvent): void =
  fQTreeWidget_virtualbase_changeEvent(self.h, event.h)

type QTreeWidgetchangeEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetchangeEventProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_changeEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_changeEvent ".} =
  var nimfunc = cast[ptr QTreeWidgetchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QTreeWidgettimerEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qcoreevent_types.QTimerEvent): void =
  fQTreeWidget_virtualbase_timerEvent(self.h, event.h)

type QTreeWidgettimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgettimerEventProc) =
  # TODO check subclass
  var tmp = new QTreeWidgettimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_timerEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_timerEvent ".} =
  var nimfunc = cast[ptr QTreeWidgettimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QTreeWidgetpaintEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QPaintEvent): void =
  fQTreeWidget_virtualbase_paintEvent(self.h, event.h)

type QTreeWidgetpaintEventProc* = proc(event: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetpaintEventProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_paintEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_paintEvent ".} =
  var nimfunc = cast[ptr QTreeWidgetpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)


  nimfunc[](slotval1)
proc QTreeWidgetdrawRow*(self: gen_qtreewidget_types.QTreeWidget, painter: gen_qpainter_types.QPainter, options: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fQTreeWidget_virtualbase_drawRow(self.h, painter.h, options.h, index.h)

type QTreeWidgetdrawRowProc* = proc(painter: gen_qpainter_types.QPainter, options: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void
proc ondrawRow*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetdrawRowProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetdrawRowProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_drawRow(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_drawRow(self: ptr cQTreeWidget, slot: int, painter: pointer, options: pointer, index: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_drawRow ".} =
  var nimfunc = cast[ptr QTreeWidgetdrawRowProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)

  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: options)

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  nimfunc[](slotval1, slotval2, slotval3)
proc QTreeWidgetdrawBranches*(self: gen_qtreewidget_types.QTreeWidget, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fQTreeWidget_virtualbase_drawBranches(self.h, painter.h, rect.h, index.h)

type QTreeWidgetdrawBranchesProc* = proc(painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, index: gen_qabstractitemmodel_types.QModelIndex): void
proc ondrawBranches*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetdrawBranchesProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetdrawBranchesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_drawBranches(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_drawBranches(self: ptr cQTreeWidget, slot: int, painter: pointer, rect: pointer, index: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_drawBranches ".} =
  var nimfunc = cast[ptr QTreeWidgetdrawBranchesProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)

  let slotval2 = gen_qrect_types.QRect(h: rect)

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  nimfunc[](slotval1, slotval2, slotval3)
proc QTreeWidgetmousePressEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QMouseEvent): void =
  fQTreeWidget_virtualbase_mousePressEvent(self.h, event.h)

type QTreeWidgetmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetmousePressEventProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_mousePressEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_mousePressEvent ".} =
  var nimfunc = cast[ptr QTreeWidgetmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QTreeWidgetmouseReleaseEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QMouseEvent): void =
  fQTreeWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

type QTreeWidgetmouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_mouseReleaseEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QTreeWidgetmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QTreeWidgetmouseDoubleClickEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QMouseEvent): void =
  fQTreeWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QTreeWidgetmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_mouseDoubleClickEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QTreeWidgetmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QTreeWidgetmouseMoveEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QMouseEvent): void =
  fQTreeWidget_virtualbase_mouseMoveEvent(self.h, event.h)

type QTreeWidgetmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_mouseMoveEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QTreeWidgetmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QTreeWidgetkeyPressEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QKeyEvent): void =
  fQTreeWidget_virtualbase_keyPressEvent(self.h, event.h)

type QTreeWidgetkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_keyPressEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_keyPressEvent ".} =
  var nimfunc = cast[ptr QTreeWidgetkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QTreeWidgetdragMoveEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QDragMoveEvent): void =
  fQTreeWidget_virtualbase_dragMoveEvent(self.h, event.h)

type QTreeWidgetdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_dragMoveEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_dragMoveEvent ".} =
  var nimfunc = cast[ptr QTreeWidgetdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QTreeWidgetviewportEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qcoreevent_types.QEvent): bool =
  fQTreeWidget_virtualbase_viewportEvent(self.h, event.h)

type QTreeWidgetviewportEventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onviewportEvent*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetviewportEventProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetviewportEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_viewportEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_viewportEvent(self: ptr cQTreeWidget, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QTreeWidget_viewportEvent ".} =
  var nimfunc = cast[ptr QTreeWidgetviewportEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTreeWidgetupdateGeometries*(self: gen_qtreewidget_types.QTreeWidget, ): void =
  fQTreeWidget_virtualbase_updateGeometries(self.h)

type QTreeWidgetupdateGeometriesProc* = proc(): void
proc onupdateGeometries*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetupdateGeometriesProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetupdateGeometriesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_updateGeometries(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_updateGeometries(self: ptr cQTreeWidget, slot: int): void {.exportc: "miqt_exec_callback_QTreeWidget_updateGeometries ".} =
  var nimfunc = cast[ptr QTreeWidgetupdateGeometriesProc](cast[pointer](slot))

  nimfunc[]()
proc QTreeWidgetviewportSizeHint*(self: gen_qtreewidget_types.QTreeWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQTreeWidget_virtualbase_viewportSizeHint(self.h))

type QTreeWidgetviewportSizeHintProc* = proc(): gen_qsize_types.QSize
proc onviewportSizeHint*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetviewportSizeHintProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetviewportSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_viewportSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_viewportSizeHint(self: ptr cQTreeWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QTreeWidget_viewportSizeHint ".} =
  var nimfunc = cast[ptr QTreeWidgetviewportSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTreeWidgetsizeHintForColumn*(self: gen_qtreewidget_types.QTreeWidget, column: cint): cint =
  fQTreeWidget_virtualbase_sizeHintForColumn(self.h, column)

type QTreeWidgetsizeHintForColumnProc* = proc(column: cint): cint
proc onsizeHintForColumn*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetsizeHintForColumnProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetsizeHintForColumnProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_sizeHintForColumn(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_sizeHintForColumn(self: ptr cQTreeWidget, slot: int, column: cint): cint {.exportc: "miqt_exec_callback_QTreeWidget_sizeHintForColumn ".} =
  var nimfunc = cast[ptr QTreeWidgetsizeHintForColumnProc](cast[pointer](slot))
  let slotval1 = column


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTreeWidgethorizontalScrollbarAction*(self: gen_qtreewidget_types.QTreeWidget, action: cint): void =
  fQTreeWidget_virtualbase_horizontalScrollbarAction(self.h, action)

type QTreeWidgethorizontalScrollbarActionProc* = proc(action: cint): void
proc onhorizontalScrollbarAction*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgethorizontalScrollbarActionProc) =
  # TODO check subclass
  var tmp = new QTreeWidgethorizontalScrollbarActionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_horizontalScrollbarAction(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_horizontalScrollbarAction(self: ptr cQTreeWidget, slot: int, action: cint): void {.exportc: "miqt_exec_callback_QTreeWidget_horizontalScrollbarAction ".} =
  var nimfunc = cast[ptr QTreeWidgethorizontalScrollbarActionProc](cast[pointer](slot))
  let slotval1 = action


  nimfunc[](slotval1)
proc QTreeWidgetisIndexHidden*(self: gen_qtreewidget_types.QTreeWidget, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQTreeWidget_virtualbase_isIndexHidden(self.h, index.h)

type QTreeWidgetisIndexHiddenProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): bool
proc onisIndexHidden*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetisIndexHiddenProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetisIndexHiddenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_isIndexHidden(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_isIndexHidden(self: ptr cQTreeWidget, slot: int, index: pointer): bool {.exportc: "miqt_exec_callback_QTreeWidget_isIndexHidden ".} =
  var nimfunc = cast[ptr QTreeWidgetisIndexHiddenProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTreeWidgetselectionChanged*(self: gen_qtreewidget_types.QTreeWidget, selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void =
  fQTreeWidget_virtualbase_selectionChanged(self.h, selected.h, deselected.h)

type QTreeWidgetselectionChangedProc* = proc(selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void
proc onselectionChanged*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetselectionChangedProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetselectionChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_selectionChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_selectionChanged(self: ptr cQTreeWidget, slot: int, selected: pointer, deselected: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_selectionChanged ".} =
  var nimfunc = cast[ptr QTreeWidgetselectionChangedProc](cast[pointer](slot))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selected)

  let slotval2 = gen_qitemselectionmodel_types.QItemSelection(h: deselected)


  nimfunc[](slotval1, slotval2)
proc QTreeWidgetcurrentChanged*(self: gen_qtreewidget_types.QTreeWidget, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void =
  fQTreeWidget_virtualbase_currentChanged(self.h, current.h, previous.h)

type QTreeWidgetcurrentChangedProc* = proc(current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void
proc oncurrentChanged*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetcurrentChangedProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetcurrentChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_currentChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_currentChanged(self: ptr cQTreeWidget, slot: int, current: pointer, previous: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_currentChanged ".} =
  var nimfunc = cast[ptr QTreeWidgetcurrentChangedProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: current)

  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: previous)


  nimfunc[](slotval1, slotval2)
proc QTreeWidgetsizeHintForRow*(self: gen_qtreewidget_types.QTreeWidget, row: cint): cint =
  fQTreeWidget_virtualbase_sizeHintForRow(self.h, row)

type QTreeWidgetsizeHintForRowProc* = proc(row: cint): cint
proc onsizeHintForRow*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetsizeHintForRowProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetsizeHintForRowProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_sizeHintForRow(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_sizeHintForRow(self: ptr cQTreeWidget, slot: int, row: cint): cint {.exportc: "miqt_exec_callback_QTreeWidget_sizeHintForRow ".} =
  var nimfunc = cast[ptr QTreeWidgetsizeHintForRowProc](cast[pointer](slot))
  let slotval1 = row


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTreeWidgetitemDelegateForIndex*(self: gen_qtreewidget_types.QTreeWidget, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemdelegate_types.QAbstractItemDelegate =
  gen_qabstractitemdelegate_types.QAbstractItemDelegate(h: fQTreeWidget_virtualbase_itemDelegateForIndex(self.h, index.h))

type QTreeWidgetitemDelegateForIndexProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemdelegate_types.QAbstractItemDelegate
proc onitemDelegateForIndex*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetitemDelegateForIndexProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetitemDelegateForIndexProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_itemDelegateForIndex(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_itemDelegateForIndex(self: ptr cQTreeWidget, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QTreeWidget_itemDelegateForIndex ".} =
  var nimfunc = cast[ptr QTreeWidgetitemDelegateForIndexProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QTreeWidgetinputMethodQuery*(self: gen_qtreewidget_types.QTreeWidget, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQTreeWidget_virtualbase_inputMethodQuery(self.h, cint(query)))

type QTreeWidgetinputMethodQueryProc* = proc(query: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_inputMethodQuery(self: ptr cQTreeWidget, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QTreeWidget_inputMethodQuery ".} =
  var nimfunc = cast[ptr QTreeWidgetinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(query)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QTreeWidgetupdateEditorData*(self: gen_qtreewidget_types.QTreeWidget, ): void =
  fQTreeWidget_virtualbase_updateEditorData(self.h)

type QTreeWidgetupdateEditorDataProc* = proc(): void
proc onupdateEditorData*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetupdateEditorDataProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetupdateEditorDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_updateEditorData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_updateEditorData(self: ptr cQTreeWidget, slot: int): void {.exportc: "miqt_exec_callback_QTreeWidget_updateEditorData ".} =
  var nimfunc = cast[ptr QTreeWidgetupdateEditorDataProc](cast[pointer](slot))

  nimfunc[]()
proc QTreeWidgetupdateEditorGeometries*(self: gen_qtreewidget_types.QTreeWidget, ): void =
  fQTreeWidget_virtualbase_updateEditorGeometries(self.h)

type QTreeWidgetupdateEditorGeometriesProc* = proc(): void
proc onupdateEditorGeometries*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetupdateEditorGeometriesProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetupdateEditorGeometriesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_updateEditorGeometries(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_updateEditorGeometries(self: ptr cQTreeWidget, slot: int): void {.exportc: "miqt_exec_callback_QTreeWidget_updateEditorGeometries ".} =
  var nimfunc = cast[ptr QTreeWidgetupdateEditorGeometriesProc](cast[pointer](slot))

  nimfunc[]()
proc QTreeWidgetverticalScrollbarAction*(self: gen_qtreewidget_types.QTreeWidget, action: cint): void =
  fQTreeWidget_virtualbase_verticalScrollbarAction(self.h, action)

type QTreeWidgetverticalScrollbarActionProc* = proc(action: cint): void
proc onverticalScrollbarAction*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetverticalScrollbarActionProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetverticalScrollbarActionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_verticalScrollbarAction(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_verticalScrollbarAction(self: ptr cQTreeWidget, slot: int, action: cint): void {.exportc: "miqt_exec_callback_QTreeWidget_verticalScrollbarAction ".} =
  var nimfunc = cast[ptr QTreeWidgetverticalScrollbarActionProc](cast[pointer](slot))
  let slotval1 = action


  nimfunc[](slotval1)
proc QTreeWidgethorizontalScrollbarValueChanged*(self: gen_qtreewidget_types.QTreeWidget, value: cint): void =
  fQTreeWidget_virtualbase_horizontalScrollbarValueChanged(self.h, value)

type QTreeWidgethorizontalScrollbarValueChangedProc* = proc(value: cint): void
proc onhorizontalScrollbarValueChanged*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgethorizontalScrollbarValueChangedProc) =
  # TODO check subclass
  var tmp = new QTreeWidgethorizontalScrollbarValueChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_horizontalScrollbarValueChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_horizontalScrollbarValueChanged(self: ptr cQTreeWidget, slot: int, value: cint): void {.exportc: "miqt_exec_callback_QTreeWidget_horizontalScrollbarValueChanged ".} =
  var nimfunc = cast[ptr QTreeWidgethorizontalScrollbarValueChangedProc](cast[pointer](slot))
  let slotval1 = value


  nimfunc[](slotval1)
proc QTreeWidgetcloseEditor*(self: gen_qtreewidget_types.QTreeWidget, editor: gen_qwidget_types.QWidget, hint: cint): void =
  fQTreeWidget_virtualbase_closeEditor(self.h, editor.h, cint(hint))

type QTreeWidgetcloseEditorProc* = proc(editor: gen_qwidget_types.QWidget, hint: cint): void
proc oncloseEditor*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetcloseEditorProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetcloseEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_closeEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_closeEditor(self: ptr cQTreeWidget, slot: int, editor: pointer, hint: cint): void {.exportc: "miqt_exec_callback_QTreeWidget_closeEditor ".} =
  var nimfunc = cast[ptr QTreeWidgetcloseEditorProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: editor)

  let slotval2 = cint(hint)


  nimfunc[](slotval1, slotval2)
proc QTreeWidgetcommitData*(self: gen_qtreewidget_types.QTreeWidget, editor: gen_qwidget_types.QWidget): void =
  fQTreeWidget_virtualbase_commitData(self.h, editor.h)

type QTreeWidgetcommitDataProc* = proc(editor: gen_qwidget_types.QWidget): void
proc oncommitData*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetcommitDataProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetcommitDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_commitData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_commitData(self: ptr cQTreeWidget, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_commitData ".} =
  var nimfunc = cast[ptr QTreeWidgetcommitDataProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: editor)


  nimfunc[](slotval1)
proc QTreeWidgeteditorDestroyed*(self: gen_qtreewidget_types.QTreeWidget, editor: gen_qobject_types.QObject): void =
  fQTreeWidget_virtualbase_editorDestroyed(self.h, editor.h)

type QTreeWidgeteditorDestroyedProc* = proc(editor: gen_qobject_types.QObject): void
proc oneditorDestroyed*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgeteditorDestroyedProc) =
  # TODO check subclass
  var tmp = new QTreeWidgeteditorDestroyedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_editorDestroyed(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_editorDestroyed(self: ptr cQTreeWidget, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_editorDestroyed ".} =
  var nimfunc = cast[ptr QTreeWidgeteditorDestroyedProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: editor)


  nimfunc[](slotval1)
proc QTreeWidgetedit*(self: gen_qtreewidget_types.QTreeWidget, index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool =
  fQTreeWidget_virtualbase_edit2(self.h, index.h, cint(trigger), event.h)

type QTreeWidgetedit2Proc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool
proc onedit*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetedit2Proc) =
  # TODO check subclass
  var tmp = new QTreeWidgetedit2Proc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_edit2(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_edit2(self: ptr cQTreeWidget, slot: int, index: pointer, trigger: cint, event: pointer): bool {.exportc: "miqt_exec_callback_QTreeWidget_edit2 ".} =
  var nimfunc = cast[ptr QTreeWidgetedit2Proc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = cint(trigger)

  let slotval3 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QTreeWidgetselectionCommand*(self: gen_qtreewidget_types.QTreeWidget, index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint =
  cint(fQTreeWidget_virtualbase_selectionCommand(self.h, index.h, event.h))

type QTreeWidgetselectionCommandProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint
proc onselectionCommand*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetselectionCommandProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetselectionCommandProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_selectionCommand(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_selectionCommand(self: ptr cQTreeWidget, slot: int, index: pointer, event: pointer): cint {.exportc: "miqt_exec_callback_QTreeWidget_selectionCommand ".} =
  var nimfunc = cast[ptr QTreeWidgetselectionCommandProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  cint(virtualReturn)
proc QTreeWidgetstartDrag*(self: gen_qtreewidget_types.QTreeWidget, supportedActions: cint): void =
  fQTreeWidget_virtualbase_startDrag(self.h, cint(supportedActions))

type QTreeWidgetstartDragProc* = proc(supportedActions: cint): void
proc onstartDrag*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetstartDragProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetstartDragProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_startDrag(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_startDrag(self: ptr cQTreeWidget, slot: int, supportedActions: cint): void {.exportc: "miqt_exec_callback_QTreeWidget_startDrag ".} =
  var nimfunc = cast[ptr QTreeWidgetstartDragProc](cast[pointer](slot))
  let slotval1 = cint(supportedActions)


  nimfunc[](slotval1)
proc QTreeWidgetinitViewItemOption*(self: gen_qtreewidget_types.QTreeWidget, option: gen_qstyleoption_types.QStyleOptionViewItem): void =
  fQTreeWidget_virtualbase_initViewItemOption(self.h, option.h)

type QTreeWidgetinitViewItemOptionProc* = proc(option: gen_qstyleoption_types.QStyleOptionViewItem): void
proc oninitViewItemOption*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetinitViewItemOptionProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetinitViewItemOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_initViewItemOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_initViewItemOption(self: ptr cQTreeWidget, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_initViewItemOption ".} =
  var nimfunc = cast[ptr QTreeWidgetinitViewItemOptionProc](cast[pointer](slot))
  let slotval1 = gen_qstyleoption_types.QStyleOptionViewItem(h: option)


  nimfunc[](slotval1)
proc QTreeWidgetfocusNextPrevChild*(self: gen_qtreewidget_types.QTreeWidget, next: bool): bool =
  fQTreeWidget_virtualbase_focusNextPrevChild(self.h, next)

type QTreeWidgetfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_focusNextPrevChild(self: ptr cQTreeWidget, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QTreeWidget_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QTreeWidgetfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTreeWidgetdragEnterEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QDragEnterEvent): void =
  fQTreeWidget_virtualbase_dragEnterEvent(self.h, event.h)

type QTreeWidgetdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_dragEnterEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_dragEnterEvent ".} =
  var nimfunc = cast[ptr QTreeWidgetdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QTreeWidgetdragLeaveEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QDragLeaveEvent): void =
  fQTreeWidget_virtualbase_dragLeaveEvent(self.h, event.h)

type QTreeWidgetdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_dragLeaveEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QTreeWidgetdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QTreeWidgetfocusInEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QFocusEvent): void =
  fQTreeWidget_virtualbase_focusInEvent(self.h, event.h)

type QTreeWidgetfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetfocusInEventProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_focusInEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_focusInEvent ".} =
  var nimfunc = cast[ptr QTreeWidgetfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QTreeWidgetfocusOutEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QFocusEvent): void =
  fQTreeWidget_virtualbase_focusOutEvent(self.h, event.h)

type QTreeWidgetfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_focusOutEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_focusOutEvent ".} =
  var nimfunc = cast[ptr QTreeWidgetfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QTreeWidgetresizeEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QResizeEvent): void =
  fQTreeWidget_virtualbase_resizeEvent(self.h, event.h)

type QTreeWidgetresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetresizeEventProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_resizeEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_resizeEvent ".} =
  var nimfunc = cast[ptr QTreeWidgetresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QTreeWidgetinputMethodEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QInputMethodEvent): void =
  fQTreeWidget_virtualbase_inputMethodEvent(self.h, event.h)

type QTreeWidgetinputMethodEventProc* = proc(event: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_inputMethodEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_inputMethodEvent ".} =
  var nimfunc = cast[ptr QTreeWidgetinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)


  nimfunc[](slotval1)
proc QTreeWidgeteventFilter*(self: gen_qtreewidget_types.QTreeWidget, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQTreeWidget_virtualbase_eventFilter(self.h, objectVal.h, event.h)

type QTreeWidgeteventFilterProc* = proc(objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgeteventFilterProc) =
  # TODO check subclass
  var tmp = new QTreeWidgeteventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_eventFilter(self: ptr cQTreeWidget, slot: int, objectVal: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QTreeWidget_eventFilter ".} =
  var nimfunc = cast[ptr QTreeWidgeteventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: objectVal)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QTreeWidgetminimumSizeHint*(self: gen_qtreewidget_types.QTreeWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQTreeWidget_virtualbase_minimumSizeHint(self.h))

type QTreeWidgetminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_minimumSizeHint(self: ptr cQTreeWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QTreeWidget_minimumSizeHint ".} =
  var nimfunc = cast[ptr QTreeWidgetminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTreeWidgetsizeHint*(self: gen_qtreewidget_types.QTreeWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQTreeWidget_virtualbase_sizeHint(self.h))

type QTreeWidgetsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetsizeHintProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_sizeHint(self: ptr cQTreeWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QTreeWidget_sizeHint ".} =
  var nimfunc = cast[ptr QTreeWidgetsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTreeWidgetsetupViewport*(self: gen_qtreewidget_types.QTreeWidget, viewport: gen_qwidget_types.QWidget): void =
  fQTreeWidget_virtualbase_setupViewport(self.h, viewport.h)

type QTreeWidgetsetupViewportProc* = proc(viewport: gen_qwidget_types.QWidget): void
proc onsetupViewport*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetsetupViewportProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetsetupViewportProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_setupViewport(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_setupViewport(self: ptr cQTreeWidget, slot: int, viewport: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_setupViewport ".} =
  var nimfunc = cast[ptr QTreeWidgetsetupViewportProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: viewport)


  nimfunc[](slotval1)
proc QTreeWidgetwheelEvent*(self: gen_qtreewidget_types.QTreeWidget, param1: gen_qevent_types.QWheelEvent): void =
  fQTreeWidget_virtualbase_wheelEvent(self.h, param1.h)

type QTreeWidgetwheelEventProc* = proc(param1: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetwheelEventProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_wheelEvent(self: ptr cQTreeWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_wheelEvent ".} =
  var nimfunc = cast[ptr QTreeWidgetwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1)


  nimfunc[](slotval1)
proc QTreeWidgetcontextMenuEvent*(self: gen_qtreewidget_types.QTreeWidget, param1: gen_qevent_types.QContextMenuEvent): void =
  fQTreeWidget_virtualbase_contextMenuEvent(self.h, param1.h)

type QTreeWidgetcontextMenuEventProc* = proc(param1: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_contextMenuEvent(self: ptr cQTreeWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_contextMenuEvent ".} =
  var nimfunc = cast[ptr QTreeWidgetcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)


  nimfunc[](slotval1)
proc QTreeWidgetinitStyleOption*(self: gen_qtreewidget_types.QTreeWidget, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fQTreeWidget_virtualbase_initStyleOption(self.h, option.h)

type QTreeWidgetinitStyleOptionProc* = proc(option: gen_qstyleoption_types.QStyleOptionFrame): void
proc oninitStyleOption*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetinitStyleOptionProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetinitStyleOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_initStyleOption(self: ptr cQTreeWidget, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_initStyleOption ".} =
  var nimfunc = cast[ptr QTreeWidgetinitStyleOptionProc](cast[pointer](slot))
  let slotval1 = gen_qstyleoption_types.QStyleOptionFrame(h: option)


  nimfunc[](slotval1)
proc QTreeWidgetdevType*(self: gen_qtreewidget_types.QTreeWidget, ): cint =
  fQTreeWidget_virtualbase_devType(self.h)

type QTreeWidgetdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetdevTypeProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_devType(self: ptr cQTreeWidget, slot: int): cint {.exportc: "miqt_exec_callback_QTreeWidget_devType ".} =
  var nimfunc = cast[ptr QTreeWidgetdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTreeWidgetsetVisible*(self: gen_qtreewidget_types.QTreeWidget, visible: bool): void =
  fQTreeWidget_virtualbase_setVisible(self.h, visible)

type QTreeWidgetsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetsetVisibleProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_setVisible(self: ptr cQTreeWidget, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QTreeWidget_setVisible ".} =
  var nimfunc = cast[ptr QTreeWidgetsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QTreeWidgetheightForWidth*(self: gen_qtreewidget_types.QTreeWidget, param1: cint): cint =
  fQTreeWidget_virtualbase_heightForWidth(self.h, param1)

type QTreeWidgetheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetheightForWidthProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_heightForWidth(self: ptr cQTreeWidget, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QTreeWidget_heightForWidth ".} =
  var nimfunc = cast[ptr QTreeWidgetheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTreeWidgethasHeightForWidth*(self: gen_qtreewidget_types.QTreeWidget, ): bool =
  fQTreeWidget_virtualbase_hasHeightForWidth(self.h)

type QTreeWidgethasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgethasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QTreeWidgethasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_hasHeightForWidth(self: ptr cQTreeWidget, slot: int): bool {.exportc: "miqt_exec_callback_QTreeWidget_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QTreeWidgethasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTreeWidgetpaintEngine*(self: gen_qtreewidget_types.QTreeWidget, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQTreeWidget_virtualbase_paintEngine(self.h))

type QTreeWidgetpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetpaintEngineProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_paintEngine(self: ptr cQTreeWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QTreeWidget_paintEngine ".} =
  var nimfunc = cast[ptr QTreeWidgetpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTreeWidgetkeyReleaseEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QKeyEvent): void =
  fQTreeWidget_virtualbase_keyReleaseEvent(self.h, event.h)

type QTreeWidgetkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_keyReleaseEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QTreeWidgetkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QTreeWidgetenterEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QEnterEvent): void =
  fQTreeWidget_virtualbase_enterEvent(self.h, event.h)

type QTreeWidgetenterEventProc* = proc(event: gen_qevent_types.QEnterEvent): void
proc onenterEvent*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetenterEventProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_enterEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_enterEvent ".} =
  var nimfunc = cast[ptr QTreeWidgetenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)


  nimfunc[](slotval1)
proc QTreeWidgetleaveEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qcoreevent_types.QEvent): void =
  fQTreeWidget_virtualbase_leaveEvent(self.h, event.h)

type QTreeWidgetleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetleaveEventProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_leaveEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_leaveEvent ".} =
  var nimfunc = cast[ptr QTreeWidgetleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QTreeWidgetmoveEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QMoveEvent): void =
  fQTreeWidget_virtualbase_moveEvent(self.h, event.h)

type QTreeWidgetmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetmoveEventProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_moveEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_moveEvent ".} =
  var nimfunc = cast[ptr QTreeWidgetmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QTreeWidgetcloseEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QCloseEvent): void =
  fQTreeWidget_virtualbase_closeEvent(self.h, event.h)

type QTreeWidgetcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetcloseEventProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_closeEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_closeEvent ".} =
  var nimfunc = cast[ptr QTreeWidgetcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QTreeWidgettabletEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QTabletEvent): void =
  fQTreeWidget_virtualbase_tabletEvent(self.h, event.h)

type QTreeWidgettabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgettabletEventProc) =
  # TODO check subclass
  var tmp = new QTreeWidgettabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_tabletEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_tabletEvent ".} =
  var nimfunc = cast[ptr QTreeWidgettabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QTreeWidgetactionEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QActionEvent): void =
  fQTreeWidget_virtualbase_actionEvent(self.h, event.h)

type QTreeWidgetactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetactionEventProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_actionEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_actionEvent ".} =
  var nimfunc = cast[ptr QTreeWidgetactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QTreeWidgetshowEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QShowEvent): void =
  fQTreeWidget_virtualbase_showEvent(self.h, event.h)

type QTreeWidgetshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetshowEventProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_showEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_showEvent ".} =
  var nimfunc = cast[ptr QTreeWidgetshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QTreeWidgethideEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qevent_types.QHideEvent): void =
  fQTreeWidget_virtualbase_hideEvent(self.h, event.h)

type QTreeWidgethideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgethideEventProc) =
  # TODO check subclass
  var tmp = new QTreeWidgethideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_hideEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_hideEvent ".} =
  var nimfunc = cast[ptr QTreeWidgethideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QTreeWidgetnativeEvent*(self: gen_qtreewidget_types.QTreeWidget, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQTreeWidget_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QTreeWidgetnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetnativeEventProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_nativeEvent(self: ptr cQTreeWidget, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QTreeWidget_nativeEvent ".} =
  var nimfunc = cast[ptr QTreeWidgetnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QTreeWidgetmetric*(self: gen_qtreewidget_types.QTreeWidget, param1: cint): cint =
  fQTreeWidget_virtualbase_metric(self.h, cint(param1))

type QTreeWidgetmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetmetricProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_metric(self: ptr cQTreeWidget, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QTreeWidget_metric ".} =
  var nimfunc = cast[ptr QTreeWidgetmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTreeWidgetinitPainter*(self: gen_qtreewidget_types.QTreeWidget, painter: gen_qpainter_types.QPainter): void =
  fQTreeWidget_virtualbase_initPainter(self.h, painter.h)

type QTreeWidgetinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetinitPainterProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_initPainter(self: ptr cQTreeWidget, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_initPainter ".} =
  var nimfunc = cast[ptr QTreeWidgetinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QTreeWidgetredirected*(self: gen_qtreewidget_types.QTreeWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQTreeWidget_virtualbase_redirected(self.h, offset.h))

type QTreeWidgetredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetredirectedProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_redirected(self: ptr cQTreeWidget, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QTreeWidget_redirected ".} =
  var nimfunc = cast[ptr QTreeWidgetredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QTreeWidgetsharedPainter*(self: gen_qtreewidget_types.QTreeWidget, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQTreeWidget_virtualbase_sharedPainter(self.h))

type QTreeWidgetsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetsharedPainterProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_sharedPainter(self: ptr cQTreeWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QTreeWidget_sharedPainter ".} =
  var nimfunc = cast[ptr QTreeWidgetsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTreeWidgetchildEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qcoreevent_types.QChildEvent): void =
  fQTreeWidget_virtualbase_childEvent(self.h, event.h)

type QTreeWidgetchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetchildEventProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_childEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_childEvent ".} =
  var nimfunc = cast[ptr QTreeWidgetchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QTreeWidgetcustomEvent*(self: gen_qtreewidget_types.QTreeWidget, event: gen_qcoreevent_types.QEvent): void =
  fQTreeWidget_virtualbase_customEvent(self.h, event.h)

type QTreeWidgetcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetcustomEventProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_customEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_customEvent ".} =
  var nimfunc = cast[ptr QTreeWidgetcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QTreeWidgetconnectNotify*(self: gen_qtreewidget_types.QTreeWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQTreeWidget_virtualbase_connectNotify(self.h, signal.h)

type QTreeWidgetconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_connectNotify(self: ptr cQTreeWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_connectNotify ".} =
  var nimfunc = cast[ptr QTreeWidgetconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QTreeWidgetdisconnectNotify*(self: gen_qtreewidget_types.QTreeWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQTreeWidget_virtualbase_disconnectNotify(self.h, signal.h)

type QTreeWidgetdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qtreewidget_types.QTreeWidget, slot: QTreeWidgetdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QTreeWidgetdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_disconnectNotify(self: ptr cQTreeWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_disconnectNotify ".} =
  var nimfunc = cast[ptr QTreeWidgetdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qtreewidget_types.QTreeWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTreeWidget_staticMetaObject())
proc delete*(self: gen_qtreewidget_types.QTreeWidget) =
  fcQTreeWidget_delete(self.h)
