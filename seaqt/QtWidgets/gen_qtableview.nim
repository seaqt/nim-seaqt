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
{.compile("gen_qtableview.cpp", cflags).}


import ./gen_qtableview_types
export gen_qtableview_types

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
  ./gen_qabstractitemview,
  ./gen_qheaderview_types,
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
  gen_qabstractitemview,
  gen_qheaderview_types,
  gen_qstyleoption_types,
  gen_qwidget_types

type cQTableView*{.exportc: "QTableView", incompleteStruct.} = object

proc fcQTableView_new(parent: pointer): ptr cQTableView {.importc: "QTableView_new".}
proc fcQTableView_new2(): ptr cQTableView {.importc: "QTableView_new2".}
proc fcQTableView_metaObject(self: pointer, ): pointer {.importc: "QTableView_metaObject".}
proc fcQTableView_metacast(self: pointer, param1: cstring): pointer {.importc: "QTableView_metacast".}
proc fcQTableView_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTableView_metacall".}
proc fcQTableView_tr(s: cstring): struct_miqt_string {.importc: "QTableView_tr".}
proc fcQTableView_setModel(self: pointer, model: pointer): void {.importc: "QTableView_setModel".}
proc fcQTableView_setRootIndex(self: pointer, index: pointer): void {.importc: "QTableView_setRootIndex".}
proc fcQTableView_setSelectionModel(self: pointer, selectionModel: pointer): void {.importc: "QTableView_setSelectionModel".}
proc fcQTableView_doItemsLayout(self: pointer, ): void {.importc: "QTableView_doItemsLayout".}
proc fcQTableView_horizontalHeader(self: pointer, ): pointer {.importc: "QTableView_horizontalHeader".}
proc fcQTableView_verticalHeader(self: pointer, ): pointer {.importc: "QTableView_verticalHeader".}
proc fcQTableView_setHorizontalHeader(self: pointer, header: pointer): void {.importc: "QTableView_setHorizontalHeader".}
proc fcQTableView_setVerticalHeader(self: pointer, header: pointer): void {.importc: "QTableView_setVerticalHeader".}
proc fcQTableView_rowViewportPosition(self: pointer, row: cint): cint {.importc: "QTableView_rowViewportPosition".}
proc fcQTableView_rowAt(self: pointer, y: cint): cint {.importc: "QTableView_rowAt".}
proc fcQTableView_setRowHeight(self: pointer, row: cint, height: cint): void {.importc: "QTableView_setRowHeight".}
proc fcQTableView_rowHeight(self: pointer, row: cint): cint {.importc: "QTableView_rowHeight".}
proc fcQTableView_columnViewportPosition(self: pointer, column: cint): cint {.importc: "QTableView_columnViewportPosition".}
proc fcQTableView_columnAt(self: pointer, x: cint): cint {.importc: "QTableView_columnAt".}
proc fcQTableView_setColumnWidth(self: pointer, column: cint, width: cint): void {.importc: "QTableView_setColumnWidth".}
proc fcQTableView_columnWidth(self: pointer, column: cint): cint {.importc: "QTableView_columnWidth".}
proc fcQTableView_isRowHidden(self: pointer, row: cint): bool {.importc: "QTableView_isRowHidden".}
proc fcQTableView_setRowHidden(self: pointer, row: cint, hide: bool): void {.importc: "QTableView_setRowHidden".}
proc fcQTableView_isColumnHidden(self: pointer, column: cint): bool {.importc: "QTableView_isColumnHidden".}
proc fcQTableView_setColumnHidden(self: pointer, column: cint, hide: bool): void {.importc: "QTableView_setColumnHidden".}
proc fcQTableView_setSortingEnabled(self: pointer, enable: bool): void {.importc: "QTableView_setSortingEnabled".}
proc fcQTableView_isSortingEnabled(self: pointer, ): bool {.importc: "QTableView_isSortingEnabled".}
proc fcQTableView_showGrid(self: pointer, ): bool {.importc: "QTableView_showGrid".}
proc fcQTableView_gridStyle(self: pointer, ): cint {.importc: "QTableView_gridStyle".}
proc fcQTableView_setGridStyle(self: pointer, style: cint): void {.importc: "QTableView_setGridStyle".}
proc fcQTableView_setWordWrap(self: pointer, on: bool): void {.importc: "QTableView_setWordWrap".}
proc fcQTableView_wordWrap(self: pointer, ): bool {.importc: "QTableView_wordWrap".}
proc fcQTableView_setCornerButtonEnabled(self: pointer, enable: bool): void {.importc: "QTableView_setCornerButtonEnabled".}
proc fcQTableView_isCornerButtonEnabled(self: pointer, ): bool {.importc: "QTableView_isCornerButtonEnabled".}
proc fcQTableView_visualRect(self: pointer, index: pointer): pointer {.importc: "QTableView_visualRect".}
proc fcQTableView_scrollTo(self: pointer, index: pointer, hint: cint): void {.importc: "QTableView_scrollTo".}
proc fcQTableView_indexAt(self: pointer, p: pointer): pointer {.importc: "QTableView_indexAt".}
proc fcQTableView_setSpan(self: pointer, row: cint, column: cint, rowSpan: cint, columnSpan: cint): void {.importc: "QTableView_setSpan".}
proc fcQTableView_rowSpan(self: pointer, row: cint, column: cint): cint {.importc: "QTableView_rowSpan".}
proc fcQTableView_columnSpan(self: pointer, row: cint, column: cint): cint {.importc: "QTableView_columnSpan".}
proc fcQTableView_clearSpans(self: pointer, ): void {.importc: "QTableView_clearSpans".}
proc fcQTableView_selectRow(self: pointer, row: cint): void {.importc: "QTableView_selectRow".}
proc fcQTableView_selectColumn(self: pointer, column: cint): void {.importc: "QTableView_selectColumn".}
proc fcQTableView_hideRow(self: pointer, row: cint): void {.importc: "QTableView_hideRow".}
proc fcQTableView_hideColumn(self: pointer, column: cint): void {.importc: "QTableView_hideColumn".}
proc fcQTableView_showRow(self: pointer, row: cint): void {.importc: "QTableView_showRow".}
proc fcQTableView_showColumn(self: pointer, column: cint): void {.importc: "QTableView_showColumn".}
proc fcQTableView_resizeRowToContents(self: pointer, row: cint): void {.importc: "QTableView_resizeRowToContents".}
proc fcQTableView_resizeRowsToContents(self: pointer, ): void {.importc: "QTableView_resizeRowsToContents".}
proc fcQTableView_resizeColumnToContents(self: pointer, column: cint): void {.importc: "QTableView_resizeColumnToContents".}
proc fcQTableView_resizeColumnsToContents(self: pointer, ): void {.importc: "QTableView_resizeColumnsToContents".}
proc fcQTableView_sortByColumn(self: pointer, column: cint, order: cint): void {.importc: "QTableView_sortByColumn".}
proc fcQTableView_setShowGrid(self: pointer, show: bool): void {.importc: "QTableView_setShowGrid".}
proc fcQTableView_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTableView_tr2".}
proc fcQTableView_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTableView_tr3".}
proc fQTableView_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QTableView_virtualbase_metaObject".}
proc fcQTableView_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QTableView_override_virtual_metaObject".}
proc fQTableView_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QTableView_virtualbase_metacast".}
proc fcQTableView_override_virtual_metacast(self: pointer, slot: int) {.importc: "QTableView_override_virtual_metacast".}
proc fQTableView_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QTableView_virtualbase_metacall".}
proc fcQTableView_override_virtual_metacall(self: pointer, slot: int) {.importc: "QTableView_override_virtual_metacall".}
proc fQTableView_virtualbase_setModel(self: pointer, model: pointer): void{.importc: "QTableView_virtualbase_setModel".}
proc fcQTableView_override_virtual_setModel(self: pointer, slot: int) {.importc: "QTableView_override_virtual_setModel".}
proc fQTableView_virtualbase_setRootIndex(self: pointer, index: pointer): void{.importc: "QTableView_virtualbase_setRootIndex".}
proc fcQTableView_override_virtual_setRootIndex(self: pointer, slot: int) {.importc: "QTableView_override_virtual_setRootIndex".}
proc fQTableView_virtualbase_setSelectionModel(self: pointer, selectionModel: pointer): void{.importc: "QTableView_virtualbase_setSelectionModel".}
proc fcQTableView_override_virtual_setSelectionModel(self: pointer, slot: int) {.importc: "QTableView_override_virtual_setSelectionModel".}
proc fQTableView_virtualbase_doItemsLayout(self: pointer, ): void{.importc: "QTableView_virtualbase_doItemsLayout".}
proc fcQTableView_override_virtual_doItemsLayout(self: pointer, slot: int) {.importc: "QTableView_override_virtual_doItemsLayout".}
proc fQTableView_virtualbase_visualRect(self: pointer, index: pointer): pointer{.importc: "QTableView_virtualbase_visualRect".}
proc fcQTableView_override_virtual_visualRect(self: pointer, slot: int) {.importc: "QTableView_override_virtual_visualRect".}
proc fQTableView_virtualbase_scrollTo(self: pointer, index: pointer, hint: cint): void{.importc: "QTableView_virtualbase_scrollTo".}
proc fcQTableView_override_virtual_scrollTo(self: pointer, slot: int) {.importc: "QTableView_override_virtual_scrollTo".}
proc fQTableView_virtualbase_indexAt(self: pointer, p: pointer): pointer{.importc: "QTableView_virtualbase_indexAt".}
proc fcQTableView_override_virtual_indexAt(self: pointer, slot: int) {.importc: "QTableView_override_virtual_indexAt".}
proc fQTableView_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void{.importc: "QTableView_virtualbase_scrollContentsBy".}
proc fcQTableView_override_virtual_scrollContentsBy(self: pointer, slot: int) {.importc: "QTableView_override_virtual_scrollContentsBy".}
proc fQTableView_virtualbase_initViewItemOption(self: pointer, option: pointer): void{.importc: "QTableView_virtualbase_initViewItemOption".}
proc fcQTableView_override_virtual_initViewItemOption(self: pointer, slot: int) {.importc: "QTableView_override_virtual_initViewItemOption".}
proc fQTableView_virtualbase_paintEvent(self: pointer, e: pointer): void{.importc: "QTableView_virtualbase_paintEvent".}
proc fcQTableView_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_paintEvent".}
proc fQTableView_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_timerEvent".}
proc fcQTableView_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_timerEvent".}
proc fQTableView_virtualbase_horizontalOffset(self: pointer, ): cint{.importc: "QTableView_virtualbase_horizontalOffset".}
proc fcQTableView_override_virtual_horizontalOffset(self: pointer, slot: int) {.importc: "QTableView_override_virtual_horizontalOffset".}
proc fQTableView_virtualbase_verticalOffset(self: pointer, ): cint{.importc: "QTableView_virtualbase_verticalOffset".}
proc fcQTableView_override_virtual_verticalOffset(self: pointer, slot: int) {.importc: "QTableView_override_virtual_verticalOffset".}
proc fQTableView_virtualbase_moveCursor(self: pointer, cursorAction: cint, modifiers: cint): pointer{.importc: "QTableView_virtualbase_moveCursor".}
proc fcQTableView_override_virtual_moveCursor(self: pointer, slot: int) {.importc: "QTableView_override_virtual_moveCursor".}
proc fQTableView_virtualbase_setSelection(self: pointer, rect: pointer, command: cint): void{.importc: "QTableView_virtualbase_setSelection".}
proc fcQTableView_override_virtual_setSelection(self: pointer, slot: int) {.importc: "QTableView_override_virtual_setSelection".}
proc fQTableView_virtualbase_visualRegionForSelection(self: pointer, selection: pointer): pointer{.importc: "QTableView_virtualbase_visualRegionForSelection".}
proc fcQTableView_override_virtual_visualRegionForSelection(self: pointer, slot: int) {.importc: "QTableView_override_virtual_visualRegionForSelection".}
proc fQTableView_virtualbase_selectedIndexes(self: pointer, ): struct_miqt_array{.importc: "QTableView_virtualbase_selectedIndexes".}
proc fcQTableView_override_virtual_selectedIndexes(self: pointer, slot: int) {.importc: "QTableView_override_virtual_selectedIndexes".}
proc fQTableView_virtualbase_updateGeometries(self: pointer, ): void{.importc: "QTableView_virtualbase_updateGeometries".}
proc fcQTableView_override_virtual_updateGeometries(self: pointer, slot: int) {.importc: "QTableView_override_virtual_updateGeometries".}
proc fQTableView_virtualbase_viewportSizeHint(self: pointer, ): pointer{.importc: "QTableView_virtualbase_viewportSizeHint".}
proc fcQTableView_override_virtual_viewportSizeHint(self: pointer, slot: int) {.importc: "QTableView_override_virtual_viewportSizeHint".}
proc fQTableView_virtualbase_sizeHintForRow(self: pointer, row: cint): cint{.importc: "QTableView_virtualbase_sizeHintForRow".}
proc fcQTableView_override_virtual_sizeHintForRow(self: pointer, slot: int) {.importc: "QTableView_override_virtual_sizeHintForRow".}
proc fQTableView_virtualbase_sizeHintForColumn(self: pointer, column: cint): cint{.importc: "QTableView_virtualbase_sizeHintForColumn".}
proc fcQTableView_override_virtual_sizeHintForColumn(self: pointer, slot: int) {.importc: "QTableView_override_virtual_sizeHintForColumn".}
proc fQTableView_virtualbase_verticalScrollbarAction(self: pointer, action: cint): void{.importc: "QTableView_virtualbase_verticalScrollbarAction".}
proc fcQTableView_override_virtual_verticalScrollbarAction(self: pointer, slot: int) {.importc: "QTableView_override_virtual_verticalScrollbarAction".}
proc fQTableView_virtualbase_horizontalScrollbarAction(self: pointer, action: cint): void{.importc: "QTableView_virtualbase_horizontalScrollbarAction".}
proc fcQTableView_override_virtual_horizontalScrollbarAction(self: pointer, slot: int) {.importc: "QTableView_override_virtual_horizontalScrollbarAction".}
proc fQTableView_virtualbase_isIndexHidden(self: pointer, index: pointer): bool{.importc: "QTableView_virtualbase_isIndexHidden".}
proc fcQTableView_override_virtual_isIndexHidden(self: pointer, slot: int) {.importc: "QTableView_override_virtual_isIndexHidden".}
proc fQTableView_virtualbase_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void{.importc: "QTableView_virtualbase_selectionChanged".}
proc fcQTableView_override_virtual_selectionChanged(self: pointer, slot: int) {.importc: "QTableView_override_virtual_selectionChanged".}
proc fQTableView_virtualbase_currentChanged(self: pointer, current: pointer, previous: pointer): void{.importc: "QTableView_virtualbase_currentChanged".}
proc fcQTableView_override_virtual_currentChanged(self: pointer, slot: int) {.importc: "QTableView_override_virtual_currentChanged".}
proc fQTableView_virtualbase_keyboardSearch(self: pointer, search: struct_miqt_string): void{.importc: "QTableView_virtualbase_keyboardSearch".}
proc fcQTableView_override_virtual_keyboardSearch(self: pointer, slot: int) {.importc: "QTableView_override_virtual_keyboardSearch".}
proc fQTableView_virtualbase_itemDelegateForIndex(self: pointer, index: pointer): pointer{.importc: "QTableView_virtualbase_itemDelegateForIndex".}
proc fcQTableView_override_virtual_itemDelegateForIndex(self: pointer, slot: int) {.importc: "QTableView_override_virtual_itemDelegateForIndex".}
proc fQTableView_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QTableView_virtualbase_inputMethodQuery".}
proc fcQTableView_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QTableView_override_virtual_inputMethodQuery".}
proc fQTableView_virtualbase_reset(self: pointer, ): void{.importc: "QTableView_virtualbase_reset".}
proc fcQTableView_override_virtual_reset(self: pointer, slot: int) {.importc: "QTableView_override_virtual_reset".}
proc fQTableView_virtualbase_selectAll(self: pointer, ): void{.importc: "QTableView_virtualbase_selectAll".}
proc fcQTableView_override_virtual_selectAll(self: pointer, slot: int) {.importc: "QTableView_override_virtual_selectAll".}
proc fQTableView_virtualbase_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void{.importc: "QTableView_virtualbase_dataChanged".}
proc fcQTableView_override_virtual_dataChanged(self: pointer, slot: int) {.importc: "QTableView_override_virtual_dataChanged".}
proc fQTableView_virtualbase_rowsInserted(self: pointer, parent: pointer, start: cint, endVal: cint): void{.importc: "QTableView_virtualbase_rowsInserted".}
proc fcQTableView_override_virtual_rowsInserted(self: pointer, slot: int) {.importc: "QTableView_override_virtual_rowsInserted".}
proc fQTableView_virtualbase_rowsAboutToBeRemoved(self: pointer, parent: pointer, start: cint, endVal: cint): void{.importc: "QTableView_virtualbase_rowsAboutToBeRemoved".}
proc fcQTableView_override_virtual_rowsAboutToBeRemoved(self: pointer, slot: int) {.importc: "QTableView_override_virtual_rowsAboutToBeRemoved".}
proc fQTableView_virtualbase_updateEditorData(self: pointer, ): void{.importc: "QTableView_virtualbase_updateEditorData".}
proc fcQTableView_override_virtual_updateEditorData(self: pointer, slot: int) {.importc: "QTableView_override_virtual_updateEditorData".}
proc fQTableView_virtualbase_updateEditorGeometries(self: pointer, ): void{.importc: "QTableView_virtualbase_updateEditorGeometries".}
proc fcQTableView_override_virtual_updateEditorGeometries(self: pointer, slot: int) {.importc: "QTableView_override_virtual_updateEditorGeometries".}
proc fQTableView_virtualbase_verticalScrollbarValueChanged(self: pointer, value: cint): void{.importc: "QTableView_virtualbase_verticalScrollbarValueChanged".}
proc fcQTableView_override_virtual_verticalScrollbarValueChanged(self: pointer, slot: int) {.importc: "QTableView_override_virtual_verticalScrollbarValueChanged".}
proc fQTableView_virtualbase_horizontalScrollbarValueChanged(self: pointer, value: cint): void{.importc: "QTableView_virtualbase_horizontalScrollbarValueChanged".}
proc fcQTableView_override_virtual_horizontalScrollbarValueChanged(self: pointer, slot: int) {.importc: "QTableView_override_virtual_horizontalScrollbarValueChanged".}
proc fQTableView_virtualbase_closeEditor(self: pointer, editor: pointer, hint: cint): void{.importc: "QTableView_virtualbase_closeEditor".}
proc fcQTableView_override_virtual_closeEditor(self: pointer, slot: int) {.importc: "QTableView_override_virtual_closeEditor".}
proc fQTableView_virtualbase_commitData(self: pointer, editor: pointer): void{.importc: "QTableView_virtualbase_commitData".}
proc fcQTableView_override_virtual_commitData(self: pointer, slot: int) {.importc: "QTableView_override_virtual_commitData".}
proc fQTableView_virtualbase_editorDestroyed(self: pointer, editor: pointer): void{.importc: "QTableView_virtualbase_editorDestroyed".}
proc fcQTableView_override_virtual_editorDestroyed(self: pointer, slot: int) {.importc: "QTableView_override_virtual_editorDestroyed".}
proc fQTableView_virtualbase_edit2(self: pointer, index: pointer, trigger: cint, event: pointer): bool{.importc: "QTableView_virtualbase_edit2".}
proc fcQTableView_override_virtual_edit2(self: pointer, slot: int) {.importc: "QTableView_override_virtual_edit2".}
proc fQTableView_virtualbase_selectionCommand(self: pointer, index: pointer, event: pointer): cint{.importc: "QTableView_virtualbase_selectionCommand".}
proc fcQTableView_override_virtual_selectionCommand(self: pointer, slot: int) {.importc: "QTableView_override_virtual_selectionCommand".}
proc fQTableView_virtualbase_startDrag(self: pointer, supportedActions: cint): void{.importc: "QTableView_virtualbase_startDrag".}
proc fcQTableView_override_virtual_startDrag(self: pointer, slot: int) {.importc: "QTableView_override_virtual_startDrag".}
proc fQTableView_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QTableView_virtualbase_focusNextPrevChild".}
proc fcQTableView_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QTableView_override_virtual_focusNextPrevChild".}
proc fQTableView_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QTableView_virtualbase_event".}
proc fcQTableView_override_virtual_event(self: pointer, slot: int) {.importc: "QTableView_override_virtual_event".}
proc fQTableView_virtualbase_viewportEvent(self: pointer, event: pointer): bool{.importc: "QTableView_virtualbase_viewportEvent".}
proc fcQTableView_override_virtual_viewportEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_viewportEvent".}
proc fQTableView_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_mousePressEvent".}
proc fcQTableView_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_mousePressEvent".}
proc fQTableView_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_mouseMoveEvent".}
proc fcQTableView_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_mouseMoveEvent".}
proc fQTableView_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_mouseReleaseEvent".}
proc fcQTableView_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_mouseReleaseEvent".}
proc fQTableView_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_mouseDoubleClickEvent".}
proc fcQTableView_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_mouseDoubleClickEvent".}
proc fQTableView_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_dragEnterEvent".}
proc fcQTableView_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_dragEnterEvent".}
proc fQTableView_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_dragMoveEvent".}
proc fcQTableView_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_dragMoveEvent".}
proc fQTableView_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_dragLeaveEvent".}
proc fcQTableView_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_dragLeaveEvent".}
proc fQTableView_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_dropEvent".}
proc fcQTableView_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_dropEvent".}
proc fQTableView_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_focusInEvent".}
proc fcQTableView_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_focusInEvent".}
proc fQTableView_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_focusOutEvent".}
proc fcQTableView_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_focusOutEvent".}
proc fQTableView_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_keyPressEvent".}
proc fcQTableView_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_keyPressEvent".}
proc fQTableView_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_resizeEvent".}
proc fcQTableView_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_resizeEvent".}
proc fQTableView_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_inputMethodEvent".}
proc fcQTableView_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_inputMethodEvent".}
proc fQTableView_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool{.importc: "QTableView_virtualbase_eventFilter".}
proc fcQTableView_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QTableView_override_virtual_eventFilter".}
proc fQTableView_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QTableView_virtualbase_minimumSizeHint".}
proc fcQTableView_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QTableView_override_virtual_minimumSizeHint".}
proc fQTableView_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QTableView_virtualbase_sizeHint".}
proc fcQTableView_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QTableView_override_virtual_sizeHint".}
proc fQTableView_virtualbase_setupViewport(self: pointer, viewport: pointer): void{.importc: "QTableView_virtualbase_setupViewport".}
proc fcQTableView_override_virtual_setupViewport(self: pointer, slot: int) {.importc: "QTableView_override_virtual_setupViewport".}
proc fQTableView_virtualbase_wheelEvent(self: pointer, param1: pointer): void{.importc: "QTableView_virtualbase_wheelEvent".}
proc fcQTableView_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_wheelEvent".}
proc fQTableView_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QTableView_virtualbase_contextMenuEvent".}
proc fcQTableView_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_contextMenuEvent".}
proc fQTableView_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QTableView_virtualbase_changeEvent".}
proc fcQTableView_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_changeEvent".}
proc fQTableView_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QTableView_virtualbase_initStyleOption".}
proc fcQTableView_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QTableView_override_virtual_initStyleOption".}
proc fQTableView_virtualbase_devType(self: pointer, ): cint{.importc: "QTableView_virtualbase_devType".}
proc fcQTableView_override_virtual_devType(self: pointer, slot: int) {.importc: "QTableView_override_virtual_devType".}
proc fQTableView_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QTableView_virtualbase_setVisible".}
proc fcQTableView_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QTableView_override_virtual_setVisible".}
proc fQTableView_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QTableView_virtualbase_heightForWidth".}
proc fcQTableView_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QTableView_override_virtual_heightForWidth".}
proc fQTableView_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QTableView_virtualbase_hasHeightForWidth".}
proc fcQTableView_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QTableView_override_virtual_hasHeightForWidth".}
proc fQTableView_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QTableView_virtualbase_paintEngine".}
proc fcQTableView_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QTableView_override_virtual_paintEngine".}
proc fQTableView_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_keyReleaseEvent".}
proc fcQTableView_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_keyReleaseEvent".}
proc fQTableView_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_enterEvent".}
proc fcQTableView_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_enterEvent".}
proc fQTableView_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_leaveEvent".}
proc fcQTableView_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_leaveEvent".}
proc fQTableView_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_moveEvent".}
proc fcQTableView_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_moveEvent".}
proc fQTableView_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_closeEvent".}
proc fcQTableView_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_closeEvent".}
proc fQTableView_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_tabletEvent".}
proc fcQTableView_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_tabletEvent".}
proc fQTableView_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_actionEvent".}
proc fcQTableView_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_actionEvent".}
proc fQTableView_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_showEvent".}
proc fcQTableView_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_showEvent".}
proc fQTableView_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_hideEvent".}
proc fcQTableView_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_hideEvent".}
proc fQTableView_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QTableView_virtualbase_nativeEvent".}
proc fcQTableView_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_nativeEvent".}
proc fQTableView_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QTableView_virtualbase_metric".}
proc fcQTableView_override_virtual_metric(self: pointer, slot: int) {.importc: "QTableView_override_virtual_metric".}
proc fQTableView_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QTableView_virtualbase_initPainter".}
proc fcQTableView_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QTableView_override_virtual_initPainter".}
proc fQTableView_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QTableView_virtualbase_redirected".}
proc fcQTableView_override_virtual_redirected(self: pointer, slot: int) {.importc: "QTableView_override_virtual_redirected".}
proc fQTableView_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QTableView_virtualbase_sharedPainter".}
proc fcQTableView_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QTableView_override_virtual_sharedPainter".}
proc fQTableView_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_childEvent".}
proc fcQTableView_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_childEvent".}
proc fQTableView_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_customEvent".}
proc fcQTableView_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_customEvent".}
proc fQTableView_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QTableView_virtualbase_connectNotify".}
proc fcQTableView_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QTableView_override_virtual_connectNotify".}
proc fQTableView_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QTableView_virtualbase_disconnectNotify".}
proc fcQTableView_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QTableView_override_virtual_disconnectNotify".}
proc fcQTableView_staticMetaObject(): pointer {.importc: "QTableView_staticMetaObject".}
proc fcQTableView_delete(self: pointer) {.importc: "QTableView_delete".}


