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
{.compile("gen_qtreeview.cpp", cflags).}


import ./gen_qtreeview_types
export gen_qtreeview_types

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
  gen_qabstractitemview,
  gen_qheaderview_types,
  gen_qstyleoption_types,
  gen_qwidget_types

type cQTreeView*{.exportc: "QTreeView", incompleteStruct.} = object

proc fcQTreeView_new(parent: pointer): ptr cQTreeView {.importc: "QTreeView_new".}
proc fcQTreeView_new2(): ptr cQTreeView {.importc: "QTreeView_new2".}
proc fcQTreeView_metaObject(self: pointer, ): pointer {.importc: "QTreeView_metaObject".}
proc fcQTreeView_metacast(self: pointer, param1: cstring): pointer {.importc: "QTreeView_metacast".}
proc fcQTreeView_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTreeView_metacall".}
proc fcQTreeView_tr(s: cstring): struct_miqt_string {.importc: "QTreeView_tr".}
proc fcQTreeView_trUtf8(s: cstring): struct_miqt_string {.importc: "QTreeView_trUtf8".}
proc fcQTreeView_setModel(self: pointer, model: pointer): void {.importc: "QTreeView_setModel".}
proc fcQTreeView_setRootIndex(self: pointer, index: pointer): void {.importc: "QTreeView_setRootIndex".}
proc fcQTreeView_setSelectionModel(self: pointer, selectionModel: pointer): void {.importc: "QTreeView_setSelectionModel".}
proc fcQTreeView_header(self: pointer, ): pointer {.importc: "QTreeView_header".}
proc fcQTreeView_setHeader(self: pointer, header: pointer): void {.importc: "QTreeView_setHeader".}
proc fcQTreeView_autoExpandDelay(self: pointer, ): cint {.importc: "QTreeView_autoExpandDelay".}
proc fcQTreeView_setAutoExpandDelay(self: pointer, delay: cint): void {.importc: "QTreeView_setAutoExpandDelay".}
proc fcQTreeView_indentation(self: pointer, ): cint {.importc: "QTreeView_indentation".}
proc fcQTreeView_setIndentation(self: pointer, i: cint): void {.importc: "QTreeView_setIndentation".}
proc fcQTreeView_resetIndentation(self: pointer, ): void {.importc: "QTreeView_resetIndentation".}
proc fcQTreeView_rootIsDecorated(self: pointer, ): bool {.importc: "QTreeView_rootIsDecorated".}
proc fcQTreeView_setRootIsDecorated(self: pointer, show: bool): void {.importc: "QTreeView_setRootIsDecorated".}
proc fcQTreeView_uniformRowHeights(self: pointer, ): bool {.importc: "QTreeView_uniformRowHeights".}
proc fcQTreeView_setUniformRowHeights(self: pointer, uniform: bool): void {.importc: "QTreeView_setUniformRowHeights".}
proc fcQTreeView_itemsExpandable(self: pointer, ): bool {.importc: "QTreeView_itemsExpandable".}
proc fcQTreeView_setItemsExpandable(self: pointer, enable: bool): void {.importc: "QTreeView_setItemsExpandable".}
proc fcQTreeView_expandsOnDoubleClick(self: pointer, ): bool {.importc: "QTreeView_expandsOnDoubleClick".}
proc fcQTreeView_setExpandsOnDoubleClick(self: pointer, enable: bool): void {.importc: "QTreeView_setExpandsOnDoubleClick".}
proc fcQTreeView_columnViewportPosition(self: pointer, column: cint): cint {.importc: "QTreeView_columnViewportPosition".}
proc fcQTreeView_columnWidth(self: pointer, column: cint): cint {.importc: "QTreeView_columnWidth".}
proc fcQTreeView_setColumnWidth(self: pointer, column: cint, width: cint): void {.importc: "QTreeView_setColumnWidth".}
proc fcQTreeView_columnAt(self: pointer, x: cint): cint {.importc: "QTreeView_columnAt".}
proc fcQTreeView_isColumnHidden(self: pointer, column: cint): bool {.importc: "QTreeView_isColumnHidden".}
proc fcQTreeView_setColumnHidden(self: pointer, column: cint, hide: bool): void {.importc: "QTreeView_setColumnHidden".}
proc fcQTreeView_isHeaderHidden(self: pointer, ): bool {.importc: "QTreeView_isHeaderHidden".}
proc fcQTreeView_setHeaderHidden(self: pointer, hide: bool): void {.importc: "QTreeView_setHeaderHidden".}
proc fcQTreeView_isRowHidden(self: pointer, row: cint, parent: pointer): bool {.importc: "QTreeView_isRowHidden".}
proc fcQTreeView_setRowHidden(self: pointer, row: cint, parent: pointer, hide: bool): void {.importc: "QTreeView_setRowHidden".}
proc fcQTreeView_isFirstColumnSpanned(self: pointer, row: cint, parent: pointer): bool {.importc: "QTreeView_isFirstColumnSpanned".}
proc fcQTreeView_setFirstColumnSpanned(self: pointer, row: cint, parent: pointer, span: bool): void {.importc: "QTreeView_setFirstColumnSpanned".}
proc fcQTreeView_isExpanded(self: pointer, index: pointer): bool {.importc: "QTreeView_isExpanded".}
proc fcQTreeView_setExpanded(self: pointer, index: pointer, expand: bool): void {.importc: "QTreeView_setExpanded".}
proc fcQTreeView_setSortingEnabled(self: pointer, enable: bool): void {.importc: "QTreeView_setSortingEnabled".}
proc fcQTreeView_isSortingEnabled(self: pointer, ): bool {.importc: "QTreeView_isSortingEnabled".}
proc fcQTreeView_setAnimated(self: pointer, enable: bool): void {.importc: "QTreeView_setAnimated".}
proc fcQTreeView_isAnimated(self: pointer, ): bool {.importc: "QTreeView_isAnimated".}
proc fcQTreeView_setAllColumnsShowFocus(self: pointer, enable: bool): void {.importc: "QTreeView_setAllColumnsShowFocus".}
proc fcQTreeView_allColumnsShowFocus(self: pointer, ): bool {.importc: "QTreeView_allColumnsShowFocus".}
proc fcQTreeView_setWordWrap(self: pointer, on: bool): void {.importc: "QTreeView_setWordWrap".}
proc fcQTreeView_wordWrap(self: pointer, ): bool {.importc: "QTreeView_wordWrap".}
proc fcQTreeView_setTreePosition(self: pointer, logicalIndex: cint): void {.importc: "QTreeView_setTreePosition".}
proc fcQTreeView_treePosition(self: pointer, ): cint {.importc: "QTreeView_treePosition".}
proc fcQTreeView_keyboardSearch(self: pointer, search: struct_miqt_string): void {.importc: "QTreeView_keyboardSearch".}
proc fcQTreeView_visualRect(self: pointer, index: pointer): pointer {.importc: "QTreeView_visualRect".}
proc fcQTreeView_scrollTo(self: pointer, index: pointer, hint: cint): void {.importc: "QTreeView_scrollTo".}
proc fcQTreeView_indexAt(self: pointer, p: pointer): pointer {.importc: "QTreeView_indexAt".}
proc fcQTreeView_indexAbove(self: pointer, index: pointer): pointer {.importc: "QTreeView_indexAbove".}
proc fcQTreeView_indexBelow(self: pointer, index: pointer): pointer {.importc: "QTreeView_indexBelow".}
proc fcQTreeView_doItemsLayout(self: pointer, ): void {.importc: "QTreeView_doItemsLayout".}
proc fcQTreeView_reset(self: pointer, ): void {.importc: "QTreeView_reset".}
proc fcQTreeView_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.importc: "QTreeView_dataChanged".}
proc fcQTreeView_selectAll(self: pointer, ): void {.importc: "QTreeView_selectAll".}
proc fcQTreeView_expanded(self: pointer, index: pointer): void {.importc: "QTreeView_expanded".}
proc fcQTreeView_connect_expanded(self: pointer, slot: int) {.importc: "QTreeView_connect_expanded".}
proc fcQTreeView_collapsed(self: pointer, index: pointer): void {.importc: "QTreeView_collapsed".}
proc fcQTreeView_connect_collapsed(self: pointer, slot: int) {.importc: "QTreeView_connect_collapsed".}
proc fcQTreeView_hideColumn(self: pointer, column: cint): void {.importc: "QTreeView_hideColumn".}
proc fcQTreeView_showColumn(self: pointer, column: cint): void {.importc: "QTreeView_showColumn".}
proc fcQTreeView_expand(self: pointer, index: pointer): void {.importc: "QTreeView_expand".}
proc fcQTreeView_collapse(self: pointer, index: pointer): void {.importc: "QTreeView_collapse".}
proc fcQTreeView_resizeColumnToContents(self: pointer, column: cint): void {.importc: "QTreeView_resizeColumnToContents".}
proc fcQTreeView_sortByColumn(self: pointer, column: cint): void {.importc: "QTreeView_sortByColumn".}
proc fcQTreeView_sortByColumn2(self: pointer, column: cint, order: cint): void {.importc: "QTreeView_sortByColumn2".}
proc fcQTreeView_expandAll(self: pointer, ): void {.importc: "QTreeView_expandAll".}
proc fcQTreeView_expandRecursively(self: pointer, index: pointer): void {.importc: "QTreeView_expandRecursively".}
proc fcQTreeView_collapseAll(self: pointer, ): void {.importc: "QTreeView_collapseAll".}
proc fcQTreeView_expandToDepth(self: pointer, depth: cint): void {.importc: "QTreeView_expandToDepth".}
proc fcQTreeView_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTreeView_tr2".}
proc fcQTreeView_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTreeView_tr3".}
proc fcQTreeView_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QTreeView_trUtf82".}
proc fcQTreeView_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTreeView_trUtf83".}
proc fcQTreeView_expandRecursively2(self: pointer, index: pointer, depth: cint): void {.importc: "QTreeView_expandRecursively2".}
proc fQTreeView_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QTreeView_virtualbase_metaObject".}
proc fcQTreeView_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_metaObject".}
proc fQTreeView_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QTreeView_virtualbase_metacast".}
proc fcQTreeView_override_virtual_metacast(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_metacast".}
proc fQTreeView_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QTreeView_virtualbase_metacall".}
proc fcQTreeView_override_virtual_metacall(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_metacall".}
proc fQTreeView_virtualbase_setModel(self: pointer, model: pointer): void{.importc: "QTreeView_virtualbase_setModel".}
proc fcQTreeView_override_virtual_setModel(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_setModel".}
proc fQTreeView_virtualbase_setRootIndex(self: pointer, index: pointer): void{.importc: "QTreeView_virtualbase_setRootIndex".}
proc fcQTreeView_override_virtual_setRootIndex(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_setRootIndex".}
proc fQTreeView_virtualbase_setSelectionModel(self: pointer, selectionModel: pointer): void{.importc: "QTreeView_virtualbase_setSelectionModel".}
proc fcQTreeView_override_virtual_setSelectionModel(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_setSelectionModel".}
proc fQTreeView_virtualbase_keyboardSearch(self: pointer, search: struct_miqt_string): void{.importc: "QTreeView_virtualbase_keyboardSearch".}
proc fcQTreeView_override_virtual_keyboardSearch(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_keyboardSearch".}
proc fQTreeView_virtualbase_visualRect(self: pointer, index: pointer): pointer{.importc: "QTreeView_virtualbase_visualRect".}
proc fcQTreeView_override_virtual_visualRect(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_visualRect".}
proc fQTreeView_virtualbase_scrollTo(self: pointer, index: pointer, hint: cint): void{.importc: "QTreeView_virtualbase_scrollTo".}
proc fcQTreeView_override_virtual_scrollTo(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_scrollTo".}
proc fQTreeView_virtualbase_indexAt(self: pointer, p: pointer): pointer{.importc: "QTreeView_virtualbase_indexAt".}
proc fcQTreeView_override_virtual_indexAt(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_indexAt".}
proc fQTreeView_virtualbase_doItemsLayout(self: pointer, ): void{.importc: "QTreeView_virtualbase_doItemsLayout".}
proc fcQTreeView_override_virtual_doItemsLayout(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_doItemsLayout".}
proc fQTreeView_virtualbase_reset(self: pointer, ): void{.importc: "QTreeView_virtualbase_reset".}
proc fcQTreeView_override_virtual_reset(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_reset".}
proc fQTreeView_virtualbase_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void{.importc: "QTreeView_virtualbase_dataChanged".}
proc fcQTreeView_override_virtual_dataChanged(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_dataChanged".}
proc fQTreeView_virtualbase_selectAll(self: pointer, ): void{.importc: "QTreeView_virtualbase_selectAll".}
proc fcQTreeView_override_virtual_selectAll(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_selectAll".}
proc fQTreeView_virtualbase_verticalScrollbarValueChanged(self: pointer, value: cint): void{.importc: "QTreeView_virtualbase_verticalScrollbarValueChanged".}
proc fcQTreeView_override_virtual_verticalScrollbarValueChanged(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_verticalScrollbarValueChanged".}
proc fQTreeView_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void{.importc: "QTreeView_virtualbase_scrollContentsBy".}
proc fcQTreeView_override_virtual_scrollContentsBy(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_scrollContentsBy".}
proc fQTreeView_virtualbase_rowsInserted(self: pointer, parent: pointer, start: cint, endVal: cint): void{.importc: "QTreeView_virtualbase_rowsInserted".}
proc fcQTreeView_override_virtual_rowsInserted(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_rowsInserted".}
proc fQTreeView_virtualbase_rowsAboutToBeRemoved(self: pointer, parent: pointer, start: cint, endVal: cint): void{.importc: "QTreeView_virtualbase_rowsAboutToBeRemoved".}
proc fcQTreeView_override_virtual_rowsAboutToBeRemoved(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_rowsAboutToBeRemoved".}
proc fQTreeView_virtualbase_moveCursor(self: pointer, cursorAction: cint, modifiers: cint): pointer{.importc: "QTreeView_virtualbase_moveCursor".}
proc fcQTreeView_override_virtual_moveCursor(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_moveCursor".}
proc fQTreeView_virtualbase_horizontalOffset(self: pointer, ): cint{.importc: "QTreeView_virtualbase_horizontalOffset".}
proc fcQTreeView_override_virtual_horizontalOffset(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_horizontalOffset".}
proc fQTreeView_virtualbase_verticalOffset(self: pointer, ): cint{.importc: "QTreeView_virtualbase_verticalOffset".}
proc fcQTreeView_override_virtual_verticalOffset(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_verticalOffset".}
proc fQTreeView_virtualbase_setSelection(self: pointer, rect: pointer, command: cint): void{.importc: "QTreeView_virtualbase_setSelection".}
proc fcQTreeView_override_virtual_setSelection(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_setSelection".}
proc fQTreeView_virtualbase_visualRegionForSelection(self: pointer, selection: pointer): pointer{.importc: "QTreeView_virtualbase_visualRegionForSelection".}
proc fcQTreeView_override_virtual_visualRegionForSelection(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_visualRegionForSelection".}
proc fQTreeView_virtualbase_selectedIndexes(self: pointer, ): struct_miqt_array{.importc: "QTreeView_virtualbase_selectedIndexes".}
proc fcQTreeView_override_virtual_selectedIndexes(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_selectedIndexes".}
proc fQTreeView_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_timerEvent".}
proc fcQTreeView_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_timerEvent".}
proc fQTreeView_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_paintEvent".}
proc fcQTreeView_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_paintEvent".}
proc fQTreeView_virtualbase_drawRow(self: pointer, painter: pointer, options: pointer, index: pointer): void{.importc: "QTreeView_virtualbase_drawRow".}
proc fcQTreeView_override_virtual_drawRow(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_drawRow".}
proc fQTreeView_virtualbase_drawBranches(self: pointer, painter: pointer, rect: pointer, index: pointer): void{.importc: "QTreeView_virtualbase_drawBranches".}
proc fcQTreeView_override_virtual_drawBranches(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_drawBranches".}
proc fQTreeView_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_mousePressEvent".}
proc fcQTreeView_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_mousePressEvent".}
proc fQTreeView_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_mouseReleaseEvent".}
proc fcQTreeView_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_mouseReleaseEvent".}
proc fQTreeView_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_mouseDoubleClickEvent".}
proc fcQTreeView_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_mouseDoubleClickEvent".}
proc fQTreeView_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_mouseMoveEvent".}
proc fcQTreeView_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_mouseMoveEvent".}
proc fQTreeView_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_keyPressEvent".}
proc fcQTreeView_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_keyPressEvent".}
proc fQTreeView_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_dragMoveEvent".}
proc fcQTreeView_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_dragMoveEvent".}
proc fQTreeView_virtualbase_viewportEvent(self: pointer, event: pointer): bool{.importc: "QTreeView_virtualbase_viewportEvent".}
proc fcQTreeView_override_virtual_viewportEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_viewportEvent".}
proc fQTreeView_virtualbase_updateGeometries(self: pointer, ): void{.importc: "QTreeView_virtualbase_updateGeometries".}
proc fcQTreeView_override_virtual_updateGeometries(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_updateGeometries".}
proc fQTreeView_virtualbase_viewportSizeHint(self: pointer, ): pointer{.importc: "QTreeView_virtualbase_viewportSizeHint".}
proc fcQTreeView_override_virtual_viewportSizeHint(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_viewportSizeHint".}
proc fQTreeView_virtualbase_sizeHintForColumn(self: pointer, column: cint): cint{.importc: "QTreeView_virtualbase_sizeHintForColumn".}
proc fcQTreeView_override_virtual_sizeHintForColumn(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_sizeHintForColumn".}
proc fQTreeView_virtualbase_horizontalScrollbarAction(self: pointer, action: cint): void{.importc: "QTreeView_virtualbase_horizontalScrollbarAction".}
proc fcQTreeView_override_virtual_horizontalScrollbarAction(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_horizontalScrollbarAction".}
proc fQTreeView_virtualbase_isIndexHidden(self: pointer, index: pointer): bool{.importc: "QTreeView_virtualbase_isIndexHidden".}
proc fcQTreeView_override_virtual_isIndexHidden(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_isIndexHidden".}
proc fQTreeView_virtualbase_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void{.importc: "QTreeView_virtualbase_selectionChanged".}
proc fcQTreeView_override_virtual_selectionChanged(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_selectionChanged".}
proc fQTreeView_virtualbase_currentChanged(self: pointer, current: pointer, previous: pointer): void{.importc: "QTreeView_virtualbase_currentChanged".}
proc fcQTreeView_override_virtual_currentChanged(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_currentChanged".}
proc fQTreeView_virtualbase_sizeHintForRow(self: pointer, row: cint): cint{.importc: "QTreeView_virtualbase_sizeHintForRow".}
proc fcQTreeView_override_virtual_sizeHintForRow(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_sizeHintForRow".}
proc fQTreeView_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QTreeView_virtualbase_inputMethodQuery".}
proc fcQTreeView_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_inputMethodQuery".}
proc fQTreeView_virtualbase_updateEditorData(self: pointer, ): void{.importc: "QTreeView_virtualbase_updateEditorData".}
proc fcQTreeView_override_virtual_updateEditorData(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_updateEditorData".}
proc fQTreeView_virtualbase_updateEditorGeometries(self: pointer, ): void{.importc: "QTreeView_virtualbase_updateEditorGeometries".}
proc fcQTreeView_override_virtual_updateEditorGeometries(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_updateEditorGeometries".}
proc fQTreeView_virtualbase_verticalScrollbarAction(self: pointer, action: cint): void{.importc: "QTreeView_virtualbase_verticalScrollbarAction".}
proc fcQTreeView_override_virtual_verticalScrollbarAction(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_verticalScrollbarAction".}
proc fQTreeView_virtualbase_horizontalScrollbarValueChanged(self: pointer, value: cint): void{.importc: "QTreeView_virtualbase_horizontalScrollbarValueChanged".}
proc fcQTreeView_override_virtual_horizontalScrollbarValueChanged(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_horizontalScrollbarValueChanged".}
proc fQTreeView_virtualbase_closeEditor(self: pointer, editor: pointer, hint: cint): void{.importc: "QTreeView_virtualbase_closeEditor".}
proc fcQTreeView_override_virtual_closeEditor(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_closeEditor".}
proc fQTreeView_virtualbase_commitData(self: pointer, editor: pointer): void{.importc: "QTreeView_virtualbase_commitData".}
proc fcQTreeView_override_virtual_commitData(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_commitData".}
proc fQTreeView_virtualbase_editorDestroyed(self: pointer, editor: pointer): void{.importc: "QTreeView_virtualbase_editorDestroyed".}
proc fcQTreeView_override_virtual_editorDestroyed(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_editorDestroyed".}
proc fQTreeView_virtualbase_edit2(self: pointer, index: pointer, trigger: cint, event: pointer): bool{.importc: "QTreeView_virtualbase_edit2".}
proc fcQTreeView_override_virtual_edit2(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_edit2".}
proc fQTreeView_virtualbase_selectionCommand(self: pointer, index: pointer, event: pointer): cint{.importc: "QTreeView_virtualbase_selectionCommand".}
proc fcQTreeView_override_virtual_selectionCommand(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_selectionCommand".}
proc fQTreeView_virtualbase_startDrag(self: pointer, supportedActions: cint): void{.importc: "QTreeView_virtualbase_startDrag".}
proc fcQTreeView_override_virtual_startDrag(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_startDrag".}
proc fQTreeView_virtualbase_viewOptions(self: pointer, ): pointer{.importc: "QTreeView_virtualbase_viewOptions".}
proc fcQTreeView_override_virtual_viewOptions(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_viewOptions".}
proc fQTreeView_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QTreeView_virtualbase_focusNextPrevChild".}
proc fcQTreeView_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_focusNextPrevChild".}
proc fQTreeView_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QTreeView_virtualbase_event".}
proc fcQTreeView_override_virtual_event(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_event".}
proc fQTreeView_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_dragEnterEvent".}
proc fcQTreeView_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_dragEnterEvent".}
proc fQTreeView_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_dragLeaveEvent".}
proc fcQTreeView_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_dragLeaveEvent".}
proc fQTreeView_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_dropEvent".}
proc fcQTreeView_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_dropEvent".}
proc fQTreeView_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_focusInEvent".}
proc fcQTreeView_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_focusInEvent".}
proc fQTreeView_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_focusOutEvent".}
proc fcQTreeView_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_focusOutEvent".}
proc fQTreeView_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_resizeEvent".}
proc fcQTreeView_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_resizeEvent".}
proc fQTreeView_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_inputMethodEvent".}
proc fcQTreeView_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_inputMethodEvent".}
proc fQTreeView_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool{.importc: "QTreeView_virtualbase_eventFilter".}
proc fcQTreeView_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_eventFilter".}
proc fQTreeView_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QTreeView_virtualbase_minimumSizeHint".}
proc fcQTreeView_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_minimumSizeHint".}
proc fQTreeView_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QTreeView_virtualbase_sizeHint".}
proc fcQTreeView_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_sizeHint".}
proc fQTreeView_virtualbase_setupViewport(self: pointer, viewport: pointer): void{.importc: "QTreeView_virtualbase_setupViewport".}
proc fcQTreeView_override_virtual_setupViewport(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_setupViewport".}
proc fQTreeView_virtualbase_wheelEvent(self: pointer, param1: pointer): void{.importc: "QTreeView_virtualbase_wheelEvent".}
proc fcQTreeView_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_wheelEvent".}
proc fQTreeView_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QTreeView_virtualbase_contextMenuEvent".}
proc fcQTreeView_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_contextMenuEvent".}
proc fQTreeView_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QTreeView_virtualbase_changeEvent".}
proc fcQTreeView_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_changeEvent".}
proc fQTreeView_virtualbase_devType(self: pointer, ): cint{.importc: "QTreeView_virtualbase_devType".}
proc fcQTreeView_override_virtual_devType(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_devType".}
proc fQTreeView_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QTreeView_virtualbase_setVisible".}
proc fcQTreeView_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_setVisible".}
proc fQTreeView_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QTreeView_virtualbase_heightForWidth".}
proc fcQTreeView_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_heightForWidth".}
proc fQTreeView_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QTreeView_virtualbase_hasHeightForWidth".}
proc fcQTreeView_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_hasHeightForWidth".}
proc fQTreeView_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QTreeView_virtualbase_paintEngine".}
proc fcQTreeView_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_paintEngine".}
proc fQTreeView_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_keyReleaseEvent".}
proc fcQTreeView_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_keyReleaseEvent".}
proc fQTreeView_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_enterEvent".}
proc fcQTreeView_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_enterEvent".}
proc fQTreeView_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_leaveEvent".}
proc fcQTreeView_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_leaveEvent".}
proc fQTreeView_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_moveEvent".}
proc fcQTreeView_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_moveEvent".}
proc fQTreeView_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_closeEvent".}
proc fcQTreeView_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_closeEvent".}
proc fQTreeView_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_tabletEvent".}
proc fcQTreeView_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_tabletEvent".}
proc fQTreeView_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_actionEvent".}
proc fcQTreeView_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_actionEvent".}
proc fQTreeView_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_showEvent".}
proc fcQTreeView_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_showEvent".}
proc fQTreeView_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_hideEvent".}
proc fcQTreeView_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_hideEvent".}
proc fQTreeView_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QTreeView_virtualbase_nativeEvent".}
proc fcQTreeView_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_nativeEvent".}
proc fQTreeView_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QTreeView_virtualbase_metric".}
proc fcQTreeView_override_virtual_metric(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_metric".}
proc fQTreeView_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QTreeView_virtualbase_initPainter".}
proc fcQTreeView_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_initPainter".}
proc fQTreeView_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QTreeView_virtualbase_redirected".}
proc fcQTreeView_override_virtual_redirected(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_redirected".}
proc fQTreeView_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QTreeView_virtualbase_sharedPainter".}
proc fcQTreeView_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_sharedPainter".}
proc fQTreeView_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_childEvent".}
proc fcQTreeView_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_childEvent".}
proc fQTreeView_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_customEvent".}
proc fcQTreeView_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_customEvent".}
proc fQTreeView_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QTreeView_virtualbase_connectNotify".}
proc fcQTreeView_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_connectNotify".}
proc fQTreeView_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QTreeView_virtualbase_disconnectNotify".}
proc fcQTreeView_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_disconnectNotify".}
proc fcQTreeView_staticMetaObject(): pointer {.importc: "QTreeView_staticMetaObject".}
proc fcQTreeView_delete(self: pointer) {.importc: "QTreeView_delete".}


func init*(T: type gen_qtreeview_types.QTreeView, h: ptr cQTreeView): gen_qtreeview_types.QTreeView =
  T(h: h)
proc create*(T: type gen_qtreeview_types.QTreeView, parent: gen_qwidget_types.QWidget): gen_qtreeview_types.QTreeView =
  gen_qtreeview_types.QTreeView.init(fcQTreeView_new(parent.h))

proc create*(T: type gen_qtreeview_types.QTreeView, ): gen_qtreeview_types.QTreeView =
  gen_qtreeview_types.QTreeView.init(fcQTreeView_new2())

proc metaObject*(self: gen_qtreeview_types.QTreeView, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTreeView_metaObject(self.h))

proc metacast*(self: gen_qtreeview_types.QTreeView, param1: cstring): pointer =
  fcQTreeView_metacast(self.h, param1)

proc metacall*(self: gen_qtreeview_types.QTreeView, param1: cint, param2: cint, param3: pointer): cint =
  fcQTreeView_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qtreeview_types.QTreeView, s: cstring): string =
  let v_ms = fcQTreeView_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtreeview_types.QTreeView, s: cstring): string =
  let v_ms = fcQTreeView_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setModel*(self: gen_qtreeview_types.QTreeView, model: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQTreeView_setModel(self.h, model.h)

proc setRootIndex*(self: gen_qtreeview_types.QTreeView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQTreeView_setRootIndex(self.h, index.h)

proc setSelectionModel*(self: gen_qtreeview_types.QTreeView, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void =
  fcQTreeView_setSelectionModel(self.h, selectionModel.h)

proc header*(self: gen_qtreeview_types.QTreeView, ): gen_qheaderview_types.QHeaderView =
  gen_qheaderview_types.QHeaderView(h: fcQTreeView_header(self.h))

proc setHeader*(self: gen_qtreeview_types.QTreeView, header: gen_qheaderview_types.QHeaderView): void =
  fcQTreeView_setHeader(self.h, header.h)

proc autoExpandDelay*(self: gen_qtreeview_types.QTreeView, ): cint =
  fcQTreeView_autoExpandDelay(self.h)

proc setAutoExpandDelay*(self: gen_qtreeview_types.QTreeView, delay: cint): void =
  fcQTreeView_setAutoExpandDelay(self.h, delay)

proc indentation*(self: gen_qtreeview_types.QTreeView, ): cint =
  fcQTreeView_indentation(self.h)

proc setIndentation*(self: gen_qtreeview_types.QTreeView, i: cint): void =
  fcQTreeView_setIndentation(self.h, i)

proc resetIndentation*(self: gen_qtreeview_types.QTreeView, ): void =
  fcQTreeView_resetIndentation(self.h)

proc rootIsDecorated*(self: gen_qtreeview_types.QTreeView, ): bool =
  fcQTreeView_rootIsDecorated(self.h)

proc setRootIsDecorated*(self: gen_qtreeview_types.QTreeView, show: bool): void =
  fcQTreeView_setRootIsDecorated(self.h, show)

proc uniformRowHeights*(self: gen_qtreeview_types.QTreeView, ): bool =
  fcQTreeView_uniformRowHeights(self.h)

proc setUniformRowHeights*(self: gen_qtreeview_types.QTreeView, uniform: bool): void =
  fcQTreeView_setUniformRowHeights(self.h, uniform)

proc itemsExpandable*(self: gen_qtreeview_types.QTreeView, ): bool =
  fcQTreeView_itemsExpandable(self.h)

proc setItemsExpandable*(self: gen_qtreeview_types.QTreeView, enable: bool): void =
  fcQTreeView_setItemsExpandable(self.h, enable)

proc expandsOnDoubleClick*(self: gen_qtreeview_types.QTreeView, ): bool =
  fcQTreeView_expandsOnDoubleClick(self.h)

proc setExpandsOnDoubleClick*(self: gen_qtreeview_types.QTreeView, enable: bool): void =
  fcQTreeView_setExpandsOnDoubleClick(self.h, enable)

proc columnViewportPosition*(self: gen_qtreeview_types.QTreeView, column: cint): cint =
  fcQTreeView_columnViewportPosition(self.h, column)

proc columnWidth*(self: gen_qtreeview_types.QTreeView, column: cint): cint =
  fcQTreeView_columnWidth(self.h, column)

proc setColumnWidth*(self: gen_qtreeview_types.QTreeView, column: cint, width: cint): void =
  fcQTreeView_setColumnWidth(self.h, column, width)

proc columnAt*(self: gen_qtreeview_types.QTreeView, x: cint): cint =
  fcQTreeView_columnAt(self.h, x)

proc isColumnHidden*(self: gen_qtreeview_types.QTreeView, column: cint): bool =
  fcQTreeView_isColumnHidden(self.h, column)

proc setColumnHidden*(self: gen_qtreeview_types.QTreeView, column: cint, hide: bool): void =
  fcQTreeView_setColumnHidden(self.h, column, hide)

proc isHeaderHidden*(self: gen_qtreeview_types.QTreeView, ): bool =
  fcQTreeView_isHeaderHidden(self.h)

proc setHeaderHidden*(self: gen_qtreeview_types.QTreeView, hide: bool): void =
  fcQTreeView_setHeaderHidden(self.h, hide)

proc isRowHidden*(self: gen_qtreeview_types.QTreeView, row: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQTreeView_isRowHidden(self.h, row, parent.h)

proc setRowHidden*(self: gen_qtreeview_types.QTreeView, row: cint, parent: gen_qabstractitemmodel_types.QModelIndex, hide: bool): void =
  fcQTreeView_setRowHidden(self.h, row, parent.h, hide)

proc isFirstColumnSpanned*(self: gen_qtreeview_types.QTreeView, row: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQTreeView_isFirstColumnSpanned(self.h, row, parent.h)

proc setFirstColumnSpanned*(self: gen_qtreeview_types.QTreeView, row: cint, parent: gen_qabstractitemmodel_types.QModelIndex, span: bool): void =
  fcQTreeView_setFirstColumnSpanned(self.h, row, parent.h, span)

proc isExpanded*(self: gen_qtreeview_types.QTreeView, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQTreeView_isExpanded(self.h, index.h)

proc setExpanded*(self: gen_qtreeview_types.QTreeView, index: gen_qabstractitemmodel_types.QModelIndex, expand: bool): void =
  fcQTreeView_setExpanded(self.h, index.h, expand)

proc setSortingEnabled*(self: gen_qtreeview_types.QTreeView, enable: bool): void =
  fcQTreeView_setSortingEnabled(self.h, enable)

proc isSortingEnabled*(self: gen_qtreeview_types.QTreeView, ): bool =
  fcQTreeView_isSortingEnabled(self.h)

proc setAnimated*(self: gen_qtreeview_types.QTreeView, enable: bool): void =
  fcQTreeView_setAnimated(self.h, enable)

proc isAnimated*(self: gen_qtreeview_types.QTreeView, ): bool =
  fcQTreeView_isAnimated(self.h)

proc setAllColumnsShowFocus*(self: gen_qtreeview_types.QTreeView, enable: bool): void =
  fcQTreeView_setAllColumnsShowFocus(self.h, enable)

proc allColumnsShowFocus*(self: gen_qtreeview_types.QTreeView, ): bool =
  fcQTreeView_allColumnsShowFocus(self.h)

proc setWordWrap*(self: gen_qtreeview_types.QTreeView, on: bool): void =
  fcQTreeView_setWordWrap(self.h, on)

proc wordWrap*(self: gen_qtreeview_types.QTreeView, ): bool =
  fcQTreeView_wordWrap(self.h)

proc setTreePosition*(self: gen_qtreeview_types.QTreeView, logicalIndex: cint): void =
  fcQTreeView_setTreePosition(self.h, logicalIndex)

proc treePosition*(self: gen_qtreeview_types.QTreeView, ): cint =
  fcQTreeView_treePosition(self.h)

proc keyboardSearch*(self: gen_qtreeview_types.QTreeView, search: string): void =
  fcQTreeView_keyboardSearch(self.h, struct_miqt_string(data: search, len: csize_t(len(search))))

proc visualRect*(self: gen_qtreeview_types.QTreeView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQTreeView_visualRect(self.h, index.h))

proc scrollTo*(self: gen_qtreeview_types.QTreeView, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void =
  fcQTreeView_scrollTo(self.h, index.h, cint(hint))

proc indexAt*(self: gen_qtreeview_types.QTreeView, p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTreeView_indexAt(self.h, p.h))

proc indexAbove*(self: gen_qtreeview_types.QTreeView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTreeView_indexAbove(self.h, index.h))

proc indexBelow*(self: gen_qtreeview_types.QTreeView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTreeView_indexBelow(self.h, index.h))

proc doItemsLayout*(self: gen_qtreeview_types.QTreeView, ): void =
  fcQTreeView_doItemsLayout(self.h)

proc reset*(self: gen_qtreeview_types.QTreeView, ): void =
  fcQTreeView_reset(self.h)

proc dataChanged*(self: gen_qtreeview_types.QTreeView, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: seq[cint]): void =
  var roles_CArray = newSeq[cint](len(roles))
  for i in 0..<len(roles):
    roles_CArray[i] = roles[i]

  fcQTreeView_dataChanged(self.h, topLeft.h, bottomRight.h, struct_miqt_array(len: csize_t(len(roles)), data: if len(roles) == 0: nil else: addr(roles_CArray[0])))

proc selectAll*(self: gen_qtreeview_types.QTreeView, ): void =
  fcQTreeView_selectAll(self.h)

proc expanded*(self: gen_qtreeview_types.QTreeView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQTreeView_expanded(self.h, index.h)

type QTreeViewexpandedSlot* = proc(index: gen_qabstractitemmodel_types.QModelIndex)
proc miqt_exec_callback_QTreeView_expanded(slot: int, index: pointer) {.exportc.} =
  let nimfunc = cast[ptr QTreeViewexpandedSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  nimfunc[](slotval1)

proc onexpanded*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewexpandedSlot) =
  var tmp = new QTreeViewexpandedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_connect_expanded(self.h, cast[int](addr tmp[]))

proc collapsed*(self: gen_qtreeview_types.QTreeView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQTreeView_collapsed(self.h, index.h)

type QTreeViewcollapsedSlot* = proc(index: gen_qabstractitemmodel_types.QModelIndex)
proc miqt_exec_callback_QTreeView_collapsed(slot: int, index: pointer) {.exportc.} =
  let nimfunc = cast[ptr QTreeViewcollapsedSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  nimfunc[](slotval1)

proc oncollapsed*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewcollapsedSlot) =
  var tmp = new QTreeViewcollapsedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_connect_collapsed(self.h, cast[int](addr tmp[]))

proc hideColumn*(self: gen_qtreeview_types.QTreeView, column: cint): void =
  fcQTreeView_hideColumn(self.h, column)

proc showColumn*(self: gen_qtreeview_types.QTreeView, column: cint): void =
  fcQTreeView_showColumn(self.h, column)

proc expand*(self: gen_qtreeview_types.QTreeView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQTreeView_expand(self.h, index.h)

proc collapse*(self: gen_qtreeview_types.QTreeView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQTreeView_collapse(self.h, index.h)

proc resizeColumnToContents*(self: gen_qtreeview_types.QTreeView, column: cint): void =
  fcQTreeView_resizeColumnToContents(self.h, column)

proc sortByColumn*(self: gen_qtreeview_types.QTreeView, column: cint): void =
  fcQTreeView_sortByColumn(self.h, column)

proc sortByColumn*(self: gen_qtreeview_types.QTreeView, column: cint, order: cint): void =
  fcQTreeView_sortByColumn2(self.h, column, cint(order))

proc expandAll*(self: gen_qtreeview_types.QTreeView, ): void =
  fcQTreeView_expandAll(self.h)

proc expandRecursively*(self: gen_qtreeview_types.QTreeView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQTreeView_expandRecursively(self.h, index.h)

proc collapseAll*(self: gen_qtreeview_types.QTreeView, ): void =
  fcQTreeView_collapseAll(self.h)

proc expandToDepth*(self: gen_qtreeview_types.QTreeView, depth: cint): void =
  fcQTreeView_expandToDepth(self.h, depth)

proc tr*(_: type gen_qtreeview_types.QTreeView, s: cstring, c: cstring): string =
  let v_ms = fcQTreeView_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qtreeview_types.QTreeView, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTreeView_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtreeview_types.QTreeView, s: cstring, c: cstring): string =
  let v_ms = fcQTreeView_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtreeview_types.QTreeView, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTreeView_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc expandRecursively*(self: gen_qtreeview_types.QTreeView, index: gen_qabstractitemmodel_types.QModelIndex, depth: cint): void =
  fcQTreeView_expandRecursively2(self.h, index.h, depth)

proc QTreeViewmetaObject*(self: gen_qtreeview_types.QTreeView, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQTreeView_virtualbase_metaObject(self.h))

type QTreeViewmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewmetaObjectProc) =
  # TODO check subclass
  var tmp = new QTreeViewmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_metaObject(self: ptr cQTreeView, slot: int): pointer {.exportc: "miqt_exec_callback_QTreeView_metaObject ".} =
  var nimfunc = cast[ptr QTreeViewmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTreeViewmetacast*(self: gen_qtreeview_types.QTreeView, param1: cstring): pointer =
  fQTreeView_virtualbase_metacast(self.h, param1)

type QTreeViewmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewmetacastProc) =
  # TODO check subclass
  var tmp = new QTreeViewmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_metacast(self: ptr cQTreeView, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QTreeView_metacast ".} =
  var nimfunc = cast[ptr QTreeViewmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTreeViewmetacall*(self: gen_qtreeview_types.QTreeView, param1: cint, param2: cint, param3: pointer): cint =
  fQTreeView_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QTreeViewmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewmetacallProc) =
  # TODO check subclass
  var tmp = new QTreeViewmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_metacall(self: ptr cQTreeView, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QTreeView_metacall ".} =
  var nimfunc = cast[ptr QTreeViewmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QTreeViewsetModel*(self: gen_qtreeview_types.QTreeView, model: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fQTreeView_virtualbase_setModel(self.h, model.h)

type QTreeViewsetModelProc* = proc(model: gen_qabstractitemmodel_types.QAbstractItemModel): void
proc onsetModel*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewsetModelProc) =
  # TODO check subclass
  var tmp = new QTreeViewsetModelProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_setModel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_setModel(self: ptr cQTreeView, slot: int, model: pointer): void {.exportc: "miqt_exec_callback_QTreeView_setModel ".} =
  var nimfunc = cast[ptr QTreeViewsetModelProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model)


  nimfunc[](slotval1)
proc QTreeViewsetRootIndex*(self: gen_qtreeview_types.QTreeView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fQTreeView_virtualbase_setRootIndex(self.h, index.h)

type QTreeViewsetRootIndexProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): void
proc onsetRootIndex*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewsetRootIndexProc) =
  # TODO check subclass
  var tmp = new QTreeViewsetRootIndexProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_setRootIndex(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_setRootIndex(self: ptr cQTreeView, slot: int, index: pointer): void {.exportc: "miqt_exec_callback_QTreeView_setRootIndex ".} =
  var nimfunc = cast[ptr QTreeViewsetRootIndexProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  nimfunc[](slotval1)
proc QTreeViewsetSelectionModel*(self: gen_qtreeview_types.QTreeView, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void =
  fQTreeView_virtualbase_setSelectionModel(self.h, selectionModel.h)

type QTreeViewsetSelectionModelProc* = proc(selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void
proc onsetSelectionModel*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewsetSelectionModelProc) =
  # TODO check subclass
  var tmp = new QTreeViewsetSelectionModelProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_setSelectionModel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_setSelectionModel(self: ptr cQTreeView, slot: int, selectionModel: pointer): void {.exportc: "miqt_exec_callback_QTreeView_setSelectionModel ".} =
  var nimfunc = cast[ptr QTreeViewsetSelectionModelProc](cast[pointer](slot))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelectionModel(h: selectionModel)


  nimfunc[](slotval1)
proc QTreeViewkeyboardSearch*(self: gen_qtreeview_types.QTreeView, search: string): void =
  fQTreeView_virtualbase_keyboardSearch(self.h, struct_miqt_string(data: search, len: csize_t(len(search))))

type QTreeViewkeyboardSearchProc* = proc(search: string): void
proc onkeyboardSearch*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewkeyboardSearchProc) =
  # TODO check subclass
  var tmp = new QTreeViewkeyboardSearchProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_keyboardSearch(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_keyboardSearch(self: ptr cQTreeView, slot: int, search: struct_miqt_string): void {.exportc: "miqt_exec_callback_QTreeView_keyboardSearch ".} =
  var nimfunc = cast[ptr QTreeViewkeyboardSearchProc](cast[pointer](slot))
  let vsearch_ms = search
  let vsearchx_ret = string.fromBytes(toOpenArrayByte(vsearch_ms.data, 0, int(vsearch_ms.len)-1))
  c_free(vsearch_ms.data)
  let slotval1 = vsearchx_ret


  nimfunc[](slotval1)
proc QTreeViewvisualRect*(self: gen_qtreeview_types.QTreeView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fQTreeView_virtualbase_visualRect(self.h, index.h))

type QTreeViewvisualRectProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect
proc onvisualRect*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewvisualRectProc) =
  # TODO check subclass
  var tmp = new QTreeViewvisualRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_visualRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_visualRect(self: ptr cQTreeView, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QTreeView_visualRect ".} =
  var nimfunc = cast[ptr QTreeViewvisualRectProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QTreeViewscrollTo*(self: gen_qtreeview_types.QTreeView, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void =
  fQTreeView_virtualbase_scrollTo(self.h, index.h, cint(hint))

type QTreeViewscrollToProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void
proc onscrollTo*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewscrollToProc) =
  # TODO check subclass
  var tmp = new QTreeViewscrollToProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_scrollTo(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_scrollTo(self: ptr cQTreeView, slot: int, index: pointer, hint: cint): void {.exportc: "miqt_exec_callback_QTreeView_scrollTo ".} =
  var nimfunc = cast[ptr QTreeViewscrollToProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = cint(hint)


  nimfunc[](slotval1, slotval2)
proc QTreeViewindexAt*(self: gen_qtreeview_types.QTreeView, p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQTreeView_virtualbase_indexAt(self.h, p.h))

type QTreeViewindexAtProc* = proc(p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex
proc onindexAt*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewindexAtProc) =
  # TODO check subclass
  var tmp = new QTreeViewindexAtProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_indexAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_indexAt(self: ptr cQTreeView, slot: int, p: pointer): pointer {.exportc: "miqt_exec_callback_QTreeView_indexAt ".} =
  var nimfunc = cast[ptr QTreeViewindexAtProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: p)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QTreeViewdoItemsLayout*(self: gen_qtreeview_types.QTreeView, ): void =
  fQTreeView_virtualbase_doItemsLayout(self.h)

type QTreeViewdoItemsLayoutProc* = proc(): void
proc ondoItemsLayout*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewdoItemsLayoutProc) =
  # TODO check subclass
  var tmp = new QTreeViewdoItemsLayoutProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_doItemsLayout(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_doItemsLayout(self: ptr cQTreeView, slot: int): void {.exportc: "miqt_exec_callback_QTreeView_doItemsLayout ".} =
  var nimfunc = cast[ptr QTreeViewdoItemsLayoutProc](cast[pointer](slot))

  nimfunc[]()
proc QTreeViewreset*(self: gen_qtreeview_types.QTreeView, ): void =
  fQTreeView_virtualbase_reset(self.h)

type QTreeViewresetProc* = proc(): void
proc onreset*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewresetProc) =
  # TODO check subclass
  var tmp = new QTreeViewresetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_reset(self: ptr cQTreeView, slot: int): void {.exportc: "miqt_exec_callback_QTreeView_reset ".} =
  var nimfunc = cast[ptr QTreeViewresetProc](cast[pointer](slot))

  nimfunc[]()
proc QTreeViewdataChanged*(self: gen_qtreeview_types.QTreeView, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: seq[cint]): void =
  var roles_CArray = newSeq[cint](len(roles))
  for i in 0..<len(roles):
    roles_CArray[i] = roles[i]

  fQTreeView_virtualbase_dataChanged(self.h, topLeft.h, bottomRight.h, struct_miqt_array(len: csize_t(len(roles)), data: if len(roles) == 0: nil else: addr(roles_CArray[0])))

type QTreeViewdataChangedProc* = proc(topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: seq[cint]): void
proc ondataChanged*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewdataChangedProc) =
  # TODO check subclass
  var tmp = new QTreeViewdataChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_dataChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_dataChanged(self: ptr cQTreeView, slot: int, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.exportc: "miqt_exec_callback_QTreeView_dataChanged ".} =
  var nimfunc = cast[ptr QTreeViewdataChangedProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: topLeft)

  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: bottomRight)

  var vroles_ma = roles
  var vrolesx_ret = newSeq[cint](int(vroles_ma.len))
  let vroles_outCast = cast[ptr UncheckedArray[cint]](vroles_ma.data)
  for i in 0 ..< vroles_ma.len:
    vrolesx_ret[i] = vroles_outCast[i]
  let slotval3 = vrolesx_ret


  nimfunc[](slotval1, slotval2, slotval3)
proc QTreeViewselectAll*(self: gen_qtreeview_types.QTreeView, ): void =
  fQTreeView_virtualbase_selectAll(self.h)

type QTreeViewselectAllProc* = proc(): void
proc onselectAll*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewselectAllProc) =
  # TODO check subclass
  var tmp = new QTreeViewselectAllProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_selectAll(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_selectAll(self: ptr cQTreeView, slot: int): void {.exportc: "miqt_exec_callback_QTreeView_selectAll ".} =
  var nimfunc = cast[ptr QTreeViewselectAllProc](cast[pointer](slot))

  nimfunc[]()
proc QTreeViewverticalScrollbarValueChanged*(self: gen_qtreeview_types.QTreeView, value: cint): void =
  fQTreeView_virtualbase_verticalScrollbarValueChanged(self.h, value)

type QTreeViewverticalScrollbarValueChangedProc* = proc(value: cint): void
proc onverticalScrollbarValueChanged*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewverticalScrollbarValueChangedProc) =
  # TODO check subclass
  var tmp = new QTreeViewverticalScrollbarValueChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_verticalScrollbarValueChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_verticalScrollbarValueChanged(self: ptr cQTreeView, slot: int, value: cint): void {.exportc: "miqt_exec_callback_QTreeView_verticalScrollbarValueChanged ".} =
  var nimfunc = cast[ptr QTreeViewverticalScrollbarValueChangedProc](cast[pointer](slot))
  let slotval1 = value


  nimfunc[](slotval1)
proc QTreeViewscrollContentsBy*(self: gen_qtreeview_types.QTreeView, dx: cint, dy: cint): void =
  fQTreeView_virtualbase_scrollContentsBy(self.h, dx, dy)

type QTreeViewscrollContentsByProc* = proc(dx: cint, dy: cint): void
proc onscrollContentsBy*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewscrollContentsByProc) =
  # TODO check subclass
  var tmp = new QTreeViewscrollContentsByProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_scrollContentsBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_scrollContentsBy(self: ptr cQTreeView, slot: int, dx: cint, dy: cint): void {.exportc: "miqt_exec_callback_QTreeView_scrollContentsBy ".} =
  var nimfunc = cast[ptr QTreeViewscrollContentsByProc](cast[pointer](slot))
  let slotval1 = dx

  let slotval2 = dy


  nimfunc[](slotval1, slotval2)
proc QTreeViewrowsInserted*(self: gen_qtreeview_types.QTreeView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fQTreeView_virtualbase_rowsInserted(self.h, parent.h, start, endVal)

type QTreeViewrowsInsertedProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void
proc onrowsInserted*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewrowsInsertedProc) =
  # TODO check subclass
  var tmp = new QTreeViewrowsInsertedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_rowsInserted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_rowsInserted(self: ptr cQTreeView, slot: int, parent: pointer, start: cint, endVal: cint): void {.exportc: "miqt_exec_callback_QTreeView_rowsInserted ".} =
  var nimfunc = cast[ptr QTreeViewrowsInsertedProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)

  let slotval2 = start

  let slotval3 = endVal


  nimfunc[](slotval1, slotval2, slotval3)
proc QTreeViewrowsAboutToBeRemoved*(self: gen_qtreeview_types.QTreeView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fQTreeView_virtualbase_rowsAboutToBeRemoved(self.h, parent.h, start, endVal)

type QTreeViewrowsAboutToBeRemovedProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void
proc onrowsAboutToBeRemoved*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewrowsAboutToBeRemovedProc) =
  # TODO check subclass
  var tmp = new QTreeViewrowsAboutToBeRemovedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_rowsAboutToBeRemoved(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_rowsAboutToBeRemoved(self: ptr cQTreeView, slot: int, parent: pointer, start: cint, endVal: cint): void {.exportc: "miqt_exec_callback_QTreeView_rowsAboutToBeRemoved ".} =
  var nimfunc = cast[ptr QTreeViewrowsAboutToBeRemovedProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)

  let slotval2 = start

  let slotval3 = endVal


  nimfunc[](slotval1, slotval2, slotval3)
proc QTreeViewmoveCursor*(self: gen_qtreeview_types.QTreeView, cursorAction: cint, modifiers: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQTreeView_virtualbase_moveCursor(self.h, cint(cursorAction), cint(modifiers)))

type QTreeViewmoveCursorProc* = proc(cursorAction: cint, modifiers: cint): gen_qabstractitemmodel_types.QModelIndex
proc onmoveCursor*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewmoveCursorProc) =
  # TODO check subclass
  var tmp = new QTreeViewmoveCursorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_moveCursor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_moveCursor(self: ptr cQTreeView, slot: int, cursorAction: cint, modifiers: cint): pointer {.exportc: "miqt_exec_callback_QTreeView_moveCursor ".} =
  var nimfunc = cast[ptr QTreeViewmoveCursorProc](cast[pointer](slot))
  let slotval1 = cint(cursorAction)

  let slotval2 = cint(modifiers)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QTreeViewhorizontalOffset*(self: gen_qtreeview_types.QTreeView, ): cint =
  fQTreeView_virtualbase_horizontalOffset(self.h)

type QTreeViewhorizontalOffsetProc* = proc(): cint
proc onhorizontalOffset*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewhorizontalOffsetProc) =
  # TODO check subclass
  var tmp = new QTreeViewhorizontalOffsetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_horizontalOffset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_horizontalOffset(self: ptr cQTreeView, slot: int): cint {.exportc: "miqt_exec_callback_QTreeView_horizontalOffset ".} =
  var nimfunc = cast[ptr QTreeViewhorizontalOffsetProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTreeViewverticalOffset*(self: gen_qtreeview_types.QTreeView, ): cint =
  fQTreeView_virtualbase_verticalOffset(self.h)

type QTreeViewverticalOffsetProc* = proc(): cint
proc onverticalOffset*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewverticalOffsetProc) =
  # TODO check subclass
  var tmp = new QTreeViewverticalOffsetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_verticalOffset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_verticalOffset(self: ptr cQTreeView, slot: int): cint {.exportc: "miqt_exec_callback_QTreeView_verticalOffset ".} =
  var nimfunc = cast[ptr QTreeViewverticalOffsetProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTreeViewsetSelection*(self: gen_qtreeview_types.QTreeView, rect: gen_qrect_types.QRect, command: cint): void =
  fQTreeView_virtualbase_setSelection(self.h, rect.h, cint(command))

type QTreeViewsetSelectionProc* = proc(rect: gen_qrect_types.QRect, command: cint): void
proc onsetSelection*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewsetSelectionProc) =
  # TODO check subclass
  var tmp = new QTreeViewsetSelectionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_setSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_setSelection(self: ptr cQTreeView, slot: int, rect: pointer, command: cint): void {.exportc: "miqt_exec_callback_QTreeView_setSelection ".} =
  var nimfunc = cast[ptr QTreeViewsetSelectionProc](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRect(h: rect)

  let slotval2 = cint(command)


  nimfunc[](slotval1, slotval2)
proc QTreeViewvisualRegionForSelection*(self: gen_qtreeview_types.QTreeView, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fQTreeView_virtualbase_visualRegionForSelection(self.h, selection.h))

type QTreeViewvisualRegionForSelectionProc* = proc(selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion
proc onvisualRegionForSelection*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewvisualRegionForSelectionProc) =
  # TODO check subclass
  var tmp = new QTreeViewvisualRegionForSelectionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_visualRegionForSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_visualRegionForSelection(self: ptr cQTreeView, slot: int, selection: pointer): pointer {.exportc: "miqt_exec_callback_QTreeView_visualRegionForSelection ".} =
  var nimfunc = cast[ptr QTreeViewvisualRegionForSelectionProc](cast[pointer](slot))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QTreeViewselectedIndexes*(self: gen_qtreeview_types.QTreeView, ): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fQTreeView_virtualbase_selectedIndexes(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  vx_ret

type QTreeViewselectedIndexesProc* = proc(): seq[gen_qabstractitemmodel_types.QModelIndex]
proc onselectedIndexes*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewselectedIndexesProc) =
  # TODO check subclass
  var tmp = new QTreeViewselectedIndexesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_selectedIndexes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_selectedIndexes(self: ptr cQTreeView, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QTreeView_selectedIndexes ".} =
  var nimfunc = cast[ptr QTreeViewselectedIndexesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[pointer](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QTreeViewtimerEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qcoreevent_types.QTimerEvent): void =
  fQTreeView_virtualbase_timerEvent(self.h, event.h)

type QTreeViewtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewtimerEventProc) =
  # TODO check subclass
  var tmp = new QTreeViewtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_timerEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_timerEvent ".} =
  var nimfunc = cast[ptr QTreeViewtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QTreeViewpaintEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qevent_types.QPaintEvent): void =
  fQTreeView_virtualbase_paintEvent(self.h, event.h)

type QTreeViewpaintEventProc* = proc(event: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewpaintEventProc) =
  # TODO check subclass
  var tmp = new QTreeViewpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_paintEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_paintEvent ".} =
  var nimfunc = cast[ptr QTreeViewpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)


  nimfunc[](slotval1)
proc QTreeViewdrawRow*(self: gen_qtreeview_types.QTreeView, painter: gen_qpainter_types.QPainter, options: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fQTreeView_virtualbase_drawRow(self.h, painter.h, options.h, index.h)

type QTreeViewdrawRowProc* = proc(painter: gen_qpainter_types.QPainter, options: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void
proc ondrawRow*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewdrawRowProc) =
  # TODO check subclass
  var tmp = new QTreeViewdrawRowProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_drawRow(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_drawRow(self: ptr cQTreeView, slot: int, painter: pointer, options: pointer, index: pointer): void {.exportc: "miqt_exec_callback_QTreeView_drawRow ".} =
  var nimfunc = cast[ptr QTreeViewdrawRowProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)

  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: options)

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  nimfunc[](slotval1, slotval2, slotval3)
proc QTreeViewdrawBranches*(self: gen_qtreeview_types.QTreeView, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fQTreeView_virtualbase_drawBranches(self.h, painter.h, rect.h, index.h)

type QTreeViewdrawBranchesProc* = proc(painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, index: gen_qabstractitemmodel_types.QModelIndex): void
proc ondrawBranches*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewdrawBranchesProc) =
  # TODO check subclass
  var tmp = new QTreeViewdrawBranchesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_drawBranches(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_drawBranches(self: ptr cQTreeView, slot: int, painter: pointer, rect: pointer, index: pointer): void {.exportc: "miqt_exec_callback_QTreeView_drawBranches ".} =
  var nimfunc = cast[ptr QTreeViewdrawBranchesProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)

  let slotval2 = gen_qrect_types.QRect(h: rect)

  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  nimfunc[](slotval1, slotval2, slotval3)
proc QTreeViewmousePressEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qevent_types.QMouseEvent): void =
  fQTreeView_virtualbase_mousePressEvent(self.h, event.h)

type QTreeViewmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewmousePressEventProc) =
  # TODO check subclass
  var tmp = new QTreeViewmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_mousePressEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_mousePressEvent ".} =
  var nimfunc = cast[ptr QTreeViewmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QTreeViewmouseReleaseEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qevent_types.QMouseEvent): void =
  fQTreeView_virtualbase_mouseReleaseEvent(self.h, event.h)

type QTreeViewmouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QTreeViewmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_mouseReleaseEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QTreeViewmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QTreeViewmouseDoubleClickEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qevent_types.QMouseEvent): void =
  fQTreeView_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QTreeViewmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QTreeViewmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_mouseDoubleClickEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QTreeViewmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QTreeViewmouseMoveEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qevent_types.QMouseEvent): void =
  fQTreeView_virtualbase_mouseMoveEvent(self.h, event.h)

type QTreeViewmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QTreeViewmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_mouseMoveEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QTreeViewmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QTreeViewkeyPressEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qevent_types.QKeyEvent): void =
  fQTreeView_virtualbase_keyPressEvent(self.h, event.h)

type QTreeViewkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QTreeViewkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_keyPressEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_keyPressEvent ".} =
  var nimfunc = cast[ptr QTreeViewkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QTreeViewdragMoveEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qevent_types.QDragMoveEvent): void =
  fQTreeView_virtualbase_dragMoveEvent(self.h, event.h)

type QTreeViewdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QTreeViewdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_dragMoveEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_dragMoveEvent ".} =
  var nimfunc = cast[ptr QTreeViewdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QTreeViewviewportEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qcoreevent_types.QEvent): bool =
  fQTreeView_virtualbase_viewportEvent(self.h, event.h)

type QTreeViewviewportEventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onviewportEvent*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewviewportEventProc) =
  # TODO check subclass
  var tmp = new QTreeViewviewportEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_viewportEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_viewportEvent(self: ptr cQTreeView, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QTreeView_viewportEvent ".} =
  var nimfunc = cast[ptr QTreeViewviewportEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTreeViewupdateGeometries*(self: gen_qtreeview_types.QTreeView, ): void =
  fQTreeView_virtualbase_updateGeometries(self.h)

type QTreeViewupdateGeometriesProc* = proc(): void
proc onupdateGeometries*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewupdateGeometriesProc) =
  # TODO check subclass
  var tmp = new QTreeViewupdateGeometriesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_updateGeometries(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_updateGeometries(self: ptr cQTreeView, slot: int): void {.exportc: "miqt_exec_callback_QTreeView_updateGeometries ".} =
  var nimfunc = cast[ptr QTreeViewupdateGeometriesProc](cast[pointer](slot))

  nimfunc[]()
proc QTreeViewviewportSizeHint*(self: gen_qtreeview_types.QTreeView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQTreeView_virtualbase_viewportSizeHint(self.h))

type QTreeViewviewportSizeHintProc* = proc(): gen_qsize_types.QSize
proc onviewportSizeHint*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewviewportSizeHintProc) =
  # TODO check subclass
  var tmp = new QTreeViewviewportSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_viewportSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_viewportSizeHint(self: ptr cQTreeView, slot: int): pointer {.exportc: "miqt_exec_callback_QTreeView_viewportSizeHint ".} =
  var nimfunc = cast[ptr QTreeViewviewportSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTreeViewsizeHintForColumn*(self: gen_qtreeview_types.QTreeView, column: cint): cint =
  fQTreeView_virtualbase_sizeHintForColumn(self.h, column)

type QTreeViewsizeHintForColumnProc* = proc(column: cint): cint
proc onsizeHintForColumn*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewsizeHintForColumnProc) =
  # TODO check subclass
  var tmp = new QTreeViewsizeHintForColumnProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_sizeHintForColumn(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_sizeHintForColumn(self: ptr cQTreeView, slot: int, column: cint): cint {.exportc: "miqt_exec_callback_QTreeView_sizeHintForColumn ".} =
  var nimfunc = cast[ptr QTreeViewsizeHintForColumnProc](cast[pointer](slot))
  let slotval1 = column


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTreeViewhorizontalScrollbarAction*(self: gen_qtreeview_types.QTreeView, action: cint): void =
  fQTreeView_virtualbase_horizontalScrollbarAction(self.h, action)

type QTreeViewhorizontalScrollbarActionProc* = proc(action: cint): void
proc onhorizontalScrollbarAction*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewhorizontalScrollbarActionProc) =
  # TODO check subclass
  var tmp = new QTreeViewhorizontalScrollbarActionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_horizontalScrollbarAction(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_horizontalScrollbarAction(self: ptr cQTreeView, slot: int, action: cint): void {.exportc: "miqt_exec_callback_QTreeView_horizontalScrollbarAction ".} =
  var nimfunc = cast[ptr QTreeViewhorizontalScrollbarActionProc](cast[pointer](slot))
  let slotval1 = action


  nimfunc[](slotval1)
proc QTreeViewisIndexHidden*(self: gen_qtreeview_types.QTreeView, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQTreeView_virtualbase_isIndexHidden(self.h, index.h)

type QTreeViewisIndexHiddenProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): bool
proc onisIndexHidden*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewisIndexHiddenProc) =
  # TODO check subclass
  var tmp = new QTreeViewisIndexHiddenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_isIndexHidden(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_isIndexHidden(self: ptr cQTreeView, slot: int, index: pointer): bool {.exportc: "miqt_exec_callback_QTreeView_isIndexHidden ".} =
  var nimfunc = cast[ptr QTreeViewisIndexHiddenProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTreeViewselectionChanged*(self: gen_qtreeview_types.QTreeView, selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void =
  fQTreeView_virtualbase_selectionChanged(self.h, selected.h, deselected.h)

type QTreeViewselectionChangedProc* = proc(selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void
proc onselectionChanged*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewselectionChangedProc) =
  # TODO check subclass
  var tmp = new QTreeViewselectionChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_selectionChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_selectionChanged(self: ptr cQTreeView, slot: int, selected: pointer, deselected: pointer): void {.exportc: "miqt_exec_callback_QTreeView_selectionChanged ".} =
  var nimfunc = cast[ptr QTreeViewselectionChangedProc](cast[pointer](slot))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selected)

  let slotval2 = gen_qitemselectionmodel_types.QItemSelection(h: deselected)


  nimfunc[](slotval1, slotval2)
proc QTreeViewcurrentChanged*(self: gen_qtreeview_types.QTreeView, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void =
  fQTreeView_virtualbase_currentChanged(self.h, current.h, previous.h)

type QTreeViewcurrentChangedProc* = proc(current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void
proc oncurrentChanged*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewcurrentChangedProc) =
  # TODO check subclass
  var tmp = new QTreeViewcurrentChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_currentChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_currentChanged(self: ptr cQTreeView, slot: int, current: pointer, previous: pointer): void {.exportc: "miqt_exec_callback_QTreeView_currentChanged ".} =
  var nimfunc = cast[ptr QTreeViewcurrentChangedProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: current)

  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: previous)


  nimfunc[](slotval1, slotval2)
proc QTreeViewsizeHintForRow*(self: gen_qtreeview_types.QTreeView, row: cint): cint =
  fQTreeView_virtualbase_sizeHintForRow(self.h, row)

type QTreeViewsizeHintForRowProc* = proc(row: cint): cint
proc onsizeHintForRow*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewsizeHintForRowProc) =
  # TODO check subclass
  var tmp = new QTreeViewsizeHintForRowProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_sizeHintForRow(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_sizeHintForRow(self: ptr cQTreeView, slot: int, row: cint): cint {.exportc: "miqt_exec_callback_QTreeView_sizeHintForRow ".} =
  var nimfunc = cast[ptr QTreeViewsizeHintForRowProc](cast[pointer](slot))
  let slotval1 = row


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTreeViewinputMethodQuery*(self: gen_qtreeview_types.QTreeView, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQTreeView_virtualbase_inputMethodQuery(self.h, cint(query)))

type QTreeViewinputMethodQueryProc* = proc(query: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QTreeViewinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_inputMethodQuery(self: ptr cQTreeView, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QTreeView_inputMethodQuery ".} =
  var nimfunc = cast[ptr QTreeViewinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(query)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QTreeViewupdateEditorData*(self: gen_qtreeview_types.QTreeView, ): void =
  fQTreeView_virtualbase_updateEditorData(self.h)

type QTreeViewupdateEditorDataProc* = proc(): void
proc onupdateEditorData*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewupdateEditorDataProc) =
  # TODO check subclass
  var tmp = new QTreeViewupdateEditorDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_updateEditorData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_updateEditorData(self: ptr cQTreeView, slot: int): void {.exportc: "miqt_exec_callback_QTreeView_updateEditorData ".} =
  var nimfunc = cast[ptr QTreeViewupdateEditorDataProc](cast[pointer](slot))

  nimfunc[]()
proc QTreeViewupdateEditorGeometries*(self: gen_qtreeview_types.QTreeView, ): void =
  fQTreeView_virtualbase_updateEditorGeometries(self.h)

type QTreeViewupdateEditorGeometriesProc* = proc(): void
proc onupdateEditorGeometries*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewupdateEditorGeometriesProc) =
  # TODO check subclass
  var tmp = new QTreeViewupdateEditorGeometriesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_updateEditorGeometries(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_updateEditorGeometries(self: ptr cQTreeView, slot: int): void {.exportc: "miqt_exec_callback_QTreeView_updateEditorGeometries ".} =
  var nimfunc = cast[ptr QTreeViewupdateEditorGeometriesProc](cast[pointer](slot))

  nimfunc[]()
proc QTreeViewverticalScrollbarAction*(self: gen_qtreeview_types.QTreeView, action: cint): void =
  fQTreeView_virtualbase_verticalScrollbarAction(self.h, action)

type QTreeViewverticalScrollbarActionProc* = proc(action: cint): void
proc onverticalScrollbarAction*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewverticalScrollbarActionProc) =
  # TODO check subclass
  var tmp = new QTreeViewverticalScrollbarActionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_verticalScrollbarAction(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_verticalScrollbarAction(self: ptr cQTreeView, slot: int, action: cint): void {.exportc: "miqt_exec_callback_QTreeView_verticalScrollbarAction ".} =
  var nimfunc = cast[ptr QTreeViewverticalScrollbarActionProc](cast[pointer](slot))
  let slotval1 = action


  nimfunc[](slotval1)
proc QTreeViewhorizontalScrollbarValueChanged*(self: gen_qtreeview_types.QTreeView, value: cint): void =
  fQTreeView_virtualbase_horizontalScrollbarValueChanged(self.h, value)

type QTreeViewhorizontalScrollbarValueChangedProc* = proc(value: cint): void
proc onhorizontalScrollbarValueChanged*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewhorizontalScrollbarValueChangedProc) =
  # TODO check subclass
  var tmp = new QTreeViewhorizontalScrollbarValueChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_horizontalScrollbarValueChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_horizontalScrollbarValueChanged(self: ptr cQTreeView, slot: int, value: cint): void {.exportc: "miqt_exec_callback_QTreeView_horizontalScrollbarValueChanged ".} =
  var nimfunc = cast[ptr QTreeViewhorizontalScrollbarValueChangedProc](cast[pointer](slot))
  let slotval1 = value


  nimfunc[](slotval1)
proc QTreeViewcloseEditor*(self: gen_qtreeview_types.QTreeView, editor: gen_qwidget_types.QWidget, hint: cint): void =
  fQTreeView_virtualbase_closeEditor(self.h, editor.h, cint(hint))

type QTreeViewcloseEditorProc* = proc(editor: gen_qwidget_types.QWidget, hint: cint): void
proc oncloseEditor*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewcloseEditorProc) =
  # TODO check subclass
  var tmp = new QTreeViewcloseEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_closeEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_closeEditor(self: ptr cQTreeView, slot: int, editor: pointer, hint: cint): void {.exportc: "miqt_exec_callback_QTreeView_closeEditor ".} =
  var nimfunc = cast[ptr QTreeViewcloseEditorProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: editor)

  let slotval2 = cint(hint)


  nimfunc[](slotval1, slotval2)
proc QTreeViewcommitData*(self: gen_qtreeview_types.QTreeView, editor: gen_qwidget_types.QWidget): void =
  fQTreeView_virtualbase_commitData(self.h, editor.h)

type QTreeViewcommitDataProc* = proc(editor: gen_qwidget_types.QWidget): void
proc oncommitData*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewcommitDataProc) =
  # TODO check subclass
  var tmp = new QTreeViewcommitDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_commitData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_commitData(self: ptr cQTreeView, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QTreeView_commitData ".} =
  var nimfunc = cast[ptr QTreeViewcommitDataProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: editor)


  nimfunc[](slotval1)
proc QTreeVieweditorDestroyed*(self: gen_qtreeview_types.QTreeView, editor: gen_qobject_types.QObject): void =
  fQTreeView_virtualbase_editorDestroyed(self.h, editor.h)

type QTreeVieweditorDestroyedProc* = proc(editor: gen_qobject_types.QObject): void
proc oneditorDestroyed*(self: gen_qtreeview_types.QTreeView, slot: QTreeVieweditorDestroyedProc) =
  # TODO check subclass
  var tmp = new QTreeVieweditorDestroyedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_editorDestroyed(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_editorDestroyed(self: ptr cQTreeView, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QTreeView_editorDestroyed ".} =
  var nimfunc = cast[ptr QTreeVieweditorDestroyedProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: editor)


  nimfunc[](slotval1)
proc QTreeViewedit*(self: gen_qtreeview_types.QTreeView, index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool =
  fQTreeView_virtualbase_edit2(self.h, index.h, cint(trigger), event.h)

type QTreeViewedit2Proc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool
proc onedit*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewedit2Proc) =
  # TODO check subclass
  var tmp = new QTreeViewedit2Proc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_edit2(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_edit2(self: ptr cQTreeView, slot: int, index: pointer, trigger: cint, event: pointer): bool {.exportc: "miqt_exec_callback_QTreeView_edit2 ".} =
  var nimfunc = cast[ptr QTreeViewedit2Proc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = cint(trigger)

  let slotval3 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QTreeViewselectionCommand*(self: gen_qtreeview_types.QTreeView, index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint =
  cint(fQTreeView_virtualbase_selectionCommand(self.h, index.h, event.h))

type QTreeViewselectionCommandProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint
proc onselectionCommand*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewselectionCommandProc) =
  # TODO check subclass
  var tmp = new QTreeViewselectionCommandProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_selectionCommand(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_selectionCommand(self: ptr cQTreeView, slot: int, index: pointer, event: pointer): cint {.exportc: "miqt_exec_callback_QTreeView_selectionCommand ".} =
  var nimfunc = cast[ptr QTreeViewselectionCommandProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  cint(virtualReturn)
proc QTreeViewstartDrag*(self: gen_qtreeview_types.QTreeView, supportedActions: cint): void =
  fQTreeView_virtualbase_startDrag(self.h, cint(supportedActions))

type QTreeViewstartDragProc* = proc(supportedActions: cint): void
proc onstartDrag*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewstartDragProc) =
  # TODO check subclass
  var tmp = new QTreeViewstartDragProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_startDrag(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_startDrag(self: ptr cQTreeView, slot: int, supportedActions: cint): void {.exportc: "miqt_exec_callback_QTreeView_startDrag ".} =
  var nimfunc = cast[ptr QTreeViewstartDragProc](cast[pointer](slot))
  let slotval1 = cint(supportedActions)


  nimfunc[](slotval1)
proc QTreeViewviewOptions*(self: gen_qtreeview_types.QTreeView, ): gen_qstyleoption_types.QStyleOptionViewItem =
  gen_qstyleoption_types.QStyleOptionViewItem(h: fQTreeView_virtualbase_viewOptions(self.h))

type QTreeViewviewOptionsProc* = proc(): gen_qstyleoption_types.QStyleOptionViewItem
proc onviewOptions*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewviewOptionsProc) =
  # TODO check subclass
  var tmp = new QTreeViewviewOptionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_viewOptions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_viewOptions(self: ptr cQTreeView, slot: int): pointer {.exportc: "miqt_exec_callback_QTreeView_viewOptions ".} =
  var nimfunc = cast[ptr QTreeViewviewOptionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTreeViewfocusNextPrevChild*(self: gen_qtreeview_types.QTreeView, next: bool): bool =
  fQTreeView_virtualbase_focusNextPrevChild(self.h, next)

type QTreeViewfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QTreeViewfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_focusNextPrevChild(self: ptr cQTreeView, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QTreeView_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QTreeViewfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTreeViewevent*(self: gen_qtreeview_types.QTreeView, event: gen_qcoreevent_types.QEvent): bool =
  fQTreeView_virtualbase_event(self.h, event.h)

type QTreeVieweventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qtreeview_types.QTreeView, slot: QTreeVieweventProc) =
  # TODO check subclass
  var tmp = new QTreeVieweventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_event(self: ptr cQTreeView, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QTreeView_event ".} =
  var nimfunc = cast[ptr QTreeVieweventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTreeViewdragEnterEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qevent_types.QDragEnterEvent): void =
  fQTreeView_virtualbase_dragEnterEvent(self.h, event.h)

type QTreeViewdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QTreeViewdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_dragEnterEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_dragEnterEvent ".} =
  var nimfunc = cast[ptr QTreeViewdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QTreeViewdragLeaveEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qevent_types.QDragLeaveEvent): void =
  fQTreeView_virtualbase_dragLeaveEvent(self.h, event.h)

type QTreeViewdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QTreeViewdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_dragLeaveEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QTreeViewdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QTreeViewdropEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qevent_types.QDropEvent): void =
  fQTreeView_virtualbase_dropEvent(self.h, event.h)

type QTreeViewdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewdropEventProc) =
  # TODO check subclass
  var tmp = new QTreeViewdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_dropEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_dropEvent ".} =
  var nimfunc = cast[ptr QTreeViewdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QTreeViewfocusInEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qevent_types.QFocusEvent): void =
  fQTreeView_virtualbase_focusInEvent(self.h, event.h)

type QTreeViewfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewfocusInEventProc) =
  # TODO check subclass
  var tmp = new QTreeViewfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_focusInEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_focusInEvent ".} =
  var nimfunc = cast[ptr QTreeViewfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QTreeViewfocusOutEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qevent_types.QFocusEvent): void =
  fQTreeView_virtualbase_focusOutEvent(self.h, event.h)

type QTreeViewfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QTreeViewfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_focusOutEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_focusOutEvent ".} =
  var nimfunc = cast[ptr QTreeViewfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QTreeViewresizeEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qevent_types.QResizeEvent): void =
  fQTreeView_virtualbase_resizeEvent(self.h, event.h)

type QTreeViewresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewresizeEventProc) =
  # TODO check subclass
  var tmp = new QTreeViewresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_resizeEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_resizeEvent ".} =
  var nimfunc = cast[ptr QTreeViewresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QTreeViewinputMethodEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qevent_types.QInputMethodEvent): void =
  fQTreeView_virtualbase_inputMethodEvent(self.h, event.h)

type QTreeViewinputMethodEventProc* = proc(event: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QTreeViewinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_inputMethodEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_inputMethodEvent ".} =
  var nimfunc = cast[ptr QTreeViewinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)


  nimfunc[](slotval1)
proc QTreeVieweventFilter*(self: gen_qtreeview_types.QTreeView, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQTreeView_virtualbase_eventFilter(self.h, objectVal.h, event.h)

type QTreeVieweventFilterProc* = proc(objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qtreeview_types.QTreeView, slot: QTreeVieweventFilterProc) =
  # TODO check subclass
  var tmp = new QTreeVieweventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_eventFilter(self: ptr cQTreeView, slot: int, objectVal: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QTreeView_eventFilter ".} =
  var nimfunc = cast[ptr QTreeVieweventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: objectVal)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QTreeViewminimumSizeHint*(self: gen_qtreeview_types.QTreeView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQTreeView_virtualbase_minimumSizeHint(self.h))

type QTreeViewminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QTreeViewminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_minimumSizeHint(self: ptr cQTreeView, slot: int): pointer {.exportc: "miqt_exec_callback_QTreeView_minimumSizeHint ".} =
  var nimfunc = cast[ptr QTreeViewminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTreeViewsizeHint*(self: gen_qtreeview_types.QTreeView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQTreeView_virtualbase_sizeHint(self.h))

type QTreeViewsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewsizeHintProc) =
  # TODO check subclass
  var tmp = new QTreeViewsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_sizeHint(self: ptr cQTreeView, slot: int): pointer {.exportc: "miqt_exec_callback_QTreeView_sizeHint ".} =
  var nimfunc = cast[ptr QTreeViewsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTreeViewsetupViewport*(self: gen_qtreeview_types.QTreeView, viewport: gen_qwidget_types.QWidget): void =
  fQTreeView_virtualbase_setupViewport(self.h, viewport.h)

type QTreeViewsetupViewportProc* = proc(viewport: gen_qwidget_types.QWidget): void
proc onsetupViewport*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewsetupViewportProc) =
  # TODO check subclass
  var tmp = new QTreeViewsetupViewportProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_setupViewport(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_setupViewport(self: ptr cQTreeView, slot: int, viewport: pointer): void {.exportc: "miqt_exec_callback_QTreeView_setupViewport ".} =
  var nimfunc = cast[ptr QTreeViewsetupViewportProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: viewport)


  nimfunc[](slotval1)
proc QTreeViewwheelEvent*(self: gen_qtreeview_types.QTreeView, param1: gen_qevent_types.QWheelEvent): void =
  fQTreeView_virtualbase_wheelEvent(self.h, param1.h)

type QTreeViewwheelEventProc* = proc(param1: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewwheelEventProc) =
  # TODO check subclass
  var tmp = new QTreeViewwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_wheelEvent(self: ptr cQTreeView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTreeView_wheelEvent ".} =
  var nimfunc = cast[ptr QTreeViewwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1)


  nimfunc[](slotval1)
proc QTreeViewcontextMenuEvent*(self: gen_qtreeview_types.QTreeView, param1: gen_qevent_types.QContextMenuEvent): void =
  fQTreeView_virtualbase_contextMenuEvent(self.h, param1.h)

type QTreeViewcontextMenuEventProc* = proc(param1: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QTreeViewcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_contextMenuEvent(self: ptr cQTreeView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTreeView_contextMenuEvent ".} =
  var nimfunc = cast[ptr QTreeViewcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)


  nimfunc[](slotval1)
proc QTreeViewchangeEvent*(self: gen_qtreeview_types.QTreeView, param1: gen_qcoreevent_types.QEvent): void =
  fQTreeView_virtualbase_changeEvent(self.h, param1.h)

type QTreeViewchangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewchangeEventProc) =
  # TODO check subclass
  var tmp = new QTreeViewchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_changeEvent(self: ptr cQTreeView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTreeView_changeEvent ".} =
  var nimfunc = cast[ptr QTreeViewchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QTreeViewdevType*(self: gen_qtreeview_types.QTreeView, ): cint =
  fQTreeView_virtualbase_devType(self.h)

type QTreeViewdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewdevTypeProc) =
  # TODO check subclass
  var tmp = new QTreeViewdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_devType(self: ptr cQTreeView, slot: int): cint {.exportc: "miqt_exec_callback_QTreeView_devType ".} =
  var nimfunc = cast[ptr QTreeViewdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTreeViewsetVisible*(self: gen_qtreeview_types.QTreeView, visible: bool): void =
  fQTreeView_virtualbase_setVisible(self.h, visible)

type QTreeViewsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewsetVisibleProc) =
  # TODO check subclass
  var tmp = new QTreeViewsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_setVisible(self: ptr cQTreeView, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QTreeView_setVisible ".} =
  var nimfunc = cast[ptr QTreeViewsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QTreeViewheightForWidth*(self: gen_qtreeview_types.QTreeView, param1: cint): cint =
  fQTreeView_virtualbase_heightForWidth(self.h, param1)

type QTreeViewheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewheightForWidthProc) =
  # TODO check subclass
  var tmp = new QTreeViewheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_heightForWidth(self: ptr cQTreeView, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QTreeView_heightForWidth ".} =
  var nimfunc = cast[ptr QTreeViewheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTreeViewhasHeightForWidth*(self: gen_qtreeview_types.QTreeView, ): bool =
  fQTreeView_virtualbase_hasHeightForWidth(self.h)

type QTreeViewhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QTreeViewhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_hasHeightForWidth(self: ptr cQTreeView, slot: int): bool {.exportc: "miqt_exec_callback_QTreeView_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QTreeViewhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTreeViewpaintEngine*(self: gen_qtreeview_types.QTreeView, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQTreeView_virtualbase_paintEngine(self.h))

type QTreeViewpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewpaintEngineProc) =
  # TODO check subclass
  var tmp = new QTreeViewpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_paintEngine(self: ptr cQTreeView, slot: int): pointer {.exportc: "miqt_exec_callback_QTreeView_paintEngine ".} =
  var nimfunc = cast[ptr QTreeViewpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTreeViewkeyReleaseEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qevent_types.QKeyEvent): void =
  fQTreeView_virtualbase_keyReleaseEvent(self.h, event.h)

type QTreeViewkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QTreeViewkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_keyReleaseEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QTreeViewkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QTreeViewenterEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qcoreevent_types.QEvent): void =
  fQTreeView_virtualbase_enterEvent(self.h, event.h)

type QTreeViewenterEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onenterEvent*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewenterEventProc) =
  # TODO check subclass
  var tmp = new QTreeViewenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_enterEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_enterEvent ".} =
  var nimfunc = cast[ptr QTreeViewenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QTreeViewleaveEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qcoreevent_types.QEvent): void =
  fQTreeView_virtualbase_leaveEvent(self.h, event.h)

type QTreeViewleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewleaveEventProc) =
  # TODO check subclass
  var tmp = new QTreeViewleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_leaveEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_leaveEvent ".} =
  var nimfunc = cast[ptr QTreeViewleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QTreeViewmoveEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qevent_types.QMoveEvent): void =
  fQTreeView_virtualbase_moveEvent(self.h, event.h)

type QTreeViewmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewmoveEventProc) =
  # TODO check subclass
  var tmp = new QTreeViewmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_moveEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_moveEvent ".} =
  var nimfunc = cast[ptr QTreeViewmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QTreeViewcloseEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qevent_types.QCloseEvent): void =
  fQTreeView_virtualbase_closeEvent(self.h, event.h)

type QTreeViewcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewcloseEventProc) =
  # TODO check subclass
  var tmp = new QTreeViewcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_closeEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_closeEvent ".} =
  var nimfunc = cast[ptr QTreeViewcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QTreeViewtabletEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qevent_types.QTabletEvent): void =
  fQTreeView_virtualbase_tabletEvent(self.h, event.h)

type QTreeViewtabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewtabletEventProc) =
  # TODO check subclass
  var tmp = new QTreeViewtabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_tabletEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_tabletEvent ".} =
  var nimfunc = cast[ptr QTreeViewtabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QTreeViewactionEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qevent_types.QActionEvent): void =
  fQTreeView_virtualbase_actionEvent(self.h, event.h)

type QTreeViewactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewactionEventProc) =
  # TODO check subclass
  var tmp = new QTreeViewactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_actionEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_actionEvent ".} =
  var nimfunc = cast[ptr QTreeViewactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QTreeViewshowEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qevent_types.QShowEvent): void =
  fQTreeView_virtualbase_showEvent(self.h, event.h)

type QTreeViewshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewshowEventProc) =
  # TODO check subclass
  var tmp = new QTreeViewshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_showEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_showEvent ".} =
  var nimfunc = cast[ptr QTreeViewshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QTreeViewhideEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qevent_types.QHideEvent): void =
  fQTreeView_virtualbase_hideEvent(self.h, event.h)

type QTreeViewhideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewhideEventProc) =
  # TODO check subclass
  var tmp = new QTreeViewhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_hideEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_hideEvent ".} =
  var nimfunc = cast[ptr QTreeViewhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QTreeViewnativeEvent*(self: gen_qtreeview_types.QTreeView, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fQTreeView_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QTreeViewnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewnativeEventProc) =
  # TODO check subclass
  var tmp = new QTreeViewnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_nativeEvent(self: ptr cQTreeView, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QTreeView_nativeEvent ".} =
  var nimfunc = cast[ptr QTreeViewnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QTreeViewmetric*(self: gen_qtreeview_types.QTreeView, param1: cint): cint =
  fQTreeView_virtualbase_metric(self.h, cint(param1))

type QTreeViewmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewmetricProc) =
  # TODO check subclass
  var tmp = new QTreeViewmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_metric(self: ptr cQTreeView, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QTreeView_metric ".} =
  var nimfunc = cast[ptr QTreeViewmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTreeViewinitPainter*(self: gen_qtreeview_types.QTreeView, painter: gen_qpainter_types.QPainter): void =
  fQTreeView_virtualbase_initPainter(self.h, painter.h)

type QTreeViewinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewinitPainterProc) =
  # TODO check subclass
  var tmp = new QTreeViewinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_initPainter(self: ptr cQTreeView, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QTreeView_initPainter ".} =
  var nimfunc = cast[ptr QTreeViewinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QTreeViewredirected*(self: gen_qtreeview_types.QTreeView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQTreeView_virtualbase_redirected(self.h, offset.h))

type QTreeViewredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewredirectedProc) =
  # TODO check subclass
  var tmp = new QTreeViewredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_redirected(self: ptr cQTreeView, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QTreeView_redirected ".} =
  var nimfunc = cast[ptr QTreeViewredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QTreeViewsharedPainter*(self: gen_qtreeview_types.QTreeView, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQTreeView_virtualbase_sharedPainter(self.h))

type QTreeViewsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewsharedPainterProc) =
  # TODO check subclass
  var tmp = new QTreeViewsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_sharedPainter(self: ptr cQTreeView, slot: int): pointer {.exportc: "miqt_exec_callback_QTreeView_sharedPainter ".} =
  var nimfunc = cast[ptr QTreeViewsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTreeViewchildEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qcoreevent_types.QChildEvent): void =
  fQTreeView_virtualbase_childEvent(self.h, event.h)

type QTreeViewchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewchildEventProc) =
  # TODO check subclass
  var tmp = new QTreeViewchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_childEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_childEvent ".} =
  var nimfunc = cast[ptr QTreeViewchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QTreeViewcustomEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qcoreevent_types.QEvent): void =
  fQTreeView_virtualbase_customEvent(self.h, event.h)

type QTreeViewcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewcustomEventProc) =
  # TODO check subclass
  var tmp = new QTreeViewcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_customEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_customEvent ".} =
  var nimfunc = cast[ptr QTreeViewcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QTreeViewconnectNotify*(self: gen_qtreeview_types.QTreeView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQTreeView_virtualbase_connectNotify(self.h, signal.h)

type QTreeViewconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QTreeViewconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_connectNotify(self: ptr cQTreeView, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTreeView_connectNotify ".} =
  var nimfunc = cast[ptr QTreeViewconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QTreeViewdisconnectNotify*(self: gen_qtreeview_types.QTreeView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQTreeView_virtualbase_disconnectNotify(self.h, signal.h)

type QTreeViewdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qtreeview_types.QTreeView, slot: QTreeViewdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QTreeViewdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_disconnectNotify(self: ptr cQTreeView, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTreeView_disconnectNotify ".} =
  var nimfunc = cast[ptr QTreeViewdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qtreeview_types.QTreeView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTreeView_staticMetaObject())
proc delete*(self: gen_qtreeview_types.QTreeView) =
  fcQTreeView_delete(self.h)
