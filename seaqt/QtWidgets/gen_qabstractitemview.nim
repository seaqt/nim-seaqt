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
{.compile("gen_qabstractitemview.cpp", cflags).}


type QAbstractItemViewSelectionModeEnum* = distinct cint
template NoSelection*(_: type QAbstractItemViewSelectionModeEnum): untyped = 0
template SingleSelection*(_: type QAbstractItemViewSelectionModeEnum): untyped = 1
template MultiSelection*(_: type QAbstractItemViewSelectionModeEnum): untyped = 2
template ExtendedSelection*(_: type QAbstractItemViewSelectionModeEnum): untyped = 3
template ContiguousSelection*(_: type QAbstractItemViewSelectionModeEnum): untyped = 4


type QAbstractItemViewSelectionBehaviorEnum* = distinct cint
template SelectItems*(_: type QAbstractItemViewSelectionBehaviorEnum): untyped = 0
template SelectRows*(_: type QAbstractItemViewSelectionBehaviorEnum): untyped = 1
template SelectColumns*(_: type QAbstractItemViewSelectionBehaviorEnum): untyped = 2


type QAbstractItemViewScrollHintEnum* = distinct cint
template EnsureVisible*(_: type QAbstractItemViewScrollHintEnum): untyped = 0
template PositionAtTop*(_: type QAbstractItemViewScrollHintEnum): untyped = 1
template PositionAtBottom*(_: type QAbstractItemViewScrollHintEnum): untyped = 2
template PositionAtCenter*(_: type QAbstractItemViewScrollHintEnum): untyped = 3


type QAbstractItemViewEditTriggerEnum* = distinct cint
template NoEditTriggers*(_: type QAbstractItemViewEditTriggerEnum): untyped = 0
template CurrentChanged*(_: type QAbstractItemViewEditTriggerEnum): untyped = 1
template DoubleClicked*(_: type QAbstractItemViewEditTriggerEnum): untyped = 2
template SelectedClicked*(_: type QAbstractItemViewEditTriggerEnum): untyped = 4
template EditKeyPressed*(_: type QAbstractItemViewEditTriggerEnum): untyped = 8
template AnyKeyPressed*(_: type QAbstractItemViewEditTriggerEnum): untyped = 16
template AllEditTriggers*(_: type QAbstractItemViewEditTriggerEnum): untyped = 31


type QAbstractItemViewScrollModeEnum* = distinct cint
template ScrollPerItem*(_: type QAbstractItemViewScrollModeEnum): untyped = 0
template ScrollPerPixel*(_: type QAbstractItemViewScrollModeEnum): untyped = 1


type QAbstractItemViewDragDropModeEnum* = distinct cint
template NoDragDrop*(_: type QAbstractItemViewDragDropModeEnum): untyped = 0
template DragOnly*(_: type QAbstractItemViewDragDropModeEnum): untyped = 1
template DropOnly*(_: type QAbstractItemViewDragDropModeEnum): untyped = 2
template DragDrop*(_: type QAbstractItemViewDragDropModeEnum): untyped = 3
template InternalMove*(_: type QAbstractItemViewDragDropModeEnum): untyped = 4


type QAbstractItemViewCursorActionEnum* = distinct cint
template MoveUp*(_: type QAbstractItemViewCursorActionEnum): untyped = 0
template MoveDown*(_: type QAbstractItemViewCursorActionEnum): untyped = 1
template MoveLeft*(_: type QAbstractItemViewCursorActionEnum): untyped = 2
template MoveRight*(_: type QAbstractItemViewCursorActionEnum): untyped = 3
template MoveHome*(_: type QAbstractItemViewCursorActionEnum): untyped = 4
template MoveEnd*(_: type QAbstractItemViewCursorActionEnum): untyped = 5
template MovePageUp*(_: type QAbstractItemViewCursorActionEnum): untyped = 6
template MovePageDown*(_: type QAbstractItemViewCursorActionEnum): untyped = 7
template MoveNext*(_: type QAbstractItemViewCursorActionEnum): untyped = 8
template MovePrevious*(_: type QAbstractItemViewCursorActionEnum): untyped = 9


type QAbstractItemViewStateEnum* = distinct cint
template NoState*(_: type QAbstractItemViewStateEnum): untyped = 0
template DraggingState*(_: type QAbstractItemViewStateEnum): untyped = 1
template DragSelectingState*(_: type QAbstractItemViewStateEnum): untyped = 2
template EditingState*(_: type QAbstractItemViewStateEnum): untyped = 3
template ExpandingState*(_: type QAbstractItemViewStateEnum): untyped = 4
template CollapsingState*(_: type QAbstractItemViewStateEnum): untyped = 5
template AnimatingState*(_: type QAbstractItemViewStateEnum): untyped = 6


type QAbstractItemViewDropIndicatorPositionEnum* = distinct cint
template OnItem*(_: type QAbstractItemViewDropIndicatorPositionEnum): untyped = 0
template AboveItem*(_: type QAbstractItemViewDropIndicatorPositionEnum): untyped = 1
template BelowItem*(_: type QAbstractItemViewDropIndicatorPositionEnum): untyped = 2
template OnViewport*(_: type QAbstractItemViewDropIndicatorPositionEnum): untyped = 3


import ./gen_qabstractitemview_types
export gen_qabstractitemview_types

import
  ../QtCore/gen_qabstractitemmodel_types,
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qitemselectionmodel_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qpaintdevice_types,
  ../QtGui/gen_qpaintengine_types,
  ../QtGui/gen_qpainter_types,
  ../QtGui/gen_qregion_types,
  ./gen_qabstractitemdelegate_types,
  ./gen_qabstractscrollarea,
  ./gen_qstyleoption_types,
  ./gen_qwidget_types
export
  gen_qabstractitemmodel_types,
  gen_qcoreevent_types,
  gen_qitemselectionmodel_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qrect_types,
  gen_qsize_types,
  gen_qvariant_types,
  gen_qevent_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qregion_types,
  gen_qabstractitemdelegate_types,
  gen_qabstractscrollarea,
  gen_qstyleoption_types,
  gen_qwidget_types

type cQAbstractItemView*{.exportc: "QAbstractItemView", incompleteStruct.} = object