func init*(T: type gen_qtableview_types.QTableView, h: ptr cQTableView): gen_qtableview_types.QTableView =
  T(h: h)
proc create*(T: type gen_qtableview_types.QTableView, parent: gen_qwidget_types.QWidget): gen_qtableview_types.QTableView =
  gen_qtableview_types.QTableView.init(fcQTableView_new(parent.h))

proc create*(T: type gen_qtableview_types.QTableView, ): gen_qtableview_types.QTableView =
  gen_qtableview_types.QTableView.init(fcQTableView_new2())

proc metaObject*(self: gen_qtableview_types.QTableView, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTableView_metaObject(self.h))

proc metacast*(self: gen_qtableview_types.QTableView, param1: cstring): pointer =
  fcQTableView_metacast(self.h, param1)

proc metacall*(self: gen_qtableview_types.QTableView, param1: cint, param2: cint, param3: pointer): cint =
  fcQTableView_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qtableview_types.QTableView, s: cstring): string =
  let v_ms = fcQTableView_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setModel*(self: gen_qtableview_types.QTableView, model: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQTableView_setModel(self.h, model.h)

proc setRootIndex*(self: gen_qtableview_types.QTableView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQTableView_setRootIndex(self.h, index.h)

proc setSelectionModel*(self: gen_qtableview_types.QTableView, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void =
  fcQTableView_setSelectionModel(self.h, selectionModel.h)

proc doItemsLayout*(self: gen_qtableview_types.QTableView, ): void =
  fcQTableView_doItemsLayout(self.h)

proc horizontalHeader*(self: gen_qtableview_types.QTableView, ): gen_qheaderview_types.QHeaderView =
  gen_qheaderview_types.QHeaderView(h: fcQTableView_horizontalHeader(self.h))

proc verticalHeader*(self: gen_qtableview_types.QTableView, ): gen_qheaderview_types.QHeaderView =
  gen_qheaderview_types.QHeaderView(h: fcQTableView_verticalHeader(self.h))

proc setHorizontalHeader*(self: gen_qtableview_types.QTableView, header: gen_qheaderview_types.QHeaderView): void =
  fcQTableView_setHorizontalHeader(self.h, header.h)

proc setVerticalHeader*(self: gen_qtableview_types.QTableView, header: gen_qheaderview_types.QHeaderView): void =
  fcQTableView_setVerticalHeader(self.h, header.h)

proc rowViewportPosition*(self: gen_qtableview_types.QTableView, row: cint): cint =
  fcQTableView_rowViewportPosition(self.h, row)

proc rowAt*(self: gen_qtableview_types.QTableView, y: cint): cint =
  fcQTableView_rowAt(self.h, y)

proc setRowHeight*(self: gen_qtableview_types.QTableView, row: cint, height: cint): void =
  fcQTableView_setRowHeight(self.h, row, height)

proc rowHeight*(self: gen_qtableview_types.QTableView, row: cint): cint =
  fcQTableView_rowHeight(self.h, row)

proc columnViewportPosition*(self: gen_qtableview_types.QTableView, column: cint): cint =
  fcQTableView_columnViewportPosition(self.h, column)

proc columnAt*(self: gen_qtableview_types.QTableView, x: cint): cint =
  fcQTableView_columnAt(self.h, x)

proc setColumnWidth*(self: gen_qtableview_types.QTableView, column: cint, width: cint): void =
  fcQTableView_setColumnWidth(self.h, column, width)

proc columnWidth*(self: gen_qtableview_types.QTableView, column: cint): cint =
  fcQTableView_columnWidth(self.h, column)

proc isRowHidden*(self: gen_qtableview_types.QTableView, row: cint): bool =
  fcQTableView_isRowHidden(self.h, row)

proc setRowHidden*(self: gen_qtableview_types.QTableView, row: cint, hide: bool): void =
  fcQTableView_setRowHidden(self.h, row, hide)

proc isColumnHidden*(self: gen_qtableview_types.QTableView, column: cint): bool =
  fcQTableView_isColumnHidden(self.h, column)

proc setColumnHidden*(self: gen_qtableview_types.QTableView, column: cint, hide: bool): void =
  fcQTableView_setColumnHidden(self.h, column, hide)

proc setSortingEnabled*(self: gen_qtableview_types.QTableView, enable: bool): void =
  fcQTableView_setSortingEnabled(self.h, enable)

proc isSortingEnabled*(self: gen_qtableview_types.QTableView, ): bool =
  fcQTableView_isSortingEnabled(self.h)

proc showGrid*(self: gen_qtableview_types.QTableView, ): bool =
  fcQTableView_showGrid(self.h)

proc gridStyle*(self: gen_qtableview_types.QTableView, ): cint =
  cint(fcQTableView_gridStyle(self.h))

proc setGridStyle*(self: gen_qtableview_types.QTableView, style: cint): void =
  fcQTableView_setGridStyle(self.h, cint(style))

proc setWordWrap*(self: gen_qtableview_types.QTableView, on: bool): void =
  fcQTableView_setWordWrap(self.h, on)

proc wordWrap*(self: gen_qtableview_types.QTableView, ): bool =
  fcQTableView_wordWrap(self.h)

proc setCornerButtonEnabled*(self: gen_qtableview_types.QTableView, enable: bool): void =
  fcQTableView_setCornerButtonEnabled(self.h, enable)

proc isCornerButtonEnabled*(self: gen_qtableview_types.QTableView, ): bool =
  fcQTableView_isCornerButtonEnabled(self.h)

proc visualRect*(self: gen_qtableview_types.QTableView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQTableView_visualRect(self.h, index.h))

proc scrollTo*(self: gen_qtableview_types.QTableView, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void =
  fcQTableView_scrollTo(self.h, index.h, cint(hint))

proc indexAt*(self: gen_qtableview_types.QTableView, p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTableView_indexAt(self.h, p.h))

proc setSpan*(self: gen_qtableview_types.QTableView, row: cint, column: cint, rowSpan: cint, columnSpan: cint): void =
  fcQTableView_setSpan(self.h, row, column, rowSpan, columnSpan)

proc rowSpan*(self: gen_qtableview_types.QTableView, row: cint, column: cint): cint =
  fcQTableView_rowSpan(self.h, row, column)

proc columnSpan*(self: gen_qtableview_types.QTableView, row: cint, column: cint): cint =
  fcQTableView_columnSpan(self.h, row, column)

proc clearSpans*(self: gen_qtableview_types.QTableView, ): void =
  fcQTableView_clearSpans(self.h)

proc selectRow*(self: gen_qtableview_types.QTableView, row: cint): void =
  fcQTableView_selectRow(self.h, row)

proc selectColumn*(self: gen_qtableview_types.QTableView, column: cint): void =
  fcQTableView_selectColumn(self.h, column)

proc hideRow*(self: gen_qtableview_types.QTableView, row: cint): void =
  fcQTableView_hideRow(self.h, row)

proc hideColumn*(self: gen_qtableview_types.QTableView, column: cint): void =
  fcQTableView_hideColumn(self.h, column)

proc showRow*(self: gen_qtableview_types.QTableView, row: cint): void =
  fcQTableView_showRow(self.h, row)

proc showColumn*(self: gen_qtableview_types.QTableView, column: cint): void =
  fcQTableView_showColumn(self.h, column)

proc resizeRowToContents*(self: gen_qtableview_types.QTableView, row: cint): void =
  fcQTableView_resizeRowToContents(self.h, row)

proc resizeRowsToContents*(self: gen_qtableview_types.QTableView, ): void =
  fcQTableView_resizeRowsToContents(self.h)

proc resizeColumnToContents*(self: gen_qtableview_types.QTableView, column: cint): void =
  fcQTableView_resizeColumnToContents(self.h, column)

proc resizeColumnsToContents*(self: gen_qtableview_types.QTableView, ): void =
  fcQTableView_resizeColumnsToContents(self.h)

proc sortByColumn*(self: gen_qtableview_types.QTableView, column: cint, order: cint): void =
  fcQTableView_sortByColumn(self.h, column, cint(order))

proc setShowGrid*(self: gen_qtableview_types.QTableView, show: bool): void =
  fcQTableView_setShowGrid(self.h, show)

proc tr*(_: type gen_qtableview_types.QTableView, s: cstring, c: cstring): string =
  let v_ms = fcQTableView_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qtableview_types.QTableView, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTableView_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QTableViewmetaObject*(self: gen_qtableview_types.QTableView, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQTableView_virtualbase_metaObject(self.h))

type QTableViewmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qtableview_types.QTableView, slot: QTableViewmetaObjectProc) =
  # TODO check subclass
  var tmp = new QTableViewmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_metaObject(self: ptr cQTableView, slot: int): pointer {.exportc: "miqt_exec_callback_QTableView_metaObject ".} =
  var nimfunc = cast[ptr QTableViewmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTableViewmetacast*(self: gen_qtableview_types.QTableView, param1: cstring): pointer =
  fQTableView_virtualbase_metacast(self.h, param1)

type QTableViewmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qtableview_types.QTableView, slot: QTableViewmetacastProc) =
  # TODO check subclass
  var tmp = new QTableViewmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_metacast(self: ptr cQTableView, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QTableView_metacast ".} =
  var nimfunc = cast[ptr QTableViewmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTableViewmetacall*(self: gen_qtableview_types.QTableView, param1: cint, param2: cint, param3: pointer): cint =
  fQTableView_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QTableViewmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qtableview_types.QTableView, slot: QTableViewmetacallProc) =
  # TODO check subclass
  var tmp = new QTableViewmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_metacall(self: ptr cQTableView, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QTableView_metacall ".} =
  var nimfunc = cast[ptr QTableViewmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QTableViewsetModel*(self: gen_qtableview_types.QTableView, model: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fQTableView_virtualbase_setModel(self.h, model.h)

type QTableViewsetModelProc* = proc(model: gen_qabstractitemmodel_types.QAbstractItemModel): void
proc onsetModel*(self: gen_qtableview_types.QTableView, slot: QTableViewsetModelProc) =
  # TODO check subclass
  var tmp = new QTableViewsetModelProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_setModel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_setModel(self: ptr cQTableView, slot: int, model: pointer): void {.exportc: "miqt_exec_callback_QTableView_setModel ".} =
  var nimfunc = cast[ptr QTableViewsetModelProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model)


  nimfunc[](slotval1)
proc QTableViewsetRootIndex*(self: gen_qtableview_types.QTableView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fQTableView_virtualbase_setRootIndex(self.h, index.h)

type QTableViewsetRootIndexProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): void
proc onsetRootIndex*(self: gen_qtableview_types.QTableView, slot: QTableViewsetRootIndexProc) =
  # TODO check subclass
  var tmp = new QTableViewsetRootIndexProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_setRootIndex(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_setRootIndex(self: ptr cQTableView, slot: int, index: pointer): void {.exportc: "miqt_exec_callback_QTableView_setRootIndex ".} =
  var nimfunc = cast[ptr QTableViewsetRootIndexProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  nimfunc[](slotval1)
proc QTableViewsetSelectionModel*(self: gen_qtableview_types.QTableView, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void =
  fQTableView_virtualbase_setSelectionModel(self.h, selectionModel.h)

type QTableViewsetSelectionModelProc* = proc(selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void
proc onsetSelectionModel*(self: gen_qtableview_types.QTableView, slot: QTableViewsetSelectionModelProc) =
  # TODO check subclass
  var tmp = new QTableViewsetSelectionModelProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_setSelectionModel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_setSelectionModel(self: ptr cQTableView, slot: int, selectionModel: pointer): void {.exportc: "miqt_exec_callback_QTableView_setSelectionModel ".} =
  var nimfunc = cast[ptr QTableViewsetSelectionModelProc](cast[pointer](slot))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelectionModel(h: selectionModel)


  nimfunc[](slotval1)
proc QTableViewdoItemsLayout*(self: gen_qtableview_types.QTableView, ): void =
  fQTableView_virtualbase_doItemsLayout(self.h)

type QTableViewdoItemsLayoutProc* = proc(): void
proc ondoItemsLayout*(self: gen_qtableview_types.QTableView, slot: QTableViewdoItemsLayoutProc) =
  # TODO check subclass
  var tmp = new QTableViewdoItemsLayoutProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_doItemsLayout(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_doItemsLayout(self: ptr cQTableView, slot: int): void {.exportc: "miqt_exec_callback_QTableView_doItemsLayout ".} =
  var nimfunc = cast[ptr QTableViewdoItemsLayoutProc](cast[pointer](slot))

  nimfunc[]()
proc QTableViewvisualRect*(self: gen_qtableview_types.QTableView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fQTableView_virtualbase_visualRect(self.h, index.h))

type QTableViewvisualRectProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect
proc onvisualRect*(self: gen_qtableview_types.QTableView, slot: QTableViewvisualRectProc) =
  # TODO check subclass
  var tmp = new QTableViewvisualRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_visualRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_visualRect(self: ptr cQTableView, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QTableView_visualRect ".} =
  var nimfunc = cast[ptr QTableViewvisualRectProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QTableViewscrollTo*(self: gen_qtableview_types.QTableView, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void =
  fQTableView_virtualbase_scrollTo(self.h, index.h, cint(hint))

type QTableViewscrollToProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void
proc onscrollTo*(self: gen_qtableview_types.QTableView, slot: QTableViewscrollToProc) =
  # TODO check subclass
  var tmp = new QTableViewscrollToProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_scrollTo(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_scrollTo(self: ptr cQTableView, slot: int, index: pointer, hint: cint): void {.exportc: "miqt_exec_callback_QTableView_scrollTo ".} =
  var nimfunc = cast[ptr QTableViewscrollToProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = cint(hint)


  nimfunc[](slotval1, slotval2)
proc QTableViewindexAt*(self: gen_qtableview_types.QTableView, p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQTableView_virtualbase_indexAt(self.h, p.h))

type QTableViewindexAtProc* = proc(p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex
proc onindexAt*(self: gen_qtableview_types.QTableView, slot: QTableViewindexAtProc) =
  # TODO check subclass
  var tmp = new QTableViewindexAtProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_indexAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_indexAt(self: ptr cQTableView, slot: int, p: pointer): pointer {.exportc: "miqt_exec_callback_QTableView_indexAt ".} =
  var nimfunc = cast[ptr QTableViewindexAtProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: p)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QTableViewscrollContentsBy*(self: gen_qtableview_types.QTableView, dx: cint, dy: cint): void =
  fQTableView_virtualbase_scrollContentsBy(self.h, dx, dy)

type QTableViewscrollContentsByProc* = proc(dx: cint, dy: cint): void
proc onscrollContentsBy*(self: gen_qtableview_types.QTableView, slot: QTableViewscrollContentsByProc) =
  # TODO check subclass
  var tmp = new QTableViewscrollContentsByProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_scrollContentsBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_scrollContentsBy(self: ptr cQTableView, slot: int, dx: cint, dy: cint): void {.exportc: "miqt_exec_callback_QTableView_scrollContentsBy ".} =
  var nimfunc = cast[ptr QTableViewscrollContentsByProc](cast[pointer](slot))
  let slotval1 = dx

  let slotval2 = dy


  nimfunc[](slotval1, slotval2)
proc QTableViewinitViewItemOption*(self: gen_qtableview_types.QTableView, option: gen_qstyleoption_types.QStyleOptionViewItem): void =
  fQTableView_virtualbase_initViewItemOption(self.h, option.h)

type QTableViewinitViewItemOptionProc* = proc(option: gen_qstyleoption_types.QStyleOptionViewItem): void
proc oninitViewItemOption*(self: gen_qtableview_types.QTableView, slot: QTableViewinitViewItemOptionProc) =
  # TODO check subclass
  var tmp = new QTableViewinitViewItemOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_initViewItemOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_initViewItemOption(self: ptr cQTableView, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QTableView_initViewItemOption ".} =
  var nimfunc = cast[ptr QTableViewinitViewItemOptionProc](cast[pointer](slot))
  let slotval1 = gen_qstyleoption_types.QStyleOptionViewItem(h: option)


  nimfunc[](slotval1)
proc QTableViewpaintEvent*(self: gen_qtableview_types.QTableView, e: gen_qevent_types.QPaintEvent): void =
  fQTableView_virtualbase_paintEvent(self.h, e.h)

type QTableViewpaintEventProc* = proc(e: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qtableview_types.QTableView, slot: QTableViewpaintEventProc) =
  # TODO check subclass
  var tmp = new QTableViewpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_paintEvent(self: ptr cQTableView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTableView_paintEvent ".} =
  var nimfunc = cast[ptr QTableViewpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: e)


  nimfunc[](slotval1)
proc QTableViewtimerEvent*(self: gen_qtableview_types.QTableView, event: gen_qcoreevent_types.QTimerEvent): void =
  fQTableView_virtualbase_timerEvent(self.h, event.h)

type QTableViewtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qtableview_types.QTableView, slot: QTableViewtimerEventProc) =
  # TODO check subclass
  var tmp = new QTableViewtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_timerEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_timerEvent ".} =
  var nimfunc = cast[ptr QTableViewtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QTableViewhorizontalOffset*(self: gen_qtableview_types.QTableView, ): cint =
  fQTableView_virtualbase_horizontalOffset(self.h)

type QTableViewhorizontalOffsetProc* = proc(): cint
proc onhorizontalOffset*(self: gen_qtableview_types.QTableView, slot: QTableViewhorizontalOffsetProc) =
  # TODO check subclass
  var tmp = new QTableViewhorizontalOffsetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_horizontalOffset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_horizontalOffset(self: ptr cQTableView, slot: int): cint {.exportc: "miqt_exec_callback_QTableView_horizontalOffset ".} =
  var nimfunc = cast[ptr QTableViewhorizontalOffsetProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTableViewverticalOffset*(self: gen_qtableview_types.QTableView, ): cint =
  fQTableView_virtualbase_verticalOffset(self.h)

type QTableViewverticalOffsetProc* = proc(): cint
proc onverticalOffset*(self: gen_qtableview_types.QTableView, slot: QTableViewverticalOffsetProc) =
  # TODO check subclass
  var tmp = new QTableViewverticalOffsetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_verticalOffset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_verticalOffset(self: ptr cQTableView, slot: int): cint {.exportc: "miqt_exec_callback_QTableView_verticalOffset ".} =
  var nimfunc = cast[ptr QTableViewverticalOffsetProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTableViewmoveCursor*(self: gen_qtableview_types.QTableView, cursorAction: cint, modifiers: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQTableView_virtualbase_moveCursor(self.h, cint(cursorAction), cint(modifiers)))

type QTableViewmoveCursorProc* = proc(cursorAction: cint, modifiers: cint): gen_qabstractitemmodel_types.QModelIndex
proc onmoveCursor*(self: gen_qtableview_types.QTableView, slot: QTableViewmoveCursorProc) =
  # TODO check subclass
  var tmp = new QTableViewmoveCursorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_moveCursor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_moveCursor(self: ptr cQTableView, slot: int, cursorAction: cint, modifiers: cint): pointer {.exportc: "miqt_exec_callback_QTableView_moveCursor ".} =
  var nimfunc = cast[ptr QTableViewmoveCursorProc](cast[pointer](slot))
  let slotval1 = cint(cursorAction)

  let slotval2 = cint(modifiers)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QTableViewsetSelection*(self: gen_qtableview_types.QTableView, rect: gen_qrect_types.QRect, command: cint): void =
  fQTableView_virtualbase_setSelection(self.h, rect.h, cint(command))

type QTableViewsetSelectionProc* = proc(rect: gen_qrect_types.QRect, command: cint): void
proc onsetSelection*(self: gen_qtableview_types.QTableView, slot: QTableViewsetSelectionProc) =
  # TODO check subclass
  var tmp = new QTableViewsetSelectionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_setSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_setSelection(self: ptr cQTableView, slot: int, rect: pointer, command: cint): void {.exportc: "miqt_exec_callback_QTableView_setSelection ".} =
  var nimfunc = cast[ptr QTableViewsetSelectionProc](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRect(h: rect)

  let slotval2 = cint(command)


  nimfunc[](slotval1, slotval2)
proc QTableViewvisualRegionForSelection*(self: gen_qtableview_types.QTableView, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fQTableView_virtualbase_visualRegionForSelection(self.h, selection.h))

type QTableViewvisualRegionForSelectionProc* = proc(selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion
proc onvisualRegionForSelection*(self: gen_qtableview_types.QTableView, slot: QTableViewvisualRegionForSelectionProc) =
  # TODO check subclass
  var tmp = new QTableViewvisualRegionForSelectionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_visualRegionForSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_visualRegionForSelection(self: ptr cQTableView, slot: int, selection: pointer): pointer {.exportc: "miqt_exec_callback_QTableView_visualRegionForSelection ".} =
  var nimfunc = cast[ptr QTableViewvisualRegionForSelectionProc](cast[pointer](slot))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QTableViewselectedIndexes*(self: gen_qtableview_types.QTableView, ): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fQTableView_virtualbase_selectedIndexes(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  vx_ret

type QTableViewselectedIndexesProc* = proc(): seq[gen_qabstractitemmodel_types.QModelIndex]
proc onselectedIndexes*(self: gen_qtableview_types.QTableView, slot: QTableViewselectedIndexesProc) =
  # TODO check subclass
  var tmp = new QTableViewselectedIndexesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_selectedIndexes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_selectedIndexes(self: ptr cQTableView, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QTableView_selectedIndexes ".} =
  var nimfunc = cast[ptr QTableViewselectedIndexesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[pointer](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QTableViewupdateGeometries*(self: gen_qtableview_types.QTableView, ): void =
  fQTableView_virtualbase_updateGeometries(self.h)

type QTableViewupdateGeometriesProc* = proc(): void
proc onupdateGeometries*(self: gen_qtableview_types.QTableView, slot: QTableViewupdateGeometriesProc) =
  # TODO check subclass
  var tmp = new QTableViewupdateGeometriesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_updateGeometries(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_updateGeometries(self: ptr cQTableView, slot: int): void {.exportc: "miqt_exec_callback_QTableView_updateGeometries ".} =
  var nimfunc = cast[ptr QTableViewupdateGeometriesProc](cast[pointer](slot))

  nimfunc[]()
proc QTableViewviewportSizeHint*(self: gen_qtableview_types.QTableView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQTableView_virtualbase_viewportSizeHint(self.h))

type QTableViewviewportSizeHintProc* = proc(): gen_qsize_types.QSize
proc onviewportSizeHint*(self: gen_qtableview_types.QTableView, slot: QTableViewviewportSizeHintProc) =
  # TODO check subclass
  var tmp = new QTableViewviewportSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_viewportSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_viewportSizeHint(self: ptr cQTableView, slot: int): pointer {.exportc: "miqt_exec_callback_QTableView_viewportSizeHint ".} =
  var nimfunc = cast[ptr QTableViewviewportSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTableViewsizeHintForRow*(self: gen_qtableview_types.QTableView, row: cint): cint =
  fQTableView_virtualbase_sizeHintForRow(self.h, row)

type QTableViewsizeHintForRowProc* = proc(row: cint): cint
proc onsizeHintForRow*(self: gen_qtableview_types.QTableView, slot: QTableViewsizeHintForRowProc) =
  # TODO check subclass
  var tmp = new QTableViewsizeHintForRowProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_sizeHintForRow(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_sizeHintForRow(self: ptr cQTableView, slot: int, row: cint): cint {.exportc: "miqt_exec_callback_QTableView_sizeHintForRow ".} =
  var nimfunc = cast[ptr QTableViewsizeHintForRowProc](cast[pointer](slot))
  let slotval1 = row


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTableViewsizeHintForColumn*(self: gen_qtableview_types.QTableView, column: cint): cint =
  fQTableView_virtualbase_sizeHintForColumn(self.h, column)

type QTableViewsizeHintForColumnProc* = proc(column: cint): cint
proc onsizeHintForColumn*(self: gen_qtableview_types.QTableView, slot: QTableViewsizeHintForColumnProc) =
  # TODO check subclass
  var tmp = new QTableViewsizeHintForColumnProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_sizeHintForColumn(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_sizeHintForColumn(self: ptr cQTableView, slot: int, column: cint): cint {.exportc: "miqt_exec_callback_QTableView_sizeHintForColumn ".} =
  var nimfunc = cast[ptr QTableViewsizeHintForColumnProc](cast[pointer](slot))
  let slotval1 = column


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTableViewverticalScrollbarAction*(self: gen_qtableview_types.QTableView, action: cint): void =
  fQTableView_virtualbase_verticalScrollbarAction(self.h, action)

type QTableViewverticalScrollbarActionProc* = proc(action: cint): void
proc onverticalScrollbarAction*(self: gen_qtableview_types.QTableView, slot: QTableViewverticalScrollbarActionProc) =
  # TODO check subclass
  var tmp = new QTableViewverticalScrollbarActionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_verticalScrollbarAction(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_verticalScrollbarAction(self: ptr cQTableView, slot: int, action: cint): void {.exportc: "miqt_exec_callback_QTableView_verticalScrollbarAction ".} =
  var nimfunc = cast[ptr QTableViewverticalScrollbarActionProc](cast[pointer](slot))
  let slotval1 = action


  nimfunc[](slotval1)
proc QTableViewhorizontalScrollbarAction*(self: gen_qtableview_types.QTableView, action: cint): void =
  fQTableView_virtualbase_horizontalScrollbarAction(self.h, action)

type QTableViewhorizontalScrollbarActionProc* = proc(action: cint): void
proc onhorizontalScrollbarAction*(self: gen_qtableview_types.QTableView, slot: QTableViewhorizontalScrollbarActionProc) =
  # TODO check subclass
  var tmp = new QTableViewhorizontalScrollbarActionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_horizontalScrollbarAction(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_horizontalScrollbarAction(self: ptr cQTableView, slot: int, action: cint): void {.exportc: "miqt_exec_callback_QTableView_horizontalScrollbarAction ".} =
  var nimfunc = cast[ptr QTableViewhorizontalScrollbarActionProc](cast[pointer](slot))
  let slotval1 = action


  nimfunc[](slotval1)
proc QTableViewisIndexHidden*(self: gen_qtableview_types.QTableView, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQTableView_virtualbase_isIndexHidden(self.h, index.h)

type QTableViewisIndexHiddenProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): bool
proc onisIndexHidden*(self: gen_qtableview_types.QTableView, slot: QTableViewisIndexHiddenProc) =
  # TODO check subclass
  var tmp = new QTableViewisIndexHiddenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_isIndexHidden(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_isIndexHidden(self: ptr cQTableView, slot: int, index: pointer): bool {.exportc: "miqt_exec_callback_QTableView_isIndexHidden ".} =
  var nimfunc = cast[ptr QTableViewisIndexHiddenProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTableViewselectionChanged*(self: gen_qtableview_types.QTableView, selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void =
  fQTableView_virtualbase_selectionChanged(self.h, selected.h, deselected.h)

type QTableViewselectionChangedProc* = proc(selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void
proc onselectionChanged*(self: gen_qtableview_types.QTableView, slot: QTableViewselectionChangedProc) =
  # TODO check subclass
  var tmp = new QTableViewselectionChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_selectionChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_selectionChanged(self: ptr cQTableView, slot: int, selected: pointer, deselected: pointer): void {.exportc: "miqt_exec_callback_QTableView_selectionChanged ".} =
  var nimfunc = cast[ptr QTableViewselectionChangedProc](cast[pointer](slot))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selected)

  let slotval2 = gen_qitemselectionmodel_types.QItemSelection(h: deselected)


  nimfunc[](slotval1, slotval2)
proc QTableViewcurrentChanged*(self: gen_qtableview_types.QTableView, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void =
  fQTableView_virtualbase_currentChanged(self.h, current.h, previous.h)

type QTableViewcurrentChangedProc* = proc(current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void
proc oncurrentChanged*(self: gen_qtableview_types.QTableView, slot: QTableViewcurrentChangedProc) =
  # TODO check subclass
  var tmp = new QTableViewcurrentChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_currentChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_currentChanged(self: ptr cQTableView, slot: int, current: pointer, previous: pointer): void {.exportc: "miqt_exec_callback_QTableView_currentChanged ".} =
  var nimfunc = cast[ptr QTableViewcurrentChangedProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: current)

  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: previous)


  nimfunc[](slotval1, slotval2)
proc QTableViewkeyboardSearch*(self: gen_qtableview_types.QTableView, search: string): void =
  fQTableView_virtualbase_keyboardSearch(self.h, struct_miqt_string(data: search, len: csize_t(len(search))))

type QTableViewkeyboardSearchProc* = proc(search: string): void
proc onkeyboardSearch*(self: gen_qtableview_types.QTableView, slot: QTableViewkeyboardSearchProc) =
  # TODO check subclass
  var tmp = new QTableViewkeyboardSearchProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_keyboardSearch(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_keyboardSearch(self: ptr cQTableView, slot: int, search: struct_miqt_string): void {.exportc: "miqt_exec_callback_QTableView_keyboardSearch ".} =
  var nimfunc = cast[ptr QTableViewkeyboardSearchProc](cast[pointer](slot))
  let vsearch_ms = search
  let vsearchx_ret = string.fromBytes(toOpenArrayByte(vsearch_ms.data, 0, int(vsearch_ms.len)-1))
  c_free(vsearch_ms.data)
  let slotval1 = vsearchx_ret


  nimfunc[](slotval1)
proc QTableViewitemDelegateForIndex*(self: gen_qtableview_types.QTableView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemdelegate_types.QAbstractItemDelegate =
  gen_qabstractitemdelegate_types.QAbstractItemDelegate(h: fQTableView_virtualbase_itemDelegateForIndex(self.h, index.h))

type QTableViewitemDelegateForIndexProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemdelegate_types.QAbstractItemDelegate
proc onitemDelegateForIndex*(self: gen_qtableview_types.QTableView, slot: QTableViewitemDelegateForIndexProc) =
  # TODO check subclass
  var tmp = new QTableViewitemDelegateForIndexProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_itemDelegateForIndex(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_itemDelegateForIndex(self: ptr cQTableView, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QTableView_itemDelegateForIndex ".} =
  var nimfunc = cast[ptr QTableViewitemDelegateForIndexProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QTableViewinputMethodQuery*(self: gen_qtableview_types.QTableView, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQTableView_virtualbase_inputMethodQuery(self.h, cint(query)))

type QTableViewinputMethodQueryProc* = proc(query: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qtableview_types.QTableView, slot: QTableViewinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QTableViewinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_inputMethodQuery(self: ptr cQTableView, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QTableView_inputMethodQuery ".} =
  var nimfunc = cast[ptr QTableViewinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(query)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QTableViewreset*(self: gen_qtableview_types.QTableView, ): void =
  fQTableView_virtualbase_reset(self.h)

type QTableViewresetProc* = proc(): void
proc onreset*(self: gen_qtableview_types.QTableView, slot: QTableViewresetProc) =
  # TODO check subclass
  var tmp = new QTableViewresetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_reset(self: ptr cQTableView, slot: int): void {.exportc: "miqt_exec_callback_QTableView_reset ".} =
  var nimfunc = cast[ptr QTableViewresetProc](cast[pointer](slot))

  nimfunc[]()
proc QTableViewselectAll*(self: gen_qtableview_types.QTableView, ): void =
  fQTableView_virtualbase_selectAll(self.h)

type QTableViewselectAllProc* = proc(): void
proc onselectAll*(self: gen_qtableview_types.QTableView, slot: QTableViewselectAllProc) =
  # TODO check subclass
  var tmp = new QTableViewselectAllProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_selectAll(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_selectAll(self: ptr cQTableView, slot: int): void {.exportc: "miqt_exec_callback_QTableView_selectAll ".} =
  var nimfunc = cast[ptr QTableViewselectAllProc](cast[pointer](slot))

  nimfunc[]()
proc QTableViewdataChanged*(self: gen_qtableview_types.QTableView, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: seq[cint]): void =
  var roles_CArray = newSeq[cint](len(roles))
  for i in 0..<len(roles):
    roles_CArray[i] = roles[i]

  fQTableView_virtualbase_dataChanged(self.h, topLeft.h, bottomRight.h, struct_miqt_array(len: csize_t(len(roles)), data: if len(roles) == 0: nil else: addr(roles_CArray[0])))

type QTableViewdataChangedProc* = proc(topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: seq[cint]): void
proc ondataChanged*(self: gen_qtableview_types.QTableView, slot: QTableViewdataChangedProc) =
  # TODO check subclass
  var tmp = new QTableViewdataChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_dataChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_dataChanged(self: ptr cQTableView, slot: int, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.exportc: "miqt_exec_callback_QTableView_dataChanged ".} =
  var nimfunc = cast[ptr QTableViewdataChangedProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: topLeft)

  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: bottomRight)

  var vroles_ma = roles
  var vrolesx_ret = newSeq[cint](int(vroles_ma.len))
  let vroles_outCast = cast[ptr UncheckedArray[cint]](vroles_ma.data)
  for i in 0 ..< vroles_ma.len:
    vrolesx_ret[i] = vroles_outCast[i]
  let slotval3 = vrolesx_ret


  nimfunc[](slotval1, slotval2, slotval3)
proc QTableViewrowsInserted*(self: gen_qtableview_types.QTableView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fQTableView_virtualbase_rowsInserted(self.h, parent.h, start, endVal)

type QTableViewrowsInsertedProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void
proc onrowsInserted*(self: gen_qtableview_types.QTableView, slot: QTableViewrowsInsertedProc) =
  # TODO check subclass
  var tmp = new QTableViewrowsInsertedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_rowsInserted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_rowsInserted(self: ptr cQTableView, slot: int, parent: pointer, start: cint, endVal: cint): void {.exportc: "miqt_exec_callback_QTableView_rowsInserted ".} =
  var nimfunc = cast[ptr QTableViewrowsInsertedProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)

  let slotval2 = start

  let slotval3 = endVal


  nimfunc[](slotval1, slotval2, slotval3)
proc QTableViewrowsAboutToBeRemoved*(self: gen_qtableview_types.QTableView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fQTableView_virtualbase_rowsAboutToBeRemoved(self.h, parent.h, start, endVal)

type QTableViewrowsAboutToBeRemovedProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void
proc onrowsAboutToBeRemoved*(self: gen_qtableview_types.QTableView, slot: QTableViewrowsAboutToBeRemovedProc) =
  # TODO check subclass
  var tmp = new QTableViewrowsAboutToBeRemovedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_rowsAboutToBeRemoved(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_rowsAboutToBeRemoved(self: ptr cQTableView, slot: int, parent: pointer, start: cint, endVal: cint): void {.exportc: "miqt_exec_callback_QTableView_rowsAboutToBeRemoved ".} =
  var nimfunc = cast[ptr QTableViewrowsAboutToBeRemovedProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)

  let slotval2 = start

  let slotval3 = endVal


  nimfunc[](slotval1, slotval2, slotval3)
proc QTableViewupdateEditorData*(self: gen_qtableview_types.QTableView, ): void =
  fQTableView_virtualbase_updateEditorData(self.h)

type QTableViewupdateEditorDataProc* = proc(): void
proc onupdateEditorData*(self: gen_qtableview_types.QTableView, slot: QTableViewupdateEditorDataProc) =
  # TODO check subclass
  var tmp = new QTableViewupdateEditorDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_updateEditorData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_updateEditorData(self: ptr cQTableView, slot: int): void {.exportc: "miqt_exec_callback_QTableView_updateEditorData ".} =
  var nimfunc = cast[ptr QTableViewupdateEditorDataProc](cast[pointer](slot))

  nimfunc[]()
proc QTableViewupdateEditorGeometries*(self: gen_qtableview_types.QTableView, ): void =
  fQTableView_virtualbase_updateEditorGeometries(self.h)

type QTableViewupdateEditorGeometriesProc* = proc(): void
proc onupdateEditorGeometries*(self: gen_qtableview_types.QTableView, slot: QTableViewupdateEditorGeometriesProc) =
  # TODO check subclass
  var tmp = new QTableViewupdateEditorGeometriesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_updateEditorGeometries(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_updateEditorGeometries(self: ptr cQTableView, slot: int): void {.exportc: "miqt_exec_callback_QTableView_updateEditorGeometries ".} =
  var nimfunc = cast[ptr QTableViewupdateEditorGeometriesProc](cast[pointer](slot))

  nimfunc[]()
proc QTableViewverticalScrollbarValueChanged*(self: gen_qtableview_types.QTableView, value: cint): void =
  fQTableView_virtualbase_verticalScrollbarValueChanged(self.h, value)

type QTableViewverticalScrollbarValueChangedProc* = proc(value: cint): void
proc onverticalScrollbarValueChanged*(self: gen_qtableview_types.QTableView, slot: QTableViewverticalScrollbarValueChangedProc) =
  # TODO check subclass
  var tmp = new QTableViewverticalScrollbarValueChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_verticalScrollbarValueChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_verticalScrollbarValueChanged(self: ptr cQTableView, slot: int, value: cint): void {.exportc: "miqt_exec_callback_QTableView_verticalScrollbarValueChanged ".} =
  var nimfunc = cast[ptr QTableViewverticalScrollbarValueChangedProc](cast[pointer](slot))
  let slotval1 = value


  nimfunc[](slotval1)
proc QTableViewhorizontalScrollbarValueChanged*(self: gen_qtableview_types.QTableView, value: cint): void =
  fQTableView_virtualbase_horizontalScrollbarValueChanged(self.h, value)

type QTableViewhorizontalScrollbarValueChangedProc* = proc(value: cint): void
proc onhorizontalScrollbarValueChanged*(self: gen_qtableview_types.QTableView, slot: QTableViewhorizontalScrollbarValueChangedProc) =
  # TODO check subclass
  var tmp = new QTableViewhorizontalScrollbarValueChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_horizontalScrollbarValueChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_horizontalScrollbarValueChanged(self: ptr cQTableView, slot: int, value: cint): void {.exportc: "miqt_exec_callback_QTableView_horizontalScrollbarValueChanged ".} =
  var nimfunc = cast[ptr QTableViewhorizontalScrollbarValueChangedProc](cast[pointer](slot))
  let slotval1 = value


  nimfunc[](slotval1)
proc QTableViewcloseEditor*(self: gen_qtableview_types.QTableView, editor: gen_qwidget_types.QWidget, hint: cint): void =
  fQTableView_virtualbase_closeEditor(self.h, editor.h, cint(hint))

type QTableViewcloseEditorProc* = proc(editor: gen_qwidget_types.QWidget, hint: cint): void
proc oncloseEditor*(self: gen_qtableview_types.QTableView, slot: QTableViewcloseEditorProc) =
  # TODO check subclass
  var tmp = new QTableViewcloseEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_closeEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_closeEditor(self: ptr cQTableView, slot: int, editor: pointer, hint: cint): void {.exportc: "miqt_exec_callback_QTableView_closeEditor ".} =
  var nimfunc = cast[ptr QTableViewcloseEditorProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: editor)

  let slotval2 = cint(hint)


  nimfunc[](slotval1, slotval2)
proc QTableViewcommitData*(self: gen_qtableview_types.QTableView, editor: gen_qwidget_types.QWidget): void =
  fQTableView_virtualbase_commitData(self.h, editor.h)

type QTableViewcommitDataProc* = proc(editor: gen_qwidget_types.QWidget): void
proc oncommitData*(self: gen_qtableview_types.QTableView, slot: QTableViewcommitDataProc) =
  # TODO check subclass
  var tmp = new QTableViewcommitDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_commitData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_commitData(self: ptr cQTableView, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QTableView_commitData ".} =
  var nimfunc = cast[ptr QTableViewcommitDataProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: editor)


  nimfunc[](slotval1)
proc QTableVieweditorDestroyed*(self: gen_qtableview_types.QTableView, editor: gen_qobject_types.QObject): void =
  fQTableView_virtualbase_editorDestroyed(self.h, editor.h)

type QTableVieweditorDestroyedProc* = proc(editor: gen_qobject_types.QObject): void
proc oneditorDestroyed*(self: gen_qtableview_types.QTableView, slot: QTableVieweditorDestroyedProc) =
  # TODO check subclass
  var tmp = new QTableVieweditorDestroyedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_editorDestroyed(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_editorDestroyed(self: ptr cQTableView, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QTableView_editorDestroyed ".} =
  var nimfunc = cast[ptr QTableVieweditorDestroyedProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: editor)


  nimfunc[](slotval1)
proc QTableViewedit*(self: gen_qtableview_types.QTableView, index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool =
  fQTableView_virtualbase_edit2(self.h, index.h, cint(trigger), event.h)

type QTableViewedit2Proc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool
proc onedit*(self: gen_qtableview_types.QTableView, slot: QTableViewedit2Proc) =
  # TODO check subclass
  var tmp = new QTableViewedit2Proc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_edit2(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_edit2(self: ptr cQTableView, slot: int, index: pointer, trigger: cint, event: pointer): bool {.exportc: "miqt_exec_callback_QTableView_edit2 ".} =
  var nimfunc = cast[ptr QTableViewedit2Proc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = cint(trigger)

  let slotval3 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QTableViewselectionCommand*(self: gen_qtableview_types.QTableView, index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint =
  cint(fQTableView_virtualbase_selectionCommand(self.h, index.h, event.h))

type QTableViewselectionCommandProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint
proc onselectionCommand*(self: gen_qtableview_types.QTableView, slot: QTableViewselectionCommandProc) =
  # TODO check subclass
  var tmp = new QTableViewselectionCommandProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_selectionCommand(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_selectionCommand(self: ptr cQTableView, slot: int, index: pointer, event: pointer): cint {.exportc: "miqt_exec_callback_QTableView_selectionCommand ".} =
  var nimfunc = cast[ptr QTableViewselectionCommandProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  cint(virtualReturn)
proc QTableViewstartDrag*(self: gen_qtableview_types.QTableView, supportedActions: cint): void =
  fQTableView_virtualbase_startDrag(self.h, cint(supportedActions))

type QTableViewstartDragProc* = proc(supportedActions: cint): void
proc onstartDrag*(self: gen_qtableview_types.QTableView, slot: QTableViewstartDragProc) =
  # TODO check subclass
  var tmp = new QTableViewstartDragProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_startDrag(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_startDrag(self: ptr cQTableView, slot: int, supportedActions: cint): void {.exportc: "miqt_exec_callback_QTableView_startDrag ".} =
  var nimfunc = cast[ptr QTableViewstartDragProc](cast[pointer](slot))
  let slotval1 = cint(supportedActions)


  nimfunc[](slotval1)
proc QTableViewfocusNextPrevChild*(self: gen_qtableview_types.QTableView, next: bool): bool =
  fQTableView_virtualbase_focusNextPrevChild(self.h, next)

type QTableViewfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qtableview_types.QTableView, slot: QTableViewfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QTableViewfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_focusNextPrevChild(self: ptr cQTableView, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QTableView_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QTableViewfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTableViewevent*(self: gen_qtableview_types.QTableView, event: gen_qcoreevent_types.QEvent): bool =
  fQTableView_virtualbase_event(self.h, event.h)

type QTableVieweventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qtableview_types.QTableView, slot: QTableVieweventProc) =
  # TODO check subclass
  var tmp = new QTableVieweventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_event(self: ptr cQTableView, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QTableView_event ".} =
  var nimfunc = cast[ptr QTableVieweventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTableViewviewportEvent*(self: gen_qtableview_types.QTableView, event: gen_qcoreevent_types.QEvent): bool =
  fQTableView_virtualbase_viewportEvent(self.h, event.h)

type QTableViewviewportEventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onviewportEvent*(self: gen_qtableview_types.QTableView, slot: QTableViewviewportEventProc) =
  # TODO check subclass
  var tmp = new QTableViewviewportEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_viewportEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_viewportEvent(self: ptr cQTableView, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QTableView_viewportEvent ".} =
  var nimfunc = cast[ptr QTableViewviewportEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTableViewmousePressEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QMouseEvent): void =
  fQTableView_virtualbase_mousePressEvent(self.h, event.h)

type QTableViewmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qtableview_types.QTableView, slot: QTableViewmousePressEventProc) =
  # TODO check subclass
  var tmp = new QTableViewmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_mousePressEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_mousePressEvent ".} =
  var nimfunc = cast[ptr QTableViewmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QTableViewmouseMoveEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QMouseEvent): void =
  fQTableView_virtualbase_mouseMoveEvent(self.h, event.h)

type QTableViewmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qtableview_types.QTableView, slot: QTableViewmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QTableViewmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_mouseMoveEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QTableViewmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QTableViewmouseReleaseEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QMouseEvent): void =
  fQTableView_virtualbase_mouseReleaseEvent(self.h, event.h)

type QTableViewmouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qtableview_types.QTableView, slot: QTableViewmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QTableViewmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_mouseReleaseEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QTableViewmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QTableViewmouseDoubleClickEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QMouseEvent): void =
  fQTableView_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QTableViewmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qtableview_types.QTableView, slot: QTableViewmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QTableViewmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_mouseDoubleClickEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QTableViewmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QTableViewdragEnterEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QDragEnterEvent): void =
  fQTableView_virtualbase_dragEnterEvent(self.h, event.h)

type QTableViewdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qtableview_types.QTableView, slot: QTableViewdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QTableViewdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_dragEnterEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_dragEnterEvent ".} =
  var nimfunc = cast[ptr QTableViewdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QTableViewdragMoveEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QDragMoveEvent): void =
  fQTableView_virtualbase_dragMoveEvent(self.h, event.h)

type QTableViewdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qtableview_types.QTableView, slot: QTableViewdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QTableViewdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_dragMoveEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_dragMoveEvent ".} =
  var nimfunc = cast[ptr QTableViewdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QTableViewdragLeaveEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QDragLeaveEvent): void =
  fQTableView_virtualbase_dragLeaveEvent(self.h, event.h)

type QTableViewdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qtableview_types.QTableView, slot: QTableViewdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QTableViewdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_dragLeaveEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QTableViewdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QTableViewdropEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QDropEvent): void =
  fQTableView_virtualbase_dropEvent(self.h, event.h)

type QTableViewdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qtableview_types.QTableView, slot: QTableViewdropEventProc) =
  # TODO check subclass
  var tmp = new QTableViewdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_dropEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_dropEvent ".} =
  var nimfunc = cast[ptr QTableViewdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QTableViewfocusInEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QFocusEvent): void =
  fQTableView_virtualbase_focusInEvent(self.h, event.h)

type QTableViewfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qtableview_types.QTableView, slot: QTableViewfocusInEventProc) =
  # TODO check subclass
  var tmp = new QTableViewfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_focusInEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_focusInEvent ".} =
  var nimfunc = cast[ptr QTableViewfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QTableViewfocusOutEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QFocusEvent): void =
  fQTableView_virtualbase_focusOutEvent(self.h, event.h)

type QTableViewfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qtableview_types.QTableView, slot: QTableViewfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QTableViewfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_focusOutEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_focusOutEvent ".} =
  var nimfunc = cast[ptr QTableViewfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QTableViewkeyPressEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QKeyEvent): void =
  fQTableView_virtualbase_keyPressEvent(self.h, event.h)

type QTableViewkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qtableview_types.QTableView, slot: QTableViewkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QTableViewkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_keyPressEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_keyPressEvent ".} =
  var nimfunc = cast[ptr QTableViewkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QTableViewresizeEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QResizeEvent): void =
  fQTableView_virtualbase_resizeEvent(self.h, event.h)

type QTableViewresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qtableview_types.QTableView, slot: QTableViewresizeEventProc) =
  # TODO check subclass
  var tmp = new QTableViewresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_resizeEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_resizeEvent ".} =
  var nimfunc = cast[ptr QTableViewresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QTableViewinputMethodEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QInputMethodEvent): void =
  fQTableView_virtualbase_inputMethodEvent(self.h, event.h)

type QTableViewinputMethodEventProc* = proc(event: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qtableview_types.QTableView, slot: QTableViewinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QTableViewinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_inputMethodEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_inputMethodEvent ".} =
  var nimfunc = cast[ptr QTableViewinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)


  nimfunc[](slotval1)
proc QTableVieweventFilter*(self: gen_qtableview_types.QTableView, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQTableView_virtualbase_eventFilter(self.h, objectVal.h, event.h)

type QTableVieweventFilterProc* = proc(objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qtableview_types.QTableView, slot: QTableVieweventFilterProc) =
  # TODO check subclass
  var tmp = new QTableVieweventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_eventFilter(self: ptr cQTableView, slot: int, objectVal: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QTableView_eventFilter ".} =
  var nimfunc = cast[ptr QTableVieweventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: objectVal)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QTableViewminimumSizeHint*(self: gen_qtableview_types.QTableView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQTableView_virtualbase_minimumSizeHint(self.h))

type QTableViewminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qtableview_types.QTableView, slot: QTableViewminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QTableViewminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_minimumSizeHint(self: ptr cQTableView, slot: int): pointer {.exportc: "miqt_exec_callback_QTableView_minimumSizeHint ".} =
  var nimfunc = cast[ptr QTableViewminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTableViewsizeHint*(self: gen_qtableview_types.QTableView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQTableView_virtualbase_sizeHint(self.h))

type QTableViewsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qtableview_types.QTableView, slot: QTableViewsizeHintProc) =
  # TODO check subclass
  var tmp = new QTableViewsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_sizeHint(self: ptr cQTableView, slot: int): pointer {.exportc: "miqt_exec_callback_QTableView_sizeHint ".} =
  var nimfunc = cast[ptr QTableViewsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTableViewsetupViewport*(self: gen_qtableview_types.QTableView, viewport: gen_qwidget_types.QWidget): void =
  fQTableView_virtualbase_setupViewport(self.h, viewport.h)

type QTableViewsetupViewportProc* = proc(viewport: gen_qwidget_types.QWidget): void
proc onsetupViewport*(self: gen_qtableview_types.QTableView, slot: QTableViewsetupViewportProc) =
  # TODO check subclass
  var tmp = new QTableViewsetupViewportProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_setupViewport(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_setupViewport(self: ptr cQTableView, slot: int, viewport: pointer): void {.exportc: "miqt_exec_callback_QTableView_setupViewport ".} =
  var nimfunc = cast[ptr QTableViewsetupViewportProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: viewport)


  nimfunc[](slotval1)
proc QTableViewwheelEvent*(self: gen_qtableview_types.QTableView, param1: gen_qevent_types.QWheelEvent): void =
  fQTableView_virtualbase_wheelEvent(self.h, param1.h)

type QTableViewwheelEventProc* = proc(param1: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qtableview_types.QTableView, slot: QTableViewwheelEventProc) =
  # TODO check subclass
  var tmp = new QTableViewwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_wheelEvent(self: ptr cQTableView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTableView_wheelEvent ".} =
  var nimfunc = cast[ptr QTableViewwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1)


  nimfunc[](slotval1)
proc QTableViewcontextMenuEvent*(self: gen_qtableview_types.QTableView, param1: gen_qevent_types.QContextMenuEvent): void =
  fQTableView_virtualbase_contextMenuEvent(self.h, param1.h)

type QTableViewcontextMenuEventProc* = proc(param1: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qtableview_types.QTableView, slot: QTableViewcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QTableViewcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_contextMenuEvent(self: ptr cQTableView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTableView_contextMenuEvent ".} =
  var nimfunc = cast[ptr QTableViewcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)


  nimfunc[](slotval1)
proc QTableViewchangeEvent*(self: gen_qtableview_types.QTableView, param1: gen_qcoreevent_types.QEvent): void =
  fQTableView_virtualbase_changeEvent(self.h, param1.h)

type QTableViewchangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qtableview_types.QTableView, slot: QTableViewchangeEventProc) =
  # TODO check subclass
  var tmp = new QTableViewchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_changeEvent(self: ptr cQTableView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTableView_changeEvent ".} =
  var nimfunc = cast[ptr QTableViewchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QTableViewinitStyleOption*(self: gen_qtableview_types.QTableView, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fQTableView_virtualbase_initStyleOption(self.h, option.h)

type QTableViewinitStyleOptionProc* = proc(option: gen_qstyleoption_types.QStyleOptionFrame): void
proc oninitStyleOption*(self: gen_qtableview_types.QTableView, slot: QTableViewinitStyleOptionProc) =
  # TODO check subclass
  var tmp = new QTableViewinitStyleOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_initStyleOption(self: ptr cQTableView, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QTableView_initStyleOption ".} =
  var nimfunc = cast[ptr QTableViewinitStyleOptionProc](cast[pointer](slot))
  let slotval1 = gen_qstyleoption_types.QStyleOptionFrame(h: option)


  nimfunc[](slotval1)
proc QTableViewdevType*(self: gen_qtableview_types.QTableView, ): cint =
  fQTableView_virtualbase_devType(self.h)

type QTableViewdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qtableview_types.QTableView, slot: QTableViewdevTypeProc) =
  # TODO check subclass
  var tmp = new QTableViewdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_devType(self: ptr cQTableView, slot: int): cint {.exportc: "miqt_exec_callback_QTableView_devType ".} =
  var nimfunc = cast[ptr QTableViewdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTableViewsetVisible*(self: gen_qtableview_types.QTableView, visible: bool): void =
  fQTableView_virtualbase_setVisible(self.h, visible)

type QTableViewsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qtableview_types.QTableView, slot: QTableViewsetVisibleProc) =
  # TODO check subclass
  var tmp = new QTableViewsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_setVisible(self: ptr cQTableView, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QTableView_setVisible ".} =
  var nimfunc = cast[ptr QTableViewsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QTableViewheightForWidth*(self: gen_qtableview_types.QTableView, param1: cint): cint =
  fQTableView_virtualbase_heightForWidth(self.h, param1)

type QTableViewheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qtableview_types.QTableView, slot: QTableViewheightForWidthProc) =
  # TODO check subclass
  var tmp = new QTableViewheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_heightForWidth(self: ptr cQTableView, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QTableView_heightForWidth ".} =
  var nimfunc = cast[ptr QTableViewheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTableViewhasHeightForWidth*(self: gen_qtableview_types.QTableView, ): bool =
  fQTableView_virtualbase_hasHeightForWidth(self.h)

type QTableViewhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qtableview_types.QTableView, slot: QTableViewhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QTableViewhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_hasHeightForWidth(self: ptr cQTableView, slot: int): bool {.exportc: "miqt_exec_callback_QTableView_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QTableViewhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTableViewpaintEngine*(self: gen_qtableview_types.QTableView, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQTableView_virtualbase_paintEngine(self.h))

type QTableViewpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qtableview_types.QTableView, slot: QTableViewpaintEngineProc) =
  # TODO check subclass
  var tmp = new QTableViewpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_paintEngine(self: ptr cQTableView, slot: int): pointer {.exportc: "miqt_exec_callback_QTableView_paintEngine ".} =
  var nimfunc = cast[ptr QTableViewpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTableViewkeyReleaseEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QKeyEvent): void =
  fQTableView_virtualbase_keyReleaseEvent(self.h, event.h)

type QTableViewkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qtableview_types.QTableView, slot: QTableViewkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QTableViewkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_keyReleaseEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QTableViewkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QTableViewenterEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QEnterEvent): void =
  fQTableView_virtualbase_enterEvent(self.h, event.h)

type QTableViewenterEventProc* = proc(event: gen_qevent_types.QEnterEvent): void
proc onenterEvent*(self: gen_qtableview_types.QTableView, slot: QTableViewenterEventProc) =
  # TODO check subclass
  var tmp = new QTableViewenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_enterEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_enterEvent ".} =
  var nimfunc = cast[ptr QTableViewenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)


  nimfunc[](slotval1)
proc QTableViewleaveEvent*(self: gen_qtableview_types.QTableView, event: gen_qcoreevent_types.QEvent): void =
  fQTableView_virtualbase_leaveEvent(self.h, event.h)

type QTableViewleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qtableview_types.QTableView, slot: QTableViewleaveEventProc) =
  # TODO check subclass
  var tmp = new QTableViewleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_leaveEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_leaveEvent ".} =
  var nimfunc = cast[ptr QTableViewleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QTableViewmoveEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QMoveEvent): void =
  fQTableView_virtualbase_moveEvent(self.h, event.h)

type QTableViewmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qtableview_types.QTableView, slot: QTableViewmoveEventProc) =
  # TODO check subclass
  var tmp = new QTableViewmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_moveEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_moveEvent ".} =
  var nimfunc = cast[ptr QTableViewmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QTableViewcloseEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QCloseEvent): void =
  fQTableView_virtualbase_closeEvent(self.h, event.h)

type QTableViewcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qtableview_types.QTableView, slot: QTableViewcloseEventProc) =
  # TODO check subclass
  var tmp = new QTableViewcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_closeEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_closeEvent ".} =
  var nimfunc = cast[ptr QTableViewcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QTableViewtabletEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QTabletEvent): void =
  fQTableView_virtualbase_tabletEvent(self.h, event.h)

type QTableViewtabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qtableview_types.QTableView, slot: QTableViewtabletEventProc) =
  # TODO check subclass
  var tmp = new QTableViewtabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_tabletEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_tabletEvent ".} =
  var nimfunc = cast[ptr QTableViewtabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QTableViewactionEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QActionEvent): void =
  fQTableView_virtualbase_actionEvent(self.h, event.h)

type QTableViewactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qtableview_types.QTableView, slot: QTableViewactionEventProc) =
  # TODO check subclass
  var tmp = new QTableViewactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_actionEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_actionEvent ".} =
  var nimfunc = cast[ptr QTableViewactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QTableViewshowEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QShowEvent): void =
  fQTableView_virtualbase_showEvent(self.h, event.h)

type QTableViewshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qtableview_types.QTableView, slot: QTableViewshowEventProc) =
  # TODO check subclass
  var tmp = new QTableViewshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_showEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_showEvent ".} =
  var nimfunc = cast[ptr QTableViewshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QTableViewhideEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QHideEvent): void =
  fQTableView_virtualbase_hideEvent(self.h, event.h)

type QTableViewhideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qtableview_types.QTableView, slot: QTableViewhideEventProc) =
  # TODO check subclass
  var tmp = new QTableViewhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_hideEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_hideEvent ".} =
  var nimfunc = cast[ptr QTableViewhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QTableViewnativeEvent*(self: gen_qtableview_types.QTableView, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQTableView_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QTableViewnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qtableview_types.QTableView, slot: QTableViewnativeEventProc) =
  # TODO check subclass
  var tmp = new QTableViewnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_nativeEvent(self: ptr cQTableView, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QTableView_nativeEvent ".} =
  var nimfunc = cast[ptr QTableViewnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QTableViewmetric*(self: gen_qtableview_types.QTableView, param1: cint): cint =
  fQTableView_virtualbase_metric(self.h, cint(param1))

type QTableViewmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qtableview_types.QTableView, slot: QTableViewmetricProc) =
  # TODO check subclass
  var tmp = new QTableViewmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_metric(self: ptr cQTableView, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QTableView_metric ".} =
  var nimfunc = cast[ptr QTableViewmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTableViewinitPainter*(self: gen_qtableview_types.QTableView, painter: gen_qpainter_types.QPainter): void =
  fQTableView_virtualbase_initPainter(self.h, painter.h)

type QTableViewinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qtableview_types.QTableView, slot: QTableViewinitPainterProc) =
  # TODO check subclass
  var tmp = new QTableViewinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_initPainter(self: ptr cQTableView, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QTableView_initPainter ".} =
  var nimfunc = cast[ptr QTableViewinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QTableViewredirected*(self: gen_qtableview_types.QTableView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQTableView_virtualbase_redirected(self.h, offset.h))

type QTableViewredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qtableview_types.QTableView, slot: QTableViewredirectedProc) =
  # TODO check subclass
  var tmp = new QTableViewredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_redirected(self: ptr cQTableView, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QTableView_redirected ".} =
  var nimfunc = cast[ptr QTableViewredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QTableViewsharedPainter*(self: gen_qtableview_types.QTableView, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQTableView_virtualbase_sharedPainter(self.h))

type QTableViewsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qtableview_types.QTableView, slot: QTableViewsharedPainterProc) =
  # TODO check subclass
  var tmp = new QTableViewsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_sharedPainter(self: ptr cQTableView, slot: int): pointer {.exportc: "miqt_exec_callback_QTableView_sharedPainter ".} =
  var nimfunc = cast[ptr QTableViewsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTableViewchildEvent*(self: gen_qtableview_types.QTableView, event: gen_qcoreevent_types.QChildEvent): void =
  fQTableView_virtualbase_childEvent(self.h, event.h)

type QTableViewchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qtableview_types.QTableView, slot: QTableViewchildEventProc) =
  # TODO check subclass
  var tmp = new QTableViewchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_childEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_childEvent ".} =
  var nimfunc = cast[ptr QTableViewchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QTableViewcustomEvent*(self: gen_qtableview_types.QTableView, event: gen_qcoreevent_types.QEvent): void =
  fQTableView_virtualbase_customEvent(self.h, event.h)

type QTableViewcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qtableview_types.QTableView, slot: QTableViewcustomEventProc) =
  # TODO check subclass
  var tmp = new QTableViewcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_customEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_customEvent ".} =
  var nimfunc = cast[ptr QTableViewcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QTableViewconnectNotify*(self: gen_qtableview_types.QTableView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQTableView_virtualbase_connectNotify(self.h, signal.h)

type QTableViewconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qtableview_types.QTableView, slot: QTableViewconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QTableViewconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_connectNotify(self: ptr cQTableView, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTableView_connectNotify ".} =
  var nimfunc = cast[ptr QTableViewconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QTableViewdisconnectNotify*(self: gen_qtableview_types.QTableView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQTableView_virtualbase_disconnectNotify(self.h, signal.h)

type QTableViewdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qtableview_types.QTableView, slot: QTableViewdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QTableViewdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_disconnectNotify(self: ptr cQTableView, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTableView_disconnectNotify ".} =
  var nimfunc = cast[ptr QTableViewdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qtableview_types.QTableView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTableView_staticMetaObject())
proc delete*(self: gen_qtableview_types.QTableView) =
  fcQTableView_delete(self.h)
