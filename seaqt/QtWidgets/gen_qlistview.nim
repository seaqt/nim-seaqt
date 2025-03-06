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
{.compile("gen_qlistview.cpp", cflags).}


type QListViewMovementEnum* = distinct cint
template Static*(_: type QListViewMovementEnum): untyped = 0
template Free*(_: type QListViewMovementEnum): untyped = 1
template Snap*(_: type QListViewMovementEnum): untyped = 2


type QListViewFlowEnum* = distinct cint
template LeftToRight*(_: type QListViewFlowEnum): untyped = 0
template TopToBottom*(_: type QListViewFlowEnum): untyped = 1


type QListViewResizeModeEnum* = distinct cint
template Fixed*(_: type QListViewResizeModeEnum): untyped = 0
template Adjust*(_: type QListViewResizeModeEnum): untyped = 1


type QListViewLayoutModeEnum* = distinct cint
template SinglePass*(_: type QListViewLayoutModeEnum): untyped = 0
template Batched*(_: type QListViewLayoutModeEnum): untyped = 1


type QListViewViewModeEnum* = distinct cint
template ListMode*(_: type QListViewViewModeEnum): untyped = 0
template IconMode*(_: type QListViewViewModeEnum): untyped = 1


import ./gen_qlistview_types
export gen_qlistview_types

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
  ./gen_qabstractitemview,
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
  gen_qabstractitemview,
  gen_qstyleoption_types,
  gen_qwidget_types

type cQListView*{.exportc: "QListView", incompleteStruct.} = object

