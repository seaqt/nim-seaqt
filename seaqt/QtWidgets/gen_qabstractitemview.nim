import ./Qt5Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt5Widgets") & " -fPIC"
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
  ../QtCore/gen_qmargins_types,
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
  gen_qmargins_types,
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

proc fcQAbstractItemView_metaObject(self: pointer): pointer {.importc: "QAbstractItemView_metaObject".}
proc fcQAbstractItemView_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractItemView_metacast".}
proc fcQAbstractItemView_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractItemView_metacall".}
proc fcQAbstractItemView_tr(s: cstring): struct_miqt_string {.importc: "QAbstractItemView_tr".}
proc fcQAbstractItemView_trUtf8(s: cstring): struct_miqt_string {.importc: "QAbstractItemView_trUtf8".}
proc fcQAbstractItemView_setModel(self: pointer, model: pointer): void {.importc: "QAbstractItemView_setModel".}
proc fcQAbstractItemView_model(self: pointer): pointer {.importc: "QAbstractItemView_model".}
proc fcQAbstractItemView_setSelectionModel(self: pointer, selectionModel: pointer): void {.importc: "QAbstractItemView_setSelectionModel".}
proc fcQAbstractItemView_selectionModel(self: pointer): pointer {.importc: "QAbstractItemView_selectionModel".}
proc fcQAbstractItemView_setItemDelegate(self: pointer, delegate: pointer): void {.importc: "QAbstractItemView_setItemDelegate".}
proc fcQAbstractItemView_itemDelegate(self: pointer): pointer {.importc: "QAbstractItemView_itemDelegate".}
proc fcQAbstractItemView_setSelectionMode(self: pointer, mode: cint): void {.importc: "QAbstractItemView_setSelectionMode".}
proc fcQAbstractItemView_selectionMode(self: pointer): cint {.importc: "QAbstractItemView_selectionMode".}
proc fcQAbstractItemView_setSelectionBehavior(self: pointer, behavior: cint): void {.importc: "QAbstractItemView_setSelectionBehavior".}
proc fcQAbstractItemView_selectionBehavior(self: pointer): cint {.importc: "QAbstractItemView_selectionBehavior".}
proc fcQAbstractItemView_currentIndex(self: pointer): pointer {.importc: "QAbstractItemView_currentIndex".}
proc fcQAbstractItemView_rootIndex(self: pointer): pointer {.importc: "QAbstractItemView_rootIndex".}
proc fcQAbstractItemView_setEditTriggers(self: pointer, triggers: cint): void {.importc: "QAbstractItemView_setEditTriggers".}
proc fcQAbstractItemView_editTriggers(self: pointer): cint {.importc: "QAbstractItemView_editTriggers".}
proc fcQAbstractItemView_setVerticalScrollMode(self: pointer, mode: cint): void {.importc: "QAbstractItemView_setVerticalScrollMode".}
proc fcQAbstractItemView_verticalScrollMode(self: pointer): cint {.importc: "QAbstractItemView_verticalScrollMode".}
proc fcQAbstractItemView_resetVerticalScrollMode(self: pointer): void {.importc: "QAbstractItemView_resetVerticalScrollMode".}
proc fcQAbstractItemView_setHorizontalScrollMode(self: pointer, mode: cint): void {.importc: "QAbstractItemView_setHorizontalScrollMode".}
proc fcQAbstractItemView_horizontalScrollMode(self: pointer): cint {.importc: "QAbstractItemView_horizontalScrollMode".}
proc fcQAbstractItemView_resetHorizontalScrollMode(self: pointer): void {.importc: "QAbstractItemView_resetHorizontalScrollMode".}
proc fcQAbstractItemView_setAutoScroll(self: pointer, enable: bool): void {.importc: "QAbstractItemView_setAutoScroll".}
proc fcQAbstractItemView_hasAutoScroll(self: pointer): bool {.importc: "QAbstractItemView_hasAutoScroll".}
proc fcQAbstractItemView_setAutoScrollMargin(self: pointer, margin: cint): void {.importc: "QAbstractItemView_setAutoScrollMargin".}
proc fcQAbstractItemView_autoScrollMargin(self: pointer): cint {.importc: "QAbstractItemView_autoScrollMargin".}
proc fcQAbstractItemView_setTabKeyNavigation(self: pointer, enable: bool): void {.importc: "QAbstractItemView_setTabKeyNavigation".}
proc fcQAbstractItemView_tabKeyNavigation(self: pointer): bool {.importc: "QAbstractItemView_tabKeyNavigation".}
proc fcQAbstractItemView_setDropIndicatorShown(self: pointer, enable: bool): void {.importc: "QAbstractItemView_setDropIndicatorShown".}
proc fcQAbstractItemView_showDropIndicator(self: pointer): bool {.importc: "QAbstractItemView_showDropIndicator".}
proc fcQAbstractItemView_setDragEnabled(self: pointer, enable: bool): void {.importc: "QAbstractItemView_setDragEnabled".}
proc fcQAbstractItemView_dragEnabled(self: pointer): bool {.importc: "QAbstractItemView_dragEnabled".}
proc fcQAbstractItemView_setDragDropOverwriteMode(self: pointer, overwrite: bool): void {.importc: "QAbstractItemView_setDragDropOverwriteMode".}
proc fcQAbstractItemView_dragDropOverwriteMode(self: pointer): bool {.importc: "QAbstractItemView_dragDropOverwriteMode".}
proc fcQAbstractItemView_setDragDropMode(self: pointer, behavior: cint): void {.importc: "QAbstractItemView_setDragDropMode".}
proc fcQAbstractItemView_dragDropMode(self: pointer): cint {.importc: "QAbstractItemView_dragDropMode".}
proc fcQAbstractItemView_setDefaultDropAction(self: pointer, dropAction: cint): void {.importc: "QAbstractItemView_setDefaultDropAction".}
proc fcQAbstractItemView_defaultDropAction(self: pointer): cint {.importc: "QAbstractItemView_defaultDropAction".}
proc fcQAbstractItemView_setAlternatingRowColors(self: pointer, enable: bool): void {.importc: "QAbstractItemView_setAlternatingRowColors".}
proc fcQAbstractItemView_alternatingRowColors(self: pointer): bool {.importc: "QAbstractItemView_alternatingRowColors".}
proc fcQAbstractItemView_setIconSize(self: pointer, size: pointer): void {.importc: "QAbstractItemView_setIconSize".}
proc fcQAbstractItemView_iconSize(self: pointer): pointer {.importc: "QAbstractItemView_iconSize".}
proc fcQAbstractItemView_setTextElideMode(self: pointer, mode: cint): void {.importc: "QAbstractItemView_setTextElideMode".}
proc fcQAbstractItemView_textElideMode(self: pointer): cint {.importc: "QAbstractItemView_textElideMode".}
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
proc fcQAbstractItemView_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QAbstractItemView_inputMethodQuery".}
proc fcQAbstractItemView_reset(self: pointer): void {.importc: "QAbstractItemView_reset".}
proc fcQAbstractItemView_setRootIndex(self: pointer, index: pointer): void {.importc: "QAbstractItemView_setRootIndex".}
proc fcQAbstractItemView_doItemsLayout(self: pointer): void {.importc: "QAbstractItemView_doItemsLayout".}
proc fcQAbstractItemView_selectAll(self: pointer): void {.importc: "QAbstractItemView_selectAll".}
proc fcQAbstractItemView_edit(self: pointer, index: pointer): void {.importc: "QAbstractItemView_edit".}
proc fcQAbstractItemView_clearSelection(self: pointer): void {.importc: "QAbstractItemView_clearSelection".}
proc fcQAbstractItemView_setCurrentIndex(self: pointer, index: pointer): void {.importc: "QAbstractItemView_setCurrentIndex".}
proc fcQAbstractItemView_scrollToTop(self: pointer): void {.importc: "QAbstractItemView_scrollToTop".}
proc fcQAbstractItemView_scrollToBottom(self: pointer): void {.importc: "QAbstractItemView_scrollToBottom".}
proc fcQAbstractItemView_update(self: pointer, index: pointer): void {.importc: "QAbstractItemView_update".}
proc fcQAbstractItemView_pressed(self: pointer, index: pointer): void {.importc: "QAbstractItemView_pressed".}
proc fcQAbstractItemView_connect_pressed(self: pointer, slot: int, callback: proc (slot: int, index: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractItemView_connect_pressed".}
proc fcQAbstractItemView_clicked(self: pointer, index: pointer): void {.importc: "QAbstractItemView_clicked".}
proc fcQAbstractItemView_connect_clicked(self: pointer, slot: int, callback: proc (slot: int, index: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractItemView_connect_clicked".}
proc fcQAbstractItemView_doubleClicked(self: pointer, index: pointer): void {.importc: "QAbstractItemView_doubleClicked".}
proc fcQAbstractItemView_connect_doubleClicked(self: pointer, slot: int, callback: proc (slot: int, index: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractItemView_connect_doubleClicked".}
proc fcQAbstractItemView_activated(self: pointer, index: pointer): void {.importc: "QAbstractItemView_activated".}
proc fcQAbstractItemView_connect_activated(self: pointer, slot: int, callback: proc (slot: int, index: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractItemView_connect_activated".}
proc fcQAbstractItemView_entered(self: pointer, index: pointer): void {.importc: "QAbstractItemView_entered".}
proc fcQAbstractItemView_connect_entered(self: pointer, slot: int, callback: proc (slot: int, index: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractItemView_connect_entered".}
proc fcQAbstractItemView_viewportEntered(self: pointer): void {.importc: "QAbstractItemView_viewportEntered".}
proc fcQAbstractItemView_connect_viewportEntered(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractItemView_connect_viewportEntered".}
proc fcQAbstractItemView_iconSizeChanged(self: pointer, size: pointer): void {.importc: "QAbstractItemView_iconSizeChanged".}
proc fcQAbstractItemView_connect_iconSizeChanged(self: pointer, slot: int, callback: proc (slot: int, size: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractItemView_connect_iconSizeChanged".}
proc fcQAbstractItemView_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractItemView_tr2".}
proc fcQAbstractItemView_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractItemView_tr3".}
proc fcQAbstractItemView_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractItemView_trUtf82".}
proc fcQAbstractItemView_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractItemView_trUtf83".}
proc fcQAbstractItemView_vtbl(self: pointer): pointer {.importc: "QAbstractItemView_vtbl".}
proc fcQAbstractItemView_vdata(self: pointer): pointer {.importc: "QAbstractItemView_vdata".}
type cQAbstractItemViewVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setModel*: proc(self: pointer, model: pointer): void {.cdecl, raises: [], gcsafe.}
  setSelectionModel*: proc(self: pointer, selectionModel: pointer): void {.cdecl, raises: [], gcsafe.}
  keyboardSearch*: proc(self: pointer, search: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
  visualRect*: proc(self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  scrollTo*: proc(self: pointer, index: pointer, hint: cint): void {.cdecl, raises: [], gcsafe.}
  indexAt*: proc(self: pointer, point: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sizeHintForRow*: proc(self: pointer, row: cint): cint {.cdecl, raises: [], gcsafe.}
  sizeHintForColumn*: proc(self: pointer, column: cint): cint {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(self: pointer, query: cint): pointer {.cdecl, raises: [], gcsafe.}
  reset*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  setRootIndex*: proc(self: pointer, index: pointer): void {.cdecl, raises: [], gcsafe.}
  doItemsLayout*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  selectAll*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  dataChanged*: proc(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.cdecl, raises: [], gcsafe.}
  rowsInserted*: proc(self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl, raises: [], gcsafe.}
  rowsAboutToBeRemoved*: proc(self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl, raises: [], gcsafe.}
  selectionChanged*: proc(self: pointer, selected: pointer, deselected: pointer): void {.cdecl, raises: [], gcsafe.}
  currentChanged*: proc(self: pointer, current: pointer, previous: pointer): void {.cdecl, raises: [], gcsafe.}
  updateEditorData*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  updateEditorGeometries*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  updateGeometries*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  verticalScrollbarAction*: proc(self: pointer, action: cint): void {.cdecl, raises: [], gcsafe.}
  horizontalScrollbarAction*: proc(self: pointer, action: cint): void {.cdecl, raises: [], gcsafe.}
  verticalScrollbarValueChanged*: proc(self: pointer, value: cint): void {.cdecl, raises: [], gcsafe.}
  horizontalScrollbarValueChanged*: proc(self: pointer, value: cint): void {.cdecl, raises: [], gcsafe.}
  closeEditor*: proc(self: pointer, editor: pointer, hint: cint): void {.cdecl, raises: [], gcsafe.}
  commitData*: proc(self: pointer, editor: pointer): void {.cdecl, raises: [], gcsafe.}
  editorDestroyed*: proc(self: pointer, editor: pointer): void {.cdecl, raises: [], gcsafe.}
  moveCursor*: proc(self: pointer, cursorAction: cint, modifiers: cint): pointer {.cdecl, raises: [], gcsafe.}
  horizontalOffset*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  verticalOffset*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  isIndexHidden*: proc(self: pointer, index: pointer): bool {.cdecl, raises: [], gcsafe.}
  setSelection*: proc(self: pointer, rect: pointer, command: cint): void {.cdecl, raises: [], gcsafe.}
  visualRegionForSelection*: proc(self: pointer, selection: pointer): pointer {.cdecl, raises: [], gcsafe.}
  selectedIndexes*: proc(self: pointer): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  edit2*: proc(self: pointer, index: pointer, trigger: cint, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  selectionCommand*: proc(self: pointer, index: pointer, event: pointer): cint {.cdecl, raises: [], gcsafe.}
  startDrag*: proc(self: pointer, supportedActions: cint): void {.cdecl, raises: [], gcsafe.}
  viewOptions*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  viewportEvent*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, objectVal: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  viewportSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setupViewport*: proc(self: pointer, viewport: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  scrollContentsBy*: proc(self: pointer, dx: cint, dy: cint): void {.cdecl, raises: [], gcsafe.}
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
proc fcQAbstractItemView_virtualbase_metaObject(self: pointer): pointer {.importc: "QAbstractItemView_virtualbase_metaObject".}
proc fcQAbstractItemView_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractItemView_virtualbase_metacast".}
proc fcQAbstractItemView_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractItemView_virtualbase_metacall".}
proc fcQAbstractItemView_virtualbase_setModel(self: pointer, model: pointer): void {.importc: "QAbstractItemView_virtualbase_setModel".}
proc fcQAbstractItemView_virtualbase_setSelectionModel(self: pointer, selectionModel: pointer): void {.importc: "QAbstractItemView_virtualbase_setSelectionModel".}
proc fcQAbstractItemView_virtualbase_keyboardSearch(self: pointer, search: struct_miqt_string): void {.importc: "QAbstractItemView_virtualbase_keyboardSearch".}
proc fcQAbstractItemView_virtualbase_sizeHintForRow(self: pointer, row: cint): cint {.importc: "QAbstractItemView_virtualbase_sizeHintForRow".}
proc fcQAbstractItemView_virtualbase_sizeHintForColumn(self: pointer, column: cint): cint {.importc: "QAbstractItemView_virtualbase_sizeHintForColumn".}
proc fcQAbstractItemView_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QAbstractItemView_virtualbase_inputMethodQuery".}
proc fcQAbstractItemView_virtualbase_reset(self: pointer): void {.importc: "QAbstractItemView_virtualbase_reset".}
proc fcQAbstractItemView_virtualbase_setRootIndex(self: pointer, index: pointer): void {.importc: "QAbstractItemView_virtualbase_setRootIndex".}
proc fcQAbstractItemView_virtualbase_doItemsLayout(self: pointer): void {.importc: "QAbstractItemView_virtualbase_doItemsLayout".}
proc fcQAbstractItemView_virtualbase_selectAll(self: pointer): void {.importc: "QAbstractItemView_virtualbase_selectAll".}
proc fcQAbstractItemView_virtualbase_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.importc: "QAbstractItemView_virtualbase_dataChanged".}
proc fcQAbstractItemView_virtualbase_rowsInserted(self: pointer, parent: pointer, start: cint, endVal: cint): void {.importc: "QAbstractItemView_virtualbase_rowsInserted".}
proc fcQAbstractItemView_virtualbase_rowsAboutToBeRemoved(self: pointer, parent: pointer, start: cint, endVal: cint): void {.importc: "QAbstractItemView_virtualbase_rowsAboutToBeRemoved".}
proc fcQAbstractItemView_virtualbase_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void {.importc: "QAbstractItemView_virtualbase_selectionChanged".}
proc fcQAbstractItemView_virtualbase_currentChanged(self: pointer, current: pointer, previous: pointer): void {.importc: "QAbstractItemView_virtualbase_currentChanged".}
proc fcQAbstractItemView_virtualbase_updateEditorData(self: pointer): void {.importc: "QAbstractItemView_virtualbase_updateEditorData".}
proc fcQAbstractItemView_virtualbase_updateEditorGeometries(self: pointer): void {.importc: "QAbstractItemView_virtualbase_updateEditorGeometries".}
proc fcQAbstractItemView_virtualbase_updateGeometries(self: pointer): void {.importc: "QAbstractItemView_virtualbase_updateGeometries".}
proc fcQAbstractItemView_virtualbase_verticalScrollbarAction(self: pointer, action: cint): void {.importc: "QAbstractItemView_virtualbase_verticalScrollbarAction".}
proc fcQAbstractItemView_virtualbase_horizontalScrollbarAction(self: pointer, action: cint): void {.importc: "QAbstractItemView_virtualbase_horizontalScrollbarAction".}
proc fcQAbstractItemView_virtualbase_verticalScrollbarValueChanged(self: pointer, value: cint): void {.importc: "QAbstractItemView_virtualbase_verticalScrollbarValueChanged".}
proc fcQAbstractItemView_virtualbase_horizontalScrollbarValueChanged(self: pointer, value: cint): void {.importc: "QAbstractItemView_virtualbase_horizontalScrollbarValueChanged".}
proc fcQAbstractItemView_virtualbase_closeEditor(self: pointer, editor: pointer, hint: cint): void {.importc: "QAbstractItemView_virtualbase_closeEditor".}
proc fcQAbstractItemView_virtualbase_commitData(self: pointer, editor: pointer): void {.importc: "QAbstractItemView_virtualbase_commitData".}
proc fcQAbstractItemView_virtualbase_editorDestroyed(self: pointer, editor: pointer): void {.importc: "QAbstractItemView_virtualbase_editorDestroyed".}
proc fcQAbstractItemView_virtualbase_selectedIndexes(self: pointer): struct_miqt_array {.importc: "QAbstractItemView_virtualbase_selectedIndexes".}
proc fcQAbstractItemView_virtualbase_edit2(self: pointer, index: pointer, trigger: cint, event: pointer): bool {.importc: "QAbstractItemView_virtualbase_edit2".}
proc fcQAbstractItemView_virtualbase_selectionCommand(self: pointer, index: pointer, event: pointer): cint {.importc: "QAbstractItemView_virtualbase_selectionCommand".}
proc fcQAbstractItemView_virtualbase_startDrag(self: pointer, supportedActions: cint): void {.importc: "QAbstractItemView_virtualbase_startDrag".}
proc fcQAbstractItemView_virtualbase_viewOptions(self: pointer): pointer {.importc: "QAbstractItemView_virtualbase_viewOptions".}
proc fcQAbstractItemView_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QAbstractItemView_virtualbase_focusNextPrevChild".}
proc fcQAbstractItemView_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QAbstractItemView_virtualbase_event".}
proc fcQAbstractItemView_virtualbase_viewportEvent(self: pointer, event: pointer): bool {.importc: "QAbstractItemView_virtualbase_viewportEvent".}
proc fcQAbstractItemView_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_mousePressEvent".}
proc fcQAbstractItemView_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_mouseMoveEvent".}
proc fcQAbstractItemView_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_mouseReleaseEvent".}
proc fcQAbstractItemView_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_mouseDoubleClickEvent".}
proc fcQAbstractItemView_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_dragEnterEvent".}
proc fcQAbstractItemView_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_dragMoveEvent".}
proc fcQAbstractItemView_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_dragLeaveEvent".}
proc fcQAbstractItemView_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_dropEvent".}
proc fcQAbstractItemView_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_focusInEvent".}
proc fcQAbstractItemView_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_focusOutEvent".}
proc fcQAbstractItemView_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_keyPressEvent".}
proc fcQAbstractItemView_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_resizeEvent".}
proc fcQAbstractItemView_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_timerEvent".}
proc fcQAbstractItemView_virtualbase_inputMethodEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_inputMethodEvent".}
proc fcQAbstractItemView_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool {.importc: "QAbstractItemView_virtualbase_eventFilter".}
proc fcQAbstractItemView_virtualbase_viewportSizeHint(self: pointer): pointer {.importc: "QAbstractItemView_virtualbase_viewportSizeHint".}
proc fcQAbstractItemView_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QAbstractItemView_virtualbase_minimumSizeHint".}
proc fcQAbstractItemView_virtualbase_sizeHint(self: pointer): pointer {.importc: "QAbstractItemView_virtualbase_sizeHint".}
proc fcQAbstractItemView_virtualbase_setupViewport(self: pointer, viewport: pointer): void {.importc: "QAbstractItemView_virtualbase_setupViewport".}
proc fcQAbstractItemView_virtualbase_paintEvent(self: pointer, param1: pointer): void {.importc: "QAbstractItemView_virtualbase_paintEvent".}
proc fcQAbstractItemView_virtualbase_wheelEvent(self: pointer, param1: pointer): void {.importc: "QAbstractItemView_virtualbase_wheelEvent".}
proc fcQAbstractItemView_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void {.importc: "QAbstractItemView_virtualbase_contextMenuEvent".}
proc fcQAbstractItemView_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.importc: "QAbstractItemView_virtualbase_scrollContentsBy".}
proc fcQAbstractItemView_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QAbstractItemView_virtualbase_changeEvent".}
proc fcQAbstractItemView_virtualbase_devType(self: pointer): cint {.importc: "QAbstractItemView_virtualbase_devType".}
proc fcQAbstractItemView_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QAbstractItemView_virtualbase_setVisible".}
proc fcQAbstractItemView_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QAbstractItemView_virtualbase_heightForWidth".}
proc fcQAbstractItemView_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QAbstractItemView_virtualbase_hasHeightForWidth".}
proc fcQAbstractItemView_virtualbase_paintEngine(self: pointer): pointer {.importc: "QAbstractItemView_virtualbase_paintEngine".}
proc fcQAbstractItemView_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_keyReleaseEvent".}
proc fcQAbstractItemView_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_enterEvent".}
proc fcQAbstractItemView_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_leaveEvent".}
proc fcQAbstractItemView_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_moveEvent".}
proc fcQAbstractItemView_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_closeEvent".}
proc fcQAbstractItemView_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_tabletEvent".}
proc fcQAbstractItemView_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_actionEvent".}
proc fcQAbstractItemView_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_showEvent".}
proc fcQAbstractItemView_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_hideEvent".}
proc fcQAbstractItemView_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QAbstractItemView_virtualbase_nativeEvent".}
proc fcQAbstractItemView_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QAbstractItemView_virtualbase_metric".}
proc fcQAbstractItemView_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QAbstractItemView_virtualbase_initPainter".}
proc fcQAbstractItemView_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QAbstractItemView_virtualbase_redirected".}
proc fcQAbstractItemView_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QAbstractItemView_virtualbase_sharedPainter".}
proc fcQAbstractItemView_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_childEvent".}
proc fcQAbstractItemView_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_customEvent".}
proc fcQAbstractItemView_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractItemView_virtualbase_connectNotify".}
proc fcQAbstractItemView_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractItemView_virtualbase_disconnectNotify".}
proc fcQAbstractItemView_protectedbase_setHorizontalStepsPerItem(self: pointer, steps: cint): void {.importc: "QAbstractItemView_protectedbase_setHorizontalStepsPerItem".}
proc fcQAbstractItemView_protectedbase_horizontalStepsPerItem(self: pointer): cint {.importc: "QAbstractItemView_protectedbase_horizontalStepsPerItem".}
proc fcQAbstractItemView_protectedbase_setVerticalStepsPerItem(self: pointer, steps: cint): void {.importc: "QAbstractItemView_protectedbase_setVerticalStepsPerItem".}
proc fcQAbstractItemView_protectedbase_verticalStepsPerItem(self: pointer): cint {.importc: "QAbstractItemView_protectedbase_verticalStepsPerItem".}
proc fcQAbstractItemView_protectedbase_state(self: pointer): cint {.importc: "QAbstractItemView_protectedbase_state".}
proc fcQAbstractItemView_protectedbase_setState(self: pointer, state: cint): void {.importc: "QAbstractItemView_protectedbase_setState".}
proc fcQAbstractItemView_protectedbase_scheduleDelayedItemsLayout(self: pointer): void {.importc: "QAbstractItemView_protectedbase_scheduleDelayedItemsLayout".}
proc fcQAbstractItemView_protectedbase_executeDelayedItemsLayout(self: pointer): void {.importc: "QAbstractItemView_protectedbase_executeDelayedItemsLayout".}
proc fcQAbstractItemView_protectedbase_setDirtyRegion(self: pointer, region: pointer): void {.importc: "QAbstractItemView_protectedbase_setDirtyRegion".}
proc fcQAbstractItemView_protectedbase_scrollDirtyRegion(self: pointer, dx: cint, dy: cint): void {.importc: "QAbstractItemView_protectedbase_scrollDirtyRegion".}
proc fcQAbstractItemView_protectedbase_dirtyRegionOffset(self: pointer): pointer {.importc: "QAbstractItemView_protectedbase_dirtyRegionOffset".}
proc fcQAbstractItemView_protectedbase_startAutoScroll(self: pointer): void {.importc: "QAbstractItemView_protectedbase_startAutoScroll".}
proc fcQAbstractItemView_protectedbase_stopAutoScroll(self: pointer): void {.importc: "QAbstractItemView_protectedbase_stopAutoScroll".}
proc fcQAbstractItemView_protectedbase_doAutoScroll(self: pointer): void {.importc: "QAbstractItemView_protectedbase_doAutoScroll".}
proc fcQAbstractItemView_protectedbase_dropIndicatorPosition(self: pointer): cint {.importc: "QAbstractItemView_protectedbase_dropIndicatorPosition".}
proc fcQAbstractItemView_protectedbase_setViewportMargins(self: pointer, left: cint, top: cint, right: cint, bottom: cint): void {.importc: "QAbstractItemView_protectedbase_setViewportMargins".}
proc fcQAbstractItemView_protectedbase_viewportMargins(self: pointer): pointer {.importc: "QAbstractItemView_protectedbase_viewportMargins".}
proc fcQAbstractItemView_protectedbase_drawFrame(self: pointer, param1: pointer): void {.importc: "QAbstractItemView_protectedbase_drawFrame".}
proc fcQAbstractItemView_protectedbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QAbstractItemView_protectedbase_initStyleOption".}
proc fcQAbstractItemView_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QAbstractItemView_protectedbase_updateMicroFocus".}
proc fcQAbstractItemView_protectedbase_create(self: pointer): void {.importc: "QAbstractItemView_protectedbase_create".}
proc fcQAbstractItemView_protectedbase_destroy(self: pointer): void {.importc: "QAbstractItemView_protectedbase_destroy".}
proc fcQAbstractItemView_protectedbase_focusNextChild(self: pointer): bool {.importc: "QAbstractItemView_protectedbase_focusNextChild".}
proc fcQAbstractItemView_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QAbstractItemView_protectedbase_focusPreviousChild".}
proc fcQAbstractItemView_protectedbase_sender(self: pointer): pointer {.importc: "QAbstractItemView_protectedbase_sender".}
proc fcQAbstractItemView_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QAbstractItemView_protectedbase_senderSignalIndex".}
proc fcQAbstractItemView_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAbstractItemView_protectedbase_receivers".}
proc fcQAbstractItemView_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAbstractItemView_protectedbase_isSignalConnected".}
proc fcQAbstractItemView_new(vtbl, vdata: pointer, parent: pointer): ptr cQAbstractItemView {.importc: "QAbstractItemView_new".}
proc fcQAbstractItemView_new2(vtbl, vdata: pointer): ptr cQAbstractItemView {.importc: "QAbstractItemView_new2".}
proc fcQAbstractItemView_staticMetaObject(): pointer {.importc: "QAbstractItemView_staticMetaObject".}

proc metaObject*(self: gen_qabstractitemview_types.QAbstractItemView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractItemView_metaObject(self.h), owned: false)

proc metacast*(self: gen_qabstractitemview_types.QAbstractItemView, param1: cstring): pointer =
  fcQAbstractItemView_metacast(self.h, param1)

proc metacall*(self: gen_qabstractitemview_types.QAbstractItemView, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractItemView_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qabstractitemview_types.QAbstractItemView, s: cstring): string =
  let v_ms = fcQAbstractItemView_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractitemview_types.QAbstractItemView, s: cstring): string =
  let v_ms = fcQAbstractItemView_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setModel*(self: gen_qabstractitemview_types.QAbstractItemView, model: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQAbstractItemView_setModel(self.h, model.h)

proc model*(self: gen_qabstractitemview_types.QAbstractItemView): gen_qabstractitemmodel_types.QAbstractItemModel =
  gen_qabstractitemmodel_types.QAbstractItemModel(h: fcQAbstractItemView_model(self.h), owned: false)

proc setSelectionModel*(self: gen_qabstractitemview_types.QAbstractItemView, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void =
  fcQAbstractItemView_setSelectionModel(self.h, selectionModel.h)

proc selectionModel*(self: gen_qabstractitemview_types.QAbstractItemView): gen_qitemselectionmodel_types.QItemSelectionModel =
  gen_qitemselectionmodel_types.QItemSelectionModel(h: fcQAbstractItemView_selectionModel(self.h), owned: false)

proc setItemDelegate*(self: gen_qabstractitemview_types.QAbstractItemView, delegate: gen_qabstractitemdelegate_types.QAbstractItemDelegate): void =
  fcQAbstractItemView_setItemDelegate(self.h, delegate.h)

proc itemDelegate*(self: gen_qabstractitemview_types.QAbstractItemView): gen_qabstractitemdelegate_types.QAbstractItemDelegate =
  gen_qabstractitemdelegate_types.QAbstractItemDelegate(h: fcQAbstractItemView_itemDelegate(self.h), owned: false)

proc setSelectionMode*(self: gen_qabstractitemview_types.QAbstractItemView, mode: cint): void =
  fcQAbstractItemView_setSelectionMode(self.h, cint(mode))

proc selectionMode*(self: gen_qabstractitemview_types.QAbstractItemView): cint =
  cint(fcQAbstractItemView_selectionMode(self.h))

proc setSelectionBehavior*(self: gen_qabstractitemview_types.QAbstractItemView, behavior: cint): void =
  fcQAbstractItemView_setSelectionBehavior(self.h, cint(behavior))

proc selectionBehavior*(self: gen_qabstractitemview_types.QAbstractItemView): cint =
  cint(fcQAbstractItemView_selectionBehavior(self.h))

proc currentIndex*(self: gen_qabstractitemview_types.QAbstractItemView): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractItemView_currentIndex(self.h), owned: true)

proc rootIndex*(self: gen_qabstractitemview_types.QAbstractItemView): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractItemView_rootIndex(self.h), owned: true)

proc setEditTriggers*(self: gen_qabstractitemview_types.QAbstractItemView, triggers: cint): void =
  fcQAbstractItemView_setEditTriggers(self.h, cint(triggers))

proc editTriggers*(self: gen_qabstractitemview_types.QAbstractItemView): cint =
  cint(fcQAbstractItemView_editTriggers(self.h))

proc setVerticalScrollMode*(self: gen_qabstractitemview_types.QAbstractItemView, mode: cint): void =
  fcQAbstractItemView_setVerticalScrollMode(self.h, cint(mode))

proc verticalScrollMode*(self: gen_qabstractitemview_types.QAbstractItemView): cint =
  cint(fcQAbstractItemView_verticalScrollMode(self.h))

proc resetVerticalScrollMode*(self: gen_qabstractitemview_types.QAbstractItemView): void =
  fcQAbstractItemView_resetVerticalScrollMode(self.h)

proc setHorizontalScrollMode*(self: gen_qabstractitemview_types.QAbstractItemView, mode: cint): void =
  fcQAbstractItemView_setHorizontalScrollMode(self.h, cint(mode))

proc horizontalScrollMode*(self: gen_qabstractitemview_types.QAbstractItemView): cint =
  cint(fcQAbstractItemView_horizontalScrollMode(self.h))

proc resetHorizontalScrollMode*(self: gen_qabstractitemview_types.QAbstractItemView): void =
  fcQAbstractItemView_resetHorizontalScrollMode(self.h)

proc setAutoScroll*(self: gen_qabstractitemview_types.QAbstractItemView, enable: bool): void =
  fcQAbstractItemView_setAutoScroll(self.h, enable)

proc hasAutoScroll*(self: gen_qabstractitemview_types.QAbstractItemView): bool =
  fcQAbstractItemView_hasAutoScroll(self.h)

proc setAutoScrollMargin*(self: gen_qabstractitemview_types.QAbstractItemView, margin: cint): void =
  fcQAbstractItemView_setAutoScrollMargin(self.h, margin)

proc autoScrollMargin*(self: gen_qabstractitemview_types.QAbstractItemView): cint =
  fcQAbstractItemView_autoScrollMargin(self.h)

proc setTabKeyNavigation*(self: gen_qabstractitemview_types.QAbstractItemView, enable: bool): void =
  fcQAbstractItemView_setTabKeyNavigation(self.h, enable)

proc tabKeyNavigation*(self: gen_qabstractitemview_types.QAbstractItemView): bool =
  fcQAbstractItemView_tabKeyNavigation(self.h)

proc setDropIndicatorShown*(self: gen_qabstractitemview_types.QAbstractItemView, enable: bool): void =
  fcQAbstractItemView_setDropIndicatorShown(self.h, enable)

proc showDropIndicator*(self: gen_qabstractitemview_types.QAbstractItemView): bool =
  fcQAbstractItemView_showDropIndicator(self.h)

proc setDragEnabled*(self: gen_qabstractitemview_types.QAbstractItemView, enable: bool): void =
  fcQAbstractItemView_setDragEnabled(self.h, enable)

proc dragEnabled*(self: gen_qabstractitemview_types.QAbstractItemView): bool =
  fcQAbstractItemView_dragEnabled(self.h)

proc setDragDropOverwriteMode*(self: gen_qabstractitemview_types.QAbstractItemView, overwrite: bool): void =
  fcQAbstractItemView_setDragDropOverwriteMode(self.h, overwrite)

proc dragDropOverwriteMode*(self: gen_qabstractitemview_types.QAbstractItemView): bool =
  fcQAbstractItemView_dragDropOverwriteMode(self.h)

proc setDragDropMode*(self: gen_qabstractitemview_types.QAbstractItemView, behavior: cint): void =
  fcQAbstractItemView_setDragDropMode(self.h, cint(behavior))

proc dragDropMode*(self: gen_qabstractitemview_types.QAbstractItemView): cint =
  cint(fcQAbstractItemView_dragDropMode(self.h))

proc setDefaultDropAction*(self: gen_qabstractitemview_types.QAbstractItemView, dropAction: cint): void =
  fcQAbstractItemView_setDefaultDropAction(self.h, cint(dropAction))

proc defaultDropAction*(self: gen_qabstractitemview_types.QAbstractItemView): cint =
  cint(fcQAbstractItemView_defaultDropAction(self.h))

proc setAlternatingRowColors*(self: gen_qabstractitemview_types.QAbstractItemView, enable: bool): void =
  fcQAbstractItemView_setAlternatingRowColors(self.h, enable)

proc alternatingRowColors*(self: gen_qabstractitemview_types.QAbstractItemView): bool =
  fcQAbstractItemView_alternatingRowColors(self.h)

proc setIconSize*(self: gen_qabstractitemview_types.QAbstractItemView, size: gen_qsize_types.QSize): void =
  fcQAbstractItemView_setIconSize(self.h, size.h)

proc iconSize*(self: gen_qabstractitemview_types.QAbstractItemView): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractItemView_iconSize(self.h), owned: true)

proc setTextElideMode*(self: gen_qabstractitemview_types.QAbstractItemView, mode: cint): void =
  fcQAbstractItemView_setTextElideMode(self.h, cint(mode))

proc textElideMode*(self: gen_qabstractitemview_types.QAbstractItemView): cint =
  cint(fcQAbstractItemView_textElideMode(self.h))

proc keyboardSearch*(self: gen_qabstractitemview_types.QAbstractItemView, search: openArray[char]): void =
  fcQAbstractItemView_keyboardSearch(self.h, struct_miqt_string(data: if len(search) > 0: addr search[0] else: nil, len: csize_t(len(search))))

proc visualRect*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQAbstractItemView_visualRect(self.h, index.h), owned: true)

proc scrollTo*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void =
  fcQAbstractItemView_scrollTo(self.h, index.h, cint(hint))

proc indexAt*(self: gen_qabstractitemview_types.QAbstractItemView, point: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractItemView_indexAt(self.h, point.h), owned: true)

proc sizeHintForIndex*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractItemView_sizeHintForIndex(self.h, index.h), owned: true)

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
  gen_qwidget_types.QWidget(h: fcQAbstractItemView_indexWidget(self.h, index.h), owned: false)

proc setItemDelegateForRow*(self: gen_qabstractitemview_types.QAbstractItemView, row: cint, delegate: gen_qabstractitemdelegate_types.QAbstractItemDelegate): void =
  fcQAbstractItemView_setItemDelegateForRow(self.h, row, delegate.h)

proc itemDelegateForRow*(self: gen_qabstractitemview_types.QAbstractItemView, row: cint): gen_qabstractitemdelegate_types.QAbstractItemDelegate =
  gen_qabstractitemdelegate_types.QAbstractItemDelegate(h: fcQAbstractItemView_itemDelegateForRow(self.h, row), owned: false)

proc setItemDelegateForColumn*(self: gen_qabstractitemview_types.QAbstractItemView, column: cint, delegate: gen_qabstractitemdelegate_types.QAbstractItemDelegate): void =
  fcQAbstractItemView_setItemDelegateForColumn(self.h, column, delegate.h)

proc itemDelegateForColumn*(self: gen_qabstractitemview_types.QAbstractItemView, column: cint): gen_qabstractitemdelegate_types.QAbstractItemDelegate =
  gen_qabstractitemdelegate_types.QAbstractItemDelegate(h: fcQAbstractItemView_itemDelegateForColumn(self.h, column), owned: false)

proc itemDelegate*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemdelegate_types.QAbstractItemDelegate =
  gen_qabstractitemdelegate_types.QAbstractItemDelegate(h: fcQAbstractItemView_itemDelegateWithIndex(self.h, index.h), owned: false)

proc inputMethodQuery*(self: gen_qabstractitemview_types.QAbstractItemView, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractItemView_inputMethodQuery(self.h, cint(query)), owned: true)

proc reset*(self: gen_qabstractitemview_types.QAbstractItemView): void =
  fcQAbstractItemView_reset(self.h)

proc setRootIndex*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemView_setRootIndex(self.h, index.h)

proc doItemsLayout*(self: gen_qabstractitemview_types.QAbstractItemView): void =
  fcQAbstractItemView_doItemsLayout(self.h)

proc selectAll*(self: gen_qabstractitemview_types.QAbstractItemView): void =
  fcQAbstractItemView_selectAll(self.h)

proc edit*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemView_edit(self.h, index.h)

proc clearSelection*(self: gen_qabstractitemview_types.QAbstractItemView): void =
  fcQAbstractItemView_clearSelection(self.h)

proc setCurrentIndex*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemView_setCurrentIndex(self.h, index.h)

proc scrollToTop*(self: gen_qabstractitemview_types.QAbstractItemView): void =
  fcQAbstractItemView_scrollToTop(self.h)

proc scrollToBottom*(self: gen_qabstractitemview_types.QAbstractItemView): void =
  fcQAbstractItemView_scrollToBottom(self.h)

proc update*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemView_update(self.h, index.h)

proc pressed*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemView_pressed(self.h, index.h)

type QAbstractItemViewpressedSlot* = proc(index: gen_qabstractitemmodel_types.QModelIndex)
proc cQAbstractItemView_slot_callback_pressed(slot: int, index: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractItemViewpressedSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)

  nimfunc[](slotval1)

proc cQAbstractItemView_slot_callback_pressed_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractItemViewpressedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onpressed*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewpressedSlot) =
  var tmp = new QAbstractItemViewpressedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_connect_pressed(self.h, cast[int](addr tmp[]), cQAbstractItemView_slot_callback_pressed, cQAbstractItemView_slot_callback_pressed_release)

proc clicked*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemView_clicked(self.h, index.h)

type QAbstractItemViewclickedSlot* = proc(index: gen_qabstractitemmodel_types.QModelIndex)
proc cQAbstractItemView_slot_callback_clicked(slot: int, index: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractItemViewclickedSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)

  nimfunc[](slotval1)

proc cQAbstractItemView_slot_callback_clicked_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractItemViewclickedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onclicked*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewclickedSlot) =
  var tmp = new QAbstractItemViewclickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_connect_clicked(self.h, cast[int](addr tmp[]), cQAbstractItemView_slot_callback_clicked, cQAbstractItemView_slot_callback_clicked_release)

proc doubleClicked*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemView_doubleClicked(self.h, index.h)

type QAbstractItemViewdoubleClickedSlot* = proc(index: gen_qabstractitemmodel_types.QModelIndex)
proc cQAbstractItemView_slot_callback_doubleClicked(slot: int, index: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractItemViewdoubleClickedSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)

  nimfunc[](slotval1)

proc cQAbstractItemView_slot_callback_doubleClicked_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractItemViewdoubleClickedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ondoubleClicked*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewdoubleClickedSlot) =
  var tmp = new QAbstractItemViewdoubleClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_connect_doubleClicked(self.h, cast[int](addr tmp[]), cQAbstractItemView_slot_callback_doubleClicked, cQAbstractItemView_slot_callback_doubleClicked_release)

proc activated*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemView_activated(self.h, index.h)

type QAbstractItemViewactivatedSlot* = proc(index: gen_qabstractitemmodel_types.QModelIndex)
proc cQAbstractItemView_slot_callback_activated(slot: int, index: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractItemViewactivatedSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)

  nimfunc[](slotval1)

proc cQAbstractItemView_slot_callback_activated_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractItemViewactivatedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onactivated*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewactivatedSlot) =
  var tmp = new QAbstractItemViewactivatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_connect_activated(self.h, cast[int](addr tmp[]), cQAbstractItemView_slot_callback_activated, cQAbstractItemView_slot_callback_activated_release)

proc entered*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemView_entered(self.h, index.h)

type QAbstractItemViewenteredSlot* = proc(index: gen_qabstractitemmodel_types.QModelIndex)
proc cQAbstractItemView_slot_callback_entered(slot: int, index: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractItemViewenteredSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)

  nimfunc[](slotval1)

proc cQAbstractItemView_slot_callback_entered_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractItemViewenteredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onentered*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewenteredSlot) =
  var tmp = new QAbstractItemViewenteredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_connect_entered(self.h, cast[int](addr tmp[]), cQAbstractItemView_slot_callback_entered, cQAbstractItemView_slot_callback_entered_release)

proc viewportEntered*(self: gen_qabstractitemview_types.QAbstractItemView): void =
  fcQAbstractItemView_viewportEntered(self.h)

type QAbstractItemViewviewportEnteredSlot* = proc()
proc cQAbstractItemView_slot_callback_viewportEntered(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractItemViewviewportEnteredSlot](cast[pointer](slot))
  nimfunc[]()

proc cQAbstractItemView_slot_callback_viewportEntered_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractItemViewviewportEnteredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onviewportEntered*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewviewportEnteredSlot) =
  var tmp = new QAbstractItemViewviewportEnteredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_connect_viewportEntered(self.h, cast[int](addr tmp[]), cQAbstractItemView_slot_callback_viewportEntered, cQAbstractItemView_slot_callback_viewportEntered_release)

proc iconSizeChanged*(self: gen_qabstractitemview_types.QAbstractItemView, size: gen_qsize_types.QSize): void =
  fcQAbstractItemView_iconSizeChanged(self.h, size.h)

type QAbstractItemViewiconSizeChangedSlot* = proc(size: gen_qsize_types.QSize)
proc cQAbstractItemView_slot_callback_iconSizeChanged(slot: int, size: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractItemViewiconSizeChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qsize_types.QSize(h: size, owned: false)

  nimfunc[](slotval1)

proc cQAbstractItemView_slot_callback_iconSizeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractItemViewiconSizeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oniconSizeChanged*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewiconSizeChangedSlot) =
  var tmp = new QAbstractItemViewiconSizeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_connect_iconSizeChanged(self.h, cast[int](addr tmp[]), cQAbstractItemView_slot_callback_iconSizeChanged, cQAbstractItemView_slot_callback_iconSizeChanged_release)

proc tr*(_: type gen_qabstractitemview_types.QAbstractItemView, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractItemView_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qabstractitemview_types.QAbstractItemView, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractItemView_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractitemview_types.QAbstractItemView, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractItemView_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractitemview_types.QAbstractItemView, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractItemView_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QAbstractItemViewmetaObjectProc* = proc(self: QAbstractItemView): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QAbstractItemViewmetacastProc* = proc(self: QAbstractItemView, param1: cstring): pointer {.raises: [], gcsafe.}
type QAbstractItemViewmetacallProc* = proc(self: QAbstractItemView, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QAbstractItemViewsetModelProc* = proc(self: QAbstractItemView, model: gen_qabstractitemmodel_types.QAbstractItemModel): void {.raises: [], gcsafe.}
type QAbstractItemViewsetSelectionModelProc* = proc(self: QAbstractItemView, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void {.raises: [], gcsafe.}
type QAbstractItemViewkeyboardSearchProc* = proc(self: QAbstractItemView, search: openArray[char]): void {.raises: [], gcsafe.}
type QAbstractItemViewvisualRectProc* = proc(self: QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect {.raises: [], gcsafe.}
type QAbstractItemViewscrollToProc* = proc(self: QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void {.raises: [], gcsafe.}
type QAbstractItemViewindexAtProc* = proc(self: QAbstractItemView, point: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QAbstractItemViewsizeHintForRowProc* = proc(self: QAbstractItemView, row: cint): cint {.raises: [], gcsafe.}
type QAbstractItemViewsizeHintForColumnProc* = proc(self: QAbstractItemView, column: cint): cint {.raises: [], gcsafe.}
type QAbstractItemViewinputMethodQueryProc* = proc(self: QAbstractItemView, query: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QAbstractItemViewresetProc* = proc(self: QAbstractItemView): void {.raises: [], gcsafe.}
type QAbstractItemViewsetRootIndexProc* = proc(self: QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QAbstractItemViewdoItemsLayoutProc* = proc(self: QAbstractItemView): void {.raises: [], gcsafe.}
type QAbstractItemViewselectAllProc* = proc(self: QAbstractItemView): void {.raises: [], gcsafe.}
type QAbstractItemViewdataChangedProc* = proc(self: QAbstractItemView, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: openArray[cint]): void {.raises: [], gcsafe.}
type QAbstractItemViewrowsInsertedProc* = proc(self: QAbstractItemView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void {.raises: [], gcsafe.}
type QAbstractItemViewrowsAboutToBeRemovedProc* = proc(self: QAbstractItemView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void {.raises: [], gcsafe.}
type QAbstractItemViewselectionChangedProc* = proc(self: QAbstractItemView, selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void {.raises: [], gcsafe.}
type QAbstractItemViewcurrentChangedProc* = proc(self: QAbstractItemView, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QAbstractItemViewupdateEditorDataProc* = proc(self: QAbstractItemView): void {.raises: [], gcsafe.}
type QAbstractItemViewupdateEditorGeometriesProc* = proc(self: QAbstractItemView): void {.raises: [], gcsafe.}
type QAbstractItemViewupdateGeometriesProc* = proc(self: QAbstractItemView): void {.raises: [], gcsafe.}
type QAbstractItemViewverticalScrollbarActionProc* = proc(self: QAbstractItemView, action: cint): void {.raises: [], gcsafe.}
type QAbstractItemViewhorizontalScrollbarActionProc* = proc(self: QAbstractItemView, action: cint): void {.raises: [], gcsafe.}
type QAbstractItemViewverticalScrollbarValueChangedProc* = proc(self: QAbstractItemView, value: cint): void {.raises: [], gcsafe.}
type QAbstractItemViewhorizontalScrollbarValueChangedProc* = proc(self: QAbstractItemView, value: cint): void {.raises: [], gcsafe.}
type QAbstractItemViewcloseEditorProc* = proc(self: QAbstractItemView, editor: gen_qwidget_types.QWidget, hint: cint): void {.raises: [], gcsafe.}
type QAbstractItemViewcommitDataProc* = proc(self: QAbstractItemView, editor: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QAbstractItemVieweditorDestroyedProc* = proc(self: QAbstractItemView, editor: gen_qobject_types.QObject): void {.raises: [], gcsafe.}
type QAbstractItemViewmoveCursorProc* = proc(self: QAbstractItemView, cursorAction: cint, modifiers: cint): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QAbstractItemViewhorizontalOffsetProc* = proc(self: QAbstractItemView): cint {.raises: [], gcsafe.}
type QAbstractItemViewverticalOffsetProc* = proc(self: QAbstractItemView): cint {.raises: [], gcsafe.}
type QAbstractItemViewisIndexHiddenProc* = proc(self: QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QAbstractItemViewsetSelectionProc* = proc(self: QAbstractItemView, rect: gen_qrect_types.QRect, command: cint): void {.raises: [], gcsafe.}
type QAbstractItemViewvisualRegionForSelectionProc* = proc(self: QAbstractItemView, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion {.raises: [], gcsafe.}
type QAbstractItemViewselectedIndexesProc* = proc(self: QAbstractItemView): seq[gen_qabstractitemmodel_types.QModelIndex] {.raises: [], gcsafe.}
type QAbstractItemViewedit2Proc* = proc(self: QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractItemViewselectionCommandProc* = proc(self: QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint {.raises: [], gcsafe.}
type QAbstractItemViewstartDragProc* = proc(self: QAbstractItemView, supportedActions: cint): void {.raises: [], gcsafe.}
type QAbstractItemViewviewOptionsProc* = proc(self: QAbstractItemView): gen_qstyleoption_types.QStyleOptionViewItem {.raises: [], gcsafe.}
type QAbstractItemViewfocusNextPrevChildProc* = proc(self: QAbstractItemView, next: bool): bool {.raises: [], gcsafe.}
type QAbstractItemVieweventProc* = proc(self: QAbstractItemView, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractItemViewviewportEventProc* = proc(self: QAbstractItemView, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractItemViewmousePressEventProc* = proc(self: QAbstractItemView, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewmouseMoveEventProc* = proc(self: QAbstractItemView, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewmouseReleaseEventProc* = proc(self: QAbstractItemView, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewmouseDoubleClickEventProc* = proc(self: QAbstractItemView, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewdragEnterEventProc* = proc(self: QAbstractItemView, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewdragMoveEventProc* = proc(self: QAbstractItemView, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewdragLeaveEventProc* = proc(self: QAbstractItemView, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewdropEventProc* = proc(self: QAbstractItemView, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewfocusInEventProc* = proc(self: QAbstractItemView, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewfocusOutEventProc* = proc(self: QAbstractItemView, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewkeyPressEventProc* = proc(self: QAbstractItemView, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewresizeEventProc* = proc(self: QAbstractItemView, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewtimerEventProc* = proc(self: QAbstractItemView, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewinputMethodEventProc* = proc(self: QAbstractItemView, event: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QAbstractItemVieweventFilterProc* = proc(self: QAbstractItemView, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractItemViewviewportSizeHintProc* = proc(self: QAbstractItemView): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QAbstractItemViewminimumSizeHintProc* = proc(self: QAbstractItemView): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QAbstractItemViewsizeHintProc* = proc(self: QAbstractItemView): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QAbstractItemViewsetupViewportProc* = proc(self: QAbstractItemView, viewport: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QAbstractItemViewpaintEventProc* = proc(self: QAbstractItemView, param1: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewwheelEventProc* = proc(self: QAbstractItemView, param1: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewcontextMenuEventProc* = proc(self: QAbstractItemView, param1: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewscrollContentsByProc* = proc(self: QAbstractItemView, dx: cint, dy: cint): void {.raises: [], gcsafe.}
type QAbstractItemViewchangeEventProc* = proc(self: QAbstractItemView, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewdevTypeProc* = proc(self: QAbstractItemView): cint {.raises: [], gcsafe.}
type QAbstractItemViewsetVisibleProc* = proc(self: QAbstractItemView, visible: bool): void {.raises: [], gcsafe.}
type QAbstractItemViewheightForWidthProc* = proc(self: QAbstractItemView, param1: cint): cint {.raises: [], gcsafe.}
type QAbstractItemViewhasHeightForWidthProc* = proc(self: QAbstractItemView): bool {.raises: [], gcsafe.}
type QAbstractItemViewpaintEngineProc* = proc(self: QAbstractItemView): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QAbstractItemViewkeyReleaseEventProc* = proc(self: QAbstractItemView, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewenterEventProc* = proc(self: QAbstractItemView, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewleaveEventProc* = proc(self: QAbstractItemView, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewmoveEventProc* = proc(self: QAbstractItemView, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewcloseEventProc* = proc(self: QAbstractItemView, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewtabletEventProc* = proc(self: QAbstractItemView, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewactionEventProc* = proc(self: QAbstractItemView, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewshowEventProc* = proc(self: QAbstractItemView, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewhideEventProc* = proc(self: QAbstractItemView, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewnativeEventProc* = proc(self: QAbstractItemView, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QAbstractItemViewmetricProc* = proc(self: QAbstractItemView, param1: cint): cint {.raises: [], gcsafe.}
type QAbstractItemViewinitPainterProc* = proc(self: QAbstractItemView, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QAbstractItemViewredirectedProc* = proc(self: QAbstractItemView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QAbstractItemViewsharedPainterProc* = proc(self: QAbstractItemView): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QAbstractItemViewchildEventProc* = proc(self: QAbstractItemView, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewcustomEventProc* = proc(self: QAbstractItemView, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewconnectNotifyProc* = proc(self: QAbstractItemView, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAbstractItemViewdisconnectNotifyProc* = proc(self: QAbstractItemView, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAbstractItemViewVTable* {.inheritable, pure.} = object
  vtbl: cQAbstractItemViewVTable
  metaObject*: QAbstractItemViewmetaObjectProc
  metacast*: QAbstractItemViewmetacastProc
  metacall*: QAbstractItemViewmetacallProc
  setModel*: QAbstractItemViewsetModelProc
  setSelectionModel*: QAbstractItemViewsetSelectionModelProc
  keyboardSearch*: QAbstractItemViewkeyboardSearchProc
  visualRect*: QAbstractItemViewvisualRectProc
  scrollTo*: QAbstractItemViewscrollToProc
  indexAt*: QAbstractItemViewindexAtProc
  sizeHintForRow*: QAbstractItemViewsizeHintForRowProc
  sizeHintForColumn*: QAbstractItemViewsizeHintForColumnProc
  inputMethodQuery*: QAbstractItemViewinputMethodQueryProc
  reset*: QAbstractItemViewresetProc
  setRootIndex*: QAbstractItemViewsetRootIndexProc
  doItemsLayout*: QAbstractItemViewdoItemsLayoutProc
  selectAll*: QAbstractItemViewselectAllProc
  dataChanged*: QAbstractItemViewdataChangedProc
  rowsInserted*: QAbstractItemViewrowsInsertedProc
  rowsAboutToBeRemoved*: QAbstractItemViewrowsAboutToBeRemovedProc
  selectionChanged*: QAbstractItemViewselectionChangedProc
  currentChanged*: QAbstractItemViewcurrentChangedProc
  updateEditorData*: QAbstractItemViewupdateEditorDataProc
  updateEditorGeometries*: QAbstractItemViewupdateEditorGeometriesProc
  updateGeometries*: QAbstractItemViewupdateGeometriesProc
  verticalScrollbarAction*: QAbstractItemViewverticalScrollbarActionProc
  horizontalScrollbarAction*: QAbstractItemViewhorizontalScrollbarActionProc
  verticalScrollbarValueChanged*: QAbstractItemViewverticalScrollbarValueChangedProc
  horizontalScrollbarValueChanged*: QAbstractItemViewhorizontalScrollbarValueChangedProc
  closeEditor*: QAbstractItemViewcloseEditorProc
  commitData*: QAbstractItemViewcommitDataProc
  editorDestroyed*: QAbstractItemVieweditorDestroyedProc
  moveCursor*: QAbstractItemViewmoveCursorProc
  horizontalOffset*: QAbstractItemViewhorizontalOffsetProc
  verticalOffset*: QAbstractItemViewverticalOffsetProc
  isIndexHidden*: QAbstractItemViewisIndexHiddenProc
  setSelection*: QAbstractItemViewsetSelectionProc
  visualRegionForSelection*: QAbstractItemViewvisualRegionForSelectionProc
  selectedIndexes*: QAbstractItemViewselectedIndexesProc
  edit2*: QAbstractItemViewedit2Proc
  selectionCommand*: QAbstractItemViewselectionCommandProc
  startDrag*: QAbstractItemViewstartDragProc
  viewOptions*: QAbstractItemViewviewOptionsProc
  focusNextPrevChild*: QAbstractItemViewfocusNextPrevChildProc
  event*: QAbstractItemVieweventProc
  viewportEvent*: QAbstractItemViewviewportEventProc
  mousePressEvent*: QAbstractItemViewmousePressEventProc
  mouseMoveEvent*: QAbstractItemViewmouseMoveEventProc
  mouseReleaseEvent*: QAbstractItemViewmouseReleaseEventProc
  mouseDoubleClickEvent*: QAbstractItemViewmouseDoubleClickEventProc
  dragEnterEvent*: QAbstractItemViewdragEnterEventProc
  dragMoveEvent*: QAbstractItemViewdragMoveEventProc
  dragLeaveEvent*: QAbstractItemViewdragLeaveEventProc
  dropEvent*: QAbstractItemViewdropEventProc
  focusInEvent*: QAbstractItemViewfocusInEventProc
  focusOutEvent*: QAbstractItemViewfocusOutEventProc
  keyPressEvent*: QAbstractItemViewkeyPressEventProc
  resizeEvent*: QAbstractItemViewresizeEventProc
  timerEvent*: QAbstractItemViewtimerEventProc
  inputMethodEvent*: QAbstractItemViewinputMethodEventProc
  eventFilter*: QAbstractItemVieweventFilterProc
  viewportSizeHint*: QAbstractItemViewviewportSizeHintProc
  minimumSizeHint*: QAbstractItemViewminimumSizeHintProc
  sizeHint*: QAbstractItemViewsizeHintProc
  setupViewport*: QAbstractItemViewsetupViewportProc
  paintEvent*: QAbstractItemViewpaintEventProc
  wheelEvent*: QAbstractItemViewwheelEventProc
  contextMenuEvent*: QAbstractItemViewcontextMenuEventProc
  scrollContentsBy*: QAbstractItemViewscrollContentsByProc
  changeEvent*: QAbstractItemViewchangeEventProc
  devType*: QAbstractItemViewdevTypeProc
  setVisible*: QAbstractItemViewsetVisibleProc
  heightForWidth*: QAbstractItemViewheightForWidthProc
  hasHeightForWidth*: QAbstractItemViewhasHeightForWidthProc
  paintEngine*: QAbstractItemViewpaintEngineProc
  keyReleaseEvent*: QAbstractItemViewkeyReleaseEventProc
  enterEvent*: QAbstractItemViewenterEventProc
  leaveEvent*: QAbstractItemViewleaveEventProc
  moveEvent*: QAbstractItemViewmoveEventProc
  closeEvent*: QAbstractItemViewcloseEventProc
  tabletEvent*: QAbstractItemViewtabletEventProc
  actionEvent*: QAbstractItemViewactionEventProc
  showEvent*: QAbstractItemViewshowEventProc
  hideEvent*: QAbstractItemViewhideEventProc
  nativeEvent*: QAbstractItemViewnativeEventProc
  metric*: QAbstractItemViewmetricProc
  initPainter*: QAbstractItemViewinitPainterProc
  redirected*: QAbstractItemViewredirectedProc
  sharedPainter*: QAbstractItemViewsharedPainterProc
  childEvent*: QAbstractItemViewchildEventProc
  customEvent*: QAbstractItemViewcustomEventProc
  connectNotify*: QAbstractItemViewconnectNotifyProc
  disconnectNotify*: QAbstractItemViewdisconnectNotifyProc
proc QAbstractItemViewmetaObject*(self: gen_qabstractitemview_types.QAbstractItemView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractItemView_virtualbase_metaObject(self.h), owned: false)

proc cQAbstractItemView_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractItemViewmetacast*(self: gen_qabstractitemview_types.QAbstractItemView, param1: cstring): pointer =
  fcQAbstractItemView_virtualbase_metacast(self.h, param1)

proc cQAbstractItemView_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QAbstractItemViewmetacall*(self: gen_qabstractitemview_types.QAbstractItemView, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractItemView_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQAbstractItemView_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractItemViewsetModel*(self: gen_qabstractitemview_types.QAbstractItemView, model: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQAbstractItemView_virtualbase_setModel(self.h, model.h)

proc cQAbstractItemView_vtable_callback_setModel(self: pointer, model: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model, owned: false)
  vtbl[].setModel(self, slotval1)

proc QAbstractItemViewsetSelectionModel*(self: gen_qabstractitemview_types.QAbstractItemView, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void =
  fcQAbstractItemView_virtualbase_setSelectionModel(self.h, selectionModel.h)

proc cQAbstractItemView_vtable_callback_setSelectionModel(self: pointer, selectionModel: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelectionModel(h: selectionModel, owned: false)
  vtbl[].setSelectionModel(self, slotval1)

proc QAbstractItemViewkeyboardSearch*(self: gen_qabstractitemview_types.QAbstractItemView, search: openArray[char]): void =
  fcQAbstractItemView_virtualbase_keyboardSearch(self.h, struct_miqt_string(data: if len(search) > 0: addr search[0] else: nil, len: csize_t(len(search))))

proc cQAbstractItemView_vtable_callback_keyboardSearch(self: pointer, search: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let vsearch_ms = search
  let vsearchx_ret = string.fromBytes(vsearch_ms)
  c_free(vsearch_ms.data)
  let slotval1 = vsearchx_ret
  vtbl[].keyboardSearch(self, slotval1)

proc cQAbstractItemView_vtable_callback_visualRect(self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].visualRect(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc cQAbstractItemView_vtable_callback_scrollTo(self: pointer, index: pointer, hint: cint): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = cint(hint)
  vtbl[].scrollTo(self, slotval1, slotval2)

proc cQAbstractItemView_vtable_callback_indexAt(self: pointer, point: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: point, owned: false)
  var virtualReturn = vtbl[].indexAt(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractItemViewsizeHintForRow*(self: gen_qabstractitemview_types.QAbstractItemView, row: cint): cint =
  fcQAbstractItemView_virtualbase_sizeHintForRow(self.h, row)

proc cQAbstractItemView_vtable_callback_sizeHintForRow(self: pointer, row: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = row
  var virtualReturn = vtbl[].sizeHintForRow(self, slotval1)
  virtualReturn

proc QAbstractItemViewsizeHintForColumn*(self: gen_qabstractitemview_types.QAbstractItemView, column: cint): cint =
  fcQAbstractItemView_virtualbase_sizeHintForColumn(self.h, column)

proc cQAbstractItemView_vtable_callback_sizeHintForColumn(self: pointer, column: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = column
  var virtualReturn = vtbl[].sizeHintForColumn(self, slotval1)
  virtualReturn

proc QAbstractItemViewinputMethodQuery*(self: gen_qabstractitemview_types.QAbstractItemView, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractItemView_virtualbase_inputMethodQuery(self.h, cint(query)), owned: true)

proc cQAbstractItemView_vtable_callback_inputMethodQuery(self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = cint(query)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractItemViewreset*(self: gen_qabstractitemview_types.QAbstractItemView): void =
  fcQAbstractItemView_virtualbase_reset(self.h)

proc cQAbstractItemView_vtable_callback_reset(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  vtbl[].reset(self)

proc QAbstractItemViewsetRootIndex*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemView_virtualbase_setRootIndex(self.h, index.h)

proc cQAbstractItemView_vtable_callback_setRootIndex(self: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  vtbl[].setRootIndex(self, slotval1)

proc QAbstractItemViewdoItemsLayout*(self: gen_qabstractitemview_types.QAbstractItemView): void =
  fcQAbstractItemView_virtualbase_doItemsLayout(self.h)

proc cQAbstractItemView_vtable_callback_doItemsLayout(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  vtbl[].doItemsLayout(self)

proc QAbstractItemViewselectAll*(self: gen_qabstractitemview_types.QAbstractItemView): void =
  fcQAbstractItemView_virtualbase_selectAll(self.h)

proc cQAbstractItemView_vtable_callback_selectAll(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  vtbl[].selectAll(self)

proc QAbstractItemViewdataChanged*(self: gen_qabstractitemview_types.QAbstractItemView, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: openArray[cint]): void =
  var roles_CArray = newSeq[cint](len(roles))
  for i in 0..<len(roles):
    roles_CArray[i] = roles[i]

  fcQAbstractItemView_virtualbase_dataChanged(self.h, topLeft.h, bottomRight.h, struct_miqt_array(len: csize_t(len(roles)), data: if len(roles) == 0: nil else: addr(roles_CArray[0])))

proc cQAbstractItemView_vtable_callback_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
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

proc QAbstractItemViewrowsInserted*(self: gen_qabstractitemview_types.QAbstractItemView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fcQAbstractItemView_virtualbase_rowsInserted(self.h, parent.h, start, endVal)

proc cQAbstractItemView_vtable_callback_rowsInserted(self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  let slotval2 = start
  let slotval3 = endVal
  vtbl[].rowsInserted(self, slotval1, slotval2, slotval3)

proc QAbstractItemViewrowsAboutToBeRemoved*(self: gen_qabstractitemview_types.QAbstractItemView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fcQAbstractItemView_virtualbase_rowsAboutToBeRemoved(self.h, parent.h, start, endVal)

proc cQAbstractItemView_vtable_callback_rowsAboutToBeRemoved(self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  let slotval2 = start
  let slotval3 = endVal
  vtbl[].rowsAboutToBeRemoved(self, slotval1, slotval2, slotval3)

proc QAbstractItemViewselectionChanged*(self: gen_qabstractitemview_types.QAbstractItemView, selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void =
  fcQAbstractItemView_virtualbase_selectionChanged(self.h, selected.h, deselected.h)

proc cQAbstractItemView_vtable_callback_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selected, owned: false)
  let slotval2 = gen_qitemselectionmodel_types.QItemSelection(h: deselected, owned: false)
  vtbl[].selectionChanged(self, slotval1, slotval2)

proc QAbstractItemViewcurrentChanged*(self: gen_qabstractitemview_types.QAbstractItemView, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemView_virtualbase_currentChanged(self.h, current.h, previous.h)

proc cQAbstractItemView_vtable_callback_currentChanged(self: pointer, current: pointer, previous: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: current, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: previous, owned: false)
  vtbl[].currentChanged(self, slotval1, slotval2)

proc QAbstractItemViewupdateEditorData*(self: gen_qabstractitemview_types.QAbstractItemView): void =
  fcQAbstractItemView_virtualbase_updateEditorData(self.h)

proc cQAbstractItemView_vtable_callback_updateEditorData(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  vtbl[].updateEditorData(self)

proc QAbstractItemViewupdateEditorGeometries*(self: gen_qabstractitemview_types.QAbstractItemView): void =
  fcQAbstractItemView_virtualbase_updateEditorGeometries(self.h)

proc cQAbstractItemView_vtable_callback_updateEditorGeometries(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  vtbl[].updateEditorGeometries(self)

proc QAbstractItemViewupdateGeometries*(self: gen_qabstractitemview_types.QAbstractItemView): void =
  fcQAbstractItemView_virtualbase_updateGeometries(self.h)

proc cQAbstractItemView_vtable_callback_updateGeometries(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  vtbl[].updateGeometries(self)

proc QAbstractItemViewverticalScrollbarAction*(self: gen_qabstractitemview_types.QAbstractItemView, action: cint): void =
  fcQAbstractItemView_virtualbase_verticalScrollbarAction(self.h, action)

proc cQAbstractItemView_vtable_callback_verticalScrollbarAction(self: pointer, action: cint): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = action
  vtbl[].verticalScrollbarAction(self, slotval1)

proc QAbstractItemViewhorizontalScrollbarAction*(self: gen_qabstractitemview_types.QAbstractItemView, action: cint): void =
  fcQAbstractItemView_virtualbase_horizontalScrollbarAction(self.h, action)

proc cQAbstractItemView_vtable_callback_horizontalScrollbarAction(self: pointer, action: cint): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = action
  vtbl[].horizontalScrollbarAction(self, slotval1)

proc QAbstractItemViewverticalScrollbarValueChanged*(self: gen_qabstractitemview_types.QAbstractItemView, value: cint): void =
  fcQAbstractItemView_virtualbase_verticalScrollbarValueChanged(self.h, value)

proc cQAbstractItemView_vtable_callback_verticalScrollbarValueChanged(self: pointer, value: cint): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = value
  vtbl[].verticalScrollbarValueChanged(self, slotval1)

proc QAbstractItemViewhorizontalScrollbarValueChanged*(self: gen_qabstractitemview_types.QAbstractItemView, value: cint): void =
  fcQAbstractItemView_virtualbase_horizontalScrollbarValueChanged(self.h, value)

proc cQAbstractItemView_vtable_callback_horizontalScrollbarValueChanged(self: pointer, value: cint): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = value
  vtbl[].horizontalScrollbarValueChanged(self, slotval1)

proc QAbstractItemViewcloseEditor*(self: gen_qabstractitemview_types.QAbstractItemView, editor: gen_qwidget_types.QWidget, hint: cint): void =
  fcQAbstractItemView_virtualbase_closeEditor(self.h, editor.h, cint(hint))

proc cQAbstractItemView_vtable_callback_closeEditor(self: pointer, editor: pointer, hint: cint): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  let slotval2 = cint(hint)
  vtbl[].closeEditor(self, slotval1, slotval2)

proc QAbstractItemViewcommitData*(self: gen_qabstractitemview_types.QAbstractItemView, editor: gen_qwidget_types.QWidget): void =
  fcQAbstractItemView_virtualbase_commitData(self.h, editor.h)

proc cQAbstractItemView_vtable_callback_commitData(self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  vtbl[].commitData(self, slotval1)

proc QAbstractItemVieweditorDestroyed*(self: gen_qabstractitemview_types.QAbstractItemView, editor: gen_qobject_types.QObject): void =
  fcQAbstractItemView_virtualbase_editorDestroyed(self.h, editor.h)

proc cQAbstractItemView_vtable_callback_editorDestroyed(self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qobject_types.QObject(h: editor, owned: false)
  vtbl[].editorDestroyed(self, slotval1)

proc cQAbstractItemView_vtable_callback_moveCursor(self: pointer, cursorAction: cint, modifiers: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = cint(cursorAction)
  let slotval2 = cint(modifiers)
  var virtualReturn = vtbl[].moveCursor(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc cQAbstractItemView_vtable_callback_horizontalOffset(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  var virtualReturn = vtbl[].horizontalOffset(self)
  virtualReturn

proc cQAbstractItemView_vtable_callback_verticalOffset(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  var virtualReturn = vtbl[].verticalOffset(self)
  virtualReturn

proc cQAbstractItemView_vtable_callback_isIndexHidden(self: pointer, index: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].isIndexHidden(self, slotval1)
  virtualReturn

proc cQAbstractItemView_vtable_callback_setSelection(self: pointer, rect: pointer, command: cint): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qrect_types.QRect(h: rect, owned: false)
  let slotval2 = cint(command)
  vtbl[].setSelection(self, slotval1, slotval2)

proc cQAbstractItemView_vtable_callback_visualRegionForSelection(self: pointer, selection: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection, owned: false)
  var virtualReturn = vtbl[].visualRegionForSelection(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractItemViewselectedIndexes*(self: gen_qabstractitemview_types.QAbstractItemView): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQAbstractItemView_virtualbase_selectedIndexes(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc cQAbstractItemView_vtable_callback_selectedIndexes(self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  var virtualReturn = vtbl[].selectedIndexes(self)
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn[i].owned = false # TODO move?
    let virtualReturn_i_h = virtualReturn[i].h
    virtualReturn[i].h = nil
    virtualReturn_CArray[i] = virtualReturn_i_h

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QAbstractItemViewedit*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractItemView_virtualbase_edit2(self.h, index.h, cint(trigger), event.h)

proc cQAbstractItemView_vtable_callback_edit2(self: pointer, index: pointer, trigger: cint, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = cint(trigger)
  let slotval3 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].edit2(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractItemViewselectionCommand*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint =
  cint(fcQAbstractItemView_virtualbase_selectionCommand(self.h, index.h, event.h))

proc cQAbstractItemView_vtable_callback_selectionCommand(self: pointer, index: pointer, event: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].selectionCommand(self, slotval1, slotval2)
  cint(virtualReturn)

proc QAbstractItemViewstartDrag*(self: gen_qabstractitemview_types.QAbstractItemView, supportedActions: cint): void =
  fcQAbstractItemView_virtualbase_startDrag(self.h, cint(supportedActions))

proc cQAbstractItemView_vtable_callback_startDrag(self: pointer, supportedActions: cint): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = cint(supportedActions)
  vtbl[].startDrag(self, slotval1)

proc QAbstractItemViewviewOptions*(self: gen_qabstractitemview_types.QAbstractItemView): gen_qstyleoption_types.QStyleOptionViewItem =
  gen_qstyleoption_types.QStyleOptionViewItem(h: fcQAbstractItemView_virtualbase_viewOptions(self.h), owned: true)

proc cQAbstractItemView_vtable_callback_viewOptions(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  var virtualReturn = vtbl[].viewOptions(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractItemViewfocusNextPrevChild*(self: gen_qabstractitemview_types.QAbstractItemView, next: bool): bool =
  fcQAbstractItemView_virtualbase_focusNextPrevChild(self.h, next)

proc cQAbstractItemView_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QAbstractItemViewevent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractItemView_virtualbase_event(self.h, event.h)

proc cQAbstractItemView_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QAbstractItemViewviewportEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractItemView_virtualbase_viewportEvent(self.h, event.h)

proc cQAbstractItemView_vtable_callback_viewportEvent(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].viewportEvent(self, slotval1)
  virtualReturn

proc QAbstractItemViewmousePressEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QMouseEvent): void =
  fcQAbstractItemView_virtualbase_mousePressEvent(self.h, event.h)

proc cQAbstractItemView_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QAbstractItemViewmouseMoveEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QMouseEvent): void =
  fcQAbstractItemView_virtualbase_mouseMoveEvent(self.h, event.h)

proc cQAbstractItemView_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QAbstractItemViewmouseReleaseEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QMouseEvent): void =
  fcQAbstractItemView_virtualbase_mouseReleaseEvent(self.h, event.h)

proc cQAbstractItemView_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QAbstractItemViewmouseDoubleClickEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QMouseEvent): void =
  fcQAbstractItemView_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc cQAbstractItemView_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QAbstractItemViewdragEnterEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QDragEnterEvent): void =
  fcQAbstractItemView_virtualbase_dragEnterEvent(self.h, event.h)

proc cQAbstractItemView_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QAbstractItemViewdragMoveEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QDragMoveEvent): void =
  fcQAbstractItemView_virtualbase_dragMoveEvent(self.h, event.h)

proc cQAbstractItemView_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QAbstractItemViewdragLeaveEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQAbstractItemView_virtualbase_dragLeaveEvent(self.h, event.h)

proc cQAbstractItemView_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QAbstractItemViewdropEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QDropEvent): void =
  fcQAbstractItemView_virtualbase_dropEvent(self.h, event.h)

proc cQAbstractItemView_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QAbstractItemViewfocusInEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QFocusEvent): void =
  fcQAbstractItemView_virtualbase_focusInEvent(self.h, event.h)

proc cQAbstractItemView_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QAbstractItemViewfocusOutEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QFocusEvent): void =
  fcQAbstractItemView_virtualbase_focusOutEvent(self.h, event.h)

proc cQAbstractItemView_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QAbstractItemViewkeyPressEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QKeyEvent): void =
  fcQAbstractItemView_virtualbase_keyPressEvent(self.h, event.h)

proc cQAbstractItemView_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QAbstractItemViewresizeEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QResizeEvent): void =
  fcQAbstractItemView_virtualbase_resizeEvent(self.h, event.h)

proc cQAbstractItemView_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QAbstractItemViewtimerEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAbstractItemView_virtualbase_timerEvent(self.h, event.h)

proc cQAbstractItemView_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QAbstractItemViewinputMethodEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QInputMethodEvent): void =
  fcQAbstractItemView_virtualbase_inputMethodEvent(self.h, event.h)

proc cQAbstractItemView_vtable_callback_inputMethodEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QAbstractItemVieweventFilter*(self: gen_qabstractitemview_types.QAbstractItemView, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractItemView_virtualbase_eventFilter(self.h, objectVal.h, event.h)

proc cQAbstractItemView_vtable_callback_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qobject_types.QObject(h: objectVal, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QAbstractItemViewviewportSizeHint*(self: gen_qabstractitemview_types.QAbstractItemView): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractItemView_virtualbase_viewportSizeHint(self.h), owned: true)

proc cQAbstractItemView_vtable_callback_viewportSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  var virtualReturn = vtbl[].viewportSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractItemViewminimumSizeHint*(self: gen_qabstractitemview_types.QAbstractItemView): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractItemView_virtualbase_minimumSizeHint(self.h), owned: true)

proc cQAbstractItemView_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractItemViewsizeHint*(self: gen_qabstractitemview_types.QAbstractItemView): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractItemView_virtualbase_sizeHint(self.h), owned: true)

proc cQAbstractItemView_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractItemViewsetupViewport*(self: gen_qabstractitemview_types.QAbstractItemView, viewport: gen_qwidget_types.QWidget): void =
  fcQAbstractItemView_virtualbase_setupViewport(self.h, viewport.h)

proc cQAbstractItemView_vtable_callback_setupViewport(self: pointer, viewport: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: viewport, owned: false)
  vtbl[].setupViewport(self, slotval1)

proc QAbstractItemViewpaintEvent*(self: gen_qabstractitemview_types.QAbstractItemView, param1: gen_qevent_types.QPaintEvent): void =
  fcQAbstractItemView_virtualbase_paintEvent(self.h, param1.h)

proc cQAbstractItemView_vtable_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QAbstractItemViewwheelEvent*(self: gen_qabstractitemview_types.QAbstractItemView, param1: gen_qevent_types.QWheelEvent): void =
  fcQAbstractItemView_virtualbase_wheelEvent(self.h, param1.h)

proc cQAbstractItemView_vtable_callback_wheelEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QAbstractItemViewcontextMenuEvent*(self: gen_qabstractitemview_types.QAbstractItemView, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQAbstractItemView_virtualbase_contextMenuEvent(self.h, param1.h)

proc cQAbstractItemView_vtable_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QAbstractItemViewscrollContentsBy*(self: gen_qabstractitemview_types.QAbstractItemView, dx: cint, dy: cint): void =
  fcQAbstractItemView_virtualbase_scrollContentsBy(self.h, dx, dy)

proc cQAbstractItemView_vtable_callback_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = dx
  let slotval2 = dy
  vtbl[].scrollContentsBy(self, slotval1, slotval2)

proc QAbstractItemViewchangeEvent*(self: gen_qabstractitemview_types.QAbstractItemView, param1: gen_qcoreevent_types.QEvent): void =
  fcQAbstractItemView_virtualbase_changeEvent(self.h, param1.h)

proc cQAbstractItemView_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QAbstractItemViewdevType*(self: gen_qabstractitemview_types.QAbstractItemView): cint =
  fcQAbstractItemView_virtualbase_devType(self.h)

proc cQAbstractItemView_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QAbstractItemViewsetVisible*(self: gen_qabstractitemview_types.QAbstractItemView, visible: bool): void =
  fcQAbstractItemView_virtualbase_setVisible(self.h, visible)

proc cQAbstractItemView_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QAbstractItemViewheightForWidth*(self: gen_qabstractitemview_types.QAbstractItemView, param1: cint): cint =
  fcQAbstractItemView_virtualbase_heightForWidth(self.h, param1)

proc cQAbstractItemView_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QAbstractItemViewhasHeightForWidth*(self: gen_qabstractitemview_types.QAbstractItemView): bool =
  fcQAbstractItemView_virtualbase_hasHeightForWidth(self.h)

proc cQAbstractItemView_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QAbstractItemViewpaintEngine*(self: gen_qabstractitemview_types.QAbstractItemView): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQAbstractItemView_virtualbase_paintEngine(self.h), owned: false)

proc cQAbstractItemView_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractItemViewkeyReleaseEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QKeyEvent): void =
  fcQAbstractItemView_virtualbase_keyReleaseEvent(self.h, event.h)

proc cQAbstractItemView_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QAbstractItemViewenterEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractItemView_virtualbase_enterEvent(self.h, event.h)

proc cQAbstractItemView_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QAbstractItemViewleaveEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractItemView_virtualbase_leaveEvent(self.h, event.h)

proc cQAbstractItemView_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QAbstractItemViewmoveEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QMoveEvent): void =
  fcQAbstractItemView_virtualbase_moveEvent(self.h, event.h)

proc cQAbstractItemView_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QAbstractItemViewcloseEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QCloseEvent): void =
  fcQAbstractItemView_virtualbase_closeEvent(self.h, event.h)

proc cQAbstractItemView_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QAbstractItemViewtabletEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QTabletEvent): void =
  fcQAbstractItemView_virtualbase_tabletEvent(self.h, event.h)

proc cQAbstractItemView_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QAbstractItemViewactionEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QActionEvent): void =
  fcQAbstractItemView_virtualbase_actionEvent(self.h, event.h)

proc cQAbstractItemView_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QAbstractItemViewshowEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QShowEvent): void =
  fcQAbstractItemView_virtualbase_showEvent(self.h, event.h)

proc cQAbstractItemView_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QAbstractItemViewhideEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QHideEvent): void =
  fcQAbstractItemView_virtualbase_hideEvent(self.h, event.h)

proc cQAbstractItemView_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QAbstractItemViewnativeEvent*(self: gen_qabstractitemview_types.QAbstractItemView, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool =
  fcQAbstractItemView_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc cQAbstractItemView_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractItemViewmetric*(self: gen_qabstractitemview_types.QAbstractItemView, param1: cint): cint =
  fcQAbstractItemView_virtualbase_metric(self.h, cint(param1))

proc cQAbstractItemView_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QAbstractItemViewinitPainter*(self: gen_qabstractitemview_types.QAbstractItemView, painter: gen_qpainter_types.QPainter): void =
  fcQAbstractItemView_virtualbase_initPainter(self.h, painter.h)

proc cQAbstractItemView_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QAbstractItemViewredirected*(self: gen_qabstractitemview_types.QAbstractItemView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQAbstractItemView_virtualbase_redirected(self.h, offset.h), owned: false)

proc cQAbstractItemView_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractItemViewsharedPainter*(self: gen_qabstractitemview_types.QAbstractItemView): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQAbstractItemView_virtualbase_sharedPainter(self.h), owned: false)

proc cQAbstractItemView_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractItemViewchildEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAbstractItemView_virtualbase_childEvent(self.h, event.h)

proc cQAbstractItemView_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QAbstractItemViewcustomEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractItemView_virtualbase_customEvent(self.h, event.h)

proc cQAbstractItemView_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QAbstractItemViewconnectNotify*(self: gen_qabstractitemview_types.QAbstractItemView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractItemView_virtualbase_connectNotify(self.h, signal.h)

proc cQAbstractItemView_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QAbstractItemViewdisconnectNotify*(self: gen_qabstractitemview_types.QAbstractItemView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractItemView_virtualbase_disconnectNotify(self.h, signal.h)

proc cQAbstractItemView_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQAbstractItemView* {.inheritable.} = ref object of QAbstractItemView
  vtbl*: cQAbstractItemViewVTable
method metaObject*(self: VirtualQAbstractItemView): gen_qobjectdefs_types.QMetaObject {.base.} =
  QAbstractItemViewmetaObject(self[])
proc cQAbstractItemView_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQAbstractItemView, param1: cstring): pointer {.base.} =
  QAbstractItemViewmetacast(self[], param1)
proc cQAbstractItemView_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQAbstractItemView, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QAbstractItemViewmetacall(self[], param1, param2, param3)
proc cQAbstractItemView_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method setModel*(self: VirtualQAbstractItemView, model: gen_qabstractitemmodel_types.QAbstractItemModel): void {.base.} =
  QAbstractItemViewsetModel(self[], model)
proc cQAbstractItemView_method_callback_setModel(self: pointer, model: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model, owned: false)
  inst.setModel(slotval1)

method setSelectionModel*(self: VirtualQAbstractItemView, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void {.base.} =
  QAbstractItemViewsetSelectionModel(self[], selectionModel)
proc cQAbstractItemView_method_callback_setSelectionModel(self: pointer, selectionModel: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelectionModel(h: selectionModel, owned: false)
  inst.setSelectionModel(slotval1)

method keyboardSearch*(self: VirtualQAbstractItemView, search: openArray[char]): void {.base.} =
  QAbstractItemViewkeyboardSearch(self[], search)
proc cQAbstractItemView_method_callback_keyboardSearch(self: pointer, search: struct_miqt_string): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let vsearch_ms = search
  let vsearchx_ret = string.fromBytes(vsearch_ms)
  c_free(vsearch_ms.data)
  let slotval1 = vsearchx_ret
  inst.keyboardSearch(slotval1)

method visualRect*(self: VirtualQAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect {.base.} =
  raiseAssert("missing implementation of QAbstractItemView_virtualbase_visualRect")
proc cQAbstractItemView_method_callback_visualRect(self: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.visualRect(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method scrollTo*(self: VirtualQAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void {.base.} =
  raiseAssert("missing implementation of QAbstractItemView_virtualbase_scrollTo")
proc cQAbstractItemView_method_callback_scrollTo(self: pointer, index: pointer, hint: cint): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = cint(hint)
  inst.scrollTo(slotval1, slotval2)

method indexAt*(self: VirtualQAbstractItemView, point: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  raiseAssert("missing implementation of QAbstractItemView_virtualbase_indexAt")
proc cQAbstractItemView_method_callback_indexAt(self: pointer, point: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: point, owned: false)
  var virtualReturn = inst.indexAt(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sizeHintForRow*(self: VirtualQAbstractItemView, row: cint): cint {.base.} =
  QAbstractItemViewsizeHintForRow(self[], row)
proc cQAbstractItemView_method_callback_sizeHintForRow(self: pointer, row: cint): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = row
  var virtualReturn = inst.sizeHintForRow(slotval1)
  virtualReturn

method sizeHintForColumn*(self: VirtualQAbstractItemView, column: cint): cint {.base.} =
  QAbstractItemViewsizeHintForColumn(self[], column)
proc cQAbstractItemView_method_callback_sizeHintForColumn(self: pointer, column: cint): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = column
  var virtualReturn = inst.sizeHintForColumn(slotval1)
  virtualReturn

method inputMethodQuery*(self: VirtualQAbstractItemView, query: cint): gen_qvariant_types.QVariant {.base.} =
  QAbstractItemViewinputMethodQuery(self[], query)
proc cQAbstractItemView_method_callback_inputMethodQuery(self: pointer, query: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = cint(query)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method reset*(self: VirtualQAbstractItemView): void {.base.} =
  QAbstractItemViewreset(self[])
proc cQAbstractItemView_method_callback_reset(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  inst.reset()

method setRootIndex*(self: VirtualQAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QAbstractItemViewsetRootIndex(self[], index)
proc cQAbstractItemView_method_callback_setRootIndex(self: pointer, index: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  inst.setRootIndex(slotval1)

method doItemsLayout*(self: VirtualQAbstractItemView): void {.base.} =
  QAbstractItemViewdoItemsLayout(self[])
proc cQAbstractItemView_method_callback_doItemsLayout(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  inst.doItemsLayout()

method selectAll*(self: VirtualQAbstractItemView): void {.base.} =
  QAbstractItemViewselectAll(self[])
proc cQAbstractItemView_method_callback_selectAll(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  inst.selectAll()

method dataChanged*(self: VirtualQAbstractItemView, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: openArray[cint]): void {.base.} =
  QAbstractItemViewdataChanged(self[], topLeft, bottomRight, roles)
proc cQAbstractItemView_method_callback_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
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

method rowsInserted*(self: VirtualQAbstractItemView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void {.base.} =
  QAbstractItemViewrowsInserted(self[], parent, start, endVal)
proc cQAbstractItemView_method_callback_rowsInserted(self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  let slotval2 = start
  let slotval3 = endVal
  inst.rowsInserted(slotval1, slotval2, slotval3)

method rowsAboutToBeRemoved*(self: VirtualQAbstractItemView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void {.base.} =
  QAbstractItemViewrowsAboutToBeRemoved(self[], parent, start, endVal)
proc cQAbstractItemView_method_callback_rowsAboutToBeRemoved(self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  let slotval2 = start
  let slotval3 = endVal
  inst.rowsAboutToBeRemoved(slotval1, slotval2, slotval3)

method selectionChanged*(self: VirtualQAbstractItemView, selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void {.base.} =
  QAbstractItemViewselectionChanged(self[], selected, deselected)
proc cQAbstractItemView_method_callback_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selected, owned: false)
  let slotval2 = gen_qitemselectionmodel_types.QItemSelection(h: deselected, owned: false)
  inst.selectionChanged(slotval1, slotval2)

method currentChanged*(self: VirtualQAbstractItemView, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QAbstractItemViewcurrentChanged(self[], current, previous)
proc cQAbstractItemView_method_callback_currentChanged(self: pointer, current: pointer, previous: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: current, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: previous, owned: false)
  inst.currentChanged(slotval1, slotval2)

method updateEditorData*(self: VirtualQAbstractItemView): void {.base.} =
  QAbstractItemViewupdateEditorData(self[])
proc cQAbstractItemView_method_callback_updateEditorData(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  inst.updateEditorData()

method updateEditorGeometries*(self: VirtualQAbstractItemView): void {.base.} =
  QAbstractItemViewupdateEditorGeometries(self[])
proc cQAbstractItemView_method_callback_updateEditorGeometries(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  inst.updateEditorGeometries()

method updateGeometries*(self: VirtualQAbstractItemView): void {.base.} =
  QAbstractItemViewupdateGeometries(self[])
proc cQAbstractItemView_method_callback_updateGeometries(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  inst.updateGeometries()

method verticalScrollbarAction*(self: VirtualQAbstractItemView, action: cint): void {.base.} =
  QAbstractItemViewverticalScrollbarAction(self[], action)
proc cQAbstractItemView_method_callback_verticalScrollbarAction(self: pointer, action: cint): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = action
  inst.verticalScrollbarAction(slotval1)

method horizontalScrollbarAction*(self: VirtualQAbstractItemView, action: cint): void {.base.} =
  QAbstractItemViewhorizontalScrollbarAction(self[], action)
proc cQAbstractItemView_method_callback_horizontalScrollbarAction(self: pointer, action: cint): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = action
  inst.horizontalScrollbarAction(slotval1)

method verticalScrollbarValueChanged*(self: VirtualQAbstractItemView, value: cint): void {.base.} =
  QAbstractItemViewverticalScrollbarValueChanged(self[], value)
proc cQAbstractItemView_method_callback_verticalScrollbarValueChanged(self: pointer, value: cint): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = value
  inst.verticalScrollbarValueChanged(slotval1)

method horizontalScrollbarValueChanged*(self: VirtualQAbstractItemView, value: cint): void {.base.} =
  QAbstractItemViewhorizontalScrollbarValueChanged(self[], value)
proc cQAbstractItemView_method_callback_horizontalScrollbarValueChanged(self: pointer, value: cint): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = value
  inst.horizontalScrollbarValueChanged(slotval1)

method closeEditor*(self: VirtualQAbstractItemView, editor: gen_qwidget_types.QWidget, hint: cint): void {.base.} =
  QAbstractItemViewcloseEditor(self[], editor, hint)
proc cQAbstractItemView_method_callback_closeEditor(self: pointer, editor: pointer, hint: cint): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  let slotval2 = cint(hint)
  inst.closeEditor(slotval1, slotval2)

method commitData*(self: VirtualQAbstractItemView, editor: gen_qwidget_types.QWidget): void {.base.} =
  QAbstractItemViewcommitData(self[], editor)
proc cQAbstractItemView_method_callback_commitData(self: pointer, editor: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  inst.commitData(slotval1)

method editorDestroyed*(self: VirtualQAbstractItemView, editor: gen_qobject_types.QObject): void {.base.} =
  QAbstractItemVieweditorDestroyed(self[], editor)
proc cQAbstractItemView_method_callback_editorDestroyed(self: pointer, editor: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: editor, owned: false)
  inst.editorDestroyed(slotval1)

method moveCursor*(self: VirtualQAbstractItemView, cursorAction: cint, modifiers: cint): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  raiseAssert("missing implementation of QAbstractItemView_virtualbase_moveCursor")
proc cQAbstractItemView_method_callback_moveCursor(self: pointer, cursorAction: cint, modifiers: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = cint(cursorAction)
  let slotval2 = cint(modifiers)
  var virtualReturn = inst.moveCursor(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method horizontalOffset*(self: VirtualQAbstractItemView): cint {.base.} =
  raiseAssert("missing implementation of QAbstractItemView_virtualbase_horizontalOffset")
proc cQAbstractItemView_method_callback_horizontalOffset(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  var virtualReturn = inst.horizontalOffset()
  virtualReturn

method verticalOffset*(self: VirtualQAbstractItemView): cint {.base.} =
  raiseAssert("missing implementation of QAbstractItemView_virtualbase_verticalOffset")
proc cQAbstractItemView_method_callback_verticalOffset(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  var virtualReturn = inst.verticalOffset()
  virtualReturn

method isIndexHidden*(self: VirtualQAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  raiseAssert("missing implementation of QAbstractItemView_virtualbase_isIndexHidden")
proc cQAbstractItemView_method_callback_isIndexHidden(self: pointer, index: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.isIndexHidden(slotval1)
  virtualReturn

method setSelection*(self: VirtualQAbstractItemView, rect: gen_qrect_types.QRect, command: cint): void {.base.} =
  raiseAssert("missing implementation of QAbstractItemView_virtualbase_setSelection")
proc cQAbstractItemView_method_callback_setSelection(self: pointer, rect: pointer, command: cint): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qrect_types.QRect(h: rect, owned: false)
  let slotval2 = cint(command)
  inst.setSelection(slotval1, slotval2)

method visualRegionForSelection*(self: VirtualQAbstractItemView, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion {.base.} =
  raiseAssert("missing implementation of QAbstractItemView_virtualbase_visualRegionForSelection")
proc cQAbstractItemView_method_callback_visualRegionForSelection(self: pointer, selection: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection, owned: false)
  var virtualReturn = inst.visualRegionForSelection(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method selectedIndexes*(self: VirtualQAbstractItemView): seq[gen_qabstractitemmodel_types.QModelIndex] {.base.} =
  QAbstractItemViewselectedIndexes(self[])
proc cQAbstractItemView_method_callback_selectedIndexes(self: pointer): struct_miqt_array {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  var virtualReturn = inst.selectedIndexes()
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn[i].owned = false # TODO move?
    let virtualReturn_i_h = virtualReturn[i].h
    virtualReturn[i].h = nil
    virtualReturn_CArray[i] = virtualReturn_i_h

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

method edit*(self: VirtualQAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAbstractItemViewedit(self[], index, trigger, event)
proc cQAbstractItemView_method_callback_edit2(self: pointer, index: pointer, trigger: cint, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = cint(trigger)
  let slotval3 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.edit(slotval1, slotval2, slotval3)
  virtualReturn

method selectionCommand*(self: VirtualQAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint {.base.} =
  QAbstractItemViewselectionCommand(self[], index, event)
proc cQAbstractItemView_method_callback_selectionCommand(self: pointer, index: pointer, event: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.selectionCommand(slotval1, slotval2)
  cint(virtualReturn)

method startDrag*(self: VirtualQAbstractItemView, supportedActions: cint): void {.base.} =
  QAbstractItemViewstartDrag(self[], supportedActions)
proc cQAbstractItemView_method_callback_startDrag(self: pointer, supportedActions: cint): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = cint(supportedActions)
  inst.startDrag(slotval1)

method viewOptions*(self: VirtualQAbstractItemView): gen_qstyleoption_types.QStyleOptionViewItem {.base.} =
  QAbstractItemViewviewOptions(self[])
proc cQAbstractItemView_method_callback_viewOptions(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  var virtualReturn = inst.viewOptions()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQAbstractItemView, next: bool): bool {.base.} =
  QAbstractItemViewfocusNextPrevChild(self[], next)
proc cQAbstractItemView_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method event*(self: VirtualQAbstractItemView, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAbstractItemViewevent(self[], event)
proc cQAbstractItemView_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method viewportEvent*(self: VirtualQAbstractItemView, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAbstractItemViewviewportEvent(self[], event)
proc cQAbstractItemView_method_callback_viewportEvent(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.viewportEvent(slotval1)
  virtualReturn

method mousePressEvent*(self: VirtualQAbstractItemView, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QAbstractItemViewmousePressEvent(self[], event)
proc cQAbstractItemView_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

method mouseMoveEvent*(self: VirtualQAbstractItemView, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QAbstractItemViewmouseMoveEvent(self[], event)
proc cQAbstractItemView_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQAbstractItemView, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QAbstractItemViewmouseReleaseEvent(self[], event)
proc cQAbstractItemView_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQAbstractItemView, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QAbstractItemViewmouseDoubleClickEvent(self[], event)
proc cQAbstractItemView_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method dragEnterEvent*(self: VirtualQAbstractItemView, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QAbstractItemViewdragEnterEvent(self[], event)
proc cQAbstractItemView_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQAbstractItemView, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QAbstractItemViewdragMoveEvent(self[], event)
proc cQAbstractItemView_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQAbstractItemView, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QAbstractItemViewdragLeaveEvent(self[], event)
proc cQAbstractItemView_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQAbstractItemView, event: gen_qevent_types.QDropEvent): void {.base.} =
  QAbstractItemViewdropEvent(self[], event)
proc cQAbstractItemView_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

method focusInEvent*(self: VirtualQAbstractItemView, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QAbstractItemViewfocusInEvent(self[], event)
proc cQAbstractItemView_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQAbstractItemView, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QAbstractItemViewfocusOutEvent(self[], event)
proc cQAbstractItemView_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

method keyPressEvent*(self: VirtualQAbstractItemView, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QAbstractItemViewkeyPressEvent(self[], event)
proc cQAbstractItemView_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyPressEvent(slotval1)

method resizeEvent*(self: VirtualQAbstractItemView, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QAbstractItemViewresizeEvent(self[], event)
proc cQAbstractItemView_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

method timerEvent*(self: VirtualQAbstractItemView, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QAbstractItemViewtimerEvent(self[], event)
proc cQAbstractItemView_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method inputMethodEvent*(self: VirtualQAbstractItemView, event: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QAbstractItemViewinputMethodEvent(self[], event)
proc cQAbstractItemView_method_callback_inputMethodEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event, owned: false)
  inst.inputMethodEvent(slotval1)

method eventFilter*(self: VirtualQAbstractItemView, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAbstractItemVieweventFilter(self[], objectVal, event)
proc cQAbstractItemView_method_callback_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: objectVal, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method viewportSizeHint*(self: VirtualQAbstractItemView): gen_qsize_types.QSize {.base.} =
  QAbstractItemViewviewportSizeHint(self[])
proc cQAbstractItemView_method_callback_viewportSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  var virtualReturn = inst.viewportSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method minimumSizeHint*(self: VirtualQAbstractItemView): gen_qsize_types.QSize {.base.} =
  QAbstractItemViewminimumSizeHint(self[])
proc cQAbstractItemView_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sizeHint*(self: VirtualQAbstractItemView): gen_qsize_types.QSize {.base.} =
  QAbstractItemViewsizeHint(self[])
proc cQAbstractItemView_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method setupViewport*(self: VirtualQAbstractItemView, viewport: gen_qwidget_types.QWidget): void {.base.} =
  QAbstractItemViewsetupViewport(self[], viewport)
proc cQAbstractItemView_method_callback_setupViewport(self: pointer, viewport: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: viewport, owned: false)
  inst.setupViewport(slotval1)

method paintEvent*(self: VirtualQAbstractItemView, param1: gen_qevent_types.QPaintEvent): void {.base.} =
  QAbstractItemViewpaintEvent(self[], param1)
proc cQAbstractItemView_method_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  inst.paintEvent(slotval1)

method wheelEvent*(self: VirtualQAbstractItemView, param1: gen_qevent_types.QWheelEvent): void {.base.} =
  QAbstractItemViewwheelEvent(self[], param1)
proc cQAbstractItemView_method_callback_wheelEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1, owned: false)
  inst.wheelEvent(slotval1)

method contextMenuEvent*(self: VirtualQAbstractItemView, param1: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QAbstractItemViewcontextMenuEvent(self[], param1)
proc cQAbstractItemView_method_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  inst.contextMenuEvent(slotval1)

method scrollContentsBy*(self: VirtualQAbstractItemView, dx: cint, dy: cint): void {.base.} =
  QAbstractItemViewscrollContentsBy(self[], dx, dy)
proc cQAbstractItemView_method_callback_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = dx
  let slotval2 = dy
  inst.scrollContentsBy(slotval1, slotval2)

method changeEvent*(self: VirtualQAbstractItemView, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QAbstractItemViewchangeEvent(self[], param1)
proc cQAbstractItemView_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.changeEvent(slotval1)

method devType*(self: VirtualQAbstractItemView): cint {.base.} =
  QAbstractItemViewdevType(self[])
proc cQAbstractItemView_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

method setVisible*(self: VirtualQAbstractItemView, visible: bool): void {.base.} =
  QAbstractItemViewsetVisible(self[], visible)
proc cQAbstractItemView_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

method heightForWidth*(self: VirtualQAbstractItemView, param1: cint): cint {.base.} =
  QAbstractItemViewheightForWidth(self[], param1)
proc cQAbstractItemView_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQAbstractItemView): bool {.base.} =
  QAbstractItemViewhasHeightForWidth(self[])
proc cQAbstractItemView_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQAbstractItemView): gen_qpaintengine_types.QPaintEngine {.base.} =
  QAbstractItemViewpaintEngine(self[])
proc cQAbstractItemView_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method keyReleaseEvent*(self: VirtualQAbstractItemView, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QAbstractItemViewkeyReleaseEvent(self[], event)
proc cQAbstractItemView_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

method enterEvent*(self: VirtualQAbstractItemView, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAbstractItemViewenterEvent(self[], event)
proc cQAbstractItemView_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

method leaveEvent*(self: VirtualQAbstractItemView, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAbstractItemViewleaveEvent(self[], event)
proc cQAbstractItemView_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

method moveEvent*(self: VirtualQAbstractItemView, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QAbstractItemViewmoveEvent(self[], event)
proc cQAbstractItemView_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

method closeEvent*(self: VirtualQAbstractItemView, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QAbstractItemViewcloseEvent(self[], event)
proc cQAbstractItemView_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

method tabletEvent*(self: VirtualQAbstractItemView, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QAbstractItemViewtabletEvent(self[], event)
proc cQAbstractItemView_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

method actionEvent*(self: VirtualQAbstractItemView, event: gen_qevent_types.QActionEvent): void {.base.} =
  QAbstractItemViewactionEvent(self[], event)
proc cQAbstractItemView_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

method showEvent*(self: VirtualQAbstractItemView, event: gen_qevent_types.QShowEvent): void {.base.} =
  QAbstractItemViewshowEvent(self[], event)
proc cQAbstractItemView_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

method hideEvent*(self: VirtualQAbstractItemView, event: gen_qevent_types.QHideEvent): void {.base.} =
  QAbstractItemViewhideEvent(self[], event)
proc cQAbstractItemView_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

method nativeEvent*(self: VirtualQAbstractItemView, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.base.} =
  QAbstractItemViewnativeEvent(self[], eventType, message, resultVal)
proc cQAbstractItemView_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method metric*(self: VirtualQAbstractItemView, param1: cint): cint {.base.} =
  QAbstractItemViewmetric(self[], param1)
proc cQAbstractItemView_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQAbstractItemView, painter: gen_qpainter_types.QPainter): void {.base.} =
  QAbstractItemViewinitPainter(self[], painter)
proc cQAbstractItemView_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

method redirected*(self: VirtualQAbstractItemView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QAbstractItemViewredirected(self[], offset)
proc cQAbstractItemView_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQAbstractItemView): gen_qpainter_types.QPainter {.base.} =
  QAbstractItemViewsharedPainter(self[])
proc cQAbstractItemView_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method childEvent*(self: VirtualQAbstractItemView, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QAbstractItemViewchildEvent(self[], event)
proc cQAbstractItemView_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQAbstractItemView, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAbstractItemViewcustomEvent(self[], event)
proc cQAbstractItemView_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQAbstractItemView, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAbstractItemViewconnectNotify(self[], signal)
proc cQAbstractItemView_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQAbstractItemView, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAbstractItemViewdisconnectNotify(self[], signal)
proc cQAbstractItemView_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractItemView](fcQAbstractItemView_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc setHorizontalStepsPerItem*(self: gen_qabstractitemview_types.QAbstractItemView, steps: cint): void =
  fcQAbstractItemView_protectedbase_setHorizontalStepsPerItem(self.h, steps)

proc horizontalStepsPerItem*(self: gen_qabstractitemview_types.QAbstractItemView): cint =
  fcQAbstractItemView_protectedbase_horizontalStepsPerItem(self.h)

proc setVerticalStepsPerItem*(self: gen_qabstractitemview_types.QAbstractItemView, steps: cint): void =
  fcQAbstractItemView_protectedbase_setVerticalStepsPerItem(self.h, steps)

proc verticalStepsPerItem*(self: gen_qabstractitemview_types.QAbstractItemView): cint =
  fcQAbstractItemView_protectedbase_verticalStepsPerItem(self.h)

proc state*(self: gen_qabstractitemview_types.QAbstractItemView): cint =
  cint(fcQAbstractItemView_protectedbase_state(self.h))

proc setState*(self: gen_qabstractitemview_types.QAbstractItemView, state: cint): void =
  fcQAbstractItemView_protectedbase_setState(self.h, cint(state))

proc scheduleDelayedItemsLayout*(self: gen_qabstractitemview_types.QAbstractItemView): void =
  fcQAbstractItemView_protectedbase_scheduleDelayedItemsLayout(self.h)

proc executeDelayedItemsLayout*(self: gen_qabstractitemview_types.QAbstractItemView): void =
  fcQAbstractItemView_protectedbase_executeDelayedItemsLayout(self.h)

proc setDirtyRegion*(self: gen_qabstractitemview_types.QAbstractItemView, region: gen_qregion_types.QRegion): void =
  fcQAbstractItemView_protectedbase_setDirtyRegion(self.h, region.h)

proc scrollDirtyRegion*(self: gen_qabstractitemview_types.QAbstractItemView, dx: cint, dy: cint): void =
  fcQAbstractItemView_protectedbase_scrollDirtyRegion(self.h, dx, dy)

proc dirtyRegionOffset*(self: gen_qabstractitemview_types.QAbstractItemView): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQAbstractItemView_protectedbase_dirtyRegionOffset(self.h), owned: true)

proc startAutoScroll*(self: gen_qabstractitemview_types.QAbstractItemView): void =
  fcQAbstractItemView_protectedbase_startAutoScroll(self.h)

proc stopAutoScroll*(self: gen_qabstractitemview_types.QAbstractItemView): void =
  fcQAbstractItemView_protectedbase_stopAutoScroll(self.h)

proc doAutoScroll*(self: gen_qabstractitemview_types.QAbstractItemView): void =
  fcQAbstractItemView_protectedbase_doAutoScroll(self.h)

proc dropIndicatorPosition*(self: gen_qabstractitemview_types.QAbstractItemView): cint =
  cint(fcQAbstractItemView_protectedbase_dropIndicatorPosition(self.h))

proc setViewportMargins*(self: gen_qabstractitemview_types.QAbstractItemView, left: cint, top: cint, right: cint, bottom: cint): void =
  fcQAbstractItemView_protectedbase_setViewportMargins(self.h, left, top, right, bottom)

proc viewportMargins*(self: gen_qabstractitemview_types.QAbstractItemView): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQAbstractItemView_protectedbase_viewportMargins(self.h), owned: true)

proc drawFrame*(self: gen_qabstractitemview_types.QAbstractItemView, param1: gen_qpainter_types.QPainter): void =
  fcQAbstractItemView_protectedbase_drawFrame(self.h, param1.h)

proc initStyleOption*(self: gen_qabstractitemview_types.QAbstractItemView, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fcQAbstractItemView_protectedbase_initStyleOption(self.h, option.h)

proc updateMicroFocus*(self: gen_qabstractitemview_types.QAbstractItemView): void =
  fcQAbstractItemView_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qabstractitemview_types.QAbstractItemView): void =
  fcQAbstractItemView_protectedbase_create(self.h)

proc destroy*(self: gen_qabstractitemview_types.QAbstractItemView): void =
  fcQAbstractItemView_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qabstractitemview_types.QAbstractItemView): bool =
  fcQAbstractItemView_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qabstractitemview_types.QAbstractItemView): bool =
  fcQAbstractItemView_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qabstractitemview_types.QAbstractItemView): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAbstractItemView_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qabstractitemview_types.QAbstractItemView): cint =
  fcQAbstractItemView_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qabstractitemview_types.QAbstractItemView, signal: cstring): cint =
  fcQAbstractItemView_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qabstractitemview_types.QAbstractItemView, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAbstractItemView_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qabstractitemview_types.QAbstractItemView,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QAbstractItemViewVTable = nil): gen_qabstractitemview_types.QAbstractItemView =
  let vtbl = if vtbl == nil: new QAbstractItemViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQAbstractItemView_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQAbstractItemView_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQAbstractItemView_vtable_callback_metacall
  if not isNil(vtbl[].setModel):
    vtbl[].vtbl.setModel = cQAbstractItemView_vtable_callback_setModel
  if not isNil(vtbl[].setSelectionModel):
    vtbl[].vtbl.setSelectionModel = cQAbstractItemView_vtable_callback_setSelectionModel
  if not isNil(vtbl[].keyboardSearch):
    vtbl[].vtbl.keyboardSearch = cQAbstractItemView_vtable_callback_keyboardSearch
  if not isNil(vtbl[].visualRect):
    vtbl[].vtbl.visualRect = cQAbstractItemView_vtable_callback_visualRect
  if not isNil(vtbl[].scrollTo):
    vtbl[].vtbl.scrollTo = cQAbstractItemView_vtable_callback_scrollTo
  if not isNil(vtbl[].indexAt):
    vtbl[].vtbl.indexAt = cQAbstractItemView_vtable_callback_indexAt
  if not isNil(vtbl[].sizeHintForRow):
    vtbl[].vtbl.sizeHintForRow = cQAbstractItemView_vtable_callback_sizeHintForRow
  if not isNil(vtbl[].sizeHintForColumn):
    vtbl[].vtbl.sizeHintForColumn = cQAbstractItemView_vtable_callback_sizeHintForColumn
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQAbstractItemView_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = cQAbstractItemView_vtable_callback_reset
  if not isNil(vtbl[].setRootIndex):
    vtbl[].vtbl.setRootIndex = cQAbstractItemView_vtable_callback_setRootIndex
  if not isNil(vtbl[].doItemsLayout):
    vtbl[].vtbl.doItemsLayout = cQAbstractItemView_vtable_callback_doItemsLayout
  if not isNil(vtbl[].selectAll):
    vtbl[].vtbl.selectAll = cQAbstractItemView_vtable_callback_selectAll
  if not isNil(vtbl[].dataChanged):
    vtbl[].vtbl.dataChanged = cQAbstractItemView_vtable_callback_dataChanged
  if not isNil(vtbl[].rowsInserted):
    vtbl[].vtbl.rowsInserted = cQAbstractItemView_vtable_callback_rowsInserted
  if not isNil(vtbl[].rowsAboutToBeRemoved):
    vtbl[].vtbl.rowsAboutToBeRemoved = cQAbstractItemView_vtable_callback_rowsAboutToBeRemoved
  if not isNil(vtbl[].selectionChanged):
    vtbl[].vtbl.selectionChanged = cQAbstractItemView_vtable_callback_selectionChanged
  if not isNil(vtbl[].currentChanged):
    vtbl[].vtbl.currentChanged = cQAbstractItemView_vtable_callback_currentChanged
  if not isNil(vtbl[].updateEditorData):
    vtbl[].vtbl.updateEditorData = cQAbstractItemView_vtable_callback_updateEditorData
  if not isNil(vtbl[].updateEditorGeometries):
    vtbl[].vtbl.updateEditorGeometries = cQAbstractItemView_vtable_callback_updateEditorGeometries
  if not isNil(vtbl[].updateGeometries):
    vtbl[].vtbl.updateGeometries = cQAbstractItemView_vtable_callback_updateGeometries
  if not isNil(vtbl[].verticalScrollbarAction):
    vtbl[].vtbl.verticalScrollbarAction = cQAbstractItemView_vtable_callback_verticalScrollbarAction
  if not isNil(vtbl[].horizontalScrollbarAction):
    vtbl[].vtbl.horizontalScrollbarAction = cQAbstractItemView_vtable_callback_horizontalScrollbarAction
  if not isNil(vtbl[].verticalScrollbarValueChanged):
    vtbl[].vtbl.verticalScrollbarValueChanged = cQAbstractItemView_vtable_callback_verticalScrollbarValueChanged
  if not isNil(vtbl[].horizontalScrollbarValueChanged):
    vtbl[].vtbl.horizontalScrollbarValueChanged = cQAbstractItemView_vtable_callback_horizontalScrollbarValueChanged
  if not isNil(vtbl[].closeEditor):
    vtbl[].vtbl.closeEditor = cQAbstractItemView_vtable_callback_closeEditor
  if not isNil(vtbl[].commitData):
    vtbl[].vtbl.commitData = cQAbstractItemView_vtable_callback_commitData
  if not isNil(vtbl[].editorDestroyed):
    vtbl[].vtbl.editorDestroyed = cQAbstractItemView_vtable_callback_editorDestroyed
  if not isNil(vtbl[].moveCursor):
    vtbl[].vtbl.moveCursor = cQAbstractItemView_vtable_callback_moveCursor
  if not isNil(vtbl[].horizontalOffset):
    vtbl[].vtbl.horizontalOffset = cQAbstractItemView_vtable_callback_horizontalOffset
  if not isNil(vtbl[].verticalOffset):
    vtbl[].vtbl.verticalOffset = cQAbstractItemView_vtable_callback_verticalOffset
  if not isNil(vtbl[].isIndexHidden):
    vtbl[].vtbl.isIndexHidden = cQAbstractItemView_vtable_callback_isIndexHidden
  if not isNil(vtbl[].setSelection):
    vtbl[].vtbl.setSelection = cQAbstractItemView_vtable_callback_setSelection
  if not isNil(vtbl[].visualRegionForSelection):
    vtbl[].vtbl.visualRegionForSelection = cQAbstractItemView_vtable_callback_visualRegionForSelection
  if not isNil(vtbl[].selectedIndexes):
    vtbl[].vtbl.selectedIndexes = cQAbstractItemView_vtable_callback_selectedIndexes
  if not isNil(vtbl[].edit2):
    vtbl[].vtbl.edit2 = cQAbstractItemView_vtable_callback_edit2
  if not isNil(vtbl[].selectionCommand):
    vtbl[].vtbl.selectionCommand = cQAbstractItemView_vtable_callback_selectionCommand
  if not isNil(vtbl[].startDrag):
    vtbl[].vtbl.startDrag = cQAbstractItemView_vtable_callback_startDrag
  if not isNil(vtbl[].viewOptions):
    vtbl[].vtbl.viewOptions = cQAbstractItemView_vtable_callback_viewOptions
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQAbstractItemView_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQAbstractItemView_vtable_callback_event
  if not isNil(vtbl[].viewportEvent):
    vtbl[].vtbl.viewportEvent = cQAbstractItemView_vtable_callback_viewportEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQAbstractItemView_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQAbstractItemView_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQAbstractItemView_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQAbstractItemView_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQAbstractItemView_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQAbstractItemView_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQAbstractItemView_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQAbstractItemView_vtable_callback_dropEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQAbstractItemView_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQAbstractItemView_vtable_callback_focusOutEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQAbstractItemView_vtable_callback_keyPressEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQAbstractItemView_vtable_callback_resizeEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQAbstractItemView_vtable_callback_timerEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQAbstractItemView_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQAbstractItemView_vtable_callback_eventFilter
  if not isNil(vtbl[].viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = cQAbstractItemView_vtable_callback_viewportSizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQAbstractItemView_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQAbstractItemView_vtable_callback_sizeHint
  if not isNil(vtbl[].setupViewport):
    vtbl[].vtbl.setupViewport = cQAbstractItemView_vtable_callback_setupViewport
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQAbstractItemView_vtable_callback_paintEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQAbstractItemView_vtable_callback_wheelEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQAbstractItemView_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = cQAbstractItemView_vtable_callback_scrollContentsBy
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQAbstractItemView_vtable_callback_changeEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQAbstractItemView_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQAbstractItemView_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQAbstractItemView_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQAbstractItemView_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQAbstractItemView_vtable_callback_paintEngine
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQAbstractItemView_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQAbstractItemView_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQAbstractItemView_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQAbstractItemView_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQAbstractItemView_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQAbstractItemView_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQAbstractItemView_vtable_callback_actionEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQAbstractItemView_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQAbstractItemView_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQAbstractItemView_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQAbstractItemView_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQAbstractItemView_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQAbstractItemView_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQAbstractItemView_vtable_callback_sharedPainter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQAbstractItemView_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQAbstractItemView_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQAbstractItemView_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQAbstractItemView_vtable_callback_disconnectNotify
  gen_qabstractitemview_types.QAbstractItemView(h: fcQAbstractItemView_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qabstractitemview_types.QAbstractItemView,
    vtbl: ref QAbstractItemViewVTable = nil): gen_qabstractitemview_types.QAbstractItemView =
  let vtbl = if vtbl == nil: new QAbstractItemViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAbstractItemViewVTable](fcQAbstractItemView_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQAbstractItemView_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQAbstractItemView_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQAbstractItemView_vtable_callback_metacall
  if not isNil(vtbl[].setModel):
    vtbl[].vtbl.setModel = cQAbstractItemView_vtable_callback_setModel
  if not isNil(vtbl[].setSelectionModel):
    vtbl[].vtbl.setSelectionModel = cQAbstractItemView_vtable_callback_setSelectionModel
  if not isNil(vtbl[].keyboardSearch):
    vtbl[].vtbl.keyboardSearch = cQAbstractItemView_vtable_callback_keyboardSearch
  if not isNil(vtbl[].visualRect):
    vtbl[].vtbl.visualRect = cQAbstractItemView_vtable_callback_visualRect
  if not isNil(vtbl[].scrollTo):
    vtbl[].vtbl.scrollTo = cQAbstractItemView_vtable_callback_scrollTo
  if not isNil(vtbl[].indexAt):
    vtbl[].vtbl.indexAt = cQAbstractItemView_vtable_callback_indexAt
  if not isNil(vtbl[].sizeHintForRow):
    vtbl[].vtbl.sizeHintForRow = cQAbstractItemView_vtable_callback_sizeHintForRow
  if not isNil(vtbl[].sizeHintForColumn):
    vtbl[].vtbl.sizeHintForColumn = cQAbstractItemView_vtable_callback_sizeHintForColumn
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQAbstractItemView_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = cQAbstractItemView_vtable_callback_reset
  if not isNil(vtbl[].setRootIndex):
    vtbl[].vtbl.setRootIndex = cQAbstractItemView_vtable_callback_setRootIndex
  if not isNil(vtbl[].doItemsLayout):
    vtbl[].vtbl.doItemsLayout = cQAbstractItemView_vtable_callback_doItemsLayout
  if not isNil(vtbl[].selectAll):
    vtbl[].vtbl.selectAll = cQAbstractItemView_vtable_callback_selectAll
  if not isNil(vtbl[].dataChanged):
    vtbl[].vtbl.dataChanged = cQAbstractItemView_vtable_callback_dataChanged
  if not isNil(vtbl[].rowsInserted):
    vtbl[].vtbl.rowsInserted = cQAbstractItemView_vtable_callback_rowsInserted
  if not isNil(vtbl[].rowsAboutToBeRemoved):
    vtbl[].vtbl.rowsAboutToBeRemoved = cQAbstractItemView_vtable_callback_rowsAboutToBeRemoved
  if not isNil(vtbl[].selectionChanged):
    vtbl[].vtbl.selectionChanged = cQAbstractItemView_vtable_callback_selectionChanged
  if not isNil(vtbl[].currentChanged):
    vtbl[].vtbl.currentChanged = cQAbstractItemView_vtable_callback_currentChanged
  if not isNil(vtbl[].updateEditorData):
    vtbl[].vtbl.updateEditorData = cQAbstractItemView_vtable_callback_updateEditorData
  if not isNil(vtbl[].updateEditorGeometries):
    vtbl[].vtbl.updateEditorGeometries = cQAbstractItemView_vtable_callback_updateEditorGeometries
  if not isNil(vtbl[].updateGeometries):
    vtbl[].vtbl.updateGeometries = cQAbstractItemView_vtable_callback_updateGeometries
  if not isNil(vtbl[].verticalScrollbarAction):
    vtbl[].vtbl.verticalScrollbarAction = cQAbstractItemView_vtable_callback_verticalScrollbarAction
  if not isNil(vtbl[].horizontalScrollbarAction):
    vtbl[].vtbl.horizontalScrollbarAction = cQAbstractItemView_vtable_callback_horizontalScrollbarAction
  if not isNil(vtbl[].verticalScrollbarValueChanged):
    vtbl[].vtbl.verticalScrollbarValueChanged = cQAbstractItemView_vtable_callback_verticalScrollbarValueChanged
  if not isNil(vtbl[].horizontalScrollbarValueChanged):
    vtbl[].vtbl.horizontalScrollbarValueChanged = cQAbstractItemView_vtable_callback_horizontalScrollbarValueChanged
  if not isNil(vtbl[].closeEditor):
    vtbl[].vtbl.closeEditor = cQAbstractItemView_vtable_callback_closeEditor
  if not isNil(vtbl[].commitData):
    vtbl[].vtbl.commitData = cQAbstractItemView_vtable_callback_commitData
  if not isNil(vtbl[].editorDestroyed):
    vtbl[].vtbl.editorDestroyed = cQAbstractItemView_vtable_callback_editorDestroyed
  if not isNil(vtbl[].moveCursor):
    vtbl[].vtbl.moveCursor = cQAbstractItemView_vtable_callback_moveCursor
  if not isNil(vtbl[].horizontalOffset):
    vtbl[].vtbl.horizontalOffset = cQAbstractItemView_vtable_callback_horizontalOffset
  if not isNil(vtbl[].verticalOffset):
    vtbl[].vtbl.verticalOffset = cQAbstractItemView_vtable_callback_verticalOffset
  if not isNil(vtbl[].isIndexHidden):
    vtbl[].vtbl.isIndexHidden = cQAbstractItemView_vtable_callback_isIndexHidden
  if not isNil(vtbl[].setSelection):
    vtbl[].vtbl.setSelection = cQAbstractItemView_vtable_callback_setSelection
  if not isNil(vtbl[].visualRegionForSelection):
    vtbl[].vtbl.visualRegionForSelection = cQAbstractItemView_vtable_callback_visualRegionForSelection
  if not isNil(vtbl[].selectedIndexes):
    vtbl[].vtbl.selectedIndexes = cQAbstractItemView_vtable_callback_selectedIndexes
  if not isNil(vtbl[].edit2):
    vtbl[].vtbl.edit2 = cQAbstractItemView_vtable_callback_edit2
  if not isNil(vtbl[].selectionCommand):
    vtbl[].vtbl.selectionCommand = cQAbstractItemView_vtable_callback_selectionCommand
  if not isNil(vtbl[].startDrag):
    vtbl[].vtbl.startDrag = cQAbstractItemView_vtable_callback_startDrag
  if not isNil(vtbl[].viewOptions):
    vtbl[].vtbl.viewOptions = cQAbstractItemView_vtable_callback_viewOptions
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQAbstractItemView_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQAbstractItemView_vtable_callback_event
  if not isNil(vtbl[].viewportEvent):
    vtbl[].vtbl.viewportEvent = cQAbstractItemView_vtable_callback_viewportEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQAbstractItemView_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQAbstractItemView_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQAbstractItemView_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQAbstractItemView_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQAbstractItemView_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQAbstractItemView_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQAbstractItemView_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQAbstractItemView_vtable_callback_dropEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQAbstractItemView_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQAbstractItemView_vtable_callback_focusOutEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQAbstractItemView_vtable_callback_keyPressEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQAbstractItemView_vtable_callback_resizeEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQAbstractItemView_vtable_callback_timerEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQAbstractItemView_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQAbstractItemView_vtable_callback_eventFilter
  if not isNil(vtbl[].viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = cQAbstractItemView_vtable_callback_viewportSizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQAbstractItemView_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQAbstractItemView_vtable_callback_sizeHint
  if not isNil(vtbl[].setupViewport):
    vtbl[].vtbl.setupViewport = cQAbstractItemView_vtable_callback_setupViewport
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQAbstractItemView_vtable_callback_paintEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQAbstractItemView_vtable_callback_wheelEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQAbstractItemView_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = cQAbstractItemView_vtable_callback_scrollContentsBy
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQAbstractItemView_vtable_callback_changeEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQAbstractItemView_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQAbstractItemView_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQAbstractItemView_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQAbstractItemView_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQAbstractItemView_vtable_callback_paintEngine
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQAbstractItemView_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQAbstractItemView_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQAbstractItemView_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQAbstractItemView_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQAbstractItemView_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQAbstractItemView_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQAbstractItemView_vtable_callback_actionEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQAbstractItemView_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQAbstractItemView_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQAbstractItemView_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQAbstractItemView_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQAbstractItemView_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQAbstractItemView_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQAbstractItemView_vtable_callback_sharedPainter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQAbstractItemView_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQAbstractItemView_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQAbstractItemView_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQAbstractItemView_vtable_callback_disconnectNotify
  gen_qabstractitemview_types.QAbstractItemView(h: fcQAbstractItemView_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQAbstractItemView_mvtbl = cQAbstractItemViewVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQAbstractItemView()[])](self.fcQAbstractItemView_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQAbstractItemView_method_callback_metaObject,
  metacast: cQAbstractItemView_method_callback_metacast,
  metacall: cQAbstractItemView_method_callback_metacall,
  setModel: cQAbstractItemView_method_callback_setModel,
  setSelectionModel: cQAbstractItemView_method_callback_setSelectionModel,
  keyboardSearch: cQAbstractItemView_method_callback_keyboardSearch,
  visualRect: cQAbstractItemView_method_callback_visualRect,
  scrollTo: cQAbstractItemView_method_callback_scrollTo,
  indexAt: cQAbstractItemView_method_callback_indexAt,
  sizeHintForRow: cQAbstractItemView_method_callback_sizeHintForRow,
  sizeHintForColumn: cQAbstractItemView_method_callback_sizeHintForColumn,
  inputMethodQuery: cQAbstractItemView_method_callback_inputMethodQuery,
  reset: cQAbstractItemView_method_callback_reset,
  setRootIndex: cQAbstractItemView_method_callback_setRootIndex,
  doItemsLayout: cQAbstractItemView_method_callback_doItemsLayout,
  selectAll: cQAbstractItemView_method_callback_selectAll,
  dataChanged: cQAbstractItemView_method_callback_dataChanged,
  rowsInserted: cQAbstractItemView_method_callback_rowsInserted,
  rowsAboutToBeRemoved: cQAbstractItemView_method_callback_rowsAboutToBeRemoved,
  selectionChanged: cQAbstractItemView_method_callback_selectionChanged,
  currentChanged: cQAbstractItemView_method_callback_currentChanged,
  updateEditorData: cQAbstractItemView_method_callback_updateEditorData,
  updateEditorGeometries: cQAbstractItemView_method_callback_updateEditorGeometries,
  updateGeometries: cQAbstractItemView_method_callback_updateGeometries,
  verticalScrollbarAction: cQAbstractItemView_method_callback_verticalScrollbarAction,
  horizontalScrollbarAction: cQAbstractItemView_method_callback_horizontalScrollbarAction,
  verticalScrollbarValueChanged: cQAbstractItemView_method_callback_verticalScrollbarValueChanged,
  horizontalScrollbarValueChanged: cQAbstractItemView_method_callback_horizontalScrollbarValueChanged,
  closeEditor: cQAbstractItemView_method_callback_closeEditor,
  commitData: cQAbstractItemView_method_callback_commitData,
  editorDestroyed: cQAbstractItemView_method_callback_editorDestroyed,
  moveCursor: cQAbstractItemView_method_callback_moveCursor,
  horizontalOffset: cQAbstractItemView_method_callback_horizontalOffset,
  verticalOffset: cQAbstractItemView_method_callback_verticalOffset,
  isIndexHidden: cQAbstractItemView_method_callback_isIndexHidden,
  setSelection: cQAbstractItemView_method_callback_setSelection,
  visualRegionForSelection: cQAbstractItemView_method_callback_visualRegionForSelection,
  selectedIndexes: cQAbstractItemView_method_callback_selectedIndexes,
  edit2: cQAbstractItemView_method_callback_edit2,
  selectionCommand: cQAbstractItemView_method_callback_selectionCommand,
  startDrag: cQAbstractItemView_method_callback_startDrag,
  viewOptions: cQAbstractItemView_method_callback_viewOptions,
  focusNextPrevChild: cQAbstractItemView_method_callback_focusNextPrevChild,
  event: cQAbstractItemView_method_callback_event,
  viewportEvent: cQAbstractItemView_method_callback_viewportEvent,
  mousePressEvent: cQAbstractItemView_method_callback_mousePressEvent,
  mouseMoveEvent: cQAbstractItemView_method_callback_mouseMoveEvent,
  mouseReleaseEvent: cQAbstractItemView_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: cQAbstractItemView_method_callback_mouseDoubleClickEvent,
  dragEnterEvent: cQAbstractItemView_method_callback_dragEnterEvent,
  dragMoveEvent: cQAbstractItemView_method_callback_dragMoveEvent,
  dragLeaveEvent: cQAbstractItemView_method_callback_dragLeaveEvent,
  dropEvent: cQAbstractItemView_method_callback_dropEvent,
  focusInEvent: cQAbstractItemView_method_callback_focusInEvent,
  focusOutEvent: cQAbstractItemView_method_callback_focusOutEvent,
  keyPressEvent: cQAbstractItemView_method_callback_keyPressEvent,
  resizeEvent: cQAbstractItemView_method_callback_resizeEvent,
  timerEvent: cQAbstractItemView_method_callback_timerEvent,
  inputMethodEvent: cQAbstractItemView_method_callback_inputMethodEvent,
  eventFilter: cQAbstractItemView_method_callback_eventFilter,
  viewportSizeHint: cQAbstractItemView_method_callback_viewportSizeHint,
  minimumSizeHint: cQAbstractItemView_method_callback_minimumSizeHint,
  sizeHint: cQAbstractItemView_method_callback_sizeHint,
  setupViewport: cQAbstractItemView_method_callback_setupViewport,
  paintEvent: cQAbstractItemView_method_callback_paintEvent,
  wheelEvent: cQAbstractItemView_method_callback_wheelEvent,
  contextMenuEvent: cQAbstractItemView_method_callback_contextMenuEvent,
  scrollContentsBy: cQAbstractItemView_method_callback_scrollContentsBy,
  changeEvent: cQAbstractItemView_method_callback_changeEvent,
  devType: cQAbstractItemView_method_callback_devType,
  setVisible: cQAbstractItemView_method_callback_setVisible,
  heightForWidth: cQAbstractItemView_method_callback_heightForWidth,
  hasHeightForWidth: cQAbstractItemView_method_callback_hasHeightForWidth,
  paintEngine: cQAbstractItemView_method_callback_paintEngine,
  keyReleaseEvent: cQAbstractItemView_method_callback_keyReleaseEvent,
  enterEvent: cQAbstractItemView_method_callback_enterEvent,
  leaveEvent: cQAbstractItemView_method_callback_leaveEvent,
  moveEvent: cQAbstractItemView_method_callback_moveEvent,
  closeEvent: cQAbstractItemView_method_callback_closeEvent,
  tabletEvent: cQAbstractItemView_method_callback_tabletEvent,
  actionEvent: cQAbstractItemView_method_callback_actionEvent,
  showEvent: cQAbstractItemView_method_callback_showEvent,
  hideEvent: cQAbstractItemView_method_callback_hideEvent,
  nativeEvent: cQAbstractItemView_method_callback_nativeEvent,
  metric: cQAbstractItemView_method_callback_metric,
  initPainter: cQAbstractItemView_method_callback_initPainter,
  redirected: cQAbstractItemView_method_callback_redirected,
  sharedPainter: cQAbstractItemView_method_callback_sharedPainter,
  childEvent: cQAbstractItemView_method_callback_childEvent,
  customEvent: cQAbstractItemView_method_callback_customEvent,
  connectNotify: cQAbstractItemView_method_callback_connectNotify,
  disconnectNotify: cQAbstractItemView_method_callback_disconnectNotify,
)
proc create*(T: type gen_qabstractitemview_types.QAbstractItemView,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQAbstractItemView) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAbstractItemView_new(addr(cQAbstractItemView_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qabstractitemview_types.QAbstractItemView,
    inst: VirtualQAbstractItemView) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAbstractItemView_new2(addr(cQAbstractItemView_mvtbl), addr(inst[]))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qabstractitemview_types.QAbstractItemView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractItemView_staticMetaObject())