proc fcQAbstractItemView_new(parent: pointer): ptr cQAbstractItemView {.importc: "QAbstractItemView_new".}
proc fcQAbstractItemView_new2(): ptr cQAbstractItemView {.importc: "QAbstractItemView_new2".}
proc fcQAbstractItemView_metaObject(self: pointer, ): pointer {.importc: "QAbstractItemView_metaObject".}
proc fcQAbstractItemView_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractItemView_metacast".}
proc fcQAbstractItemView_tr(s: cstring): struct_miqt_string {.importc: "QAbstractItemView_tr".}
proc fcQAbstractItemView_setModel(self: pointer, model: pointer): void {.importc: "QAbstractItemView_setModel".}
proc fcQAbstractItemView_model(self: pointer, ): pointer {.importc: "QAbstractItemView_model".}
proc fcQAbstractItemView_setSelectionModel(self: pointer, selectionModel: pointer): void {.importc: "QAbstractItemView_setSelectionModel".}
proc fcQAbstractItemView_selectionModel(self: pointer, ): pointer {.importc: "QAbstractItemView_selectionModel".}
proc fcQAbstractItemView_setItemDelegate(self: pointer, delegate: pointer): void {.importc: "QAbstractItemView_setItemDelegate".}
proc fcQAbstractItemView_itemDelegate(self: pointer, ): pointer {.importc: "QAbstractItemView_itemDelegate".}
proc fcQAbstractItemView_setSelectionMode(self: pointer, mode: cint): void {.importc: "QAbstractItemView_setSelectionMode".}
proc fcQAbstractItemView_selectionMode(self: pointer, ): cint {.importc: "QAbstractItemView_selectionMode".}
proc fcQAbstractItemView_setSelectionBehavior(self: pointer, behavior: cint): void {.importc: "QAbstractItemView_setSelectionBehavior".}
proc fcQAbstractItemView_selectionBehavior(self: pointer, ): cint {.importc: "QAbstractItemView_selectionBehavior".}
proc fcQAbstractItemView_currentIndex(self: pointer, ): pointer {.importc: "QAbstractItemView_currentIndex".}
proc fcQAbstractItemView_rootIndex(self: pointer, ): pointer {.importc: "QAbstractItemView_rootIndex".}
proc fcQAbstractItemView_setEditTriggers(self: pointer, triggers: cint): void {.importc: "QAbstractItemView_setEditTriggers".}
proc fcQAbstractItemView_editTriggers(self: pointer, ): cint {.importc: "QAbstractItemView_editTriggers".}
proc fcQAbstractItemView_setVerticalScrollMode(self: pointer, mode: cint): void {.importc: "QAbstractItemView_setVerticalScrollMode".}
proc fcQAbstractItemView_verticalScrollMode(self: pointer, ): cint {.importc: "QAbstractItemView_verticalScrollMode".}
proc fcQAbstractItemView_resetVerticalScrollMode(self: pointer, ): void {.importc: "QAbstractItemView_resetVerticalScrollMode".}
proc fcQAbstractItemView_setHorizontalScrollMode(self: pointer, mode: cint): void {.importc: "QAbstractItemView_setHorizontalScrollMode".}
proc fcQAbstractItemView_horizontalScrollMode(self: pointer, ): cint {.importc: "QAbstractItemView_horizontalScrollMode".}
proc fcQAbstractItemView_resetHorizontalScrollMode(self: pointer, ): void {.importc: "QAbstractItemView_resetHorizontalScrollMode".}
proc fcQAbstractItemView_setAutoScroll(self: pointer, enable: bool): void {.importc: "QAbstractItemView_setAutoScroll".}
proc fcQAbstractItemView_hasAutoScroll(self: pointer, ): bool {.importc: "QAbstractItemView_hasAutoScroll".}
proc fcQAbstractItemView_setAutoScrollMargin(self: pointer, margin: cint): void {.importc: "QAbstractItemView_setAutoScrollMargin".}
proc fcQAbstractItemView_autoScrollMargin(self: pointer, ): cint {.importc: "QAbstractItemView_autoScrollMargin".}
proc fcQAbstractItemView_setTabKeyNavigation(self: pointer, enable: bool): void {.importc: "QAbstractItemView_setTabKeyNavigation".}
proc fcQAbstractItemView_tabKeyNavigation(self: pointer, ): bool {.importc: "QAbstractItemView_tabKeyNavigation".}
proc fcQAbstractItemView_setDropIndicatorShown(self: pointer, enable: bool): void {.importc: "QAbstractItemView_setDropIndicatorShown".}
proc fcQAbstractItemView_showDropIndicator(self: pointer, ): bool {.importc: "QAbstractItemView_showDropIndicator".}
proc fcQAbstractItemView_setDragEnabled(self: pointer, enable: bool): void {.importc: "QAbstractItemView_setDragEnabled".}
proc fcQAbstractItemView_dragEnabled(self: pointer, ): bool {.importc: "QAbstractItemView_dragEnabled".}
proc fcQAbstractItemView_setDragDropOverwriteMode(self: pointer, overwrite: bool): void {.importc: "QAbstractItemView_setDragDropOverwriteMode".}
proc fcQAbstractItemView_dragDropOverwriteMode(self: pointer, ): bool {.importc: "QAbstractItemView_dragDropOverwriteMode".}
proc fcQAbstractItemView_setDragDropMode(self: pointer, behavior: cint): void {.importc: "QAbstractItemView_setDragDropMode".}
proc fcQAbstractItemView_dragDropMode(self: pointer, ): cint {.importc: "QAbstractItemView_dragDropMode".}
proc fcQAbstractItemView_setDefaultDropAction(self: pointer, dropAction: cint): void {.importc: "QAbstractItemView_setDefaultDropAction".}
proc fcQAbstractItemView_defaultDropAction(self: pointer, ): cint {.importc: "QAbstractItemView_defaultDropAction".}
proc fcQAbstractItemView_setAlternatingRowColors(self: pointer, enable: bool): void {.importc: "QAbstractItemView_setAlternatingRowColors".}
proc fcQAbstractItemView_alternatingRowColors(self: pointer, ): bool {.importc: "QAbstractItemView_alternatingRowColors".}
proc fcQAbstractItemView_setIconSize(self: pointer, size: pointer): void {.importc: "QAbstractItemView_setIconSize".}
proc fcQAbstractItemView_iconSize(self: pointer, ): pointer {.importc: "QAbstractItemView_iconSize".}
proc fcQAbstractItemView_setTextElideMode(self: pointer, mode: cint): void {.importc: "QAbstractItemView_setTextElideMode".}
proc fcQAbstractItemView_textElideMode(self: pointer, ): cint {.importc: "QAbstractItemView_textElideMode".}
proc fcQAbstractItemView_keyboardSearch(self: pointer, search: struct_miqt_string): void {.importc: "QAbstractItemView_keyboardSearch".}
proc fcQAbstractItemView_visualRect(self: pointer, index: pointer): pointer {.importc: "QAbstractItemView_visualRect".}
proc fcQAbstractItemView_scrollTo(self: pointer, index: pointer, hint: cint): void {.importc: "QAbstractItemView_scrollTo".}
proc fcQAbstractItemView_indexAt(self: pointer, point: pointer): pointer {.importc: "QAbstractItemView_indexAt".}
proc fcQAbstractItemView_sizeHintForIndex(self: pointer, index: pointer): pointer {.importc: "QAbstractItemView_sizeHintForIndex".}
proc fcQAbstractItemView_sizeHintForRow(self: pointer, row: cint): cint {.importc: "QAbstractItemView_sizeHintForRow".}
proc fcQAbstractItemView_sizeHintForColumn(self: pointer, column: cint): cint {.importc: "QAbstractItemView_sizeHintForColumn".}
proc fcQAbstractItemView_openPersistentEditor(self: pointer, index: pointer): void {.importc: "QAbstractItemView_openPersistentEditor".}
proc fcQAbstractItemView_closePersistentEditor(self: pointer, index: pointer): void {.importc: "QAbstractItemView_closePersistentEditor".}
proc fcQAbstractItemView_isPersistentEditorOpen(self: pointer, index: pointer): bool {.importc: "QAbstractItemView_isPersistentEditorOpen".}
proc fcQAbstractItemView_setIndexWidget(self: pointer, index: pointer, widget: pointer): void {.importc: "QAbstractItemView_setIndexWidget".}
proc fcQAbstractItemView_indexWidget(self: pointer, index: pointer): pointer {.importc: "QAbstractItemView_indexWidget".}
proc fcQAbstractItemView_setItemDelegateForRow(self: pointer, row: cint, delegate: pointer): void {.importc: "QAbstractItemView_setItemDelegateForRow".}
proc fcQAbstractItemView_itemDelegateForRow(self: pointer, row: cint): pointer {.importc: "QAbstractItemView_itemDelegateForRow".}
proc fcQAbstractItemView_setItemDelegateForColumn(self: pointer, column: cint, delegate: pointer): void {.importc: "QAbstractItemView_setItemDelegateForColumn".}
proc fcQAbstractItemView_itemDelegateForColumn(self: pointer, column: cint): pointer {.importc: "QAbstractItemView_itemDelegateForColumn".}
proc fcQAbstractItemView_itemDelegateWithIndex(self: pointer, index: pointer): pointer {.importc: "QAbstractItemView_itemDelegateWithIndex".}
proc fcQAbstractItemView_itemDelegateForIndex(self: pointer, index: pointer): pointer {.importc: "QAbstractItemView_itemDelegateForIndex".}
proc fcQAbstractItemView_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QAbstractItemView_inputMethodQuery".}
proc fcQAbstractItemView_reset(self: pointer, ): void {.importc: "QAbstractItemView_reset".}
proc fcQAbstractItemView_setRootIndex(self: pointer, index: pointer): void {.importc: "QAbstractItemView_setRootIndex".}
proc fcQAbstractItemView_doItemsLayout(self: pointer, ): void {.importc: "QAbstractItemView_doItemsLayout".}
proc fcQAbstractItemView_selectAll(self: pointer, ): void {.importc: "QAbstractItemView_selectAll".}
proc fcQAbstractItemView_edit(self: pointer, index: pointer): void {.importc: "QAbstractItemView_edit".}
proc fcQAbstractItemView_clearSelection(self: pointer, ): void {.importc: "QAbstractItemView_clearSelection".}
proc fcQAbstractItemView_setCurrentIndex(self: pointer, index: pointer): void {.importc: "QAbstractItemView_setCurrentIndex".}
proc fcQAbstractItemView_scrollToTop(self: pointer, ): void {.importc: "QAbstractItemView_scrollToTop".}
proc fcQAbstractItemView_scrollToBottom(self: pointer, ): void {.importc: "QAbstractItemView_scrollToBottom".}
proc fcQAbstractItemView_update(self: pointer, index: pointer): void {.importc: "QAbstractItemView_update".}
proc fcQAbstractItemView_pressed(self: pointer, index: pointer): void {.importc: "QAbstractItemView_pressed".}
proc fcQAbstractItemView_connect_pressed(self: pointer, slot: int) {.importc: "QAbstractItemView_connect_pressed".}
proc fcQAbstractItemView_clicked(self: pointer, index: pointer): void {.importc: "QAbstractItemView_clicked".}
proc fcQAbstractItemView_connect_clicked(self: pointer, slot: int) {.importc: "QAbstractItemView_connect_clicked".}
proc fcQAbstractItemView_doubleClicked(self: pointer, index: pointer): void {.importc: "QAbstractItemView_doubleClicked".}
proc fcQAbstractItemView_connect_doubleClicked(self: pointer, slot: int) {.importc: "QAbstractItemView_connect_doubleClicked".}
proc fcQAbstractItemView_activated(self: pointer, index: pointer): void {.importc: "QAbstractItemView_activated".}
proc fcQAbstractItemView_connect_activated(self: pointer, slot: int) {.importc: "QAbstractItemView_connect_activated".}
proc fcQAbstractItemView_entered(self: pointer, index: pointer): void {.importc: "QAbstractItemView_entered".}
proc fcQAbstractItemView_connect_entered(self: pointer, slot: int) {.importc: "QAbstractItemView_connect_entered".}
proc fcQAbstractItemView_viewportEntered(self: pointer, ): void {.importc: "QAbstractItemView_viewportEntered".}
proc fcQAbstractItemView_connect_viewportEntered(self: pointer, slot: int) {.importc: "QAbstractItemView_connect_viewportEntered".}
proc fcQAbstractItemView_iconSizeChanged(self: pointer, size: pointer): void {.importc: "QAbstractItemView_iconSizeChanged".}
proc fcQAbstractItemView_connect_iconSizeChanged(self: pointer, slot: int) {.importc: "QAbstractItemView_connect_iconSizeChanged".}
proc fcQAbstractItemView_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractItemView_tr2".}
proc fcQAbstractItemView_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractItemView_tr3".}
proc fQAbstractItemView_virtualbase_setModel(self: pointer, model: pointer): void{.importc: "QAbstractItemView_virtualbase_setModel".}
proc fcQAbstractItemView_override_virtual_setModel(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_setModel".}
proc fQAbstractItemView_virtualbase_setSelectionModel(self: pointer, selectionModel: pointer): void{.importc: "QAbstractItemView_virtualbase_setSelectionModel".}
proc fcQAbstractItemView_override_virtual_setSelectionModel(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_setSelectionModel".}
proc fQAbstractItemView_virtualbase_keyboardSearch(self: pointer, search: struct_miqt_string): void{.importc: "QAbstractItemView_virtualbase_keyboardSearch".}
proc fcQAbstractItemView_override_virtual_keyboardSearch(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_keyboardSearch".}
proc fcQAbstractItemView_override_virtual_visualRect(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_visualRect".}
proc fcQAbstractItemView_override_virtual_scrollTo(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_scrollTo".}
proc fcQAbstractItemView_override_virtual_indexAt(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_indexAt".}
proc fQAbstractItemView_virtualbase_sizeHintForRow(self: pointer, row: cint): cint{.importc: "QAbstractItemView_virtualbase_sizeHintForRow".}
proc fcQAbstractItemView_override_virtual_sizeHintForRow(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_sizeHintForRow".}
proc fQAbstractItemView_virtualbase_sizeHintForColumn(self: pointer, column: cint): cint{.importc: "QAbstractItemView_virtualbase_sizeHintForColumn".}
proc fcQAbstractItemView_override_virtual_sizeHintForColumn(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_sizeHintForColumn".}
proc fQAbstractItemView_virtualbase_itemDelegateForIndex(self: pointer, index: pointer): pointer{.importc: "QAbstractItemView_virtualbase_itemDelegateForIndex".}
proc fcQAbstractItemView_override_virtual_itemDelegateForIndex(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_itemDelegateForIndex".}
proc fQAbstractItemView_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QAbstractItemView_virtualbase_inputMethodQuery".}
proc fcQAbstractItemView_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_inputMethodQuery".}
proc fQAbstractItemView_virtualbase_reset(self: pointer, ): void{.importc: "QAbstractItemView_virtualbase_reset".}
proc fcQAbstractItemView_override_virtual_reset(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_reset".}
proc fQAbstractItemView_virtualbase_setRootIndex(self: pointer, index: pointer): void{.importc: "QAbstractItemView_virtualbase_setRootIndex".}
proc fcQAbstractItemView_override_virtual_setRootIndex(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_setRootIndex".}
proc fQAbstractItemView_virtualbase_doItemsLayout(self: pointer, ): void{.importc: "QAbstractItemView_virtualbase_doItemsLayout".}
proc fcQAbstractItemView_override_virtual_doItemsLayout(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_doItemsLayout".}
proc fQAbstractItemView_virtualbase_selectAll(self: pointer, ): void{.importc: "QAbstractItemView_virtualbase_selectAll".}
proc fcQAbstractItemView_override_virtual_selectAll(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_selectAll".}
proc fQAbstractItemView_virtualbase_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void{.importc: "QAbstractItemView_virtualbase_dataChanged".}
proc fcQAbstractItemView_override_virtual_dataChanged(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_dataChanged".}
proc fQAbstractItemView_virtualbase_rowsInserted(self: pointer, parent: pointer, start: cint, endVal: cint): void{.importc: "QAbstractItemView_virtualbase_rowsInserted".}
proc fcQAbstractItemView_override_virtual_rowsInserted(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_rowsInserted".}
proc fQAbstractItemView_virtualbase_rowsAboutToBeRemoved(self: pointer, parent: pointer, start: cint, endVal: cint): void{.importc: "QAbstractItemView_virtualbase_rowsAboutToBeRemoved".}
proc fcQAbstractItemView_override_virtual_rowsAboutToBeRemoved(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_rowsAboutToBeRemoved".}
proc fQAbstractItemView_virtualbase_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void{.importc: "QAbstractItemView_virtualbase_selectionChanged".}
proc fcQAbstractItemView_override_virtual_selectionChanged(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_selectionChanged".}
proc fQAbstractItemView_virtualbase_currentChanged(self: pointer, current: pointer, previous: pointer): void{.importc: "QAbstractItemView_virtualbase_currentChanged".}
proc fcQAbstractItemView_override_virtual_currentChanged(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_currentChanged".}
proc fQAbstractItemView_virtualbase_updateEditorData(self: pointer, ): void{.importc: "QAbstractItemView_virtualbase_updateEditorData".}
proc fcQAbstractItemView_override_virtual_updateEditorData(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_updateEditorData".}
proc fQAbstractItemView_virtualbase_updateEditorGeometries(self: pointer, ): void{.importc: "QAbstractItemView_virtualbase_updateEditorGeometries".}
proc fcQAbstractItemView_override_virtual_updateEditorGeometries(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_updateEditorGeometries".}
proc fQAbstractItemView_virtualbase_updateGeometries(self: pointer, ): void{.importc: "QAbstractItemView_virtualbase_updateGeometries".}
proc fcQAbstractItemView_override_virtual_updateGeometries(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_updateGeometries".}
proc fQAbstractItemView_virtualbase_verticalScrollbarAction(self: pointer, action: cint): void{.importc: "QAbstractItemView_virtualbase_verticalScrollbarAction".}
proc fcQAbstractItemView_override_virtual_verticalScrollbarAction(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_verticalScrollbarAction".}
proc fQAbstractItemView_virtualbase_horizontalScrollbarAction(self: pointer, action: cint): void{.importc: "QAbstractItemView_virtualbase_horizontalScrollbarAction".}
proc fcQAbstractItemView_override_virtual_horizontalScrollbarAction(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_horizontalScrollbarAction".}
proc fQAbstractItemView_virtualbase_verticalScrollbarValueChanged(self: pointer, value: cint): void{.importc: "QAbstractItemView_virtualbase_verticalScrollbarValueChanged".}
proc fcQAbstractItemView_override_virtual_verticalScrollbarValueChanged(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_verticalScrollbarValueChanged".}
proc fQAbstractItemView_virtualbase_horizontalScrollbarValueChanged(self: pointer, value: cint): void{.importc: "QAbstractItemView_virtualbase_horizontalScrollbarValueChanged".}
proc fcQAbstractItemView_override_virtual_horizontalScrollbarValueChanged(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_horizontalScrollbarValueChanged".}
proc fQAbstractItemView_virtualbase_closeEditor(self: pointer, editor: pointer, hint: cint): void{.importc: "QAbstractItemView_virtualbase_closeEditor".}
proc fcQAbstractItemView_override_virtual_closeEditor(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_closeEditor".}
proc fQAbstractItemView_virtualbase_commitData(self: pointer, editor: pointer): void{.importc: "QAbstractItemView_virtualbase_commitData".}
proc fcQAbstractItemView_override_virtual_commitData(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_commitData".}
proc fQAbstractItemView_virtualbase_editorDestroyed(self: pointer, editor: pointer): void{.importc: "QAbstractItemView_virtualbase_editorDestroyed".}
proc fcQAbstractItemView_override_virtual_editorDestroyed(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_editorDestroyed".}
proc fcQAbstractItemView_override_virtual_moveCursor(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_moveCursor".}
proc fcQAbstractItemView_override_virtual_horizontalOffset(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_horizontalOffset".}
proc fcQAbstractItemView_override_virtual_verticalOffset(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_verticalOffset".}
proc fcQAbstractItemView_override_virtual_isIndexHidden(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_isIndexHidden".}
proc fcQAbstractItemView_override_virtual_setSelection(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_setSelection".}
proc fcQAbstractItemView_override_virtual_visualRegionForSelection(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_visualRegionForSelection".}
proc fQAbstractItemView_virtualbase_selectedIndexes(self: pointer, ): struct_miqt_array{.importc: "QAbstractItemView_virtualbase_selectedIndexes".}
proc fcQAbstractItemView_override_virtual_selectedIndexes(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_selectedIndexes".}
proc fQAbstractItemView_virtualbase_edit2(self: pointer, index: pointer, trigger: cint, event: pointer): bool{.importc: "QAbstractItemView_virtualbase_edit2".}
proc fcQAbstractItemView_override_virtual_edit2(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_edit2".}
proc fQAbstractItemView_virtualbase_selectionCommand(self: pointer, index: pointer, event: pointer): cint{.importc: "QAbstractItemView_virtualbase_selectionCommand".}
proc fcQAbstractItemView_override_virtual_selectionCommand(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_selectionCommand".}
proc fQAbstractItemView_virtualbase_startDrag(self: pointer, supportedActions: cint): void{.importc: "QAbstractItemView_virtualbase_startDrag".}
proc fcQAbstractItemView_override_virtual_startDrag(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_startDrag".}
proc fQAbstractItemView_virtualbase_initViewItemOption(self: pointer, option: pointer): void{.importc: "QAbstractItemView_virtualbase_initViewItemOption".}
proc fcQAbstractItemView_override_virtual_initViewItemOption(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_initViewItemOption".}
proc fQAbstractItemView_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QAbstractItemView_virtualbase_focusNextPrevChild".}
proc fcQAbstractItemView_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_focusNextPrevChild".}
proc fQAbstractItemView_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAbstractItemView_virtualbase_event".}
proc fcQAbstractItemView_override_virtual_event(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_event".}
proc fQAbstractItemView_virtualbase_viewportEvent(self: pointer, event: pointer): bool{.importc: "QAbstractItemView_virtualbase_viewportEvent".}
proc fcQAbstractItemView_override_virtual_viewportEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_viewportEvent".}
proc fQAbstractItemView_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_mousePressEvent".}
proc fcQAbstractItemView_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_mousePressEvent".}
proc fQAbstractItemView_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_mouseMoveEvent".}
proc fcQAbstractItemView_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_mouseMoveEvent".}
proc fQAbstractItemView_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_mouseReleaseEvent".}
proc fcQAbstractItemView_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_mouseReleaseEvent".}
proc fQAbstractItemView_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_mouseDoubleClickEvent".}
proc fcQAbstractItemView_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_mouseDoubleClickEvent".}
proc fQAbstractItemView_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_dragEnterEvent".}
proc fcQAbstractItemView_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_dragEnterEvent".}
proc fQAbstractItemView_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_dragMoveEvent".}
proc fcQAbstractItemView_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_dragMoveEvent".}
proc fQAbstractItemView_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_dragLeaveEvent".}
proc fcQAbstractItemView_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_dragLeaveEvent".}
proc fQAbstractItemView_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_dropEvent".}
proc fcQAbstractItemView_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_dropEvent".}
proc fQAbstractItemView_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_focusInEvent".}
proc fcQAbstractItemView_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_focusInEvent".}
proc fQAbstractItemView_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_focusOutEvent".}
proc fcQAbstractItemView_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_focusOutEvent".}
proc fQAbstractItemView_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_keyPressEvent".}
proc fcQAbstractItemView_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_keyPressEvent".}
proc fQAbstractItemView_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_resizeEvent".}
proc fcQAbstractItemView_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_resizeEvent".}
proc fQAbstractItemView_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_timerEvent".}
proc fcQAbstractItemView_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_timerEvent".}
proc fQAbstractItemView_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_inputMethodEvent".}
proc fcQAbstractItemView_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_inputMethodEvent".}
proc fQAbstractItemView_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool{.importc: "QAbstractItemView_virtualbase_eventFilter".}
proc fcQAbstractItemView_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_eventFilter".}
proc fQAbstractItemView_virtualbase_viewportSizeHint(self: pointer, ): pointer{.importc: "QAbstractItemView_virtualbase_viewportSizeHint".}
proc fcQAbstractItemView_override_virtual_viewportSizeHint(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_viewportSizeHint".}
proc fQAbstractItemView_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QAbstractItemView_virtualbase_minimumSizeHint".}
proc fcQAbstractItemView_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_minimumSizeHint".}
proc fQAbstractItemView_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QAbstractItemView_virtualbase_sizeHint".}
proc fcQAbstractItemView_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_sizeHint".}
proc fQAbstractItemView_virtualbase_setupViewport(self: pointer, viewport: pointer): void{.importc: "QAbstractItemView_virtualbase_setupViewport".}
proc fcQAbstractItemView_override_virtual_setupViewport(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_setupViewport".}
proc fQAbstractItemView_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QAbstractItemView_virtualbase_paintEvent".}
proc fcQAbstractItemView_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_paintEvent".}
proc fQAbstractItemView_virtualbase_wheelEvent(self: pointer, param1: pointer): void{.importc: "QAbstractItemView_virtualbase_wheelEvent".}
proc fcQAbstractItemView_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_wheelEvent".}
proc fQAbstractItemView_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QAbstractItemView_virtualbase_contextMenuEvent".}
proc fcQAbstractItemView_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_contextMenuEvent".}
proc fQAbstractItemView_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void{.importc: "QAbstractItemView_virtualbase_scrollContentsBy".}
proc fcQAbstractItemView_override_virtual_scrollContentsBy(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_scrollContentsBy".}
proc fQAbstractItemView_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QAbstractItemView_virtualbase_changeEvent".}
proc fcQAbstractItemView_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_changeEvent".}
proc fQAbstractItemView_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QAbstractItemView_virtualbase_initStyleOption".}
proc fcQAbstractItemView_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_initStyleOption".}
proc fQAbstractItemView_virtualbase_devType(self: pointer, ): cint{.importc: "QAbstractItemView_virtualbase_devType".}
proc fcQAbstractItemView_override_virtual_devType(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_devType".}
proc fQAbstractItemView_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QAbstractItemView_virtualbase_setVisible".}
proc fcQAbstractItemView_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_setVisible".}
proc fQAbstractItemView_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QAbstractItemView_virtualbase_heightForWidth".}
proc fcQAbstractItemView_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_heightForWidth".}
proc fQAbstractItemView_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QAbstractItemView_virtualbase_hasHeightForWidth".}
proc fcQAbstractItemView_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_hasHeightForWidth".}
proc fQAbstractItemView_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QAbstractItemView_virtualbase_paintEngine".}
proc fcQAbstractItemView_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_paintEngine".}
proc fQAbstractItemView_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_keyReleaseEvent".}
proc fcQAbstractItemView_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_keyReleaseEvent".}
proc fQAbstractItemView_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_enterEvent".}
proc fcQAbstractItemView_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_enterEvent".}
proc fQAbstractItemView_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_leaveEvent".}
proc fcQAbstractItemView_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_leaveEvent".}
proc fQAbstractItemView_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_moveEvent".}
proc fcQAbstractItemView_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_moveEvent".}
proc fQAbstractItemView_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_closeEvent".}
proc fcQAbstractItemView_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_closeEvent".}
proc fQAbstractItemView_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_tabletEvent".}
proc fcQAbstractItemView_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_tabletEvent".}
proc fQAbstractItemView_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_actionEvent".}
proc fcQAbstractItemView_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_actionEvent".}
proc fQAbstractItemView_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_showEvent".}
proc fcQAbstractItemView_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_showEvent".}
proc fQAbstractItemView_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_hideEvent".}
proc fcQAbstractItemView_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_hideEvent".}
proc fQAbstractItemView_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QAbstractItemView_virtualbase_nativeEvent".}
proc fcQAbstractItemView_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_nativeEvent".}
proc fQAbstractItemView_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QAbstractItemView_virtualbase_metric".}
proc fcQAbstractItemView_override_virtual_metric(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_metric".}
proc fQAbstractItemView_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QAbstractItemView_virtualbase_initPainter".}
proc fcQAbstractItemView_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_initPainter".}
proc fQAbstractItemView_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QAbstractItemView_virtualbase_redirected".}
proc fcQAbstractItemView_override_virtual_redirected(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_redirected".}
proc fQAbstractItemView_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QAbstractItemView_virtualbase_sharedPainter".}
proc fcQAbstractItemView_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_sharedPainter".}
proc fQAbstractItemView_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_childEvent".}
proc fcQAbstractItemView_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_childEvent".}
proc fQAbstractItemView_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_customEvent".}
proc fcQAbstractItemView_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_customEvent".}
proc fQAbstractItemView_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractItemView_virtualbase_connectNotify".}
proc fcQAbstractItemView_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_connectNotify".}
proc fQAbstractItemView_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractItemView_virtualbase_disconnectNotify".}
proc fcQAbstractItemView_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_disconnectNotify".}
proc fcQAbstractItemView_delete(self: pointer) {.importc: "QAbstractItemView_delete".}


func init*(T: type gen_qabstractitemview_types.QAbstractItemView, h: ptr cQAbstractItemView): gen_qabstractitemview_types.QAbstractItemView =
  T(h: h)
proc create*(T: type gen_qabstractitemview_types.QAbstractItemView, parent: gen_qwidget_types.QWidget): gen_qabstractitemview_types.QAbstractItemView =
  gen_qabstractitemview_types.QAbstractItemView.init(fcQAbstractItemView_new(parent.h))

proc create*(T: type gen_qabstractitemview_types.QAbstractItemView, ): gen_qabstractitemview_types.QAbstractItemView =
  gen_qabstractitemview_types.QAbstractItemView.init(fcQAbstractItemView_new2())

proc metaObject*(self: gen_qabstractitemview_types.QAbstractItemView, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractItemView_metaObject(self.h))

proc metacast*(self: gen_qabstractitemview_types.QAbstractItemView, param1: cstring): pointer =
  fcQAbstractItemView_metacast(self.h, param1)

proc tr*(_: type gen_qabstractitemview_types.QAbstractItemView, s: cstring): string =
  let v_ms = fcQAbstractItemView_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setModel*(self: gen_qabstractitemview_types.QAbstractItemView, model: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQAbstractItemView_setModel(self.h, model.h)

proc model*(self: gen_qabstractitemview_types.QAbstractItemView, ): gen_qabstractitemmodel_types.QAbstractItemModel =
  gen_qabstractitemmodel_types.QAbstractItemModel(h: fcQAbstractItemView_model(self.h))

proc setSelectionModel*(self: gen_qabstractitemview_types.QAbstractItemView, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void =
  fcQAbstractItemView_setSelectionModel(self.h, selectionModel.h)

proc selectionModel*(self: gen_qabstractitemview_types.QAbstractItemView, ): gen_qitemselectionmodel_types.QItemSelectionModel =
  gen_qitemselectionmodel_types.QItemSelectionModel(h: fcQAbstractItemView_selectionModel(self.h))

proc setItemDelegate*(self: gen_qabstractitemview_types.QAbstractItemView, delegate: gen_qabstractitemdelegate_types.QAbstractItemDelegate): void =
  fcQAbstractItemView_setItemDelegate(self.h, delegate.h)

proc itemDelegate*(self: gen_qabstractitemview_types.QAbstractItemView, ): gen_qabstractitemdelegate_types.QAbstractItemDelegate =
  gen_qabstractitemdelegate_types.QAbstractItemDelegate(h: fcQAbstractItemView_itemDelegate(self.h))

proc setSelectionMode*(self: gen_qabstractitemview_types.QAbstractItemView, mode: cint): void =
  fcQAbstractItemView_setSelectionMode(self.h, cint(mode))

proc selectionMode*(self: gen_qabstractitemview_types.QAbstractItemView, ): cint =
  cint(fcQAbstractItemView_selectionMode(self.h))

proc setSelectionBehavior*(self: gen_qabstractitemview_types.QAbstractItemView, behavior: cint): void =
  fcQAbstractItemView_setSelectionBehavior(self.h, cint(behavior))

proc selectionBehavior*(self: gen_qabstractitemview_types.QAbstractItemView, ): cint =
  cint(fcQAbstractItemView_selectionBehavior(self.h))

proc currentIndex*(self: gen_qabstractitemview_types.QAbstractItemView, ): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractItemView_currentIndex(self.h))

proc rootIndex*(self: gen_qabstractitemview_types.QAbstractItemView, ): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractItemView_rootIndex(self.h))

proc setEditTriggers*(self: gen_qabstractitemview_types.QAbstractItemView, triggers: cint): void =
  fcQAbstractItemView_setEditTriggers(self.h, cint(triggers))

proc editTriggers*(self: gen_qabstractitemview_types.QAbstractItemView, ): cint =
  cint(fcQAbstractItemView_editTriggers(self.h))

proc setVerticalScrollMode*(self: gen_qabstractitemview_types.QAbstractItemView, mode: cint): void =
  fcQAbstractItemView_setVerticalScrollMode(self.h, cint(mode))

proc verticalScrollMode*(self: gen_qabstractitemview_types.QAbstractItemView, ): cint =
  cint(fcQAbstractItemView_verticalScrollMode(self.h))

proc resetVerticalScrollMode*(self: gen_qabstractitemview_types.QAbstractItemView, ): void =
  fcQAbstractItemView_resetVerticalScrollMode(self.h)

proc setHorizontalScrollMode*(self: gen_qabstractitemview_types.QAbstractItemView, mode: cint): void =
  fcQAbstractItemView_setHorizontalScrollMode(self.h, cint(mode))

proc horizontalScrollMode*(self: gen_qabstractitemview_types.QAbstractItemView, ): cint =
  cint(fcQAbstractItemView_horizontalScrollMode(self.h))

proc resetHorizontalScrollMode*(self: gen_qabstractitemview_types.QAbstractItemView, ): void =
  fcQAbstractItemView_resetHorizontalScrollMode(self.h)

proc setAutoScroll*(self: gen_qabstractitemview_types.QAbstractItemView, enable: bool): void =
  fcQAbstractItemView_setAutoScroll(self.h, enable)

proc hasAutoScroll*(self: gen_qabstractitemview_types.QAbstractItemView, ): bool =
  fcQAbstractItemView_hasAutoScroll(self.h)

proc setAutoScrollMargin*(self: gen_qabstractitemview_types.QAbstractItemView, margin: cint): void =
  fcQAbstractItemView_setAutoScrollMargin(self.h, margin)

proc autoScrollMargin*(self: gen_qabstractitemview_types.QAbstractItemView, ): cint =
  fcQAbstractItemView_autoScrollMargin(self.h)

proc setTabKeyNavigation*(self: gen_qabstractitemview_types.QAbstractItemView, enable: bool): void =
  fcQAbstractItemView_setTabKeyNavigation(self.h, enable)

proc tabKeyNavigation*(self: gen_qabstractitemview_types.QAbstractItemView, ): bool =
  fcQAbstractItemView_tabKeyNavigation(self.h)

proc setDropIndicatorShown*(self: gen_qabstractitemview_types.QAbstractItemView, enable: bool): void =
  fcQAbstractItemView_setDropIndicatorShown(self.h, enable)

proc showDropIndicator*(self: gen_qabstractitemview_types.QAbstractItemView, ): bool =
  fcQAbstractItemView_showDropIndicator(self.h)

proc setDragEnabled*(self: gen_qabstractitemview_types.QAbstractItemView, enable: bool): void =
  fcQAbstractItemView_setDragEnabled(self.h, enable)

proc dragEnabled*(self: gen_qabstractitemview_types.QAbstractItemView, ): bool =
  fcQAbstractItemView_dragEnabled(self.h)

proc setDragDropOverwriteMode*(self: gen_qabstractitemview_types.QAbstractItemView, overwrite: bool): void =
  fcQAbstractItemView_setDragDropOverwriteMode(self.h, overwrite)

proc dragDropOverwriteMode*(self: gen_qabstractitemview_types.QAbstractItemView, ): bool =
  fcQAbstractItemView_dragDropOverwriteMode(self.h)

proc setDragDropMode*(self: gen_qabstractitemview_types.QAbstractItemView, behavior: cint): void =
  fcQAbstractItemView_setDragDropMode(self.h, cint(behavior))

proc dragDropMode*(self: gen_qabstractitemview_types.QAbstractItemView, ): cint =
  cint(fcQAbstractItemView_dragDropMode(self.h))

proc setDefaultDropAction*(self: gen_qabstractitemview_types.QAbstractItemView, dropAction: cint): void =
  fcQAbstractItemView_setDefaultDropAction(self.h, cint(dropAction))

proc defaultDropAction*(self: gen_qabstractitemview_types.QAbstractItemView, ): cint =
  cint(fcQAbstractItemView_defaultDropAction(self.h))

proc setAlternatingRowColors*(self: gen_qabstractitemview_types.QAbstractItemView, enable: bool): void =
  fcQAbstractItemView_setAlternatingRowColors(self.h, enable)

proc alternatingRowColors*(self: gen_qabstractitemview_types.QAbstractItemView, ): bool =
  fcQAbstractItemView_alternatingRowColors(self.h)

proc setIconSize*(self: gen_qabstractitemview_types.QAbstractItemView, size: gen_qsize_types.QSize): void =
  fcQAbstractItemView_setIconSize(self.h, size.h)

proc iconSize*(self: gen_qabstractitemview_types.QAbstractItemView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractItemView_iconSize(self.h))

proc setTextElideMode*(self: gen_qabstractitemview_types.QAbstractItemView, mode: cint): void =
  fcQAbstractItemView_setTextElideMode(self.h, cint(mode))

proc textElideMode*(self: gen_qabstractitemview_types.QAbstractItemView, ): cint =
  cint(fcQAbstractItemView_textElideMode(self.h))

proc keyboardSearch*(self: gen_qabstractitemview_types.QAbstractItemView, search: string): void =
  fcQAbstractItemView_keyboardSearch(self.h, struct_miqt_string(data: search, len: csize_t(len(search))))

proc visualRect*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQAbstractItemView_visualRect(self.h, index.h))

proc scrollTo*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void =
  fcQAbstractItemView_scrollTo(self.h, index.h, cint(hint))

proc indexAt*(self: gen_qabstractitemview_types.QAbstractItemView, point: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractItemView_indexAt(self.h, point.h))

proc sizeHintForIndex*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractItemView_sizeHintForIndex(self.h, index.h))

proc sizeHintForRow*(self: gen_qabstractitemview_types.QAbstractItemView, row: cint): cint =
  fcQAbstractItemView_sizeHintForRow(self.h, row)

proc sizeHintForColumn*(self: gen_qabstractitemview_types.QAbstractItemView, column: cint): cint =
  fcQAbstractItemView_sizeHintForColumn(self.h, column)

proc openPersistentEditor*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemView_openPersistentEditor(self.h, index.h)

proc closePersistentEditor*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemView_closePersistentEditor(self.h, index.h)

proc isPersistentEditorOpen*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractItemView_isPersistentEditorOpen(self.h, index.h)

proc setIndexWidget*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex, widget: gen_qwidget_types.QWidget): void =
  fcQAbstractItemView_setIndexWidget(self.h, index.h, widget.h)

proc indexWidget*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQAbstractItemView_indexWidget(self.h, index.h))

proc setItemDelegateForRow*(self: gen_qabstractitemview_types.QAbstractItemView, row: cint, delegate: gen_qabstractitemdelegate_types.QAbstractItemDelegate): void =
  fcQAbstractItemView_setItemDelegateForRow(self.h, row, delegate.h)

proc itemDelegateForRow*(self: gen_qabstractitemview_types.QAbstractItemView, row: cint): gen_qabstractitemdelegate_types.QAbstractItemDelegate =
  gen_qabstractitemdelegate_types.QAbstractItemDelegate(h: fcQAbstractItemView_itemDelegateForRow(self.h, row))

proc setItemDelegateForColumn*(self: gen_qabstractitemview_types.QAbstractItemView, column: cint, delegate: gen_qabstractitemdelegate_types.QAbstractItemDelegate): void =
  fcQAbstractItemView_setItemDelegateForColumn(self.h, column, delegate.h)

proc itemDelegateForColumn*(self: gen_qabstractitemview_types.QAbstractItemView, column: cint): gen_qabstractitemdelegate_types.QAbstractItemDelegate =
  gen_qabstractitemdelegate_types.QAbstractItemDelegate(h: fcQAbstractItemView_itemDelegateForColumn(self.h, column))

proc itemDelegate*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemdelegate_types.QAbstractItemDelegate =
  gen_qabstractitemdelegate_types.QAbstractItemDelegate(h: fcQAbstractItemView_itemDelegateWithIndex(self.h, index.h))

proc itemDelegateForIndex*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemdelegate_types.QAbstractItemDelegate =
  gen_qabstractitemdelegate_types.QAbstractItemDelegate(h: fcQAbstractItemView_itemDelegateForIndex(self.h, index.h))

proc inputMethodQuery*(self: gen_qabstractitemview_types.QAbstractItemView, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractItemView_inputMethodQuery(self.h, cint(query)))

proc reset*(self: gen_qabstractitemview_types.QAbstractItemView, ): void =
  fcQAbstractItemView_reset(self.h)

proc setRootIndex*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemView_setRootIndex(self.h, index.h)

proc doItemsLayout*(self: gen_qabstractitemview_types.QAbstractItemView, ): void =
  fcQAbstractItemView_doItemsLayout(self.h)

proc selectAll*(self: gen_qabstractitemview_types.QAbstractItemView, ): void =
  fcQAbstractItemView_selectAll(self.h)

proc edit*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemView_edit(self.h, index.h)

proc clearSelection*(self: gen_qabstractitemview_types.QAbstractItemView, ): void =
  fcQAbstractItemView_clearSelection(self.h)

proc setCurrentIndex*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemView_setCurrentIndex(self.h, index.h)

proc scrollToTop*(self: gen_qabstractitemview_types.QAbstractItemView, ): void =
  fcQAbstractItemView_scrollToTop(self.h)

proc scrollToBottom*(self: gen_qabstractitemview_types.QAbstractItemView, ): void =
  fcQAbstractItemView_scrollToBottom(self.h)

proc update*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemView_update(self.h, index.h)

proc pressed*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemView_pressed(self.h, index.h)

type QAbstractItemViewpressedSlot* = proc(index: gen_qabstractitemmodel_types.QModelIndex)
proc miqt_exec_callback_QAbstractItemView_pressed(slot: int, index: pointer) {.exportc.} =
  let nimfunc = cast[ptr QAbstractItemViewpressedSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  nimfunc[](slotval1)

proc onpressed*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewpressedSlot) =
  var tmp = new QAbstractItemViewpressedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_connect_pressed(self.h, cast[int](addr tmp[]))

proc clicked*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemView_clicked(self.h, index.h)

type QAbstractItemViewclickedSlot* = proc(index: gen_qabstractitemmodel_types.QModelIndex)
proc miqt_exec_callback_QAbstractItemView_clicked(slot: int, index: pointer) {.exportc.} =
  let nimfunc = cast[ptr QAbstractItemViewclickedSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  nimfunc[](slotval1)

proc onclicked*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewclickedSlot) =
  var tmp = new QAbstractItemViewclickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_connect_clicked(self.h, cast[int](addr tmp[]))

proc doubleClicked*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemView_doubleClicked(self.h, index.h)

type QAbstractItemViewdoubleClickedSlot* = proc(index: gen_qabstractitemmodel_types.QModelIndex)
proc miqt_exec_callback_QAbstractItemView_doubleClicked(slot: int, index: pointer) {.exportc.} =
  let nimfunc = cast[ptr QAbstractItemViewdoubleClickedSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  nimfunc[](slotval1)

proc ondoubleClicked*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewdoubleClickedSlot) =
  var tmp = new QAbstractItemViewdoubleClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_connect_doubleClicked(self.h, cast[int](addr tmp[]))

proc activated*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemView_activated(self.h, index.h)

type QAbstractItemViewactivatedSlot* = proc(index: gen_qabstractitemmodel_types.QModelIndex)
proc miqt_exec_callback_QAbstractItemView_activated(slot: int, index: pointer) {.exportc.} =
  let nimfunc = cast[ptr QAbstractItemViewactivatedSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  nimfunc[](slotval1)

proc onactivated*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewactivatedSlot) =
  var tmp = new QAbstractItemViewactivatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_connect_activated(self.h, cast[int](addr tmp[]))

proc entered*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemView_entered(self.h, index.h)

type QAbstractItemViewenteredSlot* = proc(index: gen_qabstractitemmodel_types.QModelIndex)
proc miqt_exec_callback_QAbstractItemView_entered(slot: int, index: pointer) {.exportc.} =
  let nimfunc = cast[ptr QAbstractItemViewenteredSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  nimfunc[](slotval1)

proc onentered*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewenteredSlot) =
  var tmp = new QAbstractItemViewenteredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_connect_entered(self.h, cast[int](addr tmp[]))

proc viewportEntered*(self: gen_qabstractitemview_types.QAbstractItemView, ): void =
  fcQAbstractItemView_viewportEntered(self.h)

type QAbstractItemViewviewportEnteredSlot* = proc()
proc miqt_exec_callback_QAbstractItemView_viewportEntered(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QAbstractItemViewviewportEnteredSlot](cast[pointer](slot))
  nimfunc[]()

proc onviewportEntered*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewviewportEnteredSlot) =
  var tmp = new QAbstractItemViewviewportEnteredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_connect_viewportEntered(self.h, cast[int](addr tmp[]))

proc iconSizeChanged*(self: gen_qabstractitemview_types.QAbstractItemView, size: gen_qsize_types.QSize): void =
  fcQAbstractItemView_iconSizeChanged(self.h, size.h)

type QAbstractItemViewiconSizeChangedSlot* = proc(size: gen_qsize_types.QSize)
proc miqt_exec_callback_QAbstractItemView_iconSizeChanged(slot: int, size: pointer) {.exportc.} =
  let nimfunc = cast[ptr QAbstractItemViewiconSizeChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qsize_types.QSize(h: size)

  nimfunc[](slotval1)

proc oniconSizeChanged*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewiconSizeChangedSlot) =
  var tmp = new QAbstractItemViewiconSizeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_connect_iconSizeChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qabstractitemview_types.QAbstractItemView, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractItemView_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qabstractitemview_types.QAbstractItemView, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractItemView_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QAbstractItemViewsetModel*(self: gen_qabstractitemview_types.QAbstractItemView, model: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fQAbstractItemView_virtualbase_setModel(self.h, model.h)

type QAbstractItemViewsetModelProc* = proc(model: gen_qabstractitemmodel_types.QAbstractItemModel): void
proc onsetModel*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewsetModelProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewsetModelProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_setModel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_setModel(self: ptr cQAbstractItemView, slot: int, model: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_setModel ".} =
  var nimfunc = cast[ptr QAbstractItemViewsetModelProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model)


  nimfunc[](slotval1)
proc QAbstractItemViewsetSelectionModel*(self: gen_qabstractitemview_types.QAbstractItemView, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void =
  fQAbstractItemView_virtualbase_setSelectionModel(self.h, selectionModel.h)

type QAbstractItemViewsetSelectionModelProc* = proc(selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void
proc onsetSelectionModel*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewsetSelectionModelProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewsetSelectionModelProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_setSelectionModel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_setSelectionModel(self: ptr cQAbstractItemView, slot: int, selectionModel: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_setSelectionModel ".} =
  var nimfunc = cast[ptr QAbstractItemViewsetSelectionModelProc](cast[pointer](slot))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelectionModel(h: selectionModel)


  nimfunc[](slotval1)
proc QAbstractItemViewkeyboardSearch*(self: gen_qabstractitemview_types.QAbstractItemView, search: string): void =
  fQAbstractItemView_virtualbase_keyboardSearch(self.h, struct_miqt_string(data: search, len: csize_t(len(search))))

type QAbstractItemViewkeyboardSearchProc* = proc(search: string): void
proc onkeyboardSearch*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewkeyboardSearchProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewkeyboardSearchProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_keyboardSearch(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_keyboardSearch(self: ptr cQAbstractItemView, slot: int, search: struct_miqt_string): void {.exportc: "miqt_exec_callback_QAbstractItemView_keyboardSearch ".} =
  var nimfunc = cast[ptr QAbstractItemViewkeyboardSearchProc](cast[pointer](slot))
  let vsearch_ms = search
  let vsearchx_ret = string.fromBytes(toOpenArrayByte(vsearch_ms.data, 0, int(vsearch_ms.len)-1))
  c_free(vsearch_ms.data)
  let slotval1 = vsearchx_ret


  nimfunc[](slotval1)
type QAbstractItemViewvisualRectProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect
proc onvisualRect*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewvisualRectProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewvisualRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_visualRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_visualRect(self: ptr cQAbstractItemView, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractItemView_visualRect ".} =
  var nimfunc = cast[ptr QAbstractItemViewvisualRectProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
type QAbstractItemViewscrollToProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void
proc onscrollTo*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewscrollToProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewscrollToProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_scrollTo(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_scrollTo(self: ptr cQAbstractItemView, slot: int, index: pointer, hint: cint): void {.exportc: "miqt_exec_callback_QAbstractItemView_scrollTo ".} =
  var nimfunc = cast[ptr QAbstractItemViewscrollToProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = cint(hint)


  nimfunc[](slotval1, slotval2)
type QAbstractItemViewindexAtProc* = proc(point: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex
proc onindexAt*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewindexAtProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewindexAtProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_indexAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_indexAt(self: ptr cQAbstractItemView, slot: int, point: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractItemView_indexAt ".} =
  var nimfunc = cast[ptr QAbstractItemViewindexAtProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: point)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QAbstractItemViewsizeHintForRow*(self: gen_qabstractitemview_types.QAbstractItemView, row: cint): cint =
  fQAbstractItemView_virtualbase_sizeHintForRow(self.h, row)

type QAbstractItemViewsizeHintForRowProc* = proc(row: cint): cint
proc onsizeHintForRow*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewsizeHintForRowProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewsizeHintForRowProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_sizeHintForRow(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_sizeHintForRow(self: ptr cQAbstractItemView, slot: int, row: cint): cint {.exportc: "miqt_exec_callback_QAbstractItemView_sizeHintForRow ".} =
  var nimfunc = cast[ptr QAbstractItemViewsizeHintForRowProc](cast[pointer](slot))
  let slotval1 = row


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractItemViewsizeHintForColumn*(self: gen_qabstractitemview_types.QAbstractItemView, column: cint): cint =
  fQAbstractItemView_virtualbase_sizeHintForColumn(self.h, column)

type QAbstractItemViewsizeHintForColumnProc* = proc(column: cint): cint
proc onsizeHintForColumn*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewsizeHintForColumnProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewsizeHintForColumnProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_sizeHintForColumn(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_sizeHintForColumn(self: ptr cQAbstractItemView, slot: int, column: cint): cint {.exportc: "miqt_exec_callback_QAbstractItemView_sizeHintForColumn ".} =
  var nimfunc = cast[ptr QAbstractItemViewsizeHintForColumnProc](cast[pointer](slot))
  let slotval1 = column


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractItemViewitemDelegateForIndex*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemdelegate_types.QAbstractItemDelegate =
  gen_qabstractitemdelegate_types.QAbstractItemDelegate(h: fQAbstractItemView_virtualbase_itemDelegateForIndex(self.h, index.h))

type QAbstractItemViewitemDelegateForIndexProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemdelegate_types.QAbstractItemDelegate
proc onitemDelegateForIndex*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewitemDelegateForIndexProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewitemDelegateForIndexProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_itemDelegateForIndex(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_itemDelegateForIndex(self: ptr cQAbstractItemView, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractItemView_itemDelegateForIndex ".} =
  var nimfunc = cast[ptr QAbstractItemViewitemDelegateForIndexProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QAbstractItemViewinputMethodQuery*(self: gen_qabstractitemview_types.QAbstractItemView, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQAbstractItemView_virtualbase_inputMethodQuery(self.h, cint(query)))

type QAbstractItemViewinputMethodQueryProc* = proc(query: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_inputMethodQuery(self: ptr cQAbstractItemView, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QAbstractItemView_inputMethodQuery ".} =
  var nimfunc = cast[ptr QAbstractItemViewinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(query)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QAbstractItemViewreset*(self: gen_qabstractitemview_types.QAbstractItemView, ): void =
  fQAbstractItemView_virtualbase_reset(self.h)

type QAbstractItemViewresetProc* = proc(): void
proc onreset*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewresetProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewresetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_reset(self: ptr cQAbstractItemView, slot: int): void {.exportc: "miqt_exec_callback_QAbstractItemView_reset ".} =
  var nimfunc = cast[ptr QAbstractItemViewresetProc](cast[pointer](slot))

  nimfunc[]()
proc QAbstractItemViewsetRootIndex*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fQAbstractItemView_virtualbase_setRootIndex(self.h, index.h)

type QAbstractItemViewsetRootIndexProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): void
proc onsetRootIndex*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewsetRootIndexProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewsetRootIndexProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_setRootIndex(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_setRootIndex(self: ptr cQAbstractItemView, slot: int, index: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_setRootIndex ".} =
  var nimfunc = cast[ptr QAbstractItemViewsetRootIndexProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  nimfunc[](slotval1)
proc QAbstractItemViewdoItemsLayout*(self: gen_qabstractitemview_types.QAbstractItemView, ): void =
  fQAbstractItemView_virtualbase_doItemsLayout(self.h)

type QAbstractItemViewdoItemsLayoutProc* = proc(): void
proc ondoItemsLayout*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewdoItemsLayoutProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewdoItemsLayoutProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_doItemsLayout(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_doItemsLayout(self: ptr cQAbstractItemView, slot: int): void {.exportc: "miqt_exec_callback_QAbstractItemView_doItemsLayout ".} =
  var nimfunc = cast[ptr QAbstractItemViewdoItemsLayoutProc](cast[pointer](slot))

  nimfunc[]()
proc QAbstractItemViewselectAll*(self: gen_qabstractitemview_types.QAbstractItemView, ): void =
  fQAbstractItemView_virtualbase_selectAll(self.h)

type QAbstractItemViewselectAllProc* = proc(): void
proc onselectAll*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewselectAllProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewselectAllProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_selectAll(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_selectAll(self: ptr cQAbstractItemView, slot: int): void {.exportc: "miqt_exec_callback_QAbstractItemView_selectAll ".} =
  var nimfunc = cast[ptr QAbstractItemViewselectAllProc](cast[pointer](slot))

  nimfunc[]()
proc QAbstractItemViewdataChanged*(self: gen_qabstractitemview_types.QAbstractItemView, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: seq[cint]): void =
  var roles_CArray = newSeq[cint](len(roles))
  for i in 0..<len(roles):
    roles_CArray[i] = roles[i]

  fQAbstractItemView_virtualbase_dataChanged(self.h, topLeft.h, bottomRight.h, struct_miqt_array(len: csize_t(len(roles)), data: if len(roles) == 0: nil else: addr(roles_CArray[0])))

type QAbstractItemViewdataChangedProc* = proc(topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: seq[cint]): void
proc ondataChanged*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewdataChangedProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewdataChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_dataChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_dataChanged(self: ptr cQAbstractItemView, slot: int, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.exportc: "miqt_exec_callback_QAbstractItemView_dataChanged ".} =
  var nimfunc = cast[ptr QAbstractItemViewdataChangedProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: topLeft)

  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: bottomRight)

  var vroles_ma = roles
  var vrolesx_ret = newSeq[cint](int(vroles_ma.len))
  let vroles_outCast = cast[ptr UncheckedArray[cint]](vroles_ma.data)
  for i in 0 ..< vroles_ma.len:
    vrolesx_ret[i] = vroles_outCast[i]
  let slotval3 = vrolesx_ret


  nimfunc[](slotval1, slotval2, slotval3)
proc QAbstractItemViewrowsInserted*(self: gen_qabstractitemview_types.QAbstractItemView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fQAbstractItemView_virtualbase_rowsInserted(self.h, parent.h, start, endVal)

type QAbstractItemViewrowsInsertedProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void
proc onrowsInserted*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewrowsInsertedProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewrowsInsertedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_rowsInserted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_rowsInserted(self: ptr cQAbstractItemView, slot: int, parent: pointer, start: cint, endVal: cint): void {.exportc: "miqt_exec_callback_QAbstractItemView_rowsInserted ".} =
  var nimfunc = cast[ptr QAbstractItemViewrowsInsertedProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)

  let slotval2 = start

  let slotval3 = endVal


  nimfunc[](slotval1, slotval2, slotval3)
proc QAbstractItemViewrowsAboutToBeRemoved*(self: gen_qabstractitemview_types.QAbstractItemView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fQAbstractItemView_virtualbase_rowsAboutToBeRemoved(self.h, parent.h, start, endVal)

type QAbstractItemViewrowsAboutToBeRemovedProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void
proc onrowsAboutToBeRemoved*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewrowsAboutToBeRemovedProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewrowsAboutToBeRemovedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_rowsAboutToBeRemoved(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_rowsAboutToBeRemoved(self: ptr cQAbstractItemView, slot: int, parent: pointer, start: cint, endVal: cint): void {.exportc: "miqt_exec_callback_QAbstractItemView_rowsAboutToBeRemoved ".} =
  var nimfunc = cast[ptr QAbstractItemViewrowsAboutToBeRemovedProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)

  let slotval2 = start

  let slotval3 = endVal


  nimfunc[](slotval1, slotval2, slotval3)
proc QAbstractItemViewselectionChanged*(self: gen_qabstractitemview_types.QAbstractItemView, selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void =
  fQAbstractItemView_virtualbase_selectionChanged(self.h, selected.h, deselected.h)

type QAbstractItemViewselectionChangedProc* = proc(selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void
proc onselectionChanged*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewselectionChangedProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewselectionChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_selectionChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_selectionChanged(self: ptr cQAbstractItemView, slot: int, selected: pointer, deselected: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_selectionChanged ".} =
  var nimfunc = cast[ptr QAbstractItemViewselectionChangedProc](cast[pointer](slot))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selected)

  let slotval2 = gen_qitemselectionmodel_types.QItemSelection(h: deselected)


  nimfunc[](slotval1, slotval2)
proc QAbstractItemViewcurrentChanged*(self: gen_qabstractitemview_types.QAbstractItemView, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void =
  fQAbstractItemView_virtualbase_currentChanged(self.h, current.h, previous.h)

type QAbstractItemViewcurrentChangedProc* = proc(current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void
proc oncurrentChanged*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewcurrentChangedProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewcurrentChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_currentChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_currentChanged(self: ptr cQAbstractItemView, slot: int, current: pointer, previous: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_currentChanged ".} =
  var nimfunc = cast[ptr QAbstractItemViewcurrentChangedProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: current)

  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: previous)


  nimfunc[](slotval1, slotval2)
proc QAbstractItemViewupdateEditorData*(self: gen_qabstractitemview_types.QAbstractItemView, ): void =
  fQAbstractItemView_virtualbase_updateEditorData(self.h)

type QAbstractItemViewupdateEditorDataProc* = proc(): void
proc onupdateEditorData*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewupdateEditorDataProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewupdateEditorDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_updateEditorData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_updateEditorData(self: ptr cQAbstractItemView, slot: int): void {.exportc: "miqt_exec_callback_QAbstractItemView_updateEditorData ".} =
  var nimfunc = cast[ptr QAbstractItemViewupdateEditorDataProc](cast[pointer](slot))

  nimfunc[]()
proc QAbstractItemViewupdateEditorGeometries*(self: gen_qabstractitemview_types.QAbstractItemView, ): void =
  fQAbstractItemView_virtualbase_updateEditorGeometries(self.h)

type QAbstractItemViewupdateEditorGeometriesProc* = proc(): void
proc onupdateEditorGeometries*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewupdateEditorGeometriesProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewupdateEditorGeometriesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_updateEditorGeometries(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_updateEditorGeometries(self: ptr cQAbstractItemView, slot: int): void {.exportc: "miqt_exec_callback_QAbstractItemView_updateEditorGeometries ".} =
  var nimfunc = cast[ptr QAbstractItemViewupdateEditorGeometriesProc](cast[pointer](slot))

  nimfunc[]()
proc QAbstractItemViewupdateGeometries*(self: gen_qabstractitemview_types.QAbstractItemView, ): void =
  fQAbstractItemView_virtualbase_updateGeometries(self.h)

type QAbstractItemViewupdateGeometriesProc* = proc(): void
proc onupdateGeometries*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewupdateGeometriesProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewupdateGeometriesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_updateGeometries(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_updateGeometries(self: ptr cQAbstractItemView, slot: int): void {.exportc: "miqt_exec_callback_QAbstractItemView_updateGeometries ".} =
  var nimfunc = cast[ptr QAbstractItemViewupdateGeometriesProc](cast[pointer](slot))

  nimfunc[]()
proc QAbstractItemViewverticalScrollbarAction*(self: gen_qabstractitemview_types.QAbstractItemView, action: cint): void =
  fQAbstractItemView_virtualbase_verticalScrollbarAction(self.h, action)

type QAbstractItemViewverticalScrollbarActionProc* = proc(action: cint): void
proc onverticalScrollbarAction*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewverticalScrollbarActionProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewverticalScrollbarActionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_verticalScrollbarAction(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_verticalScrollbarAction(self: ptr cQAbstractItemView, slot: int, action: cint): void {.exportc: "miqt_exec_callback_QAbstractItemView_verticalScrollbarAction ".} =
  var nimfunc = cast[ptr QAbstractItemViewverticalScrollbarActionProc](cast[pointer](slot))
  let slotval1 = action


  nimfunc[](slotval1)
proc QAbstractItemViewhorizontalScrollbarAction*(self: gen_qabstractitemview_types.QAbstractItemView, action: cint): void =
  fQAbstractItemView_virtualbase_horizontalScrollbarAction(self.h, action)

type QAbstractItemViewhorizontalScrollbarActionProc* = proc(action: cint): void
proc onhorizontalScrollbarAction*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewhorizontalScrollbarActionProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewhorizontalScrollbarActionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_horizontalScrollbarAction(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_horizontalScrollbarAction(self: ptr cQAbstractItemView, slot: int, action: cint): void {.exportc: "miqt_exec_callback_QAbstractItemView_horizontalScrollbarAction ".} =
  var nimfunc = cast[ptr QAbstractItemViewhorizontalScrollbarActionProc](cast[pointer](slot))
  let slotval1 = action


  nimfunc[](slotval1)
proc QAbstractItemViewverticalScrollbarValueChanged*(self: gen_qabstractitemview_types.QAbstractItemView, value: cint): void =
  fQAbstractItemView_virtualbase_verticalScrollbarValueChanged(self.h, value)

type QAbstractItemViewverticalScrollbarValueChangedProc* = proc(value: cint): void
proc onverticalScrollbarValueChanged*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewverticalScrollbarValueChangedProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewverticalScrollbarValueChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_verticalScrollbarValueChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_verticalScrollbarValueChanged(self: ptr cQAbstractItemView, slot: int, value: cint): void {.exportc: "miqt_exec_callback_QAbstractItemView_verticalScrollbarValueChanged ".} =
  var nimfunc = cast[ptr QAbstractItemViewverticalScrollbarValueChangedProc](cast[pointer](slot))
  let slotval1 = value


  nimfunc[](slotval1)
proc QAbstractItemViewhorizontalScrollbarValueChanged*(self: gen_qabstractitemview_types.QAbstractItemView, value: cint): void =
  fQAbstractItemView_virtualbase_horizontalScrollbarValueChanged(self.h, value)

type QAbstractItemViewhorizontalScrollbarValueChangedProc* = proc(value: cint): void
proc onhorizontalScrollbarValueChanged*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewhorizontalScrollbarValueChangedProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewhorizontalScrollbarValueChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_horizontalScrollbarValueChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_horizontalScrollbarValueChanged(self: ptr cQAbstractItemView, slot: int, value: cint): void {.exportc: "miqt_exec_callback_QAbstractItemView_horizontalScrollbarValueChanged ".} =
  var nimfunc = cast[ptr QAbstractItemViewhorizontalScrollbarValueChangedProc](cast[pointer](slot))
  let slotval1 = value


  nimfunc[](slotval1)
proc QAbstractItemViewcloseEditor*(self: gen_qabstractitemview_types.QAbstractItemView, editor: gen_qwidget_types.QWidget, hint: cint): void =
  fQAbstractItemView_virtualbase_closeEditor(self.h, editor.h, cint(hint))

type QAbstractItemViewcloseEditorProc* = proc(editor: gen_qwidget_types.QWidget, hint: cint): void
proc oncloseEditor*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewcloseEditorProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewcloseEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_closeEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_closeEditor(self: ptr cQAbstractItemView, slot: int, editor: pointer, hint: cint): void {.exportc: "miqt_exec_callback_QAbstractItemView_closeEditor ".} =
  var nimfunc = cast[ptr QAbstractItemViewcloseEditorProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: editor)

  let slotval2 = cint(hint)


  nimfunc[](slotval1, slotval2)
proc QAbstractItemViewcommitData*(self: gen_qabstractitemview_types.QAbstractItemView, editor: gen_qwidget_types.QWidget): void =
  fQAbstractItemView_virtualbase_commitData(self.h, editor.h)

type QAbstractItemViewcommitDataProc* = proc(editor: gen_qwidget_types.QWidget): void
proc oncommitData*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewcommitDataProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewcommitDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_commitData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_commitData(self: ptr cQAbstractItemView, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_commitData ".} =
  var nimfunc = cast[ptr QAbstractItemViewcommitDataProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: editor)


  nimfunc[](slotval1)
proc QAbstractItemVieweditorDestroyed*(self: gen_qabstractitemview_types.QAbstractItemView, editor: gen_qobject_types.QObject): void =
  fQAbstractItemView_virtualbase_editorDestroyed(self.h, editor.h)

type QAbstractItemVieweditorDestroyedProc* = proc(editor: gen_qobject_types.QObject): void
proc oneditorDestroyed*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemVieweditorDestroyedProc) =
  # TODO check subclass
  var tmp = new QAbstractItemVieweditorDestroyedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_editorDestroyed(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_editorDestroyed(self: ptr cQAbstractItemView, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_editorDestroyed ".} =
  var nimfunc = cast[ptr QAbstractItemVieweditorDestroyedProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: editor)


  nimfunc[](slotval1)
type QAbstractItemViewmoveCursorProc* = proc(cursorAction: cint, modifiers: cint): gen_qabstractitemmodel_types.QModelIndex
proc onmoveCursor*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewmoveCursorProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewmoveCursorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_moveCursor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_moveCursor(self: ptr cQAbstractItemView, slot: int, cursorAction: cint, modifiers: cint): pointer {.exportc: "miqt_exec_callback_QAbstractItemView_moveCursor ".} =
  var nimfunc = cast[ptr QAbstractItemViewmoveCursorProc](cast[pointer](slot))
  let slotval1 = cint(cursorAction)

  let slotval2 = cint(modifiers)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
type QAbstractItemViewhorizontalOffsetProc* = proc(): cint
proc onhorizontalOffset*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewhorizontalOffsetProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewhorizontalOffsetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_horizontalOffset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_horizontalOffset(self: ptr cQAbstractItemView, slot: int): cint {.exportc: "miqt_exec_callback_QAbstractItemView_horizontalOffset ".} =
  var nimfunc = cast[ptr QAbstractItemViewhorizontalOffsetProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QAbstractItemViewverticalOffsetProc* = proc(): cint
proc onverticalOffset*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewverticalOffsetProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewverticalOffsetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_verticalOffset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_verticalOffset(self: ptr cQAbstractItemView, slot: int): cint {.exportc: "miqt_exec_callback_QAbstractItemView_verticalOffset ".} =
  var nimfunc = cast[ptr QAbstractItemViewverticalOffsetProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QAbstractItemViewisIndexHiddenProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): bool
proc onisIndexHidden*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewisIndexHiddenProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewisIndexHiddenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_isIndexHidden(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_isIndexHidden(self: ptr cQAbstractItemView, slot: int, index: pointer): bool {.exportc: "miqt_exec_callback_QAbstractItemView_isIndexHidden ".} =
  var nimfunc = cast[ptr QAbstractItemViewisIndexHiddenProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
type QAbstractItemViewsetSelectionProc* = proc(rect: gen_qrect_types.QRect, command: cint): void
proc onsetSelection*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewsetSelectionProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewsetSelectionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_setSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_setSelection(self: ptr cQAbstractItemView, slot: int, rect: pointer, command: cint): void {.exportc: "miqt_exec_callback_QAbstractItemView_setSelection ".} =
  var nimfunc = cast[ptr QAbstractItemViewsetSelectionProc](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRect(h: rect)

  let slotval2 = cint(command)


  nimfunc[](slotval1, slotval2)
type QAbstractItemViewvisualRegionForSelectionProc* = proc(selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion
proc onvisualRegionForSelection*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewvisualRegionForSelectionProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewvisualRegionForSelectionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_visualRegionForSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_visualRegionForSelection(self: ptr cQAbstractItemView, slot: int, selection: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractItemView_visualRegionForSelection ".} =
  var nimfunc = cast[ptr QAbstractItemViewvisualRegionForSelectionProc](cast[pointer](slot))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QAbstractItemViewselectedIndexes*(self: gen_qabstractitemview_types.QAbstractItemView, ): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fQAbstractItemView_virtualbase_selectedIndexes(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  vx_ret

type QAbstractItemViewselectedIndexesProc* = proc(): seq[gen_qabstractitemmodel_types.QModelIndex]
proc onselectedIndexes*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewselectedIndexesProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewselectedIndexesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_selectedIndexes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_selectedIndexes(self: ptr cQAbstractItemView, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QAbstractItemView_selectedIndexes ".} =
  var nimfunc = cast[ptr QAbstractItemViewselectedIndexesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[pointer](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QAbstractItemViewedit*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool =
  fQAbstractItemView_virtualbase_edit2(self.h, index.h, cint(trigger), event.h)

type QAbstractItemViewedit2Proc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool
proc onedit*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewedit2Proc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewedit2Proc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_edit2(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_edit2(self: ptr cQAbstractItemView, slot: int, index: pointer, trigger: cint, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractItemView_edit2 ".} =
  var nimfunc = cast[ptr QAbstractItemViewedit2Proc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = cint(trigger)

  let slotval3 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QAbstractItemViewselectionCommand*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint =
  cint(fQAbstractItemView_virtualbase_selectionCommand(self.h, index.h, event.h))

type QAbstractItemViewselectionCommandProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint
proc onselectionCommand*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewselectionCommandProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewselectionCommandProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_selectionCommand(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_selectionCommand(self: ptr cQAbstractItemView, slot: int, index: pointer, event: pointer): cint {.exportc: "miqt_exec_callback_QAbstractItemView_selectionCommand ".} =
  var nimfunc = cast[ptr QAbstractItemViewselectionCommandProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  cint(virtualReturn)
proc QAbstractItemViewstartDrag*(self: gen_qabstractitemview_types.QAbstractItemView, supportedActions: cint): void =
  fQAbstractItemView_virtualbase_startDrag(self.h, cint(supportedActions))

type QAbstractItemViewstartDragProc* = proc(supportedActions: cint): void
proc onstartDrag*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewstartDragProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewstartDragProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_startDrag(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_startDrag(self: ptr cQAbstractItemView, slot: int, supportedActions: cint): void {.exportc: "miqt_exec_callback_QAbstractItemView_startDrag ".} =
  var nimfunc = cast[ptr QAbstractItemViewstartDragProc](cast[pointer](slot))
  let slotval1 = cint(supportedActions)


  nimfunc[](slotval1)
proc QAbstractItemViewinitViewItemOption*(self: gen_qabstractitemview_types.QAbstractItemView, option: gen_qstyleoption_types.QStyleOptionViewItem): void =
  fQAbstractItemView_virtualbase_initViewItemOption(self.h, option.h)

type QAbstractItemViewinitViewItemOptionProc* = proc(option: gen_qstyleoption_types.QStyleOptionViewItem): void
proc oninitViewItemOption*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewinitViewItemOptionProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewinitViewItemOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_initViewItemOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_initViewItemOption(self: ptr cQAbstractItemView, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_initViewItemOption ".} =
  var nimfunc = cast[ptr QAbstractItemViewinitViewItemOptionProc](cast[pointer](slot))
  let slotval1 = gen_qstyleoption_types.QStyleOptionViewItem(h: option)


  nimfunc[](slotval1)
proc QAbstractItemViewfocusNextPrevChild*(self: gen_qabstractitemview_types.QAbstractItemView, next: bool): bool =
  fQAbstractItemView_virtualbase_focusNextPrevChild(self.h, next)

type QAbstractItemViewfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_focusNextPrevChild(self: ptr cQAbstractItemView, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QAbstractItemView_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QAbstractItemViewfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractItemViewevent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qcoreevent_types.QEvent): bool =
  fQAbstractItemView_virtualbase_event(self.h, event.h)

type QAbstractItemVieweventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemVieweventProc) =
  # TODO check subclass
  var tmp = new QAbstractItemVieweventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_event(self: ptr cQAbstractItemView, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractItemView_event ".} =
  var nimfunc = cast[ptr QAbstractItemVieweventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractItemViewviewportEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qcoreevent_types.QEvent): bool =
  fQAbstractItemView_virtualbase_viewportEvent(self.h, event.h)

type QAbstractItemViewviewportEventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onviewportEvent*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewviewportEventProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewviewportEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_viewportEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_viewportEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractItemView_viewportEvent ".} =
  var nimfunc = cast[ptr QAbstractItemViewviewportEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractItemViewmousePressEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QMouseEvent): void =
  fQAbstractItemView_virtualbase_mousePressEvent(self.h, event.h)

type QAbstractItemViewmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewmousePressEventProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_mousePressEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_mousePressEvent ".} =
  var nimfunc = cast[ptr QAbstractItemViewmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractItemViewmouseMoveEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QMouseEvent): void =
  fQAbstractItemView_virtualbase_mouseMoveEvent(self.h, event.h)

type QAbstractItemViewmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_mouseMoveEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QAbstractItemViewmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractItemViewmouseReleaseEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QMouseEvent): void =
  fQAbstractItemView_virtualbase_mouseReleaseEvent(self.h, event.h)

type QAbstractItemViewmouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_mouseReleaseEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QAbstractItemViewmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractItemViewmouseDoubleClickEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QMouseEvent): void =
  fQAbstractItemView_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QAbstractItemViewmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_mouseDoubleClickEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QAbstractItemViewmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractItemViewdragEnterEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QDragEnterEvent): void =
  fQAbstractItemView_virtualbase_dragEnterEvent(self.h, event.h)

type QAbstractItemViewdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_dragEnterEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_dragEnterEvent ".} =
  var nimfunc = cast[ptr QAbstractItemViewdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractItemViewdragMoveEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QDragMoveEvent): void =
  fQAbstractItemView_virtualbase_dragMoveEvent(self.h, event.h)

type QAbstractItemViewdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_dragMoveEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_dragMoveEvent ".} =
  var nimfunc = cast[ptr QAbstractItemViewdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractItemViewdragLeaveEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QDragLeaveEvent): void =
  fQAbstractItemView_virtualbase_dragLeaveEvent(self.h, event.h)

type QAbstractItemViewdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_dragLeaveEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QAbstractItemViewdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractItemViewdropEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QDropEvent): void =
  fQAbstractItemView_virtualbase_dropEvent(self.h, event.h)

type QAbstractItemViewdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewdropEventProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_dropEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_dropEvent ".} =
  var nimfunc = cast[ptr QAbstractItemViewdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractItemViewfocusInEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QFocusEvent): void =
  fQAbstractItemView_virtualbase_focusInEvent(self.h, event.h)

type QAbstractItemViewfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewfocusInEventProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_focusInEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_focusInEvent ".} =
  var nimfunc = cast[ptr QAbstractItemViewfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractItemViewfocusOutEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QFocusEvent): void =
  fQAbstractItemView_virtualbase_focusOutEvent(self.h, event.h)

type QAbstractItemViewfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_focusOutEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_focusOutEvent ".} =
  var nimfunc = cast[ptr QAbstractItemViewfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractItemViewkeyPressEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QKeyEvent): void =
  fQAbstractItemView_virtualbase_keyPressEvent(self.h, event.h)

type QAbstractItemViewkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_keyPressEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_keyPressEvent ".} =
  var nimfunc = cast[ptr QAbstractItemViewkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractItemViewresizeEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QResizeEvent): void =
  fQAbstractItemView_virtualbase_resizeEvent(self.h, event.h)

type QAbstractItemViewresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewresizeEventProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_resizeEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_resizeEvent ".} =
  var nimfunc = cast[ptr QAbstractItemViewresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractItemViewtimerEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qcoreevent_types.QTimerEvent): void =
  fQAbstractItemView_virtualbase_timerEvent(self.h, event.h)

type QAbstractItemViewtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewtimerEventProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_timerEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_timerEvent ".} =
  var nimfunc = cast[ptr QAbstractItemViewtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractItemViewinputMethodEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QInputMethodEvent): void =
  fQAbstractItemView_virtualbase_inputMethodEvent(self.h, event.h)

type QAbstractItemViewinputMethodEventProc* = proc(event: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_inputMethodEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_inputMethodEvent ".} =
  var nimfunc = cast[ptr QAbstractItemViewinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractItemVieweventFilter*(self: gen_qabstractitemview_types.QAbstractItemView, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQAbstractItemView_virtualbase_eventFilter(self.h, objectVal.h, event.h)

type QAbstractItemVieweventFilterProc* = proc(objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemVieweventFilterProc) =
  # TODO check subclass
  var tmp = new QAbstractItemVieweventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_eventFilter(self: ptr cQAbstractItemView, slot: int, objectVal: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractItemView_eventFilter ".} =
  var nimfunc = cast[ptr QAbstractItemVieweventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: objectVal)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QAbstractItemViewviewportSizeHint*(self: gen_qabstractitemview_types.QAbstractItemView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQAbstractItemView_virtualbase_viewportSizeHint(self.h))

type QAbstractItemViewviewportSizeHintProc* = proc(): gen_qsize_types.QSize
proc onviewportSizeHint*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewviewportSizeHintProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewviewportSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_viewportSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_viewportSizeHint(self: ptr cQAbstractItemView, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractItemView_viewportSizeHint ".} =
  var nimfunc = cast[ptr QAbstractItemViewviewportSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAbstractItemViewminimumSizeHint*(self: gen_qabstractitemview_types.QAbstractItemView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQAbstractItemView_virtualbase_minimumSizeHint(self.h))

type QAbstractItemViewminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_minimumSizeHint(self: ptr cQAbstractItemView, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractItemView_minimumSizeHint ".} =
  var nimfunc = cast[ptr QAbstractItemViewminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAbstractItemViewsizeHint*(self: gen_qabstractitemview_types.QAbstractItemView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQAbstractItemView_virtualbase_sizeHint(self.h))

type QAbstractItemViewsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewsizeHintProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_sizeHint(self: ptr cQAbstractItemView, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractItemView_sizeHint ".} =
  var nimfunc = cast[ptr QAbstractItemViewsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAbstractItemViewsetupViewport*(self: gen_qabstractitemview_types.QAbstractItemView, viewport: gen_qwidget_types.QWidget): void =
  fQAbstractItemView_virtualbase_setupViewport(self.h, viewport.h)

type QAbstractItemViewsetupViewportProc* = proc(viewport: gen_qwidget_types.QWidget): void
proc onsetupViewport*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewsetupViewportProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewsetupViewportProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_setupViewport(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_setupViewport(self: ptr cQAbstractItemView, slot: int, viewport: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_setupViewport ".} =
  var nimfunc = cast[ptr QAbstractItemViewsetupViewportProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: viewport)


  nimfunc[](slotval1)
proc QAbstractItemViewpaintEvent*(self: gen_qabstractitemview_types.QAbstractItemView, param1: gen_qevent_types.QPaintEvent): void =
  fQAbstractItemView_virtualbase_paintEvent(self.h, param1.h)

type QAbstractItemViewpaintEventProc* = proc(param1: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewpaintEventProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_paintEvent(self: ptr cQAbstractItemView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_paintEvent ".} =
  var nimfunc = cast[ptr QAbstractItemViewpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1)


  nimfunc[](slotval1)
proc QAbstractItemViewwheelEvent*(self: gen_qabstractitemview_types.QAbstractItemView, param1: gen_qevent_types.QWheelEvent): void =
  fQAbstractItemView_virtualbase_wheelEvent(self.h, param1.h)

type QAbstractItemViewwheelEventProc* = proc(param1: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewwheelEventProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_wheelEvent(self: ptr cQAbstractItemView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_wheelEvent ".} =
  var nimfunc = cast[ptr QAbstractItemViewwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1)


  nimfunc[](slotval1)
proc QAbstractItemViewcontextMenuEvent*(self: gen_qabstractitemview_types.QAbstractItemView, param1: gen_qevent_types.QContextMenuEvent): void =
  fQAbstractItemView_virtualbase_contextMenuEvent(self.h, param1.h)

type QAbstractItemViewcontextMenuEventProc* = proc(param1: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_contextMenuEvent(self: ptr cQAbstractItemView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_contextMenuEvent ".} =
  var nimfunc = cast[ptr QAbstractItemViewcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)


  nimfunc[](slotval1)
proc QAbstractItemViewscrollContentsBy*(self: gen_qabstractitemview_types.QAbstractItemView, dx: cint, dy: cint): void =
  fQAbstractItemView_virtualbase_scrollContentsBy(self.h, dx, dy)

type QAbstractItemViewscrollContentsByProc* = proc(dx: cint, dy: cint): void
proc onscrollContentsBy*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewscrollContentsByProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewscrollContentsByProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_scrollContentsBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_scrollContentsBy(self: ptr cQAbstractItemView, slot: int, dx: cint, dy: cint): void {.exportc: "miqt_exec_callback_QAbstractItemView_scrollContentsBy ".} =
  var nimfunc = cast[ptr QAbstractItemViewscrollContentsByProc](cast[pointer](slot))
  let slotval1 = dx

  let slotval2 = dy


  nimfunc[](slotval1, slotval2)
proc QAbstractItemViewchangeEvent*(self: gen_qabstractitemview_types.QAbstractItemView, param1: gen_qcoreevent_types.QEvent): void =
  fQAbstractItemView_virtualbase_changeEvent(self.h, param1.h)

type QAbstractItemViewchangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewchangeEventProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_changeEvent(self: ptr cQAbstractItemView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_changeEvent ".} =
  var nimfunc = cast[ptr QAbstractItemViewchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QAbstractItemViewinitStyleOption*(self: gen_qabstractitemview_types.QAbstractItemView, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fQAbstractItemView_virtualbase_initStyleOption(self.h, option.h)

type QAbstractItemViewinitStyleOptionProc* = proc(option: gen_qstyleoption_types.QStyleOptionFrame): void
proc oninitStyleOption*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewinitStyleOptionProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewinitStyleOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_initStyleOption(self: ptr cQAbstractItemView, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_initStyleOption ".} =
  var nimfunc = cast[ptr QAbstractItemViewinitStyleOptionProc](cast[pointer](slot))
  let slotval1 = gen_qstyleoption_types.QStyleOptionFrame(h: option)


  nimfunc[](slotval1)
proc QAbstractItemViewdevType*(self: gen_qabstractitemview_types.QAbstractItemView, ): cint =
  fQAbstractItemView_virtualbase_devType(self.h)

type QAbstractItemViewdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewdevTypeProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_devType(self: ptr cQAbstractItemView, slot: int): cint {.exportc: "miqt_exec_callback_QAbstractItemView_devType ".} =
  var nimfunc = cast[ptr QAbstractItemViewdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QAbstractItemViewsetVisible*(self: gen_qabstractitemview_types.QAbstractItemView, visible: bool): void =
  fQAbstractItemView_virtualbase_setVisible(self.h, visible)

type QAbstractItemViewsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewsetVisibleProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_setVisible(self: ptr cQAbstractItemView, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QAbstractItemView_setVisible ".} =
  var nimfunc = cast[ptr QAbstractItemViewsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QAbstractItemViewheightForWidth*(self: gen_qabstractitemview_types.QAbstractItemView, param1: cint): cint =
  fQAbstractItemView_virtualbase_heightForWidth(self.h, param1)

type QAbstractItemViewheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewheightForWidthProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_heightForWidth(self: ptr cQAbstractItemView, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QAbstractItemView_heightForWidth ".} =
  var nimfunc = cast[ptr QAbstractItemViewheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractItemViewhasHeightForWidth*(self: gen_qabstractitemview_types.QAbstractItemView, ): bool =
  fQAbstractItemView_virtualbase_hasHeightForWidth(self.h)

type QAbstractItemViewhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_hasHeightForWidth(self: ptr cQAbstractItemView, slot: int): bool {.exportc: "miqt_exec_callback_QAbstractItemView_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QAbstractItemViewhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QAbstractItemViewpaintEngine*(self: gen_qabstractitemview_types.QAbstractItemView, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQAbstractItemView_virtualbase_paintEngine(self.h))

type QAbstractItemViewpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewpaintEngineProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_paintEngine(self: ptr cQAbstractItemView, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractItemView_paintEngine ".} =
  var nimfunc = cast[ptr QAbstractItemViewpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAbstractItemViewkeyReleaseEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QKeyEvent): void =
  fQAbstractItemView_virtualbase_keyReleaseEvent(self.h, event.h)

type QAbstractItemViewkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_keyReleaseEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QAbstractItemViewkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractItemViewenterEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QEnterEvent): void =
  fQAbstractItemView_virtualbase_enterEvent(self.h, event.h)

type QAbstractItemViewenterEventProc* = proc(event: gen_qevent_types.QEnterEvent): void
proc onenterEvent*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewenterEventProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_enterEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_enterEvent ".} =
  var nimfunc = cast[ptr QAbstractItemViewenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractItemViewleaveEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qcoreevent_types.QEvent): void =
  fQAbstractItemView_virtualbase_leaveEvent(self.h, event.h)

type QAbstractItemViewleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewleaveEventProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_leaveEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_leaveEvent ".} =
  var nimfunc = cast[ptr QAbstractItemViewleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractItemViewmoveEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QMoveEvent): void =
  fQAbstractItemView_virtualbase_moveEvent(self.h, event.h)

type QAbstractItemViewmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewmoveEventProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_moveEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_moveEvent ".} =
  var nimfunc = cast[ptr QAbstractItemViewmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractItemViewcloseEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QCloseEvent): void =
  fQAbstractItemView_virtualbase_closeEvent(self.h, event.h)

type QAbstractItemViewcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewcloseEventProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_closeEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_closeEvent ".} =
  var nimfunc = cast[ptr QAbstractItemViewcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractItemViewtabletEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QTabletEvent): void =
  fQAbstractItemView_virtualbase_tabletEvent(self.h, event.h)

type QAbstractItemViewtabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewtabletEventProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewtabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_tabletEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_tabletEvent ".} =
  var nimfunc = cast[ptr QAbstractItemViewtabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractItemViewactionEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QActionEvent): void =
  fQAbstractItemView_virtualbase_actionEvent(self.h, event.h)

type QAbstractItemViewactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewactionEventProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_actionEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_actionEvent ".} =
  var nimfunc = cast[ptr QAbstractItemViewactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractItemViewshowEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QShowEvent): void =
  fQAbstractItemView_virtualbase_showEvent(self.h, event.h)

type QAbstractItemViewshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewshowEventProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_showEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_showEvent ".} =
  var nimfunc = cast[ptr QAbstractItemViewshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractItemViewhideEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QHideEvent): void =
  fQAbstractItemView_virtualbase_hideEvent(self.h, event.h)

type QAbstractItemViewhideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewhideEventProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_hideEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_hideEvent ".} =
  var nimfunc = cast[ptr QAbstractItemViewhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractItemViewnativeEvent*(self: gen_qabstractitemview_types.QAbstractItemView, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQAbstractItemView_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QAbstractItemViewnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewnativeEventProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_nativeEvent(self: ptr cQAbstractItemView, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QAbstractItemView_nativeEvent ".} =
  var nimfunc = cast[ptr QAbstractItemViewnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QAbstractItemViewmetric*(self: gen_qabstractitemview_types.QAbstractItemView, param1: cint): cint =
  fQAbstractItemView_virtualbase_metric(self.h, cint(param1))

type QAbstractItemViewmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewmetricProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_metric(self: ptr cQAbstractItemView, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QAbstractItemView_metric ".} =
  var nimfunc = cast[ptr QAbstractItemViewmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractItemViewinitPainter*(self: gen_qabstractitemview_types.QAbstractItemView, painter: gen_qpainter_types.QPainter): void =
  fQAbstractItemView_virtualbase_initPainter(self.h, painter.h)

type QAbstractItemViewinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewinitPainterProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_initPainter(self: ptr cQAbstractItemView, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_initPainter ".} =
  var nimfunc = cast[ptr QAbstractItemViewinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QAbstractItemViewredirected*(self: gen_qabstractitemview_types.QAbstractItemView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQAbstractItemView_virtualbase_redirected(self.h, offset.h))

type QAbstractItemViewredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewredirectedProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_redirected(self: ptr cQAbstractItemView, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractItemView_redirected ".} =
  var nimfunc = cast[ptr QAbstractItemViewredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QAbstractItemViewsharedPainter*(self: gen_qabstractitemview_types.QAbstractItemView, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQAbstractItemView_virtualbase_sharedPainter(self.h))

type QAbstractItemViewsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewsharedPainterProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_sharedPainter(self: ptr cQAbstractItemView, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractItemView_sharedPainter ".} =
  var nimfunc = cast[ptr QAbstractItemViewsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAbstractItemViewchildEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qcoreevent_types.QChildEvent): void =
  fQAbstractItemView_virtualbase_childEvent(self.h, event.h)

type QAbstractItemViewchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewchildEventProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_childEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_childEvent ".} =
  var nimfunc = cast[ptr QAbstractItemViewchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractItemViewcustomEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qcoreevent_types.QEvent): void =
  fQAbstractItemView_virtualbase_customEvent(self.h, event.h)

type QAbstractItemViewcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewcustomEventProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_customEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_customEvent ".} =
  var nimfunc = cast[ptr QAbstractItemViewcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractItemViewconnectNotify*(self: gen_qabstractitemview_types.QAbstractItemView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAbstractItemView_virtualbase_connectNotify(self.h, signal.h)

type QAbstractItemViewconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_connectNotify(self: ptr cQAbstractItemView, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_connectNotify ".} =
  var nimfunc = cast[ptr QAbstractItemViewconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QAbstractItemViewdisconnectNotify*(self: gen_qabstractitemview_types.QAbstractItemView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAbstractItemView_virtualbase_disconnectNotify(self.h, signal.h)

type QAbstractItemViewdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAbstractItemViewdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_disconnectNotify(self: ptr cQAbstractItemView, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_disconnectNotify ".} =
  var nimfunc = cast[ptr QAbstractItemViewdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qabstractitemview_types.QAbstractItemView) =
  fcQAbstractItemView_delete(self.h)