proc fcQListView_new(parent: pointer): ptr cQListView {.importc: "QListView_new".}
proc fcQListView_new2(): ptr cQListView {.importc: "QListView_new2".}
proc fcQListView_metaObject(self: pointer, ): pointer {.importc: "QListView_metaObject".}
proc fcQListView_metacast(self: pointer, param1: cstring): pointer {.importc: "QListView_metacast".}
proc fcQListView_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QListView_metacall".}
proc fcQListView_tr(s: cstring): struct_miqt_string {.importc: "QListView_tr".}
proc fcQListView_trUtf8(s: cstring): struct_miqt_string {.importc: "QListView_trUtf8".}
proc fcQListView_setMovement(self: pointer, movement: cint): void {.importc: "QListView_setMovement".}
proc fcQListView_movement(self: pointer, ): cint {.importc: "QListView_movement".}
proc fcQListView_setFlow(self: pointer, flow: cint): void {.importc: "QListView_setFlow".}
proc fcQListView_flow(self: pointer, ): cint {.importc: "QListView_flow".}
proc fcQListView_setWrapping(self: pointer, enable: bool): void {.importc: "QListView_setWrapping".}
proc fcQListView_isWrapping(self: pointer, ): bool {.importc: "QListView_isWrapping".}
proc fcQListView_setResizeMode(self: pointer, mode: cint): void {.importc: "QListView_setResizeMode".}
proc fcQListView_resizeMode(self: pointer, ): cint {.importc: "QListView_resizeMode".}
proc fcQListView_setLayoutMode(self: pointer, mode: cint): void {.importc: "QListView_setLayoutMode".}
proc fcQListView_layoutMode(self: pointer, ): cint {.importc: "QListView_layoutMode".}
proc fcQListView_setSpacing(self: pointer, space: cint): void {.importc: "QListView_setSpacing".}
proc fcQListView_spacing(self: pointer, ): cint {.importc: "QListView_spacing".}
proc fcQListView_setBatchSize(self: pointer, batchSize: cint): void {.importc: "QListView_setBatchSize".}
proc fcQListView_batchSize(self: pointer, ): cint {.importc: "QListView_batchSize".}
proc fcQListView_setGridSize(self: pointer, size: pointer): void {.importc: "QListView_setGridSize".}
proc fcQListView_gridSize(self: pointer, ): pointer {.importc: "QListView_gridSize".}
proc fcQListView_setViewMode(self: pointer, mode: cint): void {.importc: "QListView_setViewMode".}
proc fcQListView_viewMode(self: pointer, ): cint {.importc: "QListView_viewMode".}
proc fcQListView_clearPropertyFlags(self: pointer, ): void {.importc: "QListView_clearPropertyFlags".}
proc fcQListView_isRowHidden(self: pointer, row: cint): bool {.importc: "QListView_isRowHidden".}
proc fcQListView_setRowHidden(self: pointer, row: cint, hide: bool): void {.importc: "QListView_setRowHidden".}
proc fcQListView_setModelColumn(self: pointer, column: cint): void {.importc: "QListView_setModelColumn".}
proc fcQListView_modelColumn(self: pointer, ): cint {.importc: "QListView_modelColumn".}
proc fcQListView_setUniformItemSizes(self: pointer, enable: bool): void {.importc: "QListView_setUniformItemSizes".}
proc fcQListView_uniformItemSizes(self: pointer, ): bool {.importc: "QListView_uniformItemSizes".}
proc fcQListView_setWordWrap(self: pointer, on: bool): void {.importc: "QListView_setWordWrap".}
proc fcQListView_wordWrap(self: pointer, ): bool {.importc: "QListView_wordWrap".}
proc fcQListView_setSelectionRectVisible(self: pointer, show: bool): void {.importc: "QListView_setSelectionRectVisible".}
proc fcQListView_isSelectionRectVisible(self: pointer, ): bool {.importc: "QListView_isSelectionRectVisible".}
proc fcQListView_setItemAlignment(self: pointer, alignment: cint): void {.importc: "QListView_setItemAlignment".}
proc fcQListView_itemAlignment(self: pointer, ): cint {.importc: "QListView_itemAlignment".}
proc fcQListView_visualRect(self: pointer, index: pointer): pointer {.importc: "QListView_visualRect".}
proc fcQListView_scrollTo(self: pointer, index: pointer, hint: cint): void {.importc: "QListView_scrollTo".}
proc fcQListView_indexAt(self: pointer, p: pointer): pointer {.importc: "QListView_indexAt".}
proc fcQListView_doItemsLayout(self: pointer, ): void {.importc: "QListView_doItemsLayout".}
proc fcQListView_reset(self: pointer, ): void {.importc: "QListView_reset".}
proc fcQListView_setRootIndex(self: pointer, index: pointer): void {.importc: "QListView_setRootIndex".}
proc fcQListView_indexesMoved(self: pointer, indexes: struct_miqt_array): void {.importc: "QListView_indexesMoved".}
proc fcQListView_connect_indexesMoved(self: pointer, slot: int) {.importc: "QListView_connect_indexesMoved".}
proc fcQListView_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QListView_tr2".}
proc fcQListView_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QListView_tr3".}
proc fcQListView_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QListView_trUtf82".}
proc fcQListView_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QListView_trUtf83".}
proc fQListView_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QListView_virtualbase_metaObject".}
proc fcQListView_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QListView_override_virtual_metaObject".}
proc fQListView_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QListView_virtualbase_metacast".}
proc fcQListView_override_virtual_metacast(self: pointer, slot: int) {.importc: "QListView_override_virtual_metacast".}
proc fQListView_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QListView_virtualbase_metacall".}
proc fcQListView_override_virtual_metacall(self: pointer, slot: int) {.importc: "QListView_override_virtual_metacall".}
proc fQListView_virtualbase_visualRect(self: pointer, index: pointer): pointer{.importc: "QListView_virtualbase_visualRect".}
proc fcQListView_override_virtual_visualRect(self: pointer, slot: int) {.importc: "QListView_override_virtual_visualRect".}
proc fQListView_virtualbase_scrollTo(self: pointer, index: pointer, hint: cint): void{.importc: "QListView_virtualbase_scrollTo".}
proc fcQListView_override_virtual_scrollTo(self: pointer, slot: int) {.importc: "QListView_override_virtual_scrollTo".}
proc fQListView_virtualbase_indexAt(self: pointer, p: pointer): pointer{.importc: "QListView_virtualbase_indexAt".}
proc fcQListView_override_virtual_indexAt(self: pointer, slot: int) {.importc: "QListView_override_virtual_indexAt".}
proc fQListView_virtualbase_doItemsLayout(self: pointer, ): void{.importc: "QListView_virtualbase_doItemsLayout".}
proc fcQListView_override_virtual_doItemsLayout(self: pointer, slot: int) {.importc: "QListView_override_virtual_doItemsLayout".}
proc fQListView_virtualbase_reset(self: pointer, ): void{.importc: "QListView_virtualbase_reset".}
proc fcQListView_override_virtual_reset(self: pointer, slot: int) {.importc: "QListView_override_virtual_reset".}
proc fQListView_virtualbase_setRootIndex(self: pointer, index: pointer): void{.importc: "QListView_virtualbase_setRootIndex".}
proc fcQListView_override_virtual_setRootIndex(self: pointer, slot: int) {.importc: "QListView_override_virtual_setRootIndex".}
proc fQListView_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QListView_virtualbase_event".}
proc fcQListView_override_virtual_event(self: pointer, slot: int) {.importc: "QListView_override_virtual_event".}
proc fQListView_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void{.importc: "QListView_virtualbase_scrollContentsBy".}
proc fcQListView_override_virtual_scrollContentsBy(self: pointer, slot: int) {.importc: "QListView_override_virtual_scrollContentsBy".}
proc fQListView_virtualbase_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void{.importc: "QListView_virtualbase_dataChanged".}
proc fcQListView_override_virtual_dataChanged(self: pointer, slot: int) {.importc: "QListView_override_virtual_dataChanged".}
proc fQListView_virtualbase_rowsInserted(self: pointer, parent: pointer, start: cint, endVal: cint): void{.importc: "QListView_virtualbase_rowsInserted".}
proc fcQListView_override_virtual_rowsInserted(self: pointer, slot: int) {.importc: "QListView_override_virtual_rowsInserted".}
proc fQListView_virtualbase_rowsAboutToBeRemoved(self: pointer, parent: pointer, start: cint, endVal: cint): void{.importc: "QListView_virtualbase_rowsAboutToBeRemoved".}
proc fcQListView_override_virtual_rowsAboutToBeRemoved(self: pointer, slot: int) {.importc: "QListView_override_virtual_rowsAboutToBeRemoved".}
proc fQListView_virtualbase_mouseMoveEvent(self: pointer, e: pointer): void{.importc: "QListView_virtualbase_mouseMoveEvent".}
proc fcQListView_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_mouseMoveEvent".}
proc fQListView_virtualbase_mouseReleaseEvent(self: pointer, e: pointer): void{.importc: "QListView_virtualbase_mouseReleaseEvent".}
proc fcQListView_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_mouseReleaseEvent".}
proc fQListView_virtualbase_wheelEvent(self: pointer, e: pointer): void{.importc: "QListView_virtualbase_wheelEvent".}
proc fcQListView_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_wheelEvent".}
proc fQListView_virtualbase_timerEvent(self: pointer, e: pointer): void{.importc: "QListView_virtualbase_timerEvent".}
proc fcQListView_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_timerEvent".}
proc fQListView_virtualbase_resizeEvent(self: pointer, e: pointer): void{.importc: "QListView_virtualbase_resizeEvent".}
proc fcQListView_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_resizeEvent".}
proc fQListView_virtualbase_dragMoveEvent(self: pointer, e: pointer): void{.importc: "QListView_virtualbase_dragMoveEvent".}
proc fcQListView_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_dragMoveEvent".}
proc fQListView_virtualbase_dragLeaveEvent(self: pointer, e: pointer): void{.importc: "QListView_virtualbase_dragLeaveEvent".}
proc fcQListView_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_dragLeaveEvent".}
proc fQListView_virtualbase_dropEvent(self: pointer, e: pointer): void{.importc: "QListView_virtualbase_dropEvent".}
proc fcQListView_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_dropEvent".}
proc fQListView_virtualbase_startDrag(self: pointer, supportedActions: cint): void{.importc: "QListView_virtualbase_startDrag".}
proc fcQListView_override_virtual_startDrag(self: pointer, slot: int) {.importc: "QListView_override_virtual_startDrag".}
proc fQListView_virtualbase_viewOptions(self: pointer, ): pointer{.importc: "QListView_virtualbase_viewOptions".}
proc fcQListView_override_virtual_viewOptions(self: pointer, slot: int) {.importc: "QListView_override_virtual_viewOptions".}
proc fQListView_virtualbase_paintEvent(self: pointer, e: pointer): void{.importc: "QListView_virtualbase_paintEvent".}
proc fcQListView_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_paintEvent".}
proc fQListView_virtualbase_horizontalOffset(self: pointer, ): cint{.importc: "QListView_virtualbase_horizontalOffset".}
proc fcQListView_override_virtual_horizontalOffset(self: pointer, slot: int) {.importc: "QListView_override_virtual_horizontalOffset".}
proc fQListView_virtualbase_verticalOffset(self: pointer, ): cint{.importc: "QListView_virtualbase_verticalOffset".}
proc fcQListView_override_virtual_verticalOffset(self: pointer, slot: int) {.importc: "QListView_override_virtual_verticalOffset".}
proc fQListView_virtualbase_moveCursor(self: pointer, cursorAction: cint, modifiers: cint): pointer{.importc: "QListView_virtualbase_moveCursor".}
proc fcQListView_override_virtual_moveCursor(self: pointer, slot: int) {.importc: "QListView_override_virtual_moveCursor".}
proc fQListView_virtualbase_setSelection(self: pointer, rect: pointer, command: cint): void{.importc: "QListView_virtualbase_setSelection".}
proc fcQListView_override_virtual_setSelection(self: pointer, slot: int) {.importc: "QListView_override_virtual_setSelection".}
proc fQListView_virtualbase_visualRegionForSelection(self: pointer, selection: pointer): pointer{.importc: "QListView_virtualbase_visualRegionForSelection".}
proc fcQListView_override_virtual_visualRegionForSelection(self: pointer, slot: int) {.importc: "QListView_override_virtual_visualRegionForSelection".}
proc fQListView_virtualbase_selectedIndexes(self: pointer, ): struct_miqt_array{.importc: "QListView_virtualbase_selectedIndexes".}
proc fcQListView_override_virtual_selectedIndexes(self: pointer, slot: int) {.importc: "QListView_override_virtual_selectedIndexes".}
proc fQListView_virtualbase_updateGeometries(self: pointer, ): void{.importc: "QListView_virtualbase_updateGeometries".}
proc fcQListView_override_virtual_updateGeometries(self: pointer, slot: int) {.importc: "QListView_override_virtual_updateGeometries".}
proc fQListView_virtualbase_isIndexHidden(self: pointer, index: pointer): bool{.importc: "QListView_virtualbase_isIndexHidden".}
proc fcQListView_override_virtual_isIndexHidden(self: pointer, slot: int) {.importc: "QListView_override_virtual_isIndexHidden".}
proc fQListView_virtualbase_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void{.importc: "QListView_virtualbase_selectionChanged".}
proc fcQListView_override_virtual_selectionChanged(self: pointer, slot: int) {.importc: "QListView_override_virtual_selectionChanged".}
proc fQListView_virtualbase_currentChanged(self: pointer, current: pointer, previous: pointer): void{.importc: "QListView_virtualbase_currentChanged".}
proc fcQListView_override_virtual_currentChanged(self: pointer, slot: int) {.importc: "QListView_override_virtual_currentChanged".}
proc fQListView_virtualbase_viewportSizeHint(self: pointer, ): pointer{.importc: "QListView_virtualbase_viewportSizeHint".}
proc fcQListView_override_virtual_viewportSizeHint(self: pointer, slot: int) {.importc: "QListView_override_virtual_viewportSizeHint".}
proc fQListView_virtualbase_setModel(self: pointer, model: pointer): void{.importc: "QListView_virtualbase_setModel".}
proc fcQListView_override_virtual_setModel(self: pointer, slot: int) {.importc: "QListView_override_virtual_setModel".}
proc fQListView_virtualbase_setSelectionModel(self: pointer, selectionModel: pointer): void{.importc: "QListView_virtualbase_setSelectionModel".}
proc fcQListView_override_virtual_setSelectionModel(self: pointer, slot: int) {.importc: "QListView_override_virtual_setSelectionModel".}
proc fQListView_virtualbase_keyboardSearch(self: pointer, search: struct_miqt_string): void{.importc: "QListView_virtualbase_keyboardSearch".}
proc fcQListView_override_virtual_keyboardSearch(self: pointer, slot: int) {.importc: "QListView_override_virtual_keyboardSearch".}
proc fQListView_virtualbase_sizeHintForRow(self: pointer, row: cint): cint{.importc: "QListView_virtualbase_sizeHintForRow".}
proc fcQListView_override_virtual_sizeHintForRow(self: pointer, slot: int) {.importc: "QListView_override_virtual_sizeHintForRow".}
proc fQListView_virtualbase_sizeHintForColumn(self: pointer, column: cint): cint{.importc: "QListView_virtualbase_sizeHintForColumn".}
proc fcQListView_override_virtual_sizeHintForColumn(self: pointer, slot: int) {.importc: "QListView_override_virtual_sizeHintForColumn".}
proc fQListView_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QListView_virtualbase_inputMethodQuery".}
proc fcQListView_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QListView_override_virtual_inputMethodQuery".}
proc fQListView_virtualbase_selectAll(self: pointer, ): void{.importc: "QListView_virtualbase_selectAll".}
proc fcQListView_override_virtual_selectAll(self: pointer, slot: int) {.importc: "QListView_override_virtual_selectAll".}
proc fQListView_virtualbase_updateEditorData(self: pointer, ): void{.importc: "QListView_virtualbase_updateEditorData".}
proc fcQListView_override_virtual_updateEditorData(self: pointer, slot: int) {.importc: "QListView_override_virtual_updateEditorData".}
proc fQListView_virtualbase_updateEditorGeometries(self: pointer, ): void{.importc: "QListView_virtualbase_updateEditorGeometries".}
proc fcQListView_override_virtual_updateEditorGeometries(self: pointer, slot: int) {.importc: "QListView_override_virtual_updateEditorGeometries".}
proc fQListView_virtualbase_verticalScrollbarAction(self: pointer, action: cint): void{.importc: "QListView_virtualbase_verticalScrollbarAction".}
proc fcQListView_override_virtual_verticalScrollbarAction(self: pointer, slot: int) {.importc: "QListView_override_virtual_verticalScrollbarAction".}
proc fQListView_virtualbase_horizontalScrollbarAction(self: pointer, action: cint): void{.importc: "QListView_virtualbase_horizontalScrollbarAction".}
proc fcQListView_override_virtual_horizontalScrollbarAction(self: pointer, slot: int) {.importc: "QListView_override_virtual_horizontalScrollbarAction".}
proc fQListView_virtualbase_verticalScrollbarValueChanged(self: pointer, value: cint): void{.importc: "QListView_virtualbase_verticalScrollbarValueChanged".}
proc fcQListView_override_virtual_verticalScrollbarValueChanged(self: pointer, slot: int) {.importc: "QListView_override_virtual_verticalScrollbarValueChanged".}
proc fQListView_virtualbase_horizontalScrollbarValueChanged(self: pointer, value: cint): void{.importc: "QListView_virtualbase_horizontalScrollbarValueChanged".}
proc fcQListView_override_virtual_horizontalScrollbarValueChanged(self: pointer, slot: int) {.importc: "QListView_override_virtual_horizontalScrollbarValueChanged".}
proc fQListView_virtualbase_closeEditor(self: pointer, editor: pointer, hint: cint): void{.importc: "QListView_virtualbase_closeEditor".}
proc fcQListView_override_virtual_closeEditor(self: pointer, slot: int) {.importc: "QListView_override_virtual_closeEditor".}
proc fQListView_virtualbase_commitData(self: pointer, editor: pointer): void{.importc: "QListView_virtualbase_commitData".}
proc fcQListView_override_virtual_commitData(self: pointer, slot: int) {.importc: "QListView_override_virtual_commitData".}
proc fQListView_virtualbase_editorDestroyed(self: pointer, editor: pointer): void{.importc: "QListView_virtualbase_editorDestroyed".}
proc fcQListView_override_virtual_editorDestroyed(self: pointer, slot: int) {.importc: "QListView_override_virtual_editorDestroyed".}
proc fQListView_virtualbase_edit2(self: pointer, index: pointer, trigger: cint, event: pointer): bool{.importc: "QListView_virtualbase_edit2".}
proc fcQListView_override_virtual_edit2(self: pointer, slot: int) {.importc: "QListView_override_virtual_edit2".}
proc fQListView_virtualbase_selectionCommand(self: pointer, index: pointer, event: pointer): cint{.importc: "QListView_virtualbase_selectionCommand".}
proc fcQListView_override_virtual_selectionCommand(self: pointer, slot: int) {.importc: "QListView_override_virtual_selectionCommand".}
proc fQListView_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QListView_virtualbase_focusNextPrevChild".}
proc fcQListView_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QListView_override_virtual_focusNextPrevChild".}
proc fQListView_virtualbase_viewportEvent(self: pointer, event: pointer): bool{.importc: "QListView_virtualbase_viewportEvent".}
proc fcQListView_override_virtual_viewportEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_viewportEvent".}
proc fQListView_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QListView_virtualbase_mousePressEvent".}
proc fcQListView_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_mousePressEvent".}
proc fQListView_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QListView_virtualbase_mouseDoubleClickEvent".}
proc fcQListView_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_mouseDoubleClickEvent".}
proc fQListView_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QListView_virtualbase_dragEnterEvent".}
proc fcQListView_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_dragEnterEvent".}
proc fQListView_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QListView_virtualbase_focusInEvent".}
proc fcQListView_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_focusInEvent".}
proc fQListView_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QListView_virtualbase_focusOutEvent".}
proc fcQListView_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_focusOutEvent".}
proc fQListView_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QListView_virtualbase_keyPressEvent".}
proc fcQListView_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_keyPressEvent".}
proc fQListView_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QListView_virtualbase_inputMethodEvent".}
proc fcQListView_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_inputMethodEvent".}
proc fQListView_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool{.importc: "QListView_virtualbase_eventFilter".}
proc fcQListView_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QListView_override_virtual_eventFilter".}
proc fQListView_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QListView_virtualbase_minimumSizeHint".}
proc fcQListView_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QListView_override_virtual_minimumSizeHint".}
proc fQListView_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QListView_virtualbase_sizeHint".}
proc fcQListView_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QListView_override_virtual_sizeHint".}
proc fQListView_virtualbase_setupViewport(self: pointer, viewport: pointer): void{.importc: "QListView_virtualbase_setupViewport".}
proc fcQListView_override_virtual_setupViewport(self: pointer, slot: int) {.importc: "QListView_override_virtual_setupViewport".}
proc fQListView_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QListView_virtualbase_contextMenuEvent".}
proc fcQListView_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_contextMenuEvent".}
proc fQListView_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QListView_virtualbase_changeEvent".}
proc fcQListView_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_changeEvent".}
proc fQListView_virtualbase_devType(self: pointer, ): cint{.importc: "QListView_virtualbase_devType".}
proc fcQListView_override_virtual_devType(self: pointer, slot: int) {.importc: "QListView_override_virtual_devType".}
proc fQListView_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QListView_virtualbase_setVisible".}
proc fcQListView_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QListView_override_virtual_setVisible".}
proc fQListView_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QListView_virtualbase_heightForWidth".}
proc fcQListView_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QListView_override_virtual_heightForWidth".}
proc fQListView_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QListView_virtualbase_hasHeightForWidth".}
proc fcQListView_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QListView_override_virtual_hasHeightForWidth".}
proc fQListView_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QListView_virtualbase_paintEngine".}
proc fcQListView_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QListView_override_virtual_paintEngine".}
proc fQListView_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QListView_virtualbase_keyReleaseEvent".}
proc fcQListView_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_keyReleaseEvent".}
proc fQListView_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QListView_virtualbase_enterEvent".}
proc fcQListView_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_enterEvent".}
proc fQListView_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QListView_virtualbase_leaveEvent".}
proc fcQListView_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_leaveEvent".}
proc fQListView_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QListView_virtualbase_moveEvent".}
proc fcQListView_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_moveEvent".}
proc fQListView_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QListView_virtualbase_closeEvent".}
proc fcQListView_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_closeEvent".}
proc fQListView_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QListView_virtualbase_tabletEvent".}
proc fcQListView_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_tabletEvent".}
proc fQListView_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QListView_virtualbase_actionEvent".}
proc fcQListView_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_actionEvent".}
proc fQListView_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QListView_virtualbase_showEvent".}
proc fcQListView_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_showEvent".}
proc fQListView_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QListView_virtualbase_hideEvent".}
proc fcQListView_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_hideEvent".}
proc fQListView_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QListView_virtualbase_nativeEvent".}
proc fcQListView_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_nativeEvent".}
proc fQListView_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QListView_virtualbase_metric".}
proc fcQListView_override_virtual_metric(self: pointer, slot: int) {.importc: "QListView_override_virtual_metric".}
proc fQListView_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QListView_virtualbase_initPainter".}
proc fcQListView_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QListView_override_virtual_initPainter".}
proc fQListView_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QListView_virtualbase_redirected".}
proc fcQListView_override_virtual_redirected(self: pointer, slot: int) {.importc: "QListView_override_virtual_redirected".}
proc fQListView_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QListView_virtualbase_sharedPainter".}
proc fcQListView_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QListView_override_virtual_sharedPainter".}
proc fQListView_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QListView_virtualbase_childEvent".}
proc fcQListView_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_childEvent".}
proc fQListView_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QListView_virtualbase_customEvent".}
proc fcQListView_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_customEvent".}
proc fQListView_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QListView_virtualbase_connectNotify".}
proc fcQListView_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QListView_override_virtual_connectNotify".}
proc fQListView_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QListView_virtualbase_disconnectNotify".}
proc fcQListView_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QListView_override_virtual_disconnectNotify".}
proc fcQListView_staticMetaObject(): pointer {.importc: "QListView_staticMetaObject".}
proc fcQListView_delete(self: pointer) {.importc: "QListView_delete".}


func init*(T: type gen_qlistview_types.QListView, h: ptr cQListView): gen_qlistview_types.QListView =
  T(h: h)
proc create*(T: type gen_qlistview_types.QListView, parent: gen_qwidget_types.QWidget): gen_qlistview_types.QListView =
  gen_qlistview_types.QListView.init(fcQListView_new(parent.h))

proc create*(T: type gen_qlistview_types.QListView, ): gen_qlistview_types.QListView =
  gen_qlistview_types.QListView.init(fcQListView_new2())

proc metaObject*(self: gen_qlistview_types.QListView, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQListView_metaObject(self.h))

proc metacast*(self: gen_qlistview_types.QListView, param1: cstring): pointer =
  fcQListView_metacast(self.h, param1)

proc metacall*(self: gen_qlistview_types.QListView, param1: cint, param2: cint, param3: pointer): cint =
  fcQListView_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qlistview_types.QListView, s: cstring): string =
  let v_ms = fcQListView_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qlistview_types.QListView, s: cstring): string =
  let v_ms = fcQListView_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setMovement*(self: gen_qlistview_types.QListView, movement: cint): void =
  fcQListView_setMovement(self.h, cint(movement))

proc movement*(self: gen_qlistview_types.QListView, ): cint =
  cint(fcQListView_movement(self.h))

proc setFlow*(self: gen_qlistview_types.QListView, flow: cint): void =
  fcQListView_setFlow(self.h, cint(flow))

proc flow*(self: gen_qlistview_types.QListView, ): cint =
  cint(fcQListView_flow(self.h))

proc setWrapping*(self: gen_qlistview_types.QListView, enable: bool): void =
  fcQListView_setWrapping(self.h, enable)

proc isWrapping*(self: gen_qlistview_types.QListView, ): bool =
  fcQListView_isWrapping(self.h)

proc setResizeMode*(self: gen_qlistview_types.QListView, mode: cint): void =
  fcQListView_setResizeMode(self.h, cint(mode))

proc resizeMode*(self: gen_qlistview_types.QListView, ): cint =
  cint(fcQListView_resizeMode(self.h))

proc setLayoutMode*(self: gen_qlistview_types.QListView, mode: cint): void =
  fcQListView_setLayoutMode(self.h, cint(mode))

proc layoutMode*(self: gen_qlistview_types.QListView, ): cint =
  cint(fcQListView_layoutMode(self.h))

proc setSpacing*(self: gen_qlistview_types.QListView, space: cint): void =
  fcQListView_setSpacing(self.h, space)

proc spacing*(self: gen_qlistview_types.QListView, ): cint =
  fcQListView_spacing(self.h)

proc setBatchSize*(self: gen_qlistview_types.QListView, batchSize: cint): void =
  fcQListView_setBatchSize(self.h, batchSize)

proc batchSize*(self: gen_qlistview_types.QListView, ): cint =
  fcQListView_batchSize(self.h)

proc setGridSize*(self: gen_qlistview_types.QListView, size: gen_qsize_types.QSize): void =
  fcQListView_setGridSize(self.h, size.h)

proc gridSize*(self: gen_qlistview_types.QListView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQListView_gridSize(self.h))

proc setViewMode*(self: gen_qlistview_types.QListView, mode: cint): void =
  fcQListView_setViewMode(self.h, cint(mode))

proc viewMode*(self: gen_qlistview_types.QListView, ): cint =
  cint(fcQListView_viewMode(self.h))

proc clearPropertyFlags*(self: gen_qlistview_types.QListView, ): void =
  fcQListView_clearPropertyFlags(self.h)

proc isRowHidden*(self: gen_qlistview_types.QListView, row: cint): bool =
  fcQListView_isRowHidden(self.h, row)

proc setRowHidden*(self: gen_qlistview_types.QListView, row: cint, hide: bool): void =
  fcQListView_setRowHidden(self.h, row, hide)

proc setModelColumn*(self: gen_qlistview_types.QListView, column: cint): void =
  fcQListView_setModelColumn(self.h, column)

proc modelColumn*(self: gen_qlistview_types.QListView, ): cint =
  fcQListView_modelColumn(self.h)

proc setUniformItemSizes*(self: gen_qlistview_types.QListView, enable: bool): void =
  fcQListView_setUniformItemSizes(self.h, enable)

proc uniformItemSizes*(self: gen_qlistview_types.QListView, ): bool =
  fcQListView_uniformItemSizes(self.h)

proc setWordWrap*(self: gen_qlistview_types.QListView, on: bool): void =
  fcQListView_setWordWrap(self.h, on)

proc wordWrap*(self: gen_qlistview_types.QListView, ): bool =
  fcQListView_wordWrap(self.h)

proc setSelectionRectVisible*(self: gen_qlistview_types.QListView, show: bool): void =
  fcQListView_setSelectionRectVisible(self.h, show)

proc isSelectionRectVisible*(self: gen_qlistview_types.QListView, ): bool =
  fcQListView_isSelectionRectVisible(self.h)

proc setItemAlignment*(self: gen_qlistview_types.QListView, alignment: cint): void =
  fcQListView_setItemAlignment(self.h, cint(alignment))

proc itemAlignment*(self: gen_qlistview_types.QListView, ): cint =
  cint(fcQListView_itemAlignment(self.h))

proc visualRect*(self: gen_qlistview_types.QListView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQListView_visualRect(self.h, index.h))

proc scrollTo*(self: gen_qlistview_types.QListView, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void =
  fcQListView_scrollTo(self.h, index.h, cint(hint))

proc indexAt*(self: gen_qlistview_types.QListView, p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQListView_indexAt(self.h, p.h))

proc doItemsLayout*(self: gen_qlistview_types.QListView, ): void =
  fcQListView_doItemsLayout(self.h)

proc reset*(self: gen_qlistview_types.QListView, ): void =
  fcQListView_reset(self.h)

proc setRootIndex*(self: gen_qlistview_types.QListView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQListView_setRootIndex(self.h, index.h)

proc indexesMoved*(self: gen_qlistview_types.QListView, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): void =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  fcQListView_indexesMoved(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0])))

type QListViewindexesMovedSlot* = proc(indexes: seq[gen_qabstractitemmodel_types.QModelIndex])
proc miqt_exec_callback_QListView_indexesMoved(slot: int, indexes: struct_miqt_array) {.exportc.} =
  let nimfunc = cast[ptr QListViewindexesMovedSlot](cast[pointer](slot))
  var vindexes_ma = indexes
  var vindexesx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(vindexes_ma.len))
  let vindexes_outCast = cast[ptr UncheckedArray[pointer]](vindexes_ma.data)
  for i in 0 ..< vindexes_ma.len:
    vindexesx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: vindexes_outCast[i])
  let slotval1 = vindexesx_ret

  nimfunc[](slotval1)

proc onindexesMoved*(self: gen_qlistview_types.QListView, slot: QListViewindexesMovedSlot) =
  var tmp = new QListViewindexesMovedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_connect_indexesMoved(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qlistview_types.QListView, s: cstring, c: cstring): string =
  let v_ms = fcQListView_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qlistview_types.QListView, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQListView_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qlistview_types.QListView, s: cstring, c: cstring): string =
  let v_ms = fcQListView_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qlistview_types.QListView, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQListView_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QListViewmetaObject*(self: gen_qlistview_types.QListView, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQListView_virtualbase_metaObject(self.h))

type QListViewmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qlistview_types.QListView, slot: QListViewmetaObjectProc) =
  # TODO check subclass
  var tmp = new QListViewmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_metaObject(self: ptr cQListView, slot: int): pointer {.exportc: "miqt_exec_callback_QListView_metaObject ".} =
  var nimfunc = cast[ptr QListViewmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QListViewmetacast*(self: gen_qlistview_types.QListView, param1: cstring): pointer =
  fQListView_virtualbase_metacast(self.h, param1)

type QListViewmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qlistview_types.QListView, slot: QListViewmetacastProc) =
  # TODO check subclass
  var tmp = new QListViewmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_metacast(self: ptr cQListView, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QListView_metacast ".} =
  var nimfunc = cast[ptr QListViewmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QListViewmetacall*(self: gen_qlistview_types.QListView, param1: cint, param2: cint, param3: pointer): cint =
  fQListView_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QListViewmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qlistview_types.QListView, slot: QListViewmetacallProc) =
  # TODO check subclass
  var tmp = new QListViewmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_metacall(self: ptr cQListView, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QListView_metacall ".} =
  var nimfunc = cast[ptr QListViewmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QListViewvisualRect*(self: gen_qlistview_types.QListView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fQListView_virtualbase_visualRect(self.h, index.h))

type QListViewvisualRectProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect
proc onvisualRect*(self: gen_qlistview_types.QListView, slot: QListViewvisualRectProc) =
  # TODO check subclass
  var tmp = new QListViewvisualRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_visualRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_visualRect(self: ptr cQListView, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QListView_visualRect ".} =
  var nimfunc = cast[ptr QListViewvisualRectProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QListViewscrollTo*(self: gen_qlistview_types.QListView, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void =
  fQListView_virtualbase_scrollTo(self.h, index.h, cint(hint))

type QListViewscrollToProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void
proc onscrollTo*(self: gen_qlistview_types.QListView, slot: QListViewscrollToProc) =
  # TODO check subclass
  var tmp = new QListViewscrollToProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_scrollTo(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_scrollTo(self: ptr cQListView, slot: int, index: pointer, hint: cint): void {.exportc: "miqt_exec_callback_QListView_scrollTo ".} =
  var nimfunc = cast[ptr QListViewscrollToProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = cint(hint)


  nimfunc[](slotval1, slotval2)
proc QListViewindexAt*(self: gen_qlistview_types.QListView, p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQListView_virtualbase_indexAt(self.h, p.h))

type QListViewindexAtProc* = proc(p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex
proc onindexAt*(self: gen_qlistview_types.QListView, slot: QListViewindexAtProc) =
  # TODO check subclass
  var tmp = new QListViewindexAtProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_indexAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_indexAt(self: ptr cQListView, slot: int, p: pointer): pointer {.exportc: "miqt_exec_callback_QListView_indexAt ".} =
  var nimfunc = cast[ptr QListViewindexAtProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: p)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QListViewdoItemsLayout*(self: gen_qlistview_types.QListView, ): void =
  fQListView_virtualbase_doItemsLayout(self.h)

type QListViewdoItemsLayoutProc* = proc(): void
proc ondoItemsLayout*(self: gen_qlistview_types.QListView, slot: QListViewdoItemsLayoutProc) =
  # TODO check subclass
  var tmp = new QListViewdoItemsLayoutProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_doItemsLayout(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_doItemsLayout(self: ptr cQListView, slot: int): void {.exportc: "miqt_exec_callback_QListView_doItemsLayout ".} =
  var nimfunc = cast[ptr QListViewdoItemsLayoutProc](cast[pointer](slot))

  nimfunc[]()
proc QListViewreset*(self: gen_qlistview_types.QListView, ): void =
  fQListView_virtualbase_reset(self.h)

type QListViewresetProc* = proc(): void
proc onreset*(self: gen_qlistview_types.QListView, slot: QListViewresetProc) =
  # TODO check subclass
  var tmp = new QListViewresetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_reset(self: ptr cQListView, slot: int): void {.exportc: "miqt_exec_callback_QListView_reset ".} =
  var nimfunc = cast[ptr QListViewresetProc](cast[pointer](slot))

  nimfunc[]()
proc QListViewsetRootIndex*(self: gen_qlistview_types.QListView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fQListView_virtualbase_setRootIndex(self.h, index.h)

type QListViewsetRootIndexProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): void
proc onsetRootIndex*(self: gen_qlistview_types.QListView, slot: QListViewsetRootIndexProc) =
  # TODO check subclass
  var tmp = new QListViewsetRootIndexProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_setRootIndex(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_setRootIndex(self: ptr cQListView, slot: int, index: pointer): void {.exportc: "miqt_exec_callback_QListView_setRootIndex ".} =
  var nimfunc = cast[ptr QListViewsetRootIndexProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  nimfunc[](slotval1)
proc QListViewevent*(self: gen_qlistview_types.QListView, e: gen_qcoreevent_types.QEvent): bool =
  fQListView_virtualbase_event(self.h, e.h)

type QListVieweventProc* = proc(e: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qlistview_types.QListView, slot: QListVieweventProc) =
  # TODO check subclass
  var tmp = new QListVieweventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_event(self: ptr cQListView, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QListView_event ".} =
  var nimfunc = cast[ptr QListVieweventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QListViewscrollContentsBy*(self: gen_qlistview_types.QListView, dx: cint, dy: cint): void =
  fQListView_virtualbase_scrollContentsBy(self.h, dx, dy)

type QListViewscrollContentsByProc* = proc(dx: cint, dy: cint): void
proc onscrollContentsBy*(self: gen_qlistview_types.QListView, slot: QListViewscrollContentsByProc) =
  # TODO check subclass
  var tmp = new QListViewscrollContentsByProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_scrollContentsBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_scrollContentsBy(self: ptr cQListView, slot: int, dx: cint, dy: cint): void {.exportc: "miqt_exec_callback_QListView_scrollContentsBy ".} =
  var nimfunc = cast[ptr QListViewscrollContentsByProc](cast[pointer](slot))
  let slotval1 = dx

  let slotval2 = dy


  nimfunc[](slotval1, slotval2)
proc QListViewdataChanged*(self: gen_qlistview_types.QListView, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: seq[cint]): void =
  var roles_CArray = newSeq[cint](len(roles))
  for i in 0..<len(roles):
    roles_CArray[i] = roles[i]

  fQListView_virtualbase_dataChanged(self.h, topLeft.h, bottomRight.h, struct_miqt_array(len: csize_t(len(roles)), data: if len(roles) == 0: nil else: addr(roles_CArray[0])))

type QListViewdataChangedProc* = proc(topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: seq[cint]): void
proc ondataChanged*(self: gen_qlistview_types.QListView, slot: QListViewdataChangedProc) =
  # TODO check subclass
  var tmp = new QListViewdataChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_dataChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_dataChanged(self: ptr cQListView, slot: int, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.exportc: "miqt_exec_callback_QListView_dataChanged ".} =
  var nimfunc = cast[ptr QListViewdataChangedProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: topLeft)

  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: bottomRight)

  var vroles_ma = roles
  var vrolesx_ret = newSeq[cint](int(vroles_ma.len))
  let vroles_outCast = cast[ptr UncheckedArray[cint]](vroles_ma.data)
  for i in 0 ..< vroles_ma.len:
    vrolesx_ret[i] = vroles_outCast[i]
  let slotval3 = vrolesx_ret


  nimfunc[](slotval1, slotval2, slotval3)
proc QListViewrowsInserted*(self: gen_qlistview_types.QListView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fQListView_virtualbase_rowsInserted(self.h, parent.h, start, endVal)

type QListViewrowsInsertedProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void
proc onrowsInserted*(self: gen_qlistview_types.QListView, slot: QListViewrowsInsertedProc) =
  # TODO check subclass
  var tmp = new QListViewrowsInsertedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_rowsInserted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_rowsInserted(self: ptr cQListView, slot: int, parent: pointer, start: cint, endVal: cint): void {.exportc: "miqt_exec_callback_QListView_rowsInserted ".} =
  var nimfunc = cast[ptr QListViewrowsInsertedProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)

  let slotval2 = start

  let slotval3 = endVal


  nimfunc[](slotval1, slotval2, slotval3)
proc QListViewrowsAboutToBeRemoved*(self: gen_qlistview_types.QListView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fQListView_virtualbase_rowsAboutToBeRemoved(self.h, parent.h, start, endVal)

type QListViewrowsAboutToBeRemovedProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void
proc onrowsAboutToBeRemoved*(self: gen_qlistview_types.QListView, slot: QListViewrowsAboutToBeRemovedProc) =
  # TODO check subclass
  var tmp = new QListViewrowsAboutToBeRemovedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_rowsAboutToBeRemoved(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_rowsAboutToBeRemoved(self: ptr cQListView, slot: int, parent: pointer, start: cint, endVal: cint): void {.exportc: "miqt_exec_callback_QListView_rowsAboutToBeRemoved ".} =
  var nimfunc = cast[ptr QListViewrowsAboutToBeRemovedProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)

  let slotval2 = start

  let slotval3 = endVal


  nimfunc[](slotval1, slotval2, slotval3)
proc QListViewmouseMoveEvent*(self: gen_qlistview_types.QListView, e: gen_qevent_types.QMouseEvent): void =
  fQListView_virtualbase_mouseMoveEvent(self.h, e.h)

type QListViewmouseMoveEventProc* = proc(e: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qlistview_types.QListView, slot: QListViewmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QListViewmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_mouseMoveEvent(self: ptr cQListView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QListView_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QListViewmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)


  nimfunc[](slotval1)
proc QListViewmouseReleaseEvent*(self: gen_qlistview_types.QListView, e: gen_qevent_types.QMouseEvent): void =
  fQListView_virtualbase_mouseReleaseEvent(self.h, e.h)

type QListViewmouseReleaseEventProc* = proc(e: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qlistview_types.QListView, slot: QListViewmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QListViewmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_mouseReleaseEvent(self: ptr cQListView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QListView_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QListViewmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)


  nimfunc[](slotval1)
proc QListViewwheelEvent*(self: gen_qlistview_types.QListView, e: gen_qevent_types.QWheelEvent): void =
  fQListView_virtualbase_wheelEvent(self.h, e.h)

type QListViewwheelEventProc* = proc(e: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qlistview_types.QListView, slot: QListViewwheelEventProc) =
  # TODO check subclass
  var tmp = new QListViewwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_wheelEvent(self: ptr cQListView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QListView_wheelEvent ".} =
  var nimfunc = cast[ptr QListViewwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: e)


  nimfunc[](slotval1)
proc QListViewtimerEvent*(self: gen_qlistview_types.QListView, e: gen_qcoreevent_types.QTimerEvent): void =
  fQListView_virtualbase_timerEvent(self.h, e.h)

type QListViewtimerEventProc* = proc(e: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qlistview_types.QListView, slot: QListViewtimerEventProc) =
  # TODO check subclass
  var tmp = new QListViewtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_timerEvent(self: ptr cQListView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QListView_timerEvent ".} =
  var nimfunc = cast[ptr QListViewtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: e)


  nimfunc[](slotval1)
proc QListViewresizeEvent*(self: gen_qlistview_types.QListView, e: gen_qevent_types.QResizeEvent): void =
  fQListView_virtualbase_resizeEvent(self.h, e.h)

type QListViewresizeEventProc* = proc(e: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qlistview_types.QListView, slot: QListViewresizeEventProc) =
  # TODO check subclass
  var tmp = new QListViewresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_resizeEvent(self: ptr cQListView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QListView_resizeEvent ".} =
  var nimfunc = cast[ptr QListViewresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: e)


  nimfunc[](slotval1)
proc QListViewdragMoveEvent*(self: gen_qlistview_types.QListView, e: gen_qevent_types.QDragMoveEvent): void =
  fQListView_virtualbase_dragMoveEvent(self.h, e.h)

type QListViewdragMoveEventProc* = proc(e: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qlistview_types.QListView, slot: QListViewdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QListViewdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_dragMoveEvent(self: ptr cQListView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QListView_dragMoveEvent ".} =
  var nimfunc = cast[ptr QListViewdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: e)


  nimfunc[](slotval1)
proc QListViewdragLeaveEvent*(self: gen_qlistview_types.QListView, e: gen_qevent_types.QDragLeaveEvent): void =
  fQListView_virtualbase_dragLeaveEvent(self.h, e.h)

type QListViewdragLeaveEventProc* = proc(e: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qlistview_types.QListView, slot: QListViewdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QListViewdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_dragLeaveEvent(self: ptr cQListView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QListView_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QListViewdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: e)


  nimfunc[](slotval1)
proc QListViewdropEvent*(self: gen_qlistview_types.QListView, e: gen_qevent_types.QDropEvent): void =
  fQListView_virtualbase_dropEvent(self.h, e.h)

type QListViewdropEventProc* = proc(e: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qlistview_types.QListView, slot: QListViewdropEventProc) =
  # TODO check subclass
  var tmp = new QListViewdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_dropEvent(self: ptr cQListView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QListView_dropEvent ".} =
  var nimfunc = cast[ptr QListViewdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: e)


  nimfunc[](slotval1)
proc QListViewstartDrag*(self: gen_qlistview_types.QListView, supportedActions: cint): void =
  fQListView_virtualbase_startDrag(self.h, cint(supportedActions))

type QListViewstartDragProc* = proc(supportedActions: cint): void
proc onstartDrag*(self: gen_qlistview_types.QListView, slot: QListViewstartDragProc) =
  # TODO check subclass
  var tmp = new QListViewstartDragProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_startDrag(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_startDrag(self: ptr cQListView, slot: int, supportedActions: cint): void {.exportc: "miqt_exec_callback_QListView_startDrag ".} =
  var nimfunc = cast[ptr QListViewstartDragProc](cast[pointer](slot))
  let slotval1 = cint(supportedActions)


  nimfunc[](slotval1)
proc QListViewviewOptions*(self: gen_qlistview_types.QListView, ): gen_qstyleoption_types.QStyleOptionViewItem =
  gen_qstyleoption_types.QStyleOptionViewItem(h: fQListView_virtualbase_viewOptions(self.h))

type QListViewviewOptionsProc* = proc(): gen_qstyleoption_types.QStyleOptionViewItem
proc onviewOptions*(self: gen_qlistview_types.QListView, slot: QListViewviewOptionsProc) =
  # TODO check subclass
  var tmp = new QListViewviewOptionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_viewOptions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_viewOptions(self: ptr cQListView, slot: int): pointer {.exportc: "miqt_exec_callback_QListView_viewOptions ".} =
  var nimfunc = cast[ptr QListViewviewOptionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QListViewpaintEvent*(self: gen_qlistview_types.QListView, e: gen_qevent_types.QPaintEvent): void =
  fQListView_virtualbase_paintEvent(self.h, e.h)

type QListViewpaintEventProc* = proc(e: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qlistview_types.QListView, slot: QListViewpaintEventProc) =
  # TODO check subclass
  var tmp = new QListViewpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_paintEvent(self: ptr cQListView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QListView_paintEvent ".} =
  var nimfunc = cast[ptr QListViewpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: e)


  nimfunc[](slotval1)
proc QListViewhorizontalOffset*(self: gen_qlistview_types.QListView, ): cint =
  fQListView_virtualbase_horizontalOffset(self.h)

type QListViewhorizontalOffsetProc* = proc(): cint
proc onhorizontalOffset*(self: gen_qlistview_types.QListView, slot: QListViewhorizontalOffsetProc) =
  # TODO check subclass
  var tmp = new QListViewhorizontalOffsetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_horizontalOffset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_horizontalOffset(self: ptr cQListView, slot: int): cint {.exportc: "miqt_exec_callback_QListView_horizontalOffset ".} =
  var nimfunc = cast[ptr QListViewhorizontalOffsetProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QListViewverticalOffset*(self: gen_qlistview_types.QListView, ): cint =
  fQListView_virtualbase_verticalOffset(self.h)

type QListViewverticalOffsetProc* = proc(): cint
proc onverticalOffset*(self: gen_qlistview_types.QListView, slot: QListViewverticalOffsetProc) =
  # TODO check subclass
  var tmp = new QListViewverticalOffsetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_verticalOffset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_verticalOffset(self: ptr cQListView, slot: int): cint {.exportc: "miqt_exec_callback_QListView_verticalOffset ".} =
  var nimfunc = cast[ptr QListViewverticalOffsetProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QListViewmoveCursor*(self: gen_qlistview_types.QListView, cursorAction: cint, modifiers: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQListView_virtualbase_moveCursor(self.h, cint(cursorAction), cint(modifiers)))

type QListViewmoveCursorProc* = proc(cursorAction: cint, modifiers: cint): gen_qabstractitemmodel_types.QModelIndex
proc onmoveCursor*(self: gen_qlistview_types.QListView, slot: QListViewmoveCursorProc) =
  # TODO check subclass
  var tmp = new QListViewmoveCursorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_moveCursor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_moveCursor(self: ptr cQListView, slot: int, cursorAction: cint, modifiers: cint): pointer {.exportc: "miqt_exec_callback_QListView_moveCursor ".} =
  var nimfunc = cast[ptr QListViewmoveCursorProc](cast[pointer](slot))
  let slotval1 = cint(cursorAction)

  let slotval2 = cint(modifiers)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QListViewsetSelection*(self: gen_qlistview_types.QListView, rect: gen_qrect_types.QRect, command: cint): void =
  fQListView_virtualbase_setSelection(self.h, rect.h, cint(command))

type QListViewsetSelectionProc* = proc(rect: gen_qrect_types.QRect, command: cint): void
proc onsetSelection*(self: gen_qlistview_types.QListView, slot: QListViewsetSelectionProc) =
  # TODO check subclass
  var tmp = new QListViewsetSelectionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_setSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_setSelection(self: ptr cQListView, slot: int, rect: pointer, command: cint): void {.exportc: "miqt_exec_callback_QListView_setSelection ".} =
  var nimfunc = cast[ptr QListViewsetSelectionProc](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRect(h: rect)

  let slotval2 = cint(command)


  nimfunc[](slotval1, slotval2)
proc QListViewvisualRegionForSelection*(self: gen_qlistview_types.QListView, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fQListView_virtualbase_visualRegionForSelection(self.h, selection.h))

type QListViewvisualRegionForSelectionProc* = proc(selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion
proc onvisualRegionForSelection*(self: gen_qlistview_types.QListView, slot: QListViewvisualRegionForSelectionProc) =
  # TODO check subclass
  var tmp = new QListViewvisualRegionForSelectionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_visualRegionForSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_visualRegionForSelection(self: ptr cQListView, slot: int, selection: pointer): pointer {.exportc: "miqt_exec_callback_QListView_visualRegionForSelection ".} =
  var nimfunc = cast[ptr QListViewvisualRegionForSelectionProc](cast[pointer](slot))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QListViewselectedIndexes*(self: gen_qlistview_types.QListView, ): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fQListView_virtualbase_selectedIndexes(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  vx_ret

type QListViewselectedIndexesProc* = proc(): seq[gen_qabstractitemmodel_types.QModelIndex]
proc onselectedIndexes*(self: gen_qlistview_types.QListView, slot: QListViewselectedIndexesProc) =
  # TODO check subclass
  var tmp = new QListViewselectedIndexesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_selectedIndexes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_selectedIndexes(self: ptr cQListView, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QListView_selectedIndexes ".} =
  var nimfunc = cast[ptr QListViewselectedIndexesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[pointer](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QListViewupdateGeometries*(self: gen_qlistview_types.QListView, ): void =
  fQListView_virtualbase_updateGeometries(self.h)

type QListViewupdateGeometriesProc* = proc(): void
proc onupdateGeometries*(self: gen_qlistview_types.QListView, slot: QListViewupdateGeometriesProc) =
  # TODO check subclass
  var tmp = new QListViewupdateGeometriesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_updateGeometries(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_updateGeometries(self: ptr cQListView, slot: int): void {.exportc: "miqt_exec_callback_QListView_updateGeometries ".} =
  var nimfunc = cast[ptr QListViewupdateGeometriesProc](cast[pointer](slot))

  nimfunc[]()
proc QListViewisIndexHidden*(self: gen_qlistview_types.QListView, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQListView_virtualbase_isIndexHidden(self.h, index.h)

type QListViewisIndexHiddenProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): bool
proc onisIndexHidden*(self: gen_qlistview_types.QListView, slot: QListViewisIndexHiddenProc) =
  # TODO check subclass
  var tmp = new QListViewisIndexHiddenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_isIndexHidden(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_isIndexHidden(self: ptr cQListView, slot: int, index: pointer): bool {.exportc: "miqt_exec_callback_QListView_isIndexHidden ".} =
  var nimfunc = cast[ptr QListViewisIndexHiddenProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QListViewselectionChanged*(self: gen_qlistview_types.QListView, selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void =
  fQListView_virtualbase_selectionChanged(self.h, selected.h, deselected.h)

type QListViewselectionChangedProc* = proc(selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void
proc onselectionChanged*(self: gen_qlistview_types.QListView, slot: QListViewselectionChangedProc) =
  # TODO check subclass
  var tmp = new QListViewselectionChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_selectionChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_selectionChanged(self: ptr cQListView, slot: int, selected: pointer, deselected: pointer): void {.exportc: "miqt_exec_callback_QListView_selectionChanged ".} =
  var nimfunc = cast[ptr QListViewselectionChangedProc](cast[pointer](slot))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selected)

  let slotval2 = gen_qitemselectionmodel_types.QItemSelection(h: deselected)


  nimfunc[](slotval1, slotval2)
proc QListViewcurrentChanged*(self: gen_qlistview_types.QListView, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void =
  fQListView_virtualbase_currentChanged(self.h, current.h, previous.h)

type QListViewcurrentChangedProc* = proc(current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void
proc oncurrentChanged*(self: gen_qlistview_types.QListView, slot: QListViewcurrentChangedProc) =
  # TODO check subclass
  var tmp = new QListViewcurrentChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_currentChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_currentChanged(self: ptr cQListView, slot: int, current: pointer, previous: pointer): void {.exportc: "miqt_exec_callback_QListView_currentChanged ".} =
  var nimfunc = cast[ptr QListViewcurrentChangedProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: current)

  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: previous)


  nimfunc[](slotval1, slotval2)
proc QListViewviewportSizeHint*(self: gen_qlistview_types.QListView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQListView_virtualbase_viewportSizeHint(self.h))

type QListViewviewportSizeHintProc* = proc(): gen_qsize_types.QSize
proc onviewportSizeHint*(self: gen_qlistview_types.QListView, slot: QListViewviewportSizeHintProc) =
  # TODO check subclass
  var tmp = new QListViewviewportSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_viewportSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_viewportSizeHint(self: ptr cQListView, slot: int): pointer {.exportc: "miqt_exec_callback_QListView_viewportSizeHint ".} =
  var nimfunc = cast[ptr QListViewviewportSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QListViewsetModel*(self: gen_qlistview_types.QListView, model: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fQListView_virtualbase_setModel(self.h, model.h)

type QListViewsetModelProc* = proc(model: gen_qabstractitemmodel_types.QAbstractItemModel): void
proc onsetModel*(self: gen_qlistview_types.QListView, slot: QListViewsetModelProc) =
  # TODO check subclass
  var tmp = new QListViewsetModelProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_setModel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_setModel(self: ptr cQListView, slot: int, model: pointer): void {.exportc: "miqt_exec_callback_QListView_setModel ".} =
  var nimfunc = cast[ptr QListViewsetModelProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model)


  nimfunc[](slotval1)
proc QListViewsetSelectionModel*(self: gen_qlistview_types.QListView, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void =
  fQListView_virtualbase_setSelectionModel(self.h, selectionModel.h)

type QListViewsetSelectionModelProc* = proc(selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void
proc onsetSelectionModel*(self: gen_qlistview_types.QListView, slot: QListViewsetSelectionModelProc) =
  # TODO check subclass
  var tmp = new QListViewsetSelectionModelProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_setSelectionModel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_setSelectionModel(self: ptr cQListView, slot: int, selectionModel: pointer): void {.exportc: "miqt_exec_callback_QListView_setSelectionModel ".} =
  var nimfunc = cast[ptr QListViewsetSelectionModelProc](cast[pointer](slot))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelectionModel(h: selectionModel)


  nimfunc[](slotval1)
proc QListViewkeyboardSearch*(self: gen_qlistview_types.QListView, search: string): void =
  fQListView_virtualbase_keyboardSearch(self.h, struct_miqt_string(data: search, len: csize_t(len(search))))

type QListViewkeyboardSearchProc* = proc(search: string): void
proc onkeyboardSearch*(self: gen_qlistview_types.QListView, slot: QListViewkeyboardSearchProc) =
  # TODO check subclass
  var tmp = new QListViewkeyboardSearchProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_keyboardSearch(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_keyboardSearch(self: ptr cQListView, slot: int, search: struct_miqt_string): void {.exportc: "miqt_exec_callback_QListView_keyboardSearch ".} =
  var nimfunc = cast[ptr QListViewkeyboardSearchProc](cast[pointer](slot))
  let vsearch_ms = search
  let vsearchx_ret = string.fromBytes(toOpenArrayByte(vsearch_ms.data, 0, int(vsearch_ms.len)-1))
  c_free(vsearch_ms.data)
  let slotval1 = vsearchx_ret


  nimfunc[](slotval1)
proc QListViewsizeHintForRow*(self: gen_qlistview_types.QListView, row: cint): cint =
  fQListView_virtualbase_sizeHintForRow(self.h, row)

type QListViewsizeHintForRowProc* = proc(row: cint): cint
proc onsizeHintForRow*(self: gen_qlistview_types.QListView, slot: QListViewsizeHintForRowProc) =
  # TODO check subclass
  var tmp = new QListViewsizeHintForRowProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_sizeHintForRow(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_sizeHintForRow(self: ptr cQListView, slot: int, row: cint): cint {.exportc: "miqt_exec_callback_QListView_sizeHintForRow ".} =
  var nimfunc = cast[ptr QListViewsizeHintForRowProc](cast[pointer](slot))
  let slotval1 = row


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QListViewsizeHintForColumn*(self: gen_qlistview_types.QListView, column: cint): cint =
  fQListView_virtualbase_sizeHintForColumn(self.h, column)

type QListViewsizeHintForColumnProc* = proc(column: cint): cint
proc onsizeHintForColumn*(self: gen_qlistview_types.QListView, slot: QListViewsizeHintForColumnProc) =
  # TODO check subclass
  var tmp = new QListViewsizeHintForColumnProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_sizeHintForColumn(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_sizeHintForColumn(self: ptr cQListView, slot: int, column: cint): cint {.exportc: "miqt_exec_callback_QListView_sizeHintForColumn ".} =
  var nimfunc = cast[ptr QListViewsizeHintForColumnProc](cast[pointer](slot))
  let slotval1 = column


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QListViewinputMethodQuery*(self: gen_qlistview_types.QListView, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQListView_virtualbase_inputMethodQuery(self.h, cint(query)))

type QListViewinputMethodQueryProc* = proc(query: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qlistview_types.QListView, slot: QListViewinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QListViewinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_inputMethodQuery(self: ptr cQListView, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QListView_inputMethodQuery ".} =
  var nimfunc = cast[ptr QListViewinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(query)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QListViewselectAll*(self: gen_qlistview_types.QListView, ): void =
  fQListView_virtualbase_selectAll(self.h)

type QListViewselectAllProc* = proc(): void
proc onselectAll*(self: gen_qlistview_types.QListView, slot: QListViewselectAllProc) =
  # TODO check subclass
  var tmp = new QListViewselectAllProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_selectAll(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_selectAll(self: ptr cQListView, slot: int): void {.exportc: "miqt_exec_callback_QListView_selectAll ".} =
  var nimfunc = cast[ptr QListViewselectAllProc](cast[pointer](slot))

  nimfunc[]()
proc QListViewupdateEditorData*(self: gen_qlistview_types.QListView, ): void =
  fQListView_virtualbase_updateEditorData(self.h)

type QListViewupdateEditorDataProc* = proc(): void
proc onupdateEditorData*(self: gen_qlistview_types.QListView, slot: QListViewupdateEditorDataProc) =
  # TODO check subclass
  var tmp = new QListViewupdateEditorDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_updateEditorData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_updateEditorData(self: ptr cQListView, slot: int): void {.exportc: "miqt_exec_callback_QListView_updateEditorData ".} =
  var nimfunc = cast[ptr QListViewupdateEditorDataProc](cast[pointer](slot))

  nimfunc[]()
proc QListViewupdateEditorGeometries*(self: gen_qlistview_types.QListView, ): void =
  fQListView_virtualbase_updateEditorGeometries(self.h)

type QListViewupdateEditorGeometriesProc* = proc(): void
proc onupdateEditorGeometries*(self: gen_qlistview_types.QListView, slot: QListViewupdateEditorGeometriesProc) =
  # TODO check subclass
  var tmp = new QListViewupdateEditorGeometriesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_updateEditorGeometries(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_updateEditorGeometries(self: ptr cQListView, slot: int): void {.exportc: "miqt_exec_callback_QListView_updateEditorGeometries ".} =
  var nimfunc = cast[ptr QListViewupdateEditorGeometriesProc](cast[pointer](slot))

  nimfunc[]()
proc QListViewverticalScrollbarAction*(self: gen_qlistview_types.QListView, action: cint): void =
  fQListView_virtualbase_verticalScrollbarAction(self.h, action)

type QListViewverticalScrollbarActionProc* = proc(action: cint): void
proc onverticalScrollbarAction*(self: gen_qlistview_types.QListView, slot: QListViewverticalScrollbarActionProc) =
  # TODO check subclass
  var tmp = new QListViewverticalScrollbarActionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_verticalScrollbarAction(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_verticalScrollbarAction(self: ptr cQListView, slot: int, action: cint): void {.exportc: "miqt_exec_callback_QListView_verticalScrollbarAction ".} =
  var nimfunc = cast[ptr QListViewverticalScrollbarActionProc](cast[pointer](slot))
  let slotval1 = action


  nimfunc[](slotval1)
proc QListViewhorizontalScrollbarAction*(self: gen_qlistview_types.QListView, action: cint): void =
  fQListView_virtualbase_horizontalScrollbarAction(self.h, action)

type QListViewhorizontalScrollbarActionProc* = proc(action: cint): void
proc onhorizontalScrollbarAction*(self: gen_qlistview_types.QListView, slot: QListViewhorizontalScrollbarActionProc) =
  # TODO check subclass
  var tmp = new QListViewhorizontalScrollbarActionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_horizontalScrollbarAction(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_horizontalScrollbarAction(self: ptr cQListView, slot: int, action: cint): void {.exportc: "miqt_exec_callback_QListView_horizontalScrollbarAction ".} =
  var nimfunc = cast[ptr QListViewhorizontalScrollbarActionProc](cast[pointer](slot))
  let slotval1 = action


  nimfunc[](slotval1)
proc QListViewverticalScrollbarValueChanged*(self: gen_qlistview_types.QListView, value: cint): void =
  fQListView_virtualbase_verticalScrollbarValueChanged(self.h, value)

type QListViewverticalScrollbarValueChangedProc* = proc(value: cint): void
proc onverticalScrollbarValueChanged*(self: gen_qlistview_types.QListView, slot: QListViewverticalScrollbarValueChangedProc) =
  # TODO check subclass
  var tmp = new QListViewverticalScrollbarValueChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_verticalScrollbarValueChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_verticalScrollbarValueChanged(self: ptr cQListView, slot: int, value: cint): void {.exportc: "miqt_exec_callback_QListView_verticalScrollbarValueChanged ".} =
  var nimfunc = cast[ptr QListViewverticalScrollbarValueChangedProc](cast[pointer](slot))
  let slotval1 = value


  nimfunc[](slotval1)
proc QListViewhorizontalScrollbarValueChanged*(self: gen_qlistview_types.QListView, value: cint): void =
  fQListView_virtualbase_horizontalScrollbarValueChanged(self.h, value)

type QListViewhorizontalScrollbarValueChangedProc* = proc(value: cint): void
proc onhorizontalScrollbarValueChanged*(self: gen_qlistview_types.QListView, slot: QListViewhorizontalScrollbarValueChangedProc) =
  # TODO check subclass
  var tmp = new QListViewhorizontalScrollbarValueChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_horizontalScrollbarValueChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_horizontalScrollbarValueChanged(self: ptr cQListView, slot: int, value: cint): void {.exportc: "miqt_exec_callback_QListView_horizontalScrollbarValueChanged ".} =
  var nimfunc = cast[ptr QListViewhorizontalScrollbarValueChangedProc](cast[pointer](slot))
  let slotval1 = value


  nimfunc[](slotval1)
proc QListViewcloseEditor*(self: gen_qlistview_types.QListView, editor: gen_qwidget_types.QWidget, hint: cint): void =
  fQListView_virtualbase_closeEditor(self.h, editor.h, cint(hint))

type QListViewcloseEditorProc* = proc(editor: gen_qwidget_types.QWidget, hint: cint): void
proc oncloseEditor*(self: gen_qlistview_types.QListView, slot: QListViewcloseEditorProc) =
  # TODO check subclass
  var tmp = new QListViewcloseEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_closeEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_closeEditor(self: ptr cQListView, slot: int, editor: pointer, hint: cint): void {.exportc: "miqt_exec_callback_QListView_closeEditor ".} =
  var nimfunc = cast[ptr QListViewcloseEditorProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: editor)

  let slotval2 = cint(hint)


  nimfunc[](slotval1, slotval2)
proc QListViewcommitData*(self: gen_qlistview_types.QListView, editor: gen_qwidget_types.QWidget): void =
  fQListView_virtualbase_commitData(self.h, editor.h)

type QListViewcommitDataProc* = proc(editor: gen_qwidget_types.QWidget): void
proc oncommitData*(self: gen_qlistview_types.QListView, slot: QListViewcommitDataProc) =
  # TODO check subclass
  var tmp = new QListViewcommitDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_commitData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_commitData(self: ptr cQListView, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QListView_commitData ".} =
  var nimfunc = cast[ptr QListViewcommitDataProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: editor)


  nimfunc[](slotval1)
proc QListVieweditorDestroyed*(self: gen_qlistview_types.QListView, editor: gen_qobject_types.QObject): void =
  fQListView_virtualbase_editorDestroyed(self.h, editor.h)

type QListVieweditorDestroyedProc* = proc(editor: gen_qobject_types.QObject): void
proc oneditorDestroyed*(self: gen_qlistview_types.QListView, slot: QListVieweditorDestroyedProc) =
  # TODO check subclass
  var tmp = new QListVieweditorDestroyedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_editorDestroyed(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_editorDestroyed(self: ptr cQListView, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QListView_editorDestroyed ".} =
  var nimfunc = cast[ptr QListVieweditorDestroyedProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: editor)


  nimfunc[](slotval1)
proc QListViewedit*(self: gen_qlistview_types.QListView, index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool =
  fQListView_virtualbase_edit2(self.h, index.h, cint(trigger), event.h)

type QListViewedit2Proc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool
proc onedit*(self: gen_qlistview_types.QListView, slot: QListViewedit2Proc) =
  # TODO check subclass
  var tmp = new QListViewedit2Proc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_edit2(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_edit2(self: ptr cQListView, slot: int, index: pointer, trigger: cint, event: pointer): bool {.exportc: "miqt_exec_callback_QListView_edit2 ".} =
  var nimfunc = cast[ptr QListViewedit2Proc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = cint(trigger)

  let slotval3 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QListViewselectionCommand*(self: gen_qlistview_types.QListView, index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint =
  cint(fQListView_virtualbase_selectionCommand(self.h, index.h, event.h))

type QListViewselectionCommandProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint
proc onselectionCommand*(self: gen_qlistview_types.QListView, slot: QListViewselectionCommandProc) =
  # TODO check subclass
  var tmp = new QListViewselectionCommandProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_selectionCommand(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_selectionCommand(self: ptr cQListView, slot: int, index: pointer, event: pointer): cint {.exportc: "miqt_exec_callback_QListView_selectionCommand ".} =
  var nimfunc = cast[ptr QListViewselectionCommandProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  cint(virtualReturn)
proc QListViewfocusNextPrevChild*(self: gen_qlistview_types.QListView, next: bool): bool =
  fQListView_virtualbase_focusNextPrevChild(self.h, next)

type QListViewfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qlistview_types.QListView, slot: QListViewfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QListViewfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_focusNextPrevChild(self: ptr cQListView, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QListView_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QListViewfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QListViewviewportEvent*(self: gen_qlistview_types.QListView, event: gen_qcoreevent_types.QEvent): bool =
  fQListView_virtualbase_viewportEvent(self.h, event.h)

type QListViewviewportEventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onviewportEvent*(self: gen_qlistview_types.QListView, slot: QListViewviewportEventProc) =
  # TODO check subclass
  var tmp = new QListViewviewportEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_viewportEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_viewportEvent(self: ptr cQListView, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QListView_viewportEvent ".} =
  var nimfunc = cast[ptr QListViewviewportEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QListViewmousePressEvent*(self: gen_qlistview_types.QListView, event: gen_qevent_types.QMouseEvent): void =
  fQListView_virtualbase_mousePressEvent(self.h, event.h)

type QListViewmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qlistview_types.QListView, slot: QListViewmousePressEventProc) =
  # TODO check subclass
  var tmp = new QListViewmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_mousePressEvent(self: ptr cQListView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListView_mousePressEvent ".} =
  var nimfunc = cast[ptr QListViewmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QListViewmouseDoubleClickEvent*(self: gen_qlistview_types.QListView, event: gen_qevent_types.QMouseEvent): void =
  fQListView_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QListViewmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qlistview_types.QListView, slot: QListViewmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QListViewmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_mouseDoubleClickEvent(self: ptr cQListView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListView_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QListViewmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QListViewdragEnterEvent*(self: gen_qlistview_types.QListView, event: gen_qevent_types.QDragEnterEvent): void =
  fQListView_virtualbase_dragEnterEvent(self.h, event.h)

type QListViewdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qlistview_types.QListView, slot: QListViewdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QListViewdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_dragEnterEvent(self: ptr cQListView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListView_dragEnterEvent ".} =
  var nimfunc = cast[ptr QListViewdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QListViewfocusInEvent*(self: gen_qlistview_types.QListView, event: gen_qevent_types.QFocusEvent): void =
  fQListView_virtualbase_focusInEvent(self.h, event.h)

type QListViewfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qlistview_types.QListView, slot: QListViewfocusInEventProc) =
  # TODO check subclass
  var tmp = new QListViewfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_focusInEvent(self: ptr cQListView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListView_focusInEvent ".} =
  var nimfunc = cast[ptr QListViewfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QListViewfocusOutEvent*(self: gen_qlistview_types.QListView, event: gen_qevent_types.QFocusEvent): void =
  fQListView_virtualbase_focusOutEvent(self.h, event.h)

type QListViewfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qlistview_types.QListView, slot: QListViewfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QListViewfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_focusOutEvent(self: ptr cQListView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListView_focusOutEvent ".} =
  var nimfunc = cast[ptr QListViewfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QListViewkeyPressEvent*(self: gen_qlistview_types.QListView, event: gen_qevent_types.QKeyEvent): void =
  fQListView_virtualbase_keyPressEvent(self.h, event.h)

type QListViewkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qlistview_types.QListView, slot: QListViewkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QListViewkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_keyPressEvent(self: ptr cQListView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListView_keyPressEvent ".} =
  var nimfunc = cast[ptr QListViewkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QListViewinputMethodEvent*(self: gen_qlistview_types.QListView, event: gen_qevent_types.QInputMethodEvent): void =
  fQListView_virtualbase_inputMethodEvent(self.h, event.h)

type QListViewinputMethodEventProc* = proc(event: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qlistview_types.QListView, slot: QListViewinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QListViewinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_inputMethodEvent(self: ptr cQListView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListView_inputMethodEvent ".} =
  var nimfunc = cast[ptr QListViewinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)


  nimfunc[](slotval1)
proc QListVieweventFilter*(self: gen_qlistview_types.QListView, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQListView_virtualbase_eventFilter(self.h, objectVal.h, event.h)

type QListVieweventFilterProc* = proc(objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qlistview_types.QListView, slot: QListVieweventFilterProc) =
  # TODO check subclass
  var tmp = new QListVieweventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_eventFilter(self: ptr cQListView, slot: int, objectVal: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QListView_eventFilter ".} =
  var nimfunc = cast[ptr QListVieweventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: objectVal)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QListViewminimumSizeHint*(self: gen_qlistview_types.QListView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQListView_virtualbase_minimumSizeHint(self.h))

type QListViewminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qlistview_types.QListView, slot: QListViewminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QListViewminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_minimumSizeHint(self: ptr cQListView, slot: int): pointer {.exportc: "miqt_exec_callback_QListView_minimumSizeHint ".} =
  var nimfunc = cast[ptr QListViewminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QListViewsizeHint*(self: gen_qlistview_types.QListView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQListView_virtualbase_sizeHint(self.h))

type QListViewsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qlistview_types.QListView, slot: QListViewsizeHintProc) =
  # TODO check subclass
  var tmp = new QListViewsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_sizeHint(self: ptr cQListView, slot: int): pointer {.exportc: "miqt_exec_callback_QListView_sizeHint ".} =
  var nimfunc = cast[ptr QListViewsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QListViewsetupViewport*(self: gen_qlistview_types.QListView, viewport: gen_qwidget_types.QWidget): void =
  fQListView_virtualbase_setupViewport(self.h, viewport.h)

type QListViewsetupViewportProc* = proc(viewport: gen_qwidget_types.QWidget): void
proc onsetupViewport*(self: gen_qlistview_types.QListView, slot: QListViewsetupViewportProc) =
  # TODO check subclass
  var tmp = new QListViewsetupViewportProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_setupViewport(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_setupViewport(self: ptr cQListView, slot: int, viewport: pointer): void {.exportc: "miqt_exec_callback_QListView_setupViewport ".} =
  var nimfunc = cast[ptr QListViewsetupViewportProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: viewport)


  nimfunc[](slotval1)
proc QListViewcontextMenuEvent*(self: gen_qlistview_types.QListView, param1: gen_qevent_types.QContextMenuEvent): void =
  fQListView_virtualbase_contextMenuEvent(self.h, param1.h)

type QListViewcontextMenuEventProc* = proc(param1: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qlistview_types.QListView, slot: QListViewcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QListViewcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_contextMenuEvent(self: ptr cQListView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QListView_contextMenuEvent ".} =
  var nimfunc = cast[ptr QListViewcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)


  nimfunc[](slotval1)
proc QListViewchangeEvent*(self: gen_qlistview_types.QListView, param1: gen_qcoreevent_types.QEvent): void =
  fQListView_virtualbase_changeEvent(self.h, param1.h)

type QListViewchangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qlistview_types.QListView, slot: QListViewchangeEventProc) =
  # TODO check subclass
  var tmp = new QListViewchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_changeEvent(self: ptr cQListView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QListView_changeEvent ".} =
  var nimfunc = cast[ptr QListViewchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QListViewdevType*(self: gen_qlistview_types.QListView, ): cint =
  fQListView_virtualbase_devType(self.h)

type QListViewdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qlistview_types.QListView, slot: QListViewdevTypeProc) =
  # TODO check subclass
  var tmp = new QListViewdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_devType(self: ptr cQListView, slot: int): cint {.exportc: "miqt_exec_callback_QListView_devType ".} =
  var nimfunc = cast[ptr QListViewdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QListViewsetVisible*(self: gen_qlistview_types.QListView, visible: bool): void =
  fQListView_virtualbase_setVisible(self.h, visible)

type QListViewsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qlistview_types.QListView, slot: QListViewsetVisibleProc) =
  # TODO check subclass
  var tmp = new QListViewsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_setVisible(self: ptr cQListView, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QListView_setVisible ".} =
  var nimfunc = cast[ptr QListViewsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QListViewheightForWidth*(self: gen_qlistview_types.QListView, param1: cint): cint =
  fQListView_virtualbase_heightForWidth(self.h, param1)

type QListViewheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qlistview_types.QListView, slot: QListViewheightForWidthProc) =
  # TODO check subclass
  var tmp = new QListViewheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_heightForWidth(self: ptr cQListView, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QListView_heightForWidth ".} =
  var nimfunc = cast[ptr QListViewheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QListViewhasHeightForWidth*(self: gen_qlistview_types.QListView, ): bool =
  fQListView_virtualbase_hasHeightForWidth(self.h)

type QListViewhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qlistview_types.QListView, slot: QListViewhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QListViewhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_hasHeightForWidth(self: ptr cQListView, slot: int): bool {.exportc: "miqt_exec_callback_QListView_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QListViewhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QListViewpaintEngine*(self: gen_qlistview_types.QListView, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQListView_virtualbase_paintEngine(self.h))

type QListViewpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qlistview_types.QListView, slot: QListViewpaintEngineProc) =
  # TODO check subclass
  var tmp = new QListViewpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_paintEngine(self: ptr cQListView, slot: int): pointer {.exportc: "miqt_exec_callback_QListView_paintEngine ".} =
  var nimfunc = cast[ptr QListViewpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QListViewkeyReleaseEvent*(self: gen_qlistview_types.QListView, event: gen_qevent_types.QKeyEvent): void =
  fQListView_virtualbase_keyReleaseEvent(self.h, event.h)

type QListViewkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qlistview_types.QListView, slot: QListViewkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QListViewkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_keyReleaseEvent(self: ptr cQListView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListView_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QListViewkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QListViewenterEvent*(self: gen_qlistview_types.QListView, event: gen_qcoreevent_types.QEvent): void =
  fQListView_virtualbase_enterEvent(self.h, event.h)

type QListViewenterEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onenterEvent*(self: gen_qlistview_types.QListView, slot: QListViewenterEventProc) =
  # TODO check subclass
  var tmp = new QListViewenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_enterEvent(self: ptr cQListView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListView_enterEvent ".} =
  var nimfunc = cast[ptr QListViewenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QListViewleaveEvent*(self: gen_qlistview_types.QListView, event: gen_qcoreevent_types.QEvent): void =
  fQListView_virtualbase_leaveEvent(self.h, event.h)

type QListViewleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qlistview_types.QListView, slot: QListViewleaveEventProc) =
  # TODO check subclass
  var tmp = new QListViewleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_leaveEvent(self: ptr cQListView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListView_leaveEvent ".} =
  var nimfunc = cast[ptr QListViewleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QListViewmoveEvent*(self: gen_qlistview_types.QListView, event: gen_qevent_types.QMoveEvent): void =
  fQListView_virtualbase_moveEvent(self.h, event.h)

type QListViewmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qlistview_types.QListView, slot: QListViewmoveEventProc) =
  # TODO check subclass
  var tmp = new QListViewmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_moveEvent(self: ptr cQListView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListView_moveEvent ".} =
  var nimfunc = cast[ptr QListViewmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QListViewcloseEvent*(self: gen_qlistview_types.QListView, event: gen_qevent_types.QCloseEvent): void =
  fQListView_virtualbase_closeEvent(self.h, event.h)

type QListViewcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qlistview_types.QListView, slot: QListViewcloseEventProc) =
  # TODO check subclass
  var tmp = new QListViewcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_closeEvent(self: ptr cQListView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListView_closeEvent ".} =
  var nimfunc = cast[ptr QListViewcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QListViewtabletEvent*(self: gen_qlistview_types.QListView, event: gen_qevent_types.QTabletEvent): void =
  fQListView_virtualbase_tabletEvent(self.h, event.h)

type QListViewtabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qlistview_types.QListView, slot: QListViewtabletEventProc) =
  # TODO check subclass
  var tmp = new QListViewtabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_tabletEvent(self: ptr cQListView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListView_tabletEvent ".} =
  var nimfunc = cast[ptr QListViewtabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QListViewactionEvent*(self: gen_qlistview_types.QListView, event: gen_qevent_types.QActionEvent): void =
  fQListView_virtualbase_actionEvent(self.h, event.h)

type QListViewactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qlistview_types.QListView, slot: QListViewactionEventProc) =
  # TODO check subclass
  var tmp = new QListViewactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_actionEvent(self: ptr cQListView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListView_actionEvent ".} =
  var nimfunc = cast[ptr QListViewactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QListViewshowEvent*(self: gen_qlistview_types.QListView, event: gen_qevent_types.QShowEvent): void =
  fQListView_virtualbase_showEvent(self.h, event.h)

type QListViewshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qlistview_types.QListView, slot: QListViewshowEventProc) =
  # TODO check subclass
  var tmp = new QListViewshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_showEvent(self: ptr cQListView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListView_showEvent ".} =
  var nimfunc = cast[ptr QListViewshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QListViewhideEvent*(self: gen_qlistview_types.QListView, event: gen_qevent_types.QHideEvent): void =
  fQListView_virtualbase_hideEvent(self.h, event.h)

type QListViewhideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qlistview_types.QListView, slot: QListViewhideEventProc) =
  # TODO check subclass
  var tmp = new QListViewhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_hideEvent(self: ptr cQListView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListView_hideEvent ".} =
  var nimfunc = cast[ptr QListViewhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QListViewnativeEvent*(self: gen_qlistview_types.QListView, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fQListView_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QListViewnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: gen_qlistview_types.QListView, slot: QListViewnativeEventProc) =
  # TODO check subclass
  var tmp = new QListViewnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_nativeEvent(self: ptr cQListView, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QListView_nativeEvent ".} =
  var nimfunc = cast[ptr QListViewnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QListViewmetric*(self: gen_qlistview_types.QListView, param1: cint): cint =
  fQListView_virtualbase_metric(self.h, cint(param1))

type QListViewmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qlistview_types.QListView, slot: QListViewmetricProc) =
  # TODO check subclass
  var tmp = new QListViewmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_metric(self: ptr cQListView, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QListView_metric ".} =
  var nimfunc = cast[ptr QListViewmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QListViewinitPainter*(self: gen_qlistview_types.QListView, painter: gen_qpainter_types.QPainter): void =
  fQListView_virtualbase_initPainter(self.h, painter.h)

type QListViewinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qlistview_types.QListView, slot: QListViewinitPainterProc) =
  # TODO check subclass
  var tmp = new QListViewinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_initPainter(self: ptr cQListView, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QListView_initPainter ".} =
  var nimfunc = cast[ptr QListViewinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QListViewredirected*(self: gen_qlistview_types.QListView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQListView_virtualbase_redirected(self.h, offset.h))

type QListViewredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qlistview_types.QListView, slot: QListViewredirectedProc) =
  # TODO check subclass
  var tmp = new QListViewredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_redirected(self: ptr cQListView, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QListView_redirected ".} =
  var nimfunc = cast[ptr QListViewredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QListViewsharedPainter*(self: gen_qlistview_types.QListView, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQListView_virtualbase_sharedPainter(self.h))

type QListViewsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qlistview_types.QListView, slot: QListViewsharedPainterProc) =
  # TODO check subclass
  var tmp = new QListViewsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_sharedPainter(self: ptr cQListView, slot: int): pointer {.exportc: "miqt_exec_callback_QListView_sharedPainter ".} =
  var nimfunc = cast[ptr QListViewsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QListViewchildEvent*(self: gen_qlistview_types.QListView, event: gen_qcoreevent_types.QChildEvent): void =
  fQListView_virtualbase_childEvent(self.h, event.h)

type QListViewchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qlistview_types.QListView, slot: QListViewchildEventProc) =
  # TODO check subclass
  var tmp = new QListViewchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_childEvent(self: ptr cQListView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListView_childEvent ".} =
  var nimfunc = cast[ptr QListViewchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QListViewcustomEvent*(self: gen_qlistview_types.QListView, event: gen_qcoreevent_types.QEvent): void =
  fQListView_virtualbase_customEvent(self.h, event.h)

type QListViewcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qlistview_types.QListView, slot: QListViewcustomEventProc) =
  # TODO check subclass
  var tmp = new QListViewcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_customEvent(self: ptr cQListView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListView_customEvent ".} =
  var nimfunc = cast[ptr QListViewcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QListViewconnectNotify*(self: gen_qlistview_types.QListView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQListView_virtualbase_connectNotify(self.h, signal.h)

type QListViewconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qlistview_types.QListView, slot: QListViewconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QListViewconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_connectNotify(self: ptr cQListView, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QListView_connectNotify ".} =
  var nimfunc = cast[ptr QListViewconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QListViewdisconnectNotify*(self: gen_qlistview_types.QListView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQListView_virtualbase_disconnectNotify(self.h, signal.h)

type QListViewdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qlistview_types.QListView, slot: QListViewdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QListViewdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_disconnectNotify(self: ptr cQListView, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QListView_disconnectNotify ".} =
  var nimfunc = cast[ptr QListViewdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qlistview_types.QListView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQListView_staticMetaObject())
proc delete*(self: gen_qlistview_types.QListView) =
  fcQListView_delete(self.h)
