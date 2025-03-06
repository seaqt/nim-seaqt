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

const cflags = gorge("pkg-config --cflags Qt5Widgets") & " -fPIC"
{.compile("gen_qtableview.cpp", cflags).}


import ./gen_qtableview_types
export gen_qtableview_types

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
  ./gen_qabstractitemview,
  ./gen_qheaderview_types,
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
  gen_qabstractitemview,
  gen_qheaderview_types,
  gen_qstyleoption_types,
  gen_qwidget_types

type cQTableView*{.exportc: "QTableView", incompleteStruct.} = object

proc fcQTableView_metaObject(self: pointer, ): pointer {.importc: "QTableView_metaObject".}
proc fcQTableView_metacast(self: pointer, param1: cstring): pointer {.importc: "QTableView_metacast".}
proc fcQTableView_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTableView_metacall".}
proc fcQTableView_tr(s: cstring): struct_miqt_string {.importc: "QTableView_tr".}
proc fcQTableView_trUtf8(s: cstring): struct_miqt_string {.importc: "QTableView_trUtf8".}
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
proc fcQTableView_sortByColumn(self: pointer, column: cint): void {.importc: "QTableView_sortByColumn".}
proc fcQTableView_sortByColumn2(self: pointer, column: cint, order: cint): void {.importc: "QTableView_sortByColumn2".}
proc fcQTableView_setShowGrid(self: pointer, show: bool): void {.importc: "QTableView_setShowGrid".}
proc fcQTableView_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTableView_tr2".}
proc fcQTableView_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTableView_tr3".}
proc fcQTableView_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QTableView_trUtf82".}
proc fcQTableView_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTableView_trUtf83".}
type cQTableViewVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQTableViewVTable, self: ptr cQTableView) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setModel*: proc(vtbl, self: pointer, model: pointer): void {.cdecl, raises: [], gcsafe.}
  setRootIndex*: proc(vtbl, self: pointer, index: pointer): void {.cdecl, raises: [], gcsafe.}
  setSelectionModel*: proc(vtbl, self: pointer, selectionModel: pointer): void {.cdecl, raises: [], gcsafe.}
  doItemsLayout*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  visualRect*: proc(vtbl, self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  scrollTo*: proc(vtbl, self: pointer, index: pointer, hint: cint): void {.cdecl, raises: [], gcsafe.}
  indexAt*: proc(vtbl, self: pointer, p: pointer): pointer {.cdecl, raises: [], gcsafe.}
  scrollContentsBy*: proc(vtbl, self: pointer, dx: cint, dy: cint): void {.cdecl, raises: [], gcsafe.}
  viewOptions*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  horizontalOffset*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  verticalOffset*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  moveCursor*: proc(vtbl, self: pointer, cursorAction: cint, modifiers: cint): pointer {.cdecl, raises: [], gcsafe.}
  setSelection*: proc(vtbl, self: pointer, rect: pointer, command: cint): void {.cdecl, raises: [], gcsafe.}
  visualRegionForSelection*: proc(vtbl, self: pointer, selection: pointer): pointer {.cdecl, raises: [], gcsafe.}
  selectedIndexes*: proc(vtbl, self: pointer, ): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  updateGeometries*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  viewportSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  sizeHintForRow*: proc(vtbl, self: pointer, row: cint): cint {.cdecl, raises: [], gcsafe.}
  sizeHintForColumn*: proc(vtbl, self: pointer, column: cint): cint {.cdecl, raises: [], gcsafe.}
  verticalScrollbarAction*: proc(vtbl, self: pointer, action: cint): void {.cdecl, raises: [], gcsafe.}
  horizontalScrollbarAction*: proc(vtbl, self: pointer, action: cint): void {.cdecl, raises: [], gcsafe.}
  isIndexHidden*: proc(vtbl, self: pointer, index: pointer): bool {.cdecl, raises: [], gcsafe.}
  selectionChanged*: proc(vtbl, self: pointer, selected: pointer, deselected: pointer): void {.cdecl, raises: [], gcsafe.}
  currentChanged*: proc(vtbl, self: pointer, current: pointer, previous: pointer): void {.cdecl, raises: [], gcsafe.}
  keyboardSearch*: proc(vtbl, self: pointer, search: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, query: cint): pointer {.cdecl, raises: [], gcsafe.}
  reset*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  selectAll*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  dataChanged*: proc(vtbl, self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.cdecl, raises: [], gcsafe.}
  rowsInserted*: proc(vtbl, self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl, raises: [], gcsafe.}
  rowsAboutToBeRemoved*: proc(vtbl, self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl, raises: [], gcsafe.}
  updateEditorData*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  updateEditorGeometries*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  verticalScrollbarValueChanged*: proc(vtbl, self: pointer, value: cint): void {.cdecl, raises: [], gcsafe.}
  horizontalScrollbarValueChanged*: proc(vtbl, self: pointer, value: cint): void {.cdecl, raises: [], gcsafe.}
  closeEditor*: proc(vtbl, self: pointer, editor: pointer, hint: cint): void {.cdecl, raises: [], gcsafe.}
  commitData*: proc(vtbl, self: pointer, editor: pointer): void {.cdecl, raises: [], gcsafe.}
  editorDestroyed*: proc(vtbl, self: pointer, editor: pointer): void {.cdecl, raises: [], gcsafe.}
  edit2*: proc(vtbl, self: pointer, index: pointer, trigger: cint, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  selectionCommand*: proc(vtbl, self: pointer, index: pointer, event: pointer): cint {.cdecl, raises: [], gcsafe.}
  startDrag*: proc(vtbl, self: pointer, supportedActions: cint): void {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(vtbl, self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  viewportEvent*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
proc fcQTableView_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QTableView_virtualbase_metaObject".}
proc fcQTableView_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QTableView_virtualbase_metacast".}
proc fcQTableView_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTableView_virtualbase_metacall".}
proc fcQTableView_virtualbase_setModel(self: pointer, model: pointer): void {.importc: "QTableView_virtualbase_setModel".}
proc fcQTableView_virtualbase_setRootIndex(self: pointer, index: pointer): void {.importc: "QTableView_virtualbase_setRootIndex".}
proc fcQTableView_virtualbase_setSelectionModel(self: pointer, selectionModel: pointer): void {.importc: "QTableView_virtualbase_setSelectionModel".}
proc fcQTableView_virtualbase_doItemsLayout(self: pointer, ): void {.importc: "QTableView_virtualbase_doItemsLayout".}
proc fcQTableView_virtualbase_visualRect(self: pointer, index: pointer): pointer {.importc: "QTableView_virtualbase_visualRect".}
proc fcQTableView_virtualbase_scrollTo(self: pointer, index: pointer, hint: cint): void {.importc: "QTableView_virtualbase_scrollTo".}
proc fcQTableView_virtualbase_indexAt(self: pointer, p: pointer): pointer {.importc: "QTableView_virtualbase_indexAt".}
proc fcQTableView_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.importc: "QTableView_virtualbase_scrollContentsBy".}
proc fcQTableView_virtualbase_viewOptions(self: pointer, ): pointer {.importc: "QTableView_virtualbase_viewOptions".}
proc fcQTableView_virtualbase_paintEvent(self: pointer, e: pointer): void {.importc: "QTableView_virtualbase_paintEvent".}
proc fcQTableView_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QTableView_virtualbase_timerEvent".}
proc fcQTableView_virtualbase_horizontalOffset(self: pointer, ): cint {.importc: "QTableView_virtualbase_horizontalOffset".}
proc fcQTableView_virtualbase_verticalOffset(self: pointer, ): cint {.importc: "QTableView_virtualbase_verticalOffset".}
proc fcQTableView_virtualbase_moveCursor(self: pointer, cursorAction: cint, modifiers: cint): pointer {.importc: "QTableView_virtualbase_moveCursor".}
proc fcQTableView_virtualbase_setSelection(self: pointer, rect: pointer, command: cint): void {.importc: "QTableView_virtualbase_setSelection".}
proc fcQTableView_virtualbase_visualRegionForSelection(self: pointer, selection: pointer): pointer {.importc: "QTableView_virtualbase_visualRegionForSelection".}
proc fcQTableView_virtualbase_selectedIndexes(self: pointer, ): struct_miqt_array {.importc: "QTableView_virtualbase_selectedIndexes".}
proc fcQTableView_virtualbase_updateGeometries(self: pointer, ): void {.importc: "QTableView_virtualbase_updateGeometries".}
proc fcQTableView_virtualbase_viewportSizeHint(self: pointer, ): pointer {.importc: "QTableView_virtualbase_viewportSizeHint".}
proc fcQTableView_virtualbase_sizeHintForRow(self: pointer, row: cint): cint {.importc: "QTableView_virtualbase_sizeHintForRow".}
proc fcQTableView_virtualbase_sizeHintForColumn(self: pointer, column: cint): cint {.importc: "QTableView_virtualbase_sizeHintForColumn".}
proc fcQTableView_virtualbase_verticalScrollbarAction(self: pointer, action: cint): void {.importc: "QTableView_virtualbase_verticalScrollbarAction".}
proc fcQTableView_virtualbase_horizontalScrollbarAction(self: pointer, action: cint): void {.importc: "QTableView_virtualbase_horizontalScrollbarAction".}
proc fcQTableView_virtualbase_isIndexHidden(self: pointer, index: pointer): bool {.importc: "QTableView_virtualbase_isIndexHidden".}
proc fcQTableView_virtualbase_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void {.importc: "QTableView_virtualbase_selectionChanged".}
proc fcQTableView_virtualbase_currentChanged(self: pointer, current: pointer, previous: pointer): void {.importc: "QTableView_virtualbase_currentChanged".}
proc fcQTableView_virtualbase_keyboardSearch(self: pointer, search: struct_miqt_string): void {.importc: "QTableView_virtualbase_keyboardSearch".}
proc fcQTableView_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QTableView_virtualbase_inputMethodQuery".}
proc fcQTableView_virtualbase_reset(self: pointer, ): void {.importc: "QTableView_virtualbase_reset".}
proc fcQTableView_virtualbase_selectAll(self: pointer, ): void {.importc: "QTableView_virtualbase_selectAll".}
proc fcQTableView_virtualbase_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.importc: "QTableView_virtualbase_dataChanged".}
proc fcQTableView_virtualbase_rowsInserted(self: pointer, parent: pointer, start: cint, endVal: cint): void {.importc: "QTableView_virtualbase_rowsInserted".}
proc fcQTableView_virtualbase_rowsAboutToBeRemoved(self: pointer, parent: pointer, start: cint, endVal: cint): void {.importc: "QTableView_virtualbase_rowsAboutToBeRemoved".}
proc fcQTableView_virtualbase_updateEditorData(self: pointer, ): void {.importc: "QTableView_virtualbase_updateEditorData".}
proc fcQTableView_virtualbase_updateEditorGeometries(self: pointer, ): void {.importc: "QTableView_virtualbase_updateEditorGeometries".}
proc fcQTableView_virtualbase_verticalScrollbarValueChanged(self: pointer, value: cint): void {.importc: "QTableView_virtualbase_verticalScrollbarValueChanged".}
proc fcQTableView_virtualbase_horizontalScrollbarValueChanged(self: pointer, value: cint): void {.importc: "QTableView_virtualbase_horizontalScrollbarValueChanged".}
proc fcQTableView_virtualbase_closeEditor(self: pointer, editor: pointer, hint: cint): void {.importc: "QTableView_virtualbase_closeEditor".}
proc fcQTableView_virtualbase_commitData(self: pointer, editor: pointer): void {.importc: "QTableView_virtualbase_commitData".}
proc fcQTableView_virtualbase_editorDestroyed(self: pointer, editor: pointer): void {.importc: "QTableView_virtualbase_editorDestroyed".}
proc fcQTableView_virtualbase_edit2(self: pointer, index: pointer, trigger: cint, event: pointer): bool {.importc: "QTableView_virtualbase_edit2".}
proc fcQTableView_virtualbase_selectionCommand(self: pointer, index: pointer, event: pointer): cint {.importc: "QTableView_virtualbase_selectionCommand".}
proc fcQTableView_virtualbase_startDrag(self: pointer, supportedActions: cint): void {.importc: "QTableView_virtualbase_startDrag".}
proc fcQTableView_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QTableView_virtualbase_focusNextPrevChild".}
proc fcQTableView_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QTableView_virtualbase_event".}
proc fcQTableView_virtualbase_viewportEvent(self: pointer, event: pointer): bool {.importc: "QTableView_virtualbase_viewportEvent".}
proc fcQTableView_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QTableView_virtualbase_mousePressEvent".}
proc fcQTableView_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QTableView_virtualbase_mouseMoveEvent".}
proc fcQTableView_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QTableView_virtualbase_mouseReleaseEvent".}
proc fcQTableView_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QTableView_virtualbase_mouseDoubleClickEvent".}
proc fcQTableView_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QTableView_virtualbase_dragEnterEvent".}
proc fcQTableView_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QTableView_virtualbase_dragMoveEvent".}
proc fcQTableView_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QTableView_virtualbase_dragLeaveEvent".}
proc fcQTableView_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QTableView_virtualbase_dropEvent".}
proc fcQTableView_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QTableView_virtualbase_focusInEvent".}
proc fcQTableView_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QTableView_virtualbase_focusOutEvent".}
proc fcQTableView_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QTableView_virtualbase_keyPressEvent".}
proc fcQTableView_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QTableView_virtualbase_resizeEvent".}
proc fcQTableView_virtualbase_inputMethodEvent(self: pointer, event: pointer): void {.importc: "QTableView_virtualbase_inputMethodEvent".}
proc fcQTableView_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool {.importc: "QTableView_virtualbase_eventFilter".}
proc fcQTableView_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QTableView_virtualbase_minimumSizeHint".}
proc fcQTableView_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QTableView_virtualbase_sizeHint".}
proc fcQTableView_virtualbase_setupViewport(self: pointer, viewport: pointer): void {.importc: "QTableView_virtualbase_setupViewport".}
proc fcQTableView_virtualbase_wheelEvent(self: pointer, param1: pointer): void {.importc: "QTableView_virtualbase_wheelEvent".}
proc fcQTableView_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void {.importc: "QTableView_virtualbase_contextMenuEvent".}
proc fcQTableView_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QTableView_virtualbase_changeEvent".}
proc fcQTableView_virtualbase_devType(self: pointer, ): cint {.importc: "QTableView_virtualbase_devType".}
proc fcQTableView_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QTableView_virtualbase_setVisible".}
proc fcQTableView_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QTableView_virtualbase_heightForWidth".}
proc fcQTableView_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QTableView_virtualbase_hasHeightForWidth".}
proc fcQTableView_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QTableView_virtualbase_paintEngine".}
proc fcQTableView_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QTableView_virtualbase_keyReleaseEvent".}
proc fcQTableView_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QTableView_virtualbase_enterEvent".}
proc fcQTableView_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QTableView_virtualbase_leaveEvent".}
proc fcQTableView_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QTableView_virtualbase_moveEvent".}
proc fcQTableView_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QTableView_virtualbase_closeEvent".}
proc fcQTableView_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QTableView_virtualbase_tabletEvent".}
proc fcQTableView_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QTableView_virtualbase_actionEvent".}
proc fcQTableView_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QTableView_virtualbase_showEvent".}
proc fcQTableView_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QTableView_virtualbase_hideEvent".}
proc fcQTableView_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QTableView_virtualbase_nativeEvent".}
proc fcQTableView_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QTableView_virtualbase_metric".}
proc fcQTableView_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QTableView_virtualbase_initPainter".}
proc fcQTableView_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QTableView_virtualbase_redirected".}
proc fcQTableView_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QTableView_virtualbase_sharedPainter".}
proc fcQTableView_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QTableView_virtualbase_childEvent".}
proc fcQTableView_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QTableView_virtualbase_customEvent".}
proc fcQTableView_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QTableView_virtualbase_connectNotify".}
proc fcQTableView_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QTableView_virtualbase_disconnectNotify".}
proc fcQTableView_protectedbase_rowMoved(self: pointer, row: cint, oldIndex: cint, newIndex: cint): void {.importc: "QTableView_protectedbase_rowMoved".}
proc fcQTableView_protectedbase_columnMoved(self: pointer, column: cint, oldIndex: cint, newIndex: cint): void {.importc: "QTableView_protectedbase_columnMoved".}
proc fcQTableView_protectedbase_rowResized(self: pointer, row: cint, oldHeight: cint, newHeight: cint): void {.importc: "QTableView_protectedbase_rowResized".}
proc fcQTableView_protectedbase_columnResized(self: pointer, column: cint, oldWidth: cint, newWidth: cint): void {.importc: "QTableView_protectedbase_columnResized".}
proc fcQTableView_protectedbase_rowCountChanged(self: pointer, oldCount: cint, newCount: cint): void {.importc: "QTableView_protectedbase_rowCountChanged".}
proc fcQTableView_protectedbase_columnCountChanged(self: pointer, oldCount: cint, newCount: cint): void {.importc: "QTableView_protectedbase_columnCountChanged".}
proc fcQTableView_protectedbase_setHorizontalStepsPerItem(self: pointer, steps: cint): void {.importc: "QTableView_protectedbase_setHorizontalStepsPerItem".}
proc fcQTableView_protectedbase_horizontalStepsPerItem(self: pointer, ): cint {.importc: "QTableView_protectedbase_horizontalStepsPerItem".}
proc fcQTableView_protectedbase_setVerticalStepsPerItem(self: pointer, steps: cint): void {.importc: "QTableView_protectedbase_setVerticalStepsPerItem".}
proc fcQTableView_protectedbase_verticalStepsPerItem(self: pointer, ): cint {.importc: "QTableView_protectedbase_verticalStepsPerItem".}
proc fcQTableView_protectedbase_state(self: pointer, ): cint {.importc: "QTableView_protectedbase_state".}
proc fcQTableView_protectedbase_setState(self: pointer, state: cint): void {.importc: "QTableView_protectedbase_setState".}
proc fcQTableView_protectedbase_scheduleDelayedItemsLayout(self: pointer, ): void {.importc: "QTableView_protectedbase_scheduleDelayedItemsLayout".}
proc fcQTableView_protectedbase_executeDelayedItemsLayout(self: pointer, ): void {.importc: "QTableView_protectedbase_executeDelayedItemsLayout".}
proc fcQTableView_protectedbase_setDirtyRegion(self: pointer, region: pointer): void {.importc: "QTableView_protectedbase_setDirtyRegion".}
proc fcQTableView_protectedbase_scrollDirtyRegion(self: pointer, dx: cint, dy: cint): void {.importc: "QTableView_protectedbase_scrollDirtyRegion".}
proc fcQTableView_protectedbase_dirtyRegionOffset(self: pointer, ): pointer {.importc: "QTableView_protectedbase_dirtyRegionOffset".}
proc fcQTableView_protectedbase_startAutoScroll(self: pointer, ): void {.importc: "QTableView_protectedbase_startAutoScroll".}
proc fcQTableView_protectedbase_stopAutoScroll(self: pointer, ): void {.importc: "QTableView_protectedbase_stopAutoScroll".}
proc fcQTableView_protectedbase_doAutoScroll(self: pointer, ): void {.importc: "QTableView_protectedbase_doAutoScroll".}
proc fcQTableView_protectedbase_dropIndicatorPosition(self: pointer, ): cint {.importc: "QTableView_protectedbase_dropIndicatorPosition".}
proc fcQTableView_protectedbase_setViewportMargins(self: pointer, left: cint, top: cint, right: cint, bottom: cint): void {.importc: "QTableView_protectedbase_setViewportMargins".}
proc fcQTableView_protectedbase_viewportMargins(self: pointer, ): pointer {.importc: "QTableView_protectedbase_viewportMargins".}
proc fcQTableView_protectedbase_drawFrame(self: pointer, param1: pointer): void {.importc: "QTableView_protectedbase_drawFrame".}
proc fcQTableView_protectedbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QTableView_protectedbase_initStyleOption".}
proc fcQTableView_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QTableView_protectedbase_updateMicroFocus".}
proc fcQTableView_protectedbase_create(self: pointer, ): void {.importc: "QTableView_protectedbase_create".}
proc fcQTableView_protectedbase_destroy(self: pointer, ): void {.importc: "QTableView_protectedbase_destroy".}
proc fcQTableView_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QTableView_protectedbase_focusNextChild".}
proc fcQTableView_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QTableView_protectedbase_focusPreviousChild".}
proc fcQTableView_protectedbase_sender(self: pointer, ): pointer {.importc: "QTableView_protectedbase_sender".}
proc fcQTableView_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QTableView_protectedbase_senderSignalIndex".}
proc fcQTableView_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QTableView_protectedbase_receivers".}
proc fcQTableView_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QTableView_protectedbase_isSignalConnected".}
proc fcQTableView_new(vtbl: pointer, parent: pointer): ptr cQTableView {.importc: "QTableView_new".}
proc fcQTableView_new2(vtbl: pointer, ): ptr cQTableView {.importc: "QTableView_new2".}
proc fcQTableView_staticMetaObject(): pointer {.importc: "QTableView_staticMetaObject".}

proc metaObject*(self: gen_qtableview_types.QTableView, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTableView_metaObject(self.h), owned: false)

proc metacast*(self: gen_qtableview_types.QTableView, param1: cstring): pointer =
  fcQTableView_metacast(self.h, param1)

proc metacall*(self: gen_qtableview_types.QTableView, param1: cint, param2: cint, param3: pointer): cint =
  fcQTableView_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qtableview_types.QTableView, s: cstring): string =
  let v_ms = fcQTableView_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtableview_types.QTableView, s: cstring): string =
  let v_ms = fcQTableView_trUtf8(s)
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
  gen_qheaderview_types.QHeaderView(h: fcQTableView_horizontalHeader(self.h), owned: false)

proc verticalHeader*(self: gen_qtableview_types.QTableView, ): gen_qheaderview_types.QHeaderView =
  gen_qheaderview_types.QHeaderView(h: fcQTableView_verticalHeader(self.h), owned: false)

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
  gen_qrect_types.QRect(h: fcQTableView_visualRect(self.h, index.h), owned: true)

proc scrollTo*(self: gen_qtableview_types.QTableView, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void =
  fcQTableView_scrollTo(self.h, index.h, cint(hint))

proc indexAt*(self: gen_qtableview_types.QTableView, p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTableView_indexAt(self.h, p.h), owned: true)

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

proc sortByColumn*(self: gen_qtableview_types.QTableView, column: cint): void =
  fcQTableView_sortByColumn(self.h, column)

proc sortByColumn*(self: gen_qtableview_types.QTableView, column: cint, order: cint): void =
  fcQTableView_sortByColumn2(self.h, column, cint(order))

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

proc trUtf8*(_: type gen_qtableview_types.QTableView, s: cstring, c: cstring): string =
  let v_ms = fcQTableView_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtableview_types.QTableView, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTableView_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QTableViewmetaObjectProc* = proc(self: QTableView): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QTableViewmetacastProc* = proc(self: QTableView, param1: cstring): pointer {.raises: [], gcsafe.}
type QTableViewmetacallProc* = proc(self: QTableView, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QTableViewsetModelProc* = proc(self: QTableView, model: gen_qabstractitemmodel_types.QAbstractItemModel): void {.raises: [], gcsafe.}
type QTableViewsetRootIndexProc* = proc(self: QTableView, index: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QTableViewsetSelectionModelProc* = proc(self: QTableView, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void {.raises: [], gcsafe.}
type QTableViewdoItemsLayoutProc* = proc(self: QTableView): void {.raises: [], gcsafe.}
type QTableViewvisualRectProc* = proc(self: QTableView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect {.raises: [], gcsafe.}
type QTableViewscrollToProc* = proc(self: QTableView, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void {.raises: [], gcsafe.}
type QTableViewindexAtProc* = proc(self: QTableView, p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QTableViewscrollContentsByProc* = proc(self: QTableView, dx: cint, dy: cint): void {.raises: [], gcsafe.}
type QTableViewviewOptionsProc* = proc(self: QTableView): gen_qstyleoption_types.QStyleOptionViewItem {.raises: [], gcsafe.}
type QTableViewpaintEventProc* = proc(self: QTableView, e: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QTableViewtimerEventProc* = proc(self: QTableView, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QTableViewhorizontalOffsetProc* = proc(self: QTableView): cint {.raises: [], gcsafe.}
type QTableViewverticalOffsetProc* = proc(self: QTableView): cint {.raises: [], gcsafe.}
type QTableViewmoveCursorProc* = proc(self: QTableView, cursorAction: cint, modifiers: cint): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QTableViewsetSelectionProc* = proc(self: QTableView, rect: gen_qrect_types.QRect, command: cint): void {.raises: [], gcsafe.}
type QTableViewvisualRegionForSelectionProc* = proc(self: QTableView, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion {.raises: [], gcsafe.}
type QTableViewselectedIndexesProc* = proc(self: QTableView): seq[gen_qabstractitemmodel_types.QModelIndex] {.raises: [], gcsafe.}
type QTableViewupdateGeometriesProc* = proc(self: QTableView): void {.raises: [], gcsafe.}
type QTableViewviewportSizeHintProc* = proc(self: QTableView): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QTableViewsizeHintForRowProc* = proc(self: QTableView, row: cint): cint {.raises: [], gcsafe.}
type QTableViewsizeHintForColumnProc* = proc(self: QTableView, column: cint): cint {.raises: [], gcsafe.}
type QTableViewverticalScrollbarActionProc* = proc(self: QTableView, action: cint): void {.raises: [], gcsafe.}
type QTableViewhorizontalScrollbarActionProc* = proc(self: QTableView, action: cint): void {.raises: [], gcsafe.}
type QTableViewisIndexHiddenProc* = proc(self: QTableView, index: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QTableViewselectionChangedProc* = proc(self: QTableView, selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void {.raises: [], gcsafe.}
type QTableViewcurrentChangedProc* = proc(self: QTableView, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QTableViewkeyboardSearchProc* = proc(self: QTableView, search: string): void {.raises: [], gcsafe.}
type QTableViewinputMethodQueryProc* = proc(self: QTableView, query: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QTableViewresetProc* = proc(self: QTableView): void {.raises: [], gcsafe.}
type QTableViewselectAllProc* = proc(self: QTableView): void {.raises: [], gcsafe.}
type QTableViewdataChangedProc* = proc(self: QTableView, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: seq[cint]): void {.raises: [], gcsafe.}
type QTableViewrowsInsertedProc* = proc(self: QTableView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void {.raises: [], gcsafe.}
type QTableViewrowsAboutToBeRemovedProc* = proc(self: QTableView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void {.raises: [], gcsafe.}
type QTableViewupdateEditorDataProc* = proc(self: QTableView): void {.raises: [], gcsafe.}
type QTableViewupdateEditorGeometriesProc* = proc(self: QTableView): void {.raises: [], gcsafe.}
type QTableViewverticalScrollbarValueChangedProc* = proc(self: QTableView, value: cint): void {.raises: [], gcsafe.}
type QTableViewhorizontalScrollbarValueChangedProc* = proc(self: QTableView, value: cint): void {.raises: [], gcsafe.}
type QTableViewcloseEditorProc* = proc(self: QTableView, editor: gen_qwidget_types.QWidget, hint: cint): void {.raises: [], gcsafe.}
type QTableViewcommitDataProc* = proc(self: QTableView, editor: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QTableVieweditorDestroyedProc* = proc(self: QTableView, editor: gen_qobject_types.QObject): void {.raises: [], gcsafe.}
type QTableViewedit2Proc* = proc(self: QTableView, index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTableViewselectionCommandProc* = proc(self: QTableView, index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint {.raises: [], gcsafe.}
type QTableViewstartDragProc* = proc(self: QTableView, supportedActions: cint): void {.raises: [], gcsafe.}
type QTableViewfocusNextPrevChildProc* = proc(self: QTableView, next: bool): bool {.raises: [], gcsafe.}
type QTableVieweventProc* = proc(self: QTableView, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTableViewviewportEventProc* = proc(self: QTableView, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTableViewmousePressEventProc* = proc(self: QTableView, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QTableViewmouseMoveEventProc* = proc(self: QTableView, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QTableViewmouseReleaseEventProc* = proc(self: QTableView, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QTableViewmouseDoubleClickEventProc* = proc(self: QTableView, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QTableViewdragEnterEventProc* = proc(self: QTableView, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QTableViewdragMoveEventProc* = proc(self: QTableView, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QTableViewdragLeaveEventProc* = proc(self: QTableView, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QTableViewdropEventProc* = proc(self: QTableView, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QTableViewfocusInEventProc* = proc(self: QTableView, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QTableViewfocusOutEventProc* = proc(self: QTableView, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QTableViewkeyPressEventProc* = proc(self: QTableView, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QTableViewresizeEventProc* = proc(self: QTableView, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QTableViewinputMethodEventProc* = proc(self: QTableView, event: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QTableVieweventFilterProc* = proc(self: QTableView, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTableViewminimumSizeHintProc* = proc(self: QTableView): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QTableViewsizeHintProc* = proc(self: QTableView): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QTableViewsetupViewportProc* = proc(self: QTableView, viewport: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QTableViewwheelEventProc* = proc(self: QTableView, param1: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QTableViewcontextMenuEventProc* = proc(self: QTableView, param1: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QTableViewchangeEventProc* = proc(self: QTableView, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTableViewdevTypeProc* = proc(self: QTableView): cint {.raises: [], gcsafe.}
type QTableViewsetVisibleProc* = proc(self: QTableView, visible: bool): void {.raises: [], gcsafe.}
type QTableViewheightForWidthProc* = proc(self: QTableView, param1: cint): cint {.raises: [], gcsafe.}
type QTableViewhasHeightForWidthProc* = proc(self: QTableView): bool {.raises: [], gcsafe.}
type QTableViewpaintEngineProc* = proc(self: QTableView): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QTableViewkeyReleaseEventProc* = proc(self: QTableView, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QTableViewenterEventProc* = proc(self: QTableView, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTableViewleaveEventProc* = proc(self: QTableView, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTableViewmoveEventProc* = proc(self: QTableView, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QTableViewcloseEventProc* = proc(self: QTableView, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QTableViewtabletEventProc* = proc(self: QTableView, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QTableViewactionEventProc* = proc(self: QTableView, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QTableViewshowEventProc* = proc(self: QTableView, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QTableViewhideEventProc* = proc(self: QTableView, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QTableViewnativeEventProc* = proc(self: QTableView, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QTableViewmetricProc* = proc(self: QTableView, param1: cint): cint {.raises: [], gcsafe.}
type QTableViewinitPainterProc* = proc(self: QTableView, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QTableViewredirectedProc* = proc(self: QTableView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QTableViewsharedPainterProc* = proc(self: QTableView): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QTableViewchildEventProc* = proc(self: QTableView, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QTableViewcustomEventProc* = proc(self: QTableView, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTableViewconnectNotifyProc* = proc(self: QTableView, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTableViewdisconnectNotifyProc* = proc(self: QTableView, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTableViewVTable* {.inheritable, pure.} = object
  vtbl: cQTableViewVTable
  metaObject*: QTableViewmetaObjectProc
  metacast*: QTableViewmetacastProc
  metacall*: QTableViewmetacallProc
  setModel*: QTableViewsetModelProc
  setRootIndex*: QTableViewsetRootIndexProc
  setSelectionModel*: QTableViewsetSelectionModelProc
  doItemsLayout*: QTableViewdoItemsLayoutProc
  visualRect*: QTableViewvisualRectProc
  scrollTo*: QTableViewscrollToProc
  indexAt*: QTableViewindexAtProc
  scrollContentsBy*: QTableViewscrollContentsByProc
  viewOptions*: QTableViewviewOptionsProc
  paintEvent*: QTableViewpaintEventProc
  timerEvent*: QTableViewtimerEventProc
  horizontalOffset*: QTableViewhorizontalOffsetProc
  verticalOffset*: QTableViewverticalOffsetProc
  moveCursor*: QTableViewmoveCursorProc
  setSelection*: QTableViewsetSelectionProc
  visualRegionForSelection*: QTableViewvisualRegionForSelectionProc
  selectedIndexes*: QTableViewselectedIndexesProc
  updateGeometries*: QTableViewupdateGeometriesProc
  viewportSizeHint*: QTableViewviewportSizeHintProc
  sizeHintForRow*: QTableViewsizeHintForRowProc
  sizeHintForColumn*: QTableViewsizeHintForColumnProc
  verticalScrollbarAction*: QTableViewverticalScrollbarActionProc
  horizontalScrollbarAction*: QTableViewhorizontalScrollbarActionProc
  isIndexHidden*: QTableViewisIndexHiddenProc
  selectionChanged*: QTableViewselectionChangedProc
  currentChanged*: QTableViewcurrentChangedProc
  keyboardSearch*: QTableViewkeyboardSearchProc
  inputMethodQuery*: QTableViewinputMethodQueryProc
  reset*: QTableViewresetProc
  selectAll*: QTableViewselectAllProc
  dataChanged*: QTableViewdataChangedProc
  rowsInserted*: QTableViewrowsInsertedProc
  rowsAboutToBeRemoved*: QTableViewrowsAboutToBeRemovedProc
  updateEditorData*: QTableViewupdateEditorDataProc
  updateEditorGeometries*: QTableViewupdateEditorGeometriesProc
  verticalScrollbarValueChanged*: QTableViewverticalScrollbarValueChangedProc
  horizontalScrollbarValueChanged*: QTableViewhorizontalScrollbarValueChangedProc
  closeEditor*: QTableViewcloseEditorProc
  commitData*: QTableViewcommitDataProc
  editorDestroyed*: QTableVieweditorDestroyedProc
  edit2*: QTableViewedit2Proc
  selectionCommand*: QTableViewselectionCommandProc
  startDrag*: QTableViewstartDragProc
  focusNextPrevChild*: QTableViewfocusNextPrevChildProc
  event*: QTableVieweventProc
  viewportEvent*: QTableViewviewportEventProc
  mousePressEvent*: QTableViewmousePressEventProc
  mouseMoveEvent*: QTableViewmouseMoveEventProc
  mouseReleaseEvent*: QTableViewmouseReleaseEventProc
  mouseDoubleClickEvent*: QTableViewmouseDoubleClickEventProc
  dragEnterEvent*: QTableViewdragEnterEventProc
  dragMoveEvent*: QTableViewdragMoveEventProc
  dragLeaveEvent*: QTableViewdragLeaveEventProc
  dropEvent*: QTableViewdropEventProc
  focusInEvent*: QTableViewfocusInEventProc
  focusOutEvent*: QTableViewfocusOutEventProc
  keyPressEvent*: QTableViewkeyPressEventProc
  resizeEvent*: QTableViewresizeEventProc
  inputMethodEvent*: QTableViewinputMethodEventProc
  eventFilter*: QTableVieweventFilterProc
  minimumSizeHint*: QTableViewminimumSizeHintProc
  sizeHint*: QTableViewsizeHintProc
  setupViewport*: QTableViewsetupViewportProc
  wheelEvent*: QTableViewwheelEventProc
  contextMenuEvent*: QTableViewcontextMenuEventProc
  changeEvent*: QTableViewchangeEventProc
  devType*: QTableViewdevTypeProc
  setVisible*: QTableViewsetVisibleProc
  heightForWidth*: QTableViewheightForWidthProc
  hasHeightForWidth*: QTableViewhasHeightForWidthProc
  paintEngine*: QTableViewpaintEngineProc
  keyReleaseEvent*: QTableViewkeyReleaseEventProc
  enterEvent*: QTableViewenterEventProc
  leaveEvent*: QTableViewleaveEventProc
  moveEvent*: QTableViewmoveEventProc
  closeEvent*: QTableViewcloseEventProc
  tabletEvent*: QTableViewtabletEventProc
  actionEvent*: QTableViewactionEventProc
  showEvent*: QTableViewshowEventProc
  hideEvent*: QTableViewhideEventProc
  nativeEvent*: QTableViewnativeEventProc
  metric*: QTableViewmetricProc
  initPainter*: QTableViewinitPainterProc
  redirected*: QTableViewredirectedProc
  sharedPainter*: QTableViewsharedPainterProc
  childEvent*: QTableViewchildEventProc
  customEvent*: QTableViewcustomEventProc
  connectNotify*: QTableViewconnectNotifyProc
  disconnectNotify*: QTableViewdisconnectNotifyProc
proc QTableViewmetaObject*(self: gen_qtableview_types.QTableView, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTableView_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQTableView_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTableViewmetacast*(self: gen_qtableview_types.QTableView, param1: cstring): pointer =
  fcQTableView_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQTableView_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QTableViewmetacall*(self: gen_qtableview_types.QTableView, param1: cint, param2: cint, param3: pointer): cint =
  fcQTableView_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQTableView_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTableViewsetModel*(self: gen_qtableview_types.QTableView, model: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQTableView_virtualbase_setModel(self.h, model.h)

proc miqt_exec_callback_cQTableView_setModel(vtbl: pointer, self: pointer, model: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model, owned: false)
  vtbl[].setModel(self, slotval1)

proc QTableViewsetRootIndex*(self: gen_qtableview_types.QTableView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQTableView_virtualbase_setRootIndex(self.h, index.h)

proc miqt_exec_callback_cQTableView_setRootIndex(vtbl: pointer, self: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  vtbl[].setRootIndex(self, slotval1)

proc QTableViewsetSelectionModel*(self: gen_qtableview_types.QTableView, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void =
  fcQTableView_virtualbase_setSelectionModel(self.h, selectionModel.h)

proc miqt_exec_callback_cQTableView_setSelectionModel(vtbl: pointer, self: pointer, selectionModel: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelectionModel(h: selectionModel, owned: false)
  vtbl[].setSelectionModel(self, slotval1)

proc QTableViewdoItemsLayout*(self: gen_qtableview_types.QTableView, ): void =
  fcQTableView_virtualbase_doItemsLayout(self.h)

proc miqt_exec_callback_cQTableView_doItemsLayout(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  vtbl[].doItemsLayout(self)

proc QTableViewvisualRect*(self: gen_qtableview_types.QTableView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQTableView_virtualbase_visualRect(self.h, index.h), owned: true)

proc miqt_exec_callback_cQTableView_visualRect(vtbl: pointer, self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].visualRect(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTableViewscrollTo*(self: gen_qtableview_types.QTableView, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void =
  fcQTableView_virtualbase_scrollTo(self.h, index.h, cint(hint))

proc miqt_exec_callback_cQTableView_scrollTo(vtbl: pointer, self: pointer, index: pointer, hint: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = cint(hint)
  vtbl[].scrollTo(self, slotval1, slotval2)

proc QTableViewindexAt*(self: gen_qtableview_types.QTableView, p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTableView_virtualbase_indexAt(self.h, p.h), owned: true)

proc miqt_exec_callback_cQTableView_indexAt(vtbl: pointer, self: pointer, p: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: p, owned: false)
  var virtualReturn = vtbl[].indexAt(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTableViewscrollContentsBy*(self: gen_qtableview_types.QTableView, dx: cint, dy: cint): void =
  fcQTableView_virtualbase_scrollContentsBy(self.h, dx, dy)

proc miqt_exec_callback_cQTableView_scrollContentsBy(vtbl: pointer, self: pointer, dx: cint, dy: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = dx
  let slotval2 = dy
  vtbl[].scrollContentsBy(self, slotval1, slotval2)

proc QTableViewviewOptions*(self: gen_qtableview_types.QTableView, ): gen_qstyleoption_types.QStyleOptionViewItem =
  gen_qstyleoption_types.QStyleOptionViewItem(h: fcQTableView_virtualbase_viewOptions(self.h), owned: true)

proc miqt_exec_callback_cQTableView_viewOptions(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  var virtualReturn = vtbl[].viewOptions(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTableViewpaintEvent*(self: gen_qtableview_types.QTableView, e: gen_qevent_types.QPaintEvent): void =
  fcQTableView_virtualbase_paintEvent(self.h, e.h)

proc miqt_exec_callback_cQTableView_paintEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: e, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QTableViewtimerEvent*(self: gen_qtableview_types.QTableView, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQTableView_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QTableViewhorizontalOffset*(self: gen_qtableview_types.QTableView, ): cint =
  fcQTableView_virtualbase_horizontalOffset(self.h)

proc miqt_exec_callback_cQTableView_horizontalOffset(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  var virtualReturn = vtbl[].horizontalOffset(self)
  virtualReturn

proc QTableViewverticalOffset*(self: gen_qtableview_types.QTableView, ): cint =
  fcQTableView_virtualbase_verticalOffset(self.h)

proc miqt_exec_callback_cQTableView_verticalOffset(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  var virtualReturn = vtbl[].verticalOffset(self)
  virtualReturn

proc QTableViewmoveCursor*(self: gen_qtableview_types.QTableView, cursorAction: cint, modifiers: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTableView_virtualbase_moveCursor(self.h, cint(cursorAction), cint(modifiers)), owned: true)

proc miqt_exec_callback_cQTableView_moveCursor(vtbl: pointer, self: pointer, cursorAction: cint, modifiers: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = cint(cursorAction)
  let slotval2 = cint(modifiers)
  var virtualReturn = vtbl[].moveCursor(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTableViewsetSelection*(self: gen_qtableview_types.QTableView, rect: gen_qrect_types.QRect, command: cint): void =
  fcQTableView_virtualbase_setSelection(self.h, rect.h, cint(command))

proc miqt_exec_callback_cQTableView_setSelection(vtbl: pointer, self: pointer, rect: pointer, command: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qrect_types.QRect(h: rect, owned: false)
  let slotval2 = cint(command)
  vtbl[].setSelection(self, slotval1, slotval2)

proc QTableViewvisualRegionForSelection*(self: gen_qtableview_types.QTableView, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQTableView_virtualbase_visualRegionForSelection(self.h, selection.h), owned: true)

proc miqt_exec_callback_cQTableView_visualRegionForSelection(vtbl: pointer, self: pointer, selection: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection, owned: false)
  var virtualReturn = vtbl[].visualRegionForSelection(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTableViewselectedIndexes*(self: gen_qtableview_types.QTableView, ): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQTableView_virtualbase_selectedIndexes(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc miqt_exec_callback_cQTableView_selectedIndexes(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  var virtualReturn = vtbl[].selectedIndexes(self)
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn[i].owned = false # TODO move?
    let virtualReturn_i_h = virtualReturn[i].h
    virtualReturn[i].h = nil
    virtualReturn_CArray[i] = virtualReturn_i_h

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QTableViewupdateGeometries*(self: gen_qtableview_types.QTableView, ): void =
  fcQTableView_virtualbase_updateGeometries(self.h)

proc miqt_exec_callback_cQTableView_updateGeometries(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  vtbl[].updateGeometries(self)

proc QTableViewviewportSizeHint*(self: gen_qtableview_types.QTableView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTableView_virtualbase_viewportSizeHint(self.h), owned: true)

proc miqt_exec_callback_cQTableView_viewportSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  var virtualReturn = vtbl[].viewportSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTableViewsizeHintForRow*(self: gen_qtableview_types.QTableView, row: cint): cint =
  fcQTableView_virtualbase_sizeHintForRow(self.h, row)

proc miqt_exec_callback_cQTableView_sizeHintForRow(vtbl: pointer, self: pointer, row: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = row
  var virtualReturn = vtbl[].sizeHintForRow(self, slotval1)
  virtualReturn

proc QTableViewsizeHintForColumn*(self: gen_qtableview_types.QTableView, column: cint): cint =
  fcQTableView_virtualbase_sizeHintForColumn(self.h, column)

proc miqt_exec_callback_cQTableView_sizeHintForColumn(vtbl: pointer, self: pointer, column: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = column
  var virtualReturn = vtbl[].sizeHintForColumn(self, slotval1)
  virtualReturn

proc QTableViewverticalScrollbarAction*(self: gen_qtableview_types.QTableView, action: cint): void =
  fcQTableView_virtualbase_verticalScrollbarAction(self.h, action)

proc miqt_exec_callback_cQTableView_verticalScrollbarAction(vtbl: pointer, self: pointer, action: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = action
  vtbl[].verticalScrollbarAction(self, slotval1)

proc QTableViewhorizontalScrollbarAction*(self: gen_qtableview_types.QTableView, action: cint): void =
  fcQTableView_virtualbase_horizontalScrollbarAction(self.h, action)

proc miqt_exec_callback_cQTableView_horizontalScrollbarAction(vtbl: pointer, self: pointer, action: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = action
  vtbl[].horizontalScrollbarAction(self, slotval1)

proc QTableViewisIndexHidden*(self: gen_qtableview_types.QTableView, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQTableView_virtualbase_isIndexHidden(self.h, index.h)

proc miqt_exec_callback_cQTableView_isIndexHidden(vtbl: pointer, self: pointer, index: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].isIndexHidden(self, slotval1)
  virtualReturn

proc QTableViewselectionChanged*(self: gen_qtableview_types.QTableView, selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void =
  fcQTableView_virtualbase_selectionChanged(self.h, selected.h, deselected.h)

proc miqt_exec_callback_cQTableView_selectionChanged(vtbl: pointer, self: pointer, selected: pointer, deselected: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selected, owned: false)
  let slotval2 = gen_qitemselectionmodel_types.QItemSelection(h: deselected, owned: false)
  vtbl[].selectionChanged(self, slotval1, slotval2)

proc QTableViewcurrentChanged*(self: gen_qtableview_types.QTableView, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQTableView_virtualbase_currentChanged(self.h, current.h, previous.h)

proc miqt_exec_callback_cQTableView_currentChanged(vtbl: pointer, self: pointer, current: pointer, previous: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: current, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: previous, owned: false)
  vtbl[].currentChanged(self, slotval1, slotval2)

proc QTableViewkeyboardSearch*(self: gen_qtableview_types.QTableView, search: string): void =
  fcQTableView_virtualbase_keyboardSearch(self.h, struct_miqt_string(data: search, len: csize_t(len(search))))

proc miqt_exec_callback_cQTableView_keyboardSearch(vtbl: pointer, self: pointer, search: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let vsearch_ms = search
  let vsearchx_ret = string.fromBytes(toOpenArrayByte(vsearch_ms.data, 0, int(vsearch_ms.len)-1))
  c_free(vsearch_ms.data)
  let slotval1 = vsearchx_ret
  vtbl[].keyboardSearch(self, slotval1)

proc QTableViewinputMethodQuery*(self: gen_qtableview_types.QTableView, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQTableView_virtualbase_inputMethodQuery(self.h, cint(query)), owned: true)

proc miqt_exec_callback_cQTableView_inputMethodQuery(vtbl: pointer, self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = cint(query)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTableViewreset*(self: gen_qtableview_types.QTableView, ): void =
  fcQTableView_virtualbase_reset(self.h)

proc miqt_exec_callback_cQTableView_reset(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  vtbl[].reset(self)

proc QTableViewselectAll*(self: gen_qtableview_types.QTableView, ): void =
  fcQTableView_virtualbase_selectAll(self.h)

proc miqt_exec_callback_cQTableView_selectAll(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  vtbl[].selectAll(self)

proc QTableViewdataChanged*(self: gen_qtableview_types.QTableView, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: seq[cint]): void =
  var roles_CArray = newSeq[cint](len(roles))
  for i in 0..<len(roles):
    roles_CArray[i] = roles[i]

  fcQTableView_virtualbase_dataChanged(self.h, topLeft.h, bottomRight.h, struct_miqt_array(len: csize_t(len(roles)), data: if len(roles) == 0: nil else: addr(roles_CArray[0])))

proc miqt_exec_callback_cQTableView_dataChanged(vtbl: pointer, self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
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

proc QTableViewrowsInserted*(self: gen_qtableview_types.QTableView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fcQTableView_virtualbase_rowsInserted(self.h, parent.h, start, endVal)

proc miqt_exec_callback_cQTableView_rowsInserted(vtbl: pointer, self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  let slotval2 = start
  let slotval3 = endVal
  vtbl[].rowsInserted(self, slotval1, slotval2, slotval3)

proc QTableViewrowsAboutToBeRemoved*(self: gen_qtableview_types.QTableView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fcQTableView_virtualbase_rowsAboutToBeRemoved(self.h, parent.h, start, endVal)

proc miqt_exec_callback_cQTableView_rowsAboutToBeRemoved(vtbl: pointer, self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  let slotval2 = start
  let slotval3 = endVal
  vtbl[].rowsAboutToBeRemoved(self, slotval1, slotval2, slotval3)

proc QTableViewupdateEditorData*(self: gen_qtableview_types.QTableView, ): void =
  fcQTableView_virtualbase_updateEditorData(self.h)

proc miqt_exec_callback_cQTableView_updateEditorData(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  vtbl[].updateEditorData(self)

proc QTableViewupdateEditorGeometries*(self: gen_qtableview_types.QTableView, ): void =
  fcQTableView_virtualbase_updateEditorGeometries(self.h)

proc miqt_exec_callback_cQTableView_updateEditorGeometries(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  vtbl[].updateEditorGeometries(self)

proc QTableViewverticalScrollbarValueChanged*(self: gen_qtableview_types.QTableView, value: cint): void =
  fcQTableView_virtualbase_verticalScrollbarValueChanged(self.h, value)

proc miqt_exec_callback_cQTableView_verticalScrollbarValueChanged(vtbl: pointer, self: pointer, value: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = value
  vtbl[].verticalScrollbarValueChanged(self, slotval1)

proc QTableViewhorizontalScrollbarValueChanged*(self: gen_qtableview_types.QTableView, value: cint): void =
  fcQTableView_virtualbase_horizontalScrollbarValueChanged(self.h, value)

proc miqt_exec_callback_cQTableView_horizontalScrollbarValueChanged(vtbl: pointer, self: pointer, value: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = value
  vtbl[].horizontalScrollbarValueChanged(self, slotval1)

proc QTableViewcloseEditor*(self: gen_qtableview_types.QTableView, editor: gen_qwidget_types.QWidget, hint: cint): void =
  fcQTableView_virtualbase_closeEditor(self.h, editor.h, cint(hint))

proc miqt_exec_callback_cQTableView_closeEditor(vtbl: pointer, self: pointer, editor: pointer, hint: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  let slotval2 = cint(hint)
  vtbl[].closeEditor(self, slotval1, slotval2)

proc QTableViewcommitData*(self: gen_qtableview_types.QTableView, editor: gen_qwidget_types.QWidget): void =
  fcQTableView_virtualbase_commitData(self.h, editor.h)

proc miqt_exec_callback_cQTableView_commitData(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  vtbl[].commitData(self, slotval1)

proc QTableVieweditorDestroyed*(self: gen_qtableview_types.QTableView, editor: gen_qobject_types.QObject): void =
  fcQTableView_virtualbase_editorDestroyed(self.h, editor.h)

proc miqt_exec_callback_cQTableView_editorDestroyed(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qobject_types.QObject(h: editor, owned: false)
  vtbl[].editorDestroyed(self, slotval1)

proc QTableViewedit*(self: gen_qtableview_types.QTableView, index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool =
  fcQTableView_virtualbase_edit2(self.h, index.h, cint(trigger), event.h)

proc miqt_exec_callback_cQTableView_edit2(vtbl: pointer, self: pointer, index: pointer, trigger: cint, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = cint(trigger)
  let slotval3 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].edit2(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTableViewselectionCommand*(self: gen_qtableview_types.QTableView, index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint =
  cint(fcQTableView_virtualbase_selectionCommand(self.h, index.h, event.h))

proc miqt_exec_callback_cQTableView_selectionCommand(vtbl: pointer, self: pointer, index: pointer, event: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].selectionCommand(self, slotval1, slotval2)
  cint(virtualReturn)

proc QTableViewstartDrag*(self: gen_qtableview_types.QTableView, supportedActions: cint): void =
  fcQTableView_virtualbase_startDrag(self.h, cint(supportedActions))

proc miqt_exec_callback_cQTableView_startDrag(vtbl: pointer, self: pointer, supportedActions: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = cint(supportedActions)
  vtbl[].startDrag(self, slotval1)

proc QTableViewfocusNextPrevChild*(self: gen_qtableview_types.QTableView, next: bool): bool =
  fcQTableView_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQTableView_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QTableViewevent*(self: gen_qtableview_types.QTableView, event: gen_qcoreevent_types.QEvent): bool =
  fcQTableView_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQTableView_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QTableViewviewportEvent*(self: gen_qtableview_types.QTableView, event: gen_qcoreevent_types.QEvent): bool =
  fcQTableView_virtualbase_viewportEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_viewportEvent(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].viewportEvent(self, slotval1)
  virtualReturn

proc QTableViewmousePressEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QMouseEvent): void =
  fcQTableView_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QTableViewmouseMoveEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QMouseEvent): void =
  fcQTableView_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QTableViewmouseReleaseEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QMouseEvent): void =
  fcQTableView_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QTableViewmouseDoubleClickEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QMouseEvent): void =
  fcQTableView_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QTableViewdragEnterEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QDragEnterEvent): void =
  fcQTableView_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QTableViewdragMoveEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QDragMoveEvent): void =
  fcQTableView_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QTableViewdragLeaveEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQTableView_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QTableViewdropEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QDropEvent): void =
  fcQTableView_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QTableViewfocusInEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QFocusEvent): void =
  fcQTableView_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QTableViewfocusOutEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QFocusEvent): void =
  fcQTableView_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QTableViewkeyPressEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QKeyEvent): void =
  fcQTableView_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QTableViewresizeEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QResizeEvent): void =
  fcQTableView_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QTableViewinputMethodEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QInputMethodEvent): void =
  fcQTableView_virtualbase_inputMethodEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_inputMethodEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QTableVieweventFilter*(self: gen_qtableview_types.QTableView, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQTableView_virtualbase_eventFilter(self.h, objectVal.h, event.h)

proc miqt_exec_callback_cQTableView_eventFilter(vtbl: pointer, self: pointer, objectVal: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qobject_types.QObject(h: objectVal, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QTableViewminimumSizeHint*(self: gen_qtableview_types.QTableView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTableView_virtualbase_minimumSizeHint(self.h), owned: true)

proc miqt_exec_callback_cQTableView_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTableViewsizeHint*(self: gen_qtableview_types.QTableView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTableView_virtualbase_sizeHint(self.h), owned: true)

proc miqt_exec_callback_cQTableView_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTableViewsetupViewport*(self: gen_qtableview_types.QTableView, viewport: gen_qwidget_types.QWidget): void =
  fcQTableView_virtualbase_setupViewport(self.h, viewport.h)

proc miqt_exec_callback_cQTableView_setupViewport(vtbl: pointer, self: pointer, viewport: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: viewport, owned: false)
  vtbl[].setupViewport(self, slotval1)

proc QTableViewwheelEvent*(self: gen_qtableview_types.QTableView, param1: gen_qevent_types.QWheelEvent): void =
  fcQTableView_virtualbase_wheelEvent(self.h, param1.h)

proc miqt_exec_callback_cQTableView_wheelEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QTableViewcontextMenuEvent*(self: gen_qtableview_types.QTableView, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQTableView_virtualbase_contextMenuEvent(self.h, param1.h)

proc miqt_exec_callback_cQTableView_contextMenuEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QTableViewchangeEvent*(self: gen_qtableview_types.QTableView, param1: gen_qcoreevent_types.QEvent): void =
  fcQTableView_virtualbase_changeEvent(self.h, param1.h)

proc miqt_exec_callback_cQTableView_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QTableViewdevType*(self: gen_qtableview_types.QTableView, ): cint =
  fcQTableView_virtualbase_devType(self.h)

proc miqt_exec_callback_cQTableView_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QTableViewsetVisible*(self: gen_qtableview_types.QTableView, visible: bool): void =
  fcQTableView_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQTableView_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QTableViewheightForWidth*(self: gen_qtableview_types.QTableView, param1: cint): cint =
  fcQTableView_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQTableView_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QTableViewhasHeightForWidth*(self: gen_qtableview_types.QTableView, ): bool =
  fcQTableView_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQTableView_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QTableViewpaintEngine*(self: gen_qtableview_types.QTableView, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQTableView_virtualbase_paintEngine(self.h), owned: false)

proc miqt_exec_callback_cQTableView_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTableViewkeyReleaseEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QKeyEvent): void =
  fcQTableView_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QTableViewenterEvent*(self: gen_qtableview_types.QTableView, event: gen_qcoreevent_types.QEvent): void =
  fcQTableView_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QTableViewleaveEvent*(self: gen_qtableview_types.QTableView, event: gen_qcoreevent_types.QEvent): void =
  fcQTableView_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QTableViewmoveEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QMoveEvent): void =
  fcQTableView_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QTableViewcloseEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QCloseEvent): void =
  fcQTableView_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QTableViewtabletEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QTabletEvent): void =
  fcQTableView_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QTableViewactionEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QActionEvent): void =
  fcQTableView_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QTableViewshowEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QShowEvent): void =
  fcQTableView_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QTableViewhideEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QHideEvent): void =
  fcQTableView_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QTableViewnativeEvent*(self: gen_qtableview_types.QTableView, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fcQTableView_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQTableView_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTableViewmetric*(self: gen_qtableview_types.QTableView, param1: cint): cint =
  fcQTableView_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQTableView_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QTableViewinitPainter*(self: gen_qtableview_types.QTableView, painter: gen_qpainter_types.QPainter): void =
  fcQTableView_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQTableView_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QTableViewredirected*(self: gen_qtableview_types.QTableView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQTableView_virtualbase_redirected(self.h, offset.h), owned: false)

proc miqt_exec_callback_cQTableView_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTableViewsharedPainter*(self: gen_qtableview_types.QTableView, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQTableView_virtualbase_sharedPainter(self.h), owned: false)

proc miqt_exec_callback_cQTableView_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTableViewchildEvent*(self: gen_qtableview_types.QTableView, event: gen_qcoreevent_types.QChildEvent): void =
  fcQTableView_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QTableViewcustomEvent*(self: gen_qtableview_types.QTableView, event: gen_qcoreevent_types.QEvent): void =
  fcQTableView_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QTableViewconnectNotify*(self: gen_qtableview_types.QTableView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTableView_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQTableView_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QTableViewdisconnectNotify*(self: gen_qtableview_types.QTableView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTableView_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQTableView_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQTableView* {.inheritable.} = ref object of QTableView
  vtbl*: cQTableViewVTable
method metaObject*(self: VirtualQTableView, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QTableViewmetaObject(self[])
proc miqt_exec_method_cQTableView_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQTableView, param1: cstring): pointer {.base.} =
  QTableViewmetacast(self[], param1)
proc miqt_exec_method_cQTableView_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQTableView, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QTableViewmetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQTableView_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method setModel*(self: VirtualQTableView, model: gen_qabstractitemmodel_types.QAbstractItemModel): void {.base.} =
  QTableViewsetModel(self[], model)
proc miqt_exec_method_cQTableView_setModel(vtbl: pointer, inst: pointer, model: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model, owned: false)
  vtbl.setModel(slotval1)

method setRootIndex*(self: VirtualQTableView, index: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QTableViewsetRootIndex(self[], index)
proc miqt_exec_method_cQTableView_setRootIndex(vtbl: pointer, inst: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  vtbl.setRootIndex(slotval1)

method setSelectionModel*(self: VirtualQTableView, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void {.base.} =
  QTableViewsetSelectionModel(self[], selectionModel)
proc miqt_exec_method_cQTableView_setSelectionModel(vtbl: pointer, inst: pointer, selectionModel: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelectionModel(h: selectionModel, owned: false)
  vtbl.setSelectionModel(slotval1)

method doItemsLayout*(self: VirtualQTableView, ): void {.base.} =
  QTableViewdoItemsLayout(self[])
proc miqt_exec_method_cQTableView_doItemsLayout(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  vtbl.doItemsLayout()

method visualRect*(self: VirtualQTableView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect {.base.} =
  QTableViewvisualRect(self[], index)
proc miqt_exec_method_cQTableView_visualRect(vtbl: pointer, inst: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl.visualRect(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method scrollTo*(self: VirtualQTableView, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void {.base.} =
  QTableViewscrollTo(self[], index, hint)
proc miqt_exec_method_cQTableView_scrollTo(vtbl: pointer, inst: pointer, index: pointer, hint: cint): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = cint(hint)
  vtbl.scrollTo(slotval1, slotval2)

method indexAt*(self: VirtualQTableView, p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QTableViewindexAt(self[], p)
proc miqt_exec_method_cQTableView_indexAt(vtbl: pointer, inst: pointer, p: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qpoint_types.QPoint(h: p, owned: false)
  var virtualReturn = vtbl.indexAt(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method scrollContentsBy*(self: VirtualQTableView, dx: cint, dy: cint): void {.base.} =
  QTableViewscrollContentsBy(self[], dx, dy)
proc miqt_exec_method_cQTableView_scrollContentsBy(vtbl: pointer, inst: pointer, dx: cint, dy: cint): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = dx
  let slotval2 = dy
  vtbl.scrollContentsBy(slotval1, slotval2)

method viewOptions*(self: VirtualQTableView, ): gen_qstyleoption_types.QStyleOptionViewItem {.base.} =
  QTableViewviewOptions(self[])
proc miqt_exec_method_cQTableView_viewOptions(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  var virtualReturn = vtbl.viewOptions()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method paintEvent*(self: VirtualQTableView, e: gen_qevent_types.QPaintEvent): void {.base.} =
  QTableViewpaintEvent(self[], e)
proc miqt_exec_method_cQTableView_paintEvent(vtbl: pointer, inst: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qevent_types.QPaintEvent(h: e, owned: false)
  vtbl.paintEvent(slotval1)

method timerEvent*(self: VirtualQTableView, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QTableViewtimerEvent(self[], event)
proc miqt_exec_method_cQTableView_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method horizontalOffset*(self: VirtualQTableView, ): cint {.base.} =
  QTableViewhorizontalOffset(self[])
proc miqt_exec_method_cQTableView_horizontalOffset(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  var virtualReturn = vtbl.horizontalOffset()
  virtualReturn

method verticalOffset*(self: VirtualQTableView, ): cint {.base.} =
  QTableViewverticalOffset(self[])
proc miqt_exec_method_cQTableView_verticalOffset(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  var virtualReturn = vtbl.verticalOffset()
  virtualReturn

method moveCursor*(self: VirtualQTableView, cursorAction: cint, modifiers: cint): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QTableViewmoveCursor(self[], cursorAction, modifiers)
proc miqt_exec_method_cQTableView_moveCursor(vtbl: pointer, inst: pointer, cursorAction: cint, modifiers: cint): pointer {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = cint(cursorAction)
  let slotval2 = cint(modifiers)
  var virtualReturn = vtbl.moveCursor(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method setSelection*(self: VirtualQTableView, rect: gen_qrect_types.QRect, command: cint): void {.base.} =
  QTableViewsetSelection(self[], rect, command)
proc miqt_exec_method_cQTableView_setSelection(vtbl: pointer, inst: pointer, rect: pointer, command: cint): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qrect_types.QRect(h: rect, owned: false)
  let slotval2 = cint(command)
  vtbl.setSelection(slotval1, slotval2)

method visualRegionForSelection*(self: VirtualQTableView, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion {.base.} =
  QTableViewvisualRegionForSelection(self[], selection)
proc miqt_exec_method_cQTableView_visualRegionForSelection(vtbl: pointer, inst: pointer, selection: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection, owned: false)
  var virtualReturn = vtbl.visualRegionForSelection(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method selectedIndexes*(self: VirtualQTableView, ): seq[gen_qabstractitemmodel_types.QModelIndex] {.base.} =
  QTableViewselectedIndexes(self[])
proc miqt_exec_method_cQTableView_selectedIndexes(vtbl: pointer, inst: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  var virtualReturn = vtbl.selectedIndexes()
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn[i].owned = false # TODO move?
    let virtualReturn_i_h = virtualReturn[i].h
    virtualReturn[i].h = nil
    virtualReturn_CArray[i] = virtualReturn_i_h

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

method updateGeometries*(self: VirtualQTableView, ): void {.base.} =
  QTableViewupdateGeometries(self[])
proc miqt_exec_method_cQTableView_updateGeometries(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  vtbl.updateGeometries()

method viewportSizeHint*(self: VirtualQTableView, ): gen_qsize_types.QSize {.base.} =
  QTableViewviewportSizeHint(self[])
proc miqt_exec_method_cQTableView_viewportSizeHint(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  var virtualReturn = vtbl.viewportSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sizeHintForRow*(self: VirtualQTableView, row: cint): cint {.base.} =
  QTableViewsizeHintForRow(self[], row)
proc miqt_exec_method_cQTableView_sizeHintForRow(vtbl: pointer, inst: pointer, row: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = row
  var virtualReturn = vtbl.sizeHintForRow(slotval1)
  virtualReturn

method sizeHintForColumn*(self: VirtualQTableView, column: cint): cint {.base.} =
  QTableViewsizeHintForColumn(self[], column)
proc miqt_exec_method_cQTableView_sizeHintForColumn(vtbl: pointer, inst: pointer, column: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = column
  var virtualReturn = vtbl.sizeHintForColumn(slotval1)
  virtualReturn

method verticalScrollbarAction*(self: VirtualQTableView, action: cint): void {.base.} =
  QTableViewverticalScrollbarAction(self[], action)
proc miqt_exec_method_cQTableView_verticalScrollbarAction(vtbl: pointer, inst: pointer, action: cint): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = action
  vtbl.verticalScrollbarAction(slotval1)

method horizontalScrollbarAction*(self: VirtualQTableView, action: cint): void {.base.} =
  QTableViewhorizontalScrollbarAction(self[], action)
proc miqt_exec_method_cQTableView_horizontalScrollbarAction(vtbl: pointer, inst: pointer, action: cint): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = action
  vtbl.horizontalScrollbarAction(slotval1)

method isIndexHidden*(self: VirtualQTableView, index: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QTableViewisIndexHidden(self[], index)
proc miqt_exec_method_cQTableView_isIndexHidden(vtbl: pointer, inst: pointer, index: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl.isIndexHidden(slotval1)
  virtualReturn

method selectionChanged*(self: VirtualQTableView, selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void {.base.} =
  QTableViewselectionChanged(self[], selected, deselected)
proc miqt_exec_method_cQTableView_selectionChanged(vtbl: pointer, inst: pointer, selected: pointer, deselected: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selected, owned: false)
  let slotval2 = gen_qitemselectionmodel_types.QItemSelection(h: deselected, owned: false)
  vtbl.selectionChanged(slotval1, slotval2)

method currentChanged*(self: VirtualQTableView, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QTableViewcurrentChanged(self[], current, previous)
proc miqt_exec_method_cQTableView_currentChanged(vtbl: pointer, inst: pointer, current: pointer, previous: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: current, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: previous, owned: false)
  vtbl.currentChanged(slotval1, slotval2)

method keyboardSearch*(self: VirtualQTableView, search: string): void {.base.} =
  QTableViewkeyboardSearch(self[], search)
proc miqt_exec_method_cQTableView_keyboardSearch(vtbl: pointer, inst: pointer, search: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let vsearch_ms = search
  let vsearchx_ret = string.fromBytes(toOpenArrayByte(vsearch_ms.data, 0, int(vsearch_ms.len)-1))
  c_free(vsearch_ms.data)
  let slotval1 = vsearchx_ret
  vtbl.keyboardSearch(slotval1)

method inputMethodQuery*(self: VirtualQTableView, query: cint): gen_qvariant_types.QVariant {.base.} =
  QTableViewinputMethodQuery(self[], query)
proc miqt_exec_method_cQTableView_inputMethodQuery(vtbl: pointer, inst: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = cint(query)
  var virtualReturn = vtbl.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method reset*(self: VirtualQTableView, ): void {.base.} =
  QTableViewreset(self[])
proc miqt_exec_method_cQTableView_reset(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  vtbl.reset()

method selectAll*(self: VirtualQTableView, ): void {.base.} =
  QTableViewselectAll(self[])
proc miqt_exec_method_cQTableView_selectAll(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  vtbl.selectAll()

method dataChanged*(self: VirtualQTableView, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: seq[cint]): void {.base.} =
  QTableViewdataChanged(self[], topLeft, bottomRight, roles)
proc miqt_exec_method_cQTableView_dataChanged(vtbl: pointer, inst: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: topLeft, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: bottomRight, owned: false)
  var vroles_ma = roles
  var vrolesx_ret = newSeq[cint](int(vroles_ma.len))
  let vroles_outCast = cast[ptr UncheckedArray[cint]](vroles_ma.data)
  for i in 0 ..< vroles_ma.len:
    vrolesx_ret[i] = vroles_outCast[i]
  c_free(vroles_ma.data)
  let slotval3 = vrolesx_ret
  vtbl.dataChanged(slotval1, slotval2, slotval3)

method rowsInserted*(self: VirtualQTableView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void {.base.} =
  QTableViewrowsInserted(self[], parent, start, endVal)
proc miqt_exec_method_cQTableView_rowsInserted(vtbl: pointer, inst: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  let slotval2 = start
  let slotval3 = endVal
  vtbl.rowsInserted(slotval1, slotval2, slotval3)

method rowsAboutToBeRemoved*(self: VirtualQTableView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void {.base.} =
  QTableViewrowsAboutToBeRemoved(self[], parent, start, endVal)
proc miqt_exec_method_cQTableView_rowsAboutToBeRemoved(vtbl: pointer, inst: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  let slotval2 = start
  let slotval3 = endVal
  vtbl.rowsAboutToBeRemoved(slotval1, slotval2, slotval3)

method updateEditorData*(self: VirtualQTableView, ): void {.base.} =
  QTableViewupdateEditorData(self[])
proc miqt_exec_method_cQTableView_updateEditorData(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  vtbl.updateEditorData()

method updateEditorGeometries*(self: VirtualQTableView, ): void {.base.} =
  QTableViewupdateEditorGeometries(self[])
proc miqt_exec_method_cQTableView_updateEditorGeometries(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  vtbl.updateEditorGeometries()

method verticalScrollbarValueChanged*(self: VirtualQTableView, value: cint): void {.base.} =
  QTableViewverticalScrollbarValueChanged(self[], value)
proc miqt_exec_method_cQTableView_verticalScrollbarValueChanged(vtbl: pointer, inst: pointer, value: cint): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = value
  vtbl.verticalScrollbarValueChanged(slotval1)

method horizontalScrollbarValueChanged*(self: VirtualQTableView, value: cint): void {.base.} =
  QTableViewhorizontalScrollbarValueChanged(self[], value)
proc miqt_exec_method_cQTableView_horizontalScrollbarValueChanged(vtbl: pointer, inst: pointer, value: cint): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = value
  vtbl.horizontalScrollbarValueChanged(slotval1)

method closeEditor*(self: VirtualQTableView, editor: gen_qwidget_types.QWidget, hint: cint): void {.base.} =
  QTableViewcloseEditor(self[], editor, hint)
proc miqt_exec_method_cQTableView_closeEditor(vtbl: pointer, inst: pointer, editor: pointer, hint: cint): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  let slotval2 = cint(hint)
  vtbl.closeEditor(slotval1, slotval2)

method commitData*(self: VirtualQTableView, editor: gen_qwidget_types.QWidget): void {.base.} =
  QTableViewcommitData(self[], editor)
proc miqt_exec_method_cQTableView_commitData(vtbl: pointer, inst: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  vtbl.commitData(slotval1)

method editorDestroyed*(self: VirtualQTableView, editor: gen_qobject_types.QObject): void {.base.} =
  QTableVieweditorDestroyed(self[], editor)
proc miqt_exec_method_cQTableView_editorDestroyed(vtbl: pointer, inst: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: editor, owned: false)
  vtbl.editorDestroyed(slotval1)

method edit*(self: VirtualQTableView, index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTableViewedit(self[], index, trigger, event)
proc miqt_exec_method_cQTableView_edit2(vtbl: pointer, inst: pointer, index: pointer, trigger: cint, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = cint(trigger)
  let slotval3 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.edit(slotval1, slotval2, slotval3)
  virtualReturn

method selectionCommand*(self: VirtualQTableView, index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint {.base.} =
  QTableViewselectionCommand(self[], index, event)
proc miqt_exec_method_cQTableView_selectionCommand(vtbl: pointer, inst: pointer, index: pointer, event: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.selectionCommand(slotval1, slotval2)
  cint(virtualReturn)

method startDrag*(self: VirtualQTableView, supportedActions: cint): void {.base.} =
  QTableViewstartDrag(self[], supportedActions)
proc miqt_exec_method_cQTableView_startDrag(vtbl: pointer, inst: pointer, supportedActions: cint): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = cint(supportedActions)
  vtbl.startDrag(slotval1)

method focusNextPrevChild*(self: VirtualQTableView, next: bool): bool {.base.} =
  QTableViewfocusNextPrevChild(self[], next)
proc miqt_exec_method_cQTableView_focusNextPrevChild(vtbl: pointer, inst: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = next
  var virtualReturn = vtbl.focusNextPrevChild(slotval1)
  virtualReturn

method event*(self: VirtualQTableView, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTableViewevent(self[], event)
proc miqt_exec_method_cQTableView_event(vtbl: pointer, inst: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method viewportEvent*(self: VirtualQTableView, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTableViewviewportEvent(self[], event)
proc miqt_exec_method_cQTableView_viewportEvent(vtbl: pointer, inst: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.viewportEvent(slotval1)
  virtualReturn

method mousePressEvent*(self: VirtualQTableView, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QTableViewmousePressEvent(self[], event)
proc miqt_exec_method_cQTableView_mousePressEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mousePressEvent(slotval1)

method mouseMoveEvent*(self: VirtualQTableView, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QTableViewmouseMoveEvent(self[], event)
proc miqt_exec_method_cQTableView_mouseMoveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mouseMoveEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQTableView, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QTableViewmouseReleaseEvent(self[], event)
proc miqt_exec_method_cQTableView_mouseReleaseEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mouseReleaseEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQTableView, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QTableViewmouseDoubleClickEvent(self[], event)
proc miqt_exec_method_cQTableView_mouseDoubleClickEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mouseDoubleClickEvent(slotval1)

method dragEnterEvent*(self: VirtualQTableView, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QTableViewdragEnterEvent(self[], event)
proc miqt_exec_method_cQTableView_dragEnterEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQTableView, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QTableViewdragMoveEvent(self[], event)
proc miqt_exec_method_cQTableView_dragMoveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQTableView, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QTableViewdragLeaveEvent(self[], event)
proc miqt_exec_method_cQTableView_dragLeaveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQTableView, event: gen_qevent_types.QDropEvent): void {.base.} =
  QTableViewdropEvent(self[], event)
proc miqt_exec_method_cQTableView_dropEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl.dropEvent(slotval1)

method focusInEvent*(self: VirtualQTableView, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QTableViewfocusInEvent(self[], event)
proc miqt_exec_method_cQTableView_focusInEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQTableView, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QTableViewfocusOutEvent(self[], event)
proc miqt_exec_method_cQTableView_focusOutEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl.focusOutEvent(slotval1)

method keyPressEvent*(self: VirtualQTableView, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QTableViewkeyPressEvent(self[], event)
proc miqt_exec_method_cQTableView_keyPressEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl.keyPressEvent(slotval1)

method resizeEvent*(self: VirtualQTableView, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QTableViewresizeEvent(self[], event)
proc miqt_exec_method_cQTableView_resizeEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl.resizeEvent(slotval1)

method inputMethodEvent*(self: VirtualQTableView, event: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QTableViewinputMethodEvent(self[], event)
proc miqt_exec_method_cQTableView_inputMethodEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event, owned: false)
  vtbl.inputMethodEvent(slotval1)

method eventFilter*(self: VirtualQTableView, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTableVieweventFilter(self[], objectVal, event)
proc miqt_exec_method_cQTableView_eventFilter(vtbl: pointer, inst: pointer, objectVal: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: objectVal, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method minimumSizeHint*(self: VirtualQTableView, ): gen_qsize_types.QSize {.base.} =
  QTableViewminimumSizeHint(self[])
proc miqt_exec_method_cQTableView_minimumSizeHint(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  var virtualReturn = vtbl.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sizeHint*(self: VirtualQTableView, ): gen_qsize_types.QSize {.base.} =
  QTableViewsizeHint(self[])
proc miqt_exec_method_cQTableView_sizeHint(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  var virtualReturn = vtbl.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method setupViewport*(self: VirtualQTableView, viewport: gen_qwidget_types.QWidget): void {.base.} =
  QTableViewsetupViewport(self[], viewport)
proc miqt_exec_method_cQTableView_setupViewport(vtbl: pointer, inst: pointer, viewport: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qwidget_types.QWidget(h: viewport, owned: false)
  vtbl.setupViewport(slotval1)

method wheelEvent*(self: VirtualQTableView, param1: gen_qevent_types.QWheelEvent): void {.base.} =
  QTableViewwheelEvent(self[], param1)
proc miqt_exec_method_cQTableView_wheelEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1, owned: false)
  vtbl.wheelEvent(slotval1)

method contextMenuEvent*(self: VirtualQTableView, param1: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QTableViewcontextMenuEvent(self[], param1)
proc miqt_exec_method_cQTableView_contextMenuEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  vtbl.contextMenuEvent(slotval1)

method changeEvent*(self: VirtualQTableView, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QTableViewchangeEvent(self[], param1)
proc miqt_exec_method_cQTableView_changeEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl.changeEvent(slotval1)

method devType*(self: VirtualQTableView, ): cint {.base.} =
  QTableViewdevType(self[])
proc miqt_exec_method_cQTableView_devType(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  var virtualReturn = vtbl.devType()
  virtualReturn

method setVisible*(self: VirtualQTableView, visible: bool): void {.base.} =
  QTableViewsetVisible(self[], visible)
proc miqt_exec_method_cQTableView_setVisible(vtbl: pointer, inst: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = visible
  vtbl.setVisible(slotval1)

method heightForWidth*(self: VirtualQTableView, param1: cint): cint {.base.} =
  QTableViewheightForWidth(self[], param1)
proc miqt_exec_method_cQTableView_heightForWidth(vtbl: pointer, inst: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = param1
  var virtualReturn = vtbl.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQTableView, ): bool {.base.} =
  QTableViewhasHeightForWidth(self[])
proc miqt_exec_method_cQTableView_hasHeightForWidth(vtbl: pointer, inst: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  var virtualReturn = vtbl.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQTableView, ): gen_qpaintengine_types.QPaintEngine {.base.} =
  QTableViewpaintEngine(self[])
proc miqt_exec_method_cQTableView_paintEngine(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  var virtualReturn = vtbl.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method keyReleaseEvent*(self: VirtualQTableView, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QTableViewkeyReleaseEvent(self[], event)
proc miqt_exec_method_cQTableView_keyReleaseEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl.keyReleaseEvent(slotval1)

method enterEvent*(self: VirtualQTableView, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QTableViewenterEvent(self[], event)
proc miqt_exec_method_cQTableView_enterEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.enterEvent(slotval1)

method leaveEvent*(self: VirtualQTableView, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QTableViewleaveEvent(self[], event)
proc miqt_exec_method_cQTableView_leaveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.leaveEvent(slotval1)

method moveEvent*(self: VirtualQTableView, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QTableViewmoveEvent(self[], event)
proc miqt_exec_method_cQTableView_moveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl.moveEvent(slotval1)

method closeEvent*(self: VirtualQTableView, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QTableViewcloseEvent(self[], event)
proc miqt_exec_method_cQTableView_closeEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl.closeEvent(slotval1)

method tabletEvent*(self: VirtualQTableView, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QTableViewtabletEvent(self[], event)
proc miqt_exec_method_cQTableView_tabletEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl.tabletEvent(slotval1)

method actionEvent*(self: VirtualQTableView, event: gen_qevent_types.QActionEvent): void {.base.} =
  QTableViewactionEvent(self[], event)
proc miqt_exec_method_cQTableView_actionEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl.actionEvent(slotval1)

method showEvent*(self: VirtualQTableView, event: gen_qevent_types.QShowEvent): void {.base.} =
  QTableViewshowEvent(self[], event)
proc miqt_exec_method_cQTableView_showEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl.showEvent(slotval1)

method hideEvent*(self: VirtualQTableView, event: gen_qevent_types.QHideEvent): void {.base.} =
  QTableViewhideEvent(self[], event)
proc miqt_exec_method_cQTableView_hideEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl.hideEvent(slotval1)

method nativeEvent*(self: VirtualQTableView, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.base.} =
  QTableViewnativeEvent(self[], eventType, message, resultVal)
proc miqt_exec_method_cQTableView_nativeEvent(vtbl: pointer, inst: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method metric*(self: VirtualQTableView, param1: cint): cint {.base.} =
  QTableViewmetric(self[], param1)
proc miqt_exec_method_cQTableView_metric(vtbl: pointer, inst: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = cint(param1)
  var virtualReturn = vtbl.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQTableView, painter: gen_qpainter_types.QPainter): void {.base.} =
  QTableViewinitPainter(self[], painter)
proc miqt_exec_method_cQTableView_initPainter(vtbl: pointer, inst: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl.initPainter(slotval1)

method redirected*(self: VirtualQTableView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QTableViewredirected(self[], offset)
proc miqt_exec_method_cQTableView_redirected(vtbl: pointer, inst: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQTableView, ): gen_qpainter_types.QPainter {.base.} =
  QTableViewsharedPainter(self[])
proc miqt_exec_method_cQTableView_sharedPainter(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  var virtualReturn = vtbl.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method childEvent*(self: VirtualQTableView, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QTableViewchildEvent(self[], event)
proc miqt_exec_method_cQTableView_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQTableView, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QTableViewcustomEvent(self[], event)
proc miqt_exec_method_cQTableView_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQTableView, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QTableViewconnectNotify(self[], signal)
proc miqt_exec_method_cQTableView_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQTableView, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QTableViewdisconnectNotify(self[], signal)
proc miqt_exec_method_cQTableView_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTableView](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc rowMoved*(self: gen_qtableview_types.QTableView, row: cint, oldIndex: cint, newIndex: cint): void =
  fcQTableView_protectedbase_rowMoved(self.h, row, oldIndex, newIndex)

proc columnMoved*(self: gen_qtableview_types.QTableView, column: cint, oldIndex: cint, newIndex: cint): void =
  fcQTableView_protectedbase_columnMoved(self.h, column, oldIndex, newIndex)

proc rowResized*(self: gen_qtableview_types.QTableView, row: cint, oldHeight: cint, newHeight: cint): void =
  fcQTableView_protectedbase_rowResized(self.h, row, oldHeight, newHeight)

proc columnResized*(self: gen_qtableview_types.QTableView, column: cint, oldWidth: cint, newWidth: cint): void =
  fcQTableView_protectedbase_columnResized(self.h, column, oldWidth, newWidth)

proc rowCountChanged*(self: gen_qtableview_types.QTableView, oldCount: cint, newCount: cint): void =
  fcQTableView_protectedbase_rowCountChanged(self.h, oldCount, newCount)

proc columnCountChanged*(self: gen_qtableview_types.QTableView, oldCount: cint, newCount: cint): void =
  fcQTableView_protectedbase_columnCountChanged(self.h, oldCount, newCount)

proc setHorizontalStepsPerItem*(self: gen_qtableview_types.QTableView, steps: cint): void =
  fcQTableView_protectedbase_setHorizontalStepsPerItem(self.h, steps)

proc horizontalStepsPerItem*(self: gen_qtableview_types.QTableView, ): cint =
  fcQTableView_protectedbase_horizontalStepsPerItem(self.h)

proc setVerticalStepsPerItem*(self: gen_qtableview_types.QTableView, steps: cint): void =
  fcQTableView_protectedbase_setVerticalStepsPerItem(self.h, steps)

proc verticalStepsPerItem*(self: gen_qtableview_types.QTableView, ): cint =
  fcQTableView_protectedbase_verticalStepsPerItem(self.h)

proc state*(self: gen_qtableview_types.QTableView, ): cint =
  cint(fcQTableView_protectedbase_state(self.h))

proc setState*(self: gen_qtableview_types.QTableView, state: cint): void =
  fcQTableView_protectedbase_setState(self.h, cint(state))

proc scheduleDelayedItemsLayout*(self: gen_qtableview_types.QTableView, ): void =
  fcQTableView_protectedbase_scheduleDelayedItemsLayout(self.h)

proc executeDelayedItemsLayout*(self: gen_qtableview_types.QTableView, ): void =
  fcQTableView_protectedbase_executeDelayedItemsLayout(self.h)

proc setDirtyRegion*(self: gen_qtableview_types.QTableView, region: gen_qregion_types.QRegion): void =
  fcQTableView_protectedbase_setDirtyRegion(self.h, region.h)

proc scrollDirtyRegion*(self: gen_qtableview_types.QTableView, dx: cint, dy: cint): void =
  fcQTableView_protectedbase_scrollDirtyRegion(self.h, dx, dy)

proc dirtyRegionOffset*(self: gen_qtableview_types.QTableView, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQTableView_protectedbase_dirtyRegionOffset(self.h), owned: true)

proc startAutoScroll*(self: gen_qtableview_types.QTableView, ): void =
  fcQTableView_protectedbase_startAutoScroll(self.h)

proc stopAutoScroll*(self: gen_qtableview_types.QTableView, ): void =
  fcQTableView_protectedbase_stopAutoScroll(self.h)

proc doAutoScroll*(self: gen_qtableview_types.QTableView, ): void =
  fcQTableView_protectedbase_doAutoScroll(self.h)

proc dropIndicatorPosition*(self: gen_qtableview_types.QTableView, ): cint =
  cint(fcQTableView_protectedbase_dropIndicatorPosition(self.h))

proc setViewportMargins*(self: gen_qtableview_types.QTableView, left: cint, top: cint, right: cint, bottom: cint): void =
  fcQTableView_protectedbase_setViewportMargins(self.h, left, top, right, bottom)

proc viewportMargins*(self: gen_qtableview_types.QTableView, ): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQTableView_protectedbase_viewportMargins(self.h), owned: true)

proc drawFrame*(self: gen_qtableview_types.QTableView, param1: gen_qpainter_types.QPainter): void =
  fcQTableView_protectedbase_drawFrame(self.h, param1.h)

proc initStyleOption*(self: gen_qtableview_types.QTableView, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fcQTableView_protectedbase_initStyleOption(self.h, option.h)

proc updateMicroFocus*(self: gen_qtableview_types.QTableView, ): void =
  fcQTableView_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qtableview_types.QTableView, ): void =
  fcQTableView_protectedbase_create(self.h)

proc destroy*(self: gen_qtableview_types.QTableView, ): void =
  fcQTableView_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qtableview_types.QTableView, ): bool =
  fcQTableView_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qtableview_types.QTableView, ): bool =
  fcQTableView_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qtableview_types.QTableView, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQTableView_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qtableview_types.QTableView, ): cint =
  fcQTableView_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qtableview_types.QTableView, signal: cstring): cint =
  fcQTableView_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qtableview_types.QTableView, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQTableView_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qtableview_types.QTableView,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QTableViewVTable = nil): gen_qtableview_types.QTableView =
  let vtbl = if vtbl == nil: new QTableViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQTableViewVTable, _: ptr cQTableView) {.cdecl.} =
    let vtbl = cast[ref QTableViewVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQTableView_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQTableView_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQTableView_metacall
  if not isNil(vtbl[].setModel):
    vtbl[].vtbl.setModel = miqt_exec_callback_cQTableView_setModel
  if not isNil(vtbl[].setRootIndex):
    vtbl[].vtbl.setRootIndex = miqt_exec_callback_cQTableView_setRootIndex
  if not isNil(vtbl[].setSelectionModel):
    vtbl[].vtbl.setSelectionModel = miqt_exec_callback_cQTableView_setSelectionModel
  if not isNil(vtbl[].doItemsLayout):
    vtbl[].vtbl.doItemsLayout = miqt_exec_callback_cQTableView_doItemsLayout
  if not isNil(vtbl[].visualRect):
    vtbl[].vtbl.visualRect = miqt_exec_callback_cQTableView_visualRect
  if not isNil(vtbl[].scrollTo):
    vtbl[].vtbl.scrollTo = miqt_exec_callback_cQTableView_scrollTo
  if not isNil(vtbl[].indexAt):
    vtbl[].vtbl.indexAt = miqt_exec_callback_cQTableView_indexAt
  if not isNil(vtbl[].scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = miqt_exec_callback_cQTableView_scrollContentsBy
  if not isNil(vtbl[].viewOptions):
    vtbl[].vtbl.viewOptions = miqt_exec_callback_cQTableView_viewOptions
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQTableView_paintEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQTableView_timerEvent
  if not isNil(vtbl[].horizontalOffset):
    vtbl[].vtbl.horizontalOffset = miqt_exec_callback_cQTableView_horizontalOffset
  if not isNil(vtbl[].verticalOffset):
    vtbl[].vtbl.verticalOffset = miqt_exec_callback_cQTableView_verticalOffset
  if not isNil(vtbl[].moveCursor):
    vtbl[].vtbl.moveCursor = miqt_exec_callback_cQTableView_moveCursor
  if not isNil(vtbl[].setSelection):
    vtbl[].vtbl.setSelection = miqt_exec_callback_cQTableView_setSelection
  if not isNil(vtbl[].visualRegionForSelection):
    vtbl[].vtbl.visualRegionForSelection = miqt_exec_callback_cQTableView_visualRegionForSelection
  if not isNil(vtbl[].selectedIndexes):
    vtbl[].vtbl.selectedIndexes = miqt_exec_callback_cQTableView_selectedIndexes
  if not isNil(vtbl[].updateGeometries):
    vtbl[].vtbl.updateGeometries = miqt_exec_callback_cQTableView_updateGeometries
  if not isNil(vtbl[].viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = miqt_exec_callback_cQTableView_viewportSizeHint
  if not isNil(vtbl[].sizeHintForRow):
    vtbl[].vtbl.sizeHintForRow = miqt_exec_callback_cQTableView_sizeHintForRow
  if not isNil(vtbl[].sizeHintForColumn):
    vtbl[].vtbl.sizeHintForColumn = miqt_exec_callback_cQTableView_sizeHintForColumn
  if not isNil(vtbl[].verticalScrollbarAction):
    vtbl[].vtbl.verticalScrollbarAction = miqt_exec_callback_cQTableView_verticalScrollbarAction
  if not isNil(vtbl[].horizontalScrollbarAction):
    vtbl[].vtbl.horizontalScrollbarAction = miqt_exec_callback_cQTableView_horizontalScrollbarAction
  if not isNil(vtbl[].isIndexHidden):
    vtbl[].vtbl.isIndexHidden = miqt_exec_callback_cQTableView_isIndexHidden
  if not isNil(vtbl[].selectionChanged):
    vtbl[].vtbl.selectionChanged = miqt_exec_callback_cQTableView_selectionChanged
  if not isNil(vtbl[].currentChanged):
    vtbl[].vtbl.currentChanged = miqt_exec_callback_cQTableView_currentChanged
  if not isNil(vtbl[].keyboardSearch):
    vtbl[].vtbl.keyboardSearch = miqt_exec_callback_cQTableView_keyboardSearch
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQTableView_inputMethodQuery
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQTableView_reset
  if not isNil(vtbl[].selectAll):
    vtbl[].vtbl.selectAll = miqt_exec_callback_cQTableView_selectAll
  if not isNil(vtbl[].dataChanged):
    vtbl[].vtbl.dataChanged = miqt_exec_callback_cQTableView_dataChanged
  if not isNil(vtbl[].rowsInserted):
    vtbl[].vtbl.rowsInserted = miqt_exec_callback_cQTableView_rowsInserted
  if not isNil(vtbl[].rowsAboutToBeRemoved):
    vtbl[].vtbl.rowsAboutToBeRemoved = miqt_exec_callback_cQTableView_rowsAboutToBeRemoved
  if not isNil(vtbl[].updateEditorData):
    vtbl[].vtbl.updateEditorData = miqt_exec_callback_cQTableView_updateEditorData
  if not isNil(vtbl[].updateEditorGeometries):
    vtbl[].vtbl.updateEditorGeometries = miqt_exec_callback_cQTableView_updateEditorGeometries
  if not isNil(vtbl[].verticalScrollbarValueChanged):
    vtbl[].vtbl.verticalScrollbarValueChanged = miqt_exec_callback_cQTableView_verticalScrollbarValueChanged
  if not isNil(vtbl[].horizontalScrollbarValueChanged):
    vtbl[].vtbl.horizontalScrollbarValueChanged = miqt_exec_callback_cQTableView_horizontalScrollbarValueChanged
  if not isNil(vtbl[].closeEditor):
    vtbl[].vtbl.closeEditor = miqt_exec_callback_cQTableView_closeEditor
  if not isNil(vtbl[].commitData):
    vtbl[].vtbl.commitData = miqt_exec_callback_cQTableView_commitData
  if not isNil(vtbl[].editorDestroyed):
    vtbl[].vtbl.editorDestroyed = miqt_exec_callback_cQTableView_editorDestroyed
  if not isNil(vtbl[].edit2):
    vtbl[].vtbl.edit2 = miqt_exec_callback_cQTableView_edit2
  if not isNil(vtbl[].selectionCommand):
    vtbl[].vtbl.selectionCommand = miqt_exec_callback_cQTableView_selectionCommand
  if not isNil(vtbl[].startDrag):
    vtbl[].vtbl.startDrag = miqt_exec_callback_cQTableView_startDrag
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQTableView_focusNextPrevChild
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQTableView_event
  if not isNil(vtbl[].viewportEvent):
    vtbl[].vtbl.viewportEvent = miqt_exec_callback_cQTableView_viewportEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQTableView_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQTableView_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQTableView_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQTableView_mouseDoubleClickEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQTableView_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQTableView_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQTableView_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQTableView_dropEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQTableView_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQTableView_focusOutEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQTableView_keyPressEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQTableView_resizeEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQTableView_inputMethodEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQTableView_eventFilter
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQTableView_minimumSizeHint
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQTableView_sizeHint
  if not isNil(vtbl[].setupViewport):
    vtbl[].vtbl.setupViewport = miqt_exec_callback_cQTableView_setupViewport
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQTableView_wheelEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQTableView_contextMenuEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQTableView_changeEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQTableView_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQTableView_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQTableView_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQTableView_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQTableView_paintEngine
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQTableView_keyReleaseEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQTableView_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQTableView_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQTableView_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQTableView_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQTableView_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQTableView_actionEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQTableView_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQTableView_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQTableView_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQTableView_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQTableView_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQTableView_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQTableView_sharedPainter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQTableView_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQTableView_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQTableView_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQTableView_disconnectNotify
  gen_qtableview_types.QTableView(h: fcQTableView_new(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qtableview_types.QTableView,
    vtbl: ref QTableViewVTable = nil): gen_qtableview_types.QTableView =
  let vtbl = if vtbl == nil: new QTableViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQTableViewVTable, _: ptr cQTableView) {.cdecl.} =
    let vtbl = cast[ref QTableViewVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQTableView_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQTableView_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQTableView_metacall
  if not isNil(vtbl[].setModel):
    vtbl[].vtbl.setModel = miqt_exec_callback_cQTableView_setModel
  if not isNil(vtbl[].setRootIndex):
    vtbl[].vtbl.setRootIndex = miqt_exec_callback_cQTableView_setRootIndex
  if not isNil(vtbl[].setSelectionModel):
    vtbl[].vtbl.setSelectionModel = miqt_exec_callback_cQTableView_setSelectionModel
  if not isNil(vtbl[].doItemsLayout):
    vtbl[].vtbl.doItemsLayout = miqt_exec_callback_cQTableView_doItemsLayout
  if not isNil(vtbl[].visualRect):
    vtbl[].vtbl.visualRect = miqt_exec_callback_cQTableView_visualRect
  if not isNil(vtbl[].scrollTo):
    vtbl[].vtbl.scrollTo = miqt_exec_callback_cQTableView_scrollTo
  if not isNil(vtbl[].indexAt):
    vtbl[].vtbl.indexAt = miqt_exec_callback_cQTableView_indexAt
  if not isNil(vtbl[].scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = miqt_exec_callback_cQTableView_scrollContentsBy
  if not isNil(vtbl[].viewOptions):
    vtbl[].vtbl.viewOptions = miqt_exec_callback_cQTableView_viewOptions
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQTableView_paintEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQTableView_timerEvent
  if not isNil(vtbl[].horizontalOffset):
    vtbl[].vtbl.horizontalOffset = miqt_exec_callback_cQTableView_horizontalOffset
  if not isNil(vtbl[].verticalOffset):
    vtbl[].vtbl.verticalOffset = miqt_exec_callback_cQTableView_verticalOffset
  if not isNil(vtbl[].moveCursor):
    vtbl[].vtbl.moveCursor = miqt_exec_callback_cQTableView_moveCursor
  if not isNil(vtbl[].setSelection):
    vtbl[].vtbl.setSelection = miqt_exec_callback_cQTableView_setSelection
  if not isNil(vtbl[].visualRegionForSelection):
    vtbl[].vtbl.visualRegionForSelection = miqt_exec_callback_cQTableView_visualRegionForSelection
  if not isNil(vtbl[].selectedIndexes):
    vtbl[].vtbl.selectedIndexes = miqt_exec_callback_cQTableView_selectedIndexes
  if not isNil(vtbl[].updateGeometries):
    vtbl[].vtbl.updateGeometries = miqt_exec_callback_cQTableView_updateGeometries
  if not isNil(vtbl[].viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = miqt_exec_callback_cQTableView_viewportSizeHint
  if not isNil(vtbl[].sizeHintForRow):
    vtbl[].vtbl.sizeHintForRow = miqt_exec_callback_cQTableView_sizeHintForRow
  if not isNil(vtbl[].sizeHintForColumn):
    vtbl[].vtbl.sizeHintForColumn = miqt_exec_callback_cQTableView_sizeHintForColumn
  if not isNil(vtbl[].verticalScrollbarAction):
    vtbl[].vtbl.verticalScrollbarAction = miqt_exec_callback_cQTableView_verticalScrollbarAction
  if not isNil(vtbl[].horizontalScrollbarAction):
    vtbl[].vtbl.horizontalScrollbarAction = miqt_exec_callback_cQTableView_horizontalScrollbarAction
  if not isNil(vtbl[].isIndexHidden):
    vtbl[].vtbl.isIndexHidden = miqt_exec_callback_cQTableView_isIndexHidden
  if not isNil(vtbl[].selectionChanged):
    vtbl[].vtbl.selectionChanged = miqt_exec_callback_cQTableView_selectionChanged
  if not isNil(vtbl[].currentChanged):
    vtbl[].vtbl.currentChanged = miqt_exec_callback_cQTableView_currentChanged
  if not isNil(vtbl[].keyboardSearch):
    vtbl[].vtbl.keyboardSearch = miqt_exec_callback_cQTableView_keyboardSearch
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQTableView_inputMethodQuery
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQTableView_reset
  if not isNil(vtbl[].selectAll):
    vtbl[].vtbl.selectAll = miqt_exec_callback_cQTableView_selectAll
  if not isNil(vtbl[].dataChanged):
    vtbl[].vtbl.dataChanged = miqt_exec_callback_cQTableView_dataChanged
  if not isNil(vtbl[].rowsInserted):
    vtbl[].vtbl.rowsInserted = miqt_exec_callback_cQTableView_rowsInserted
  if not isNil(vtbl[].rowsAboutToBeRemoved):
    vtbl[].vtbl.rowsAboutToBeRemoved = miqt_exec_callback_cQTableView_rowsAboutToBeRemoved
  if not isNil(vtbl[].updateEditorData):
    vtbl[].vtbl.updateEditorData = miqt_exec_callback_cQTableView_updateEditorData
  if not isNil(vtbl[].updateEditorGeometries):
    vtbl[].vtbl.updateEditorGeometries = miqt_exec_callback_cQTableView_updateEditorGeometries
  if not isNil(vtbl[].verticalScrollbarValueChanged):
    vtbl[].vtbl.verticalScrollbarValueChanged = miqt_exec_callback_cQTableView_verticalScrollbarValueChanged
  if not isNil(vtbl[].horizontalScrollbarValueChanged):
    vtbl[].vtbl.horizontalScrollbarValueChanged = miqt_exec_callback_cQTableView_horizontalScrollbarValueChanged
  if not isNil(vtbl[].closeEditor):
    vtbl[].vtbl.closeEditor = miqt_exec_callback_cQTableView_closeEditor
  if not isNil(vtbl[].commitData):
    vtbl[].vtbl.commitData = miqt_exec_callback_cQTableView_commitData
  if not isNil(vtbl[].editorDestroyed):
    vtbl[].vtbl.editorDestroyed = miqt_exec_callback_cQTableView_editorDestroyed
  if not isNil(vtbl[].edit2):
    vtbl[].vtbl.edit2 = miqt_exec_callback_cQTableView_edit2
  if not isNil(vtbl[].selectionCommand):
    vtbl[].vtbl.selectionCommand = miqt_exec_callback_cQTableView_selectionCommand
  if not isNil(vtbl[].startDrag):
    vtbl[].vtbl.startDrag = miqt_exec_callback_cQTableView_startDrag
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQTableView_focusNextPrevChild
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQTableView_event
  if not isNil(vtbl[].viewportEvent):
    vtbl[].vtbl.viewportEvent = miqt_exec_callback_cQTableView_viewportEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQTableView_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQTableView_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQTableView_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQTableView_mouseDoubleClickEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQTableView_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQTableView_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQTableView_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQTableView_dropEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQTableView_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQTableView_focusOutEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQTableView_keyPressEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQTableView_resizeEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQTableView_inputMethodEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQTableView_eventFilter
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQTableView_minimumSizeHint
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQTableView_sizeHint
  if not isNil(vtbl[].setupViewport):
    vtbl[].vtbl.setupViewport = miqt_exec_callback_cQTableView_setupViewport
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQTableView_wheelEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQTableView_contextMenuEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQTableView_changeEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQTableView_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQTableView_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQTableView_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQTableView_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQTableView_paintEngine
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQTableView_keyReleaseEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQTableView_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQTableView_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQTableView_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQTableView_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQTableView_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQTableView_actionEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQTableView_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQTableView_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQTableView_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQTableView_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQTableView_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQTableView_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQTableView_sharedPainter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQTableView_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQTableView_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQTableView_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQTableView_disconnectNotify
  gen_qtableview_types.QTableView(h: fcQTableView_new2(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qtableview_types.QTableView,
    parent: gen_qwidget_types.QWidget,
    vtbl: VirtualQTableView) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQTableViewVTable, _: ptr cQTableView) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQTableView()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQTableView_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQTableView_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQTableView_metacall
  vtbl[].vtbl.setModel = miqt_exec_method_cQTableView_setModel
  vtbl[].vtbl.setRootIndex = miqt_exec_method_cQTableView_setRootIndex
  vtbl[].vtbl.setSelectionModel = miqt_exec_method_cQTableView_setSelectionModel
  vtbl[].vtbl.doItemsLayout = miqt_exec_method_cQTableView_doItemsLayout
  vtbl[].vtbl.visualRect = miqt_exec_method_cQTableView_visualRect
  vtbl[].vtbl.scrollTo = miqt_exec_method_cQTableView_scrollTo
  vtbl[].vtbl.indexAt = miqt_exec_method_cQTableView_indexAt
  vtbl[].vtbl.scrollContentsBy = miqt_exec_method_cQTableView_scrollContentsBy
  vtbl[].vtbl.viewOptions = miqt_exec_method_cQTableView_viewOptions
  vtbl[].vtbl.paintEvent = miqt_exec_method_cQTableView_paintEvent
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQTableView_timerEvent
  vtbl[].vtbl.horizontalOffset = miqt_exec_method_cQTableView_horizontalOffset
  vtbl[].vtbl.verticalOffset = miqt_exec_method_cQTableView_verticalOffset
  vtbl[].vtbl.moveCursor = miqt_exec_method_cQTableView_moveCursor
  vtbl[].vtbl.setSelection = miqt_exec_method_cQTableView_setSelection
  vtbl[].vtbl.visualRegionForSelection = miqt_exec_method_cQTableView_visualRegionForSelection
  vtbl[].vtbl.selectedIndexes = miqt_exec_method_cQTableView_selectedIndexes
  vtbl[].vtbl.updateGeometries = miqt_exec_method_cQTableView_updateGeometries
  vtbl[].vtbl.viewportSizeHint = miqt_exec_method_cQTableView_viewportSizeHint
  vtbl[].vtbl.sizeHintForRow = miqt_exec_method_cQTableView_sizeHintForRow
  vtbl[].vtbl.sizeHintForColumn = miqt_exec_method_cQTableView_sizeHintForColumn
  vtbl[].vtbl.verticalScrollbarAction = miqt_exec_method_cQTableView_verticalScrollbarAction
  vtbl[].vtbl.horizontalScrollbarAction = miqt_exec_method_cQTableView_horizontalScrollbarAction
  vtbl[].vtbl.isIndexHidden = miqt_exec_method_cQTableView_isIndexHidden
  vtbl[].vtbl.selectionChanged = miqt_exec_method_cQTableView_selectionChanged
  vtbl[].vtbl.currentChanged = miqt_exec_method_cQTableView_currentChanged
  vtbl[].vtbl.keyboardSearch = miqt_exec_method_cQTableView_keyboardSearch
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQTableView_inputMethodQuery
  vtbl[].vtbl.reset = miqt_exec_method_cQTableView_reset
  vtbl[].vtbl.selectAll = miqt_exec_method_cQTableView_selectAll
  vtbl[].vtbl.dataChanged = miqt_exec_method_cQTableView_dataChanged
  vtbl[].vtbl.rowsInserted = miqt_exec_method_cQTableView_rowsInserted
  vtbl[].vtbl.rowsAboutToBeRemoved = miqt_exec_method_cQTableView_rowsAboutToBeRemoved
  vtbl[].vtbl.updateEditorData = miqt_exec_method_cQTableView_updateEditorData
  vtbl[].vtbl.updateEditorGeometries = miqt_exec_method_cQTableView_updateEditorGeometries
  vtbl[].vtbl.verticalScrollbarValueChanged = miqt_exec_method_cQTableView_verticalScrollbarValueChanged
  vtbl[].vtbl.horizontalScrollbarValueChanged = miqt_exec_method_cQTableView_horizontalScrollbarValueChanged
  vtbl[].vtbl.closeEditor = miqt_exec_method_cQTableView_closeEditor
  vtbl[].vtbl.commitData = miqt_exec_method_cQTableView_commitData
  vtbl[].vtbl.editorDestroyed = miqt_exec_method_cQTableView_editorDestroyed
  vtbl[].vtbl.edit = miqt_exec_method_cQTableView_edit2
  vtbl[].vtbl.selectionCommand = miqt_exec_method_cQTableView_selectionCommand
  vtbl[].vtbl.startDrag = miqt_exec_method_cQTableView_startDrag
  vtbl[].vtbl.focusNextPrevChild = miqt_exec_method_cQTableView_focusNextPrevChild
  vtbl[].vtbl.event = miqt_exec_method_cQTableView_event
  vtbl[].vtbl.viewportEvent = miqt_exec_method_cQTableView_viewportEvent
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQTableView_mousePressEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQTableView_mouseMoveEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQTableView_mouseReleaseEvent
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQTableView_mouseDoubleClickEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQTableView_dragEnterEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQTableView_dragMoveEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQTableView_dragLeaveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQTableView_dropEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQTableView_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQTableView_focusOutEvent
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQTableView_keyPressEvent
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQTableView_resizeEvent
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQTableView_inputMethodEvent
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQTableView_eventFilter
  vtbl[].vtbl.minimumSizeHint = miqt_exec_method_cQTableView_minimumSizeHint
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQTableView_sizeHint
  vtbl[].vtbl.setupViewport = miqt_exec_method_cQTableView_setupViewport
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQTableView_wheelEvent
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQTableView_contextMenuEvent
  vtbl[].vtbl.changeEvent = miqt_exec_method_cQTableView_changeEvent
  vtbl[].vtbl.devType = miqt_exec_method_cQTableView_devType
  vtbl[].vtbl.setVisible = miqt_exec_method_cQTableView_setVisible
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQTableView_heightForWidth
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQTableView_hasHeightForWidth
  vtbl[].vtbl.paintEngine = miqt_exec_method_cQTableView_paintEngine
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQTableView_keyReleaseEvent
  vtbl[].vtbl.enterEvent = miqt_exec_method_cQTableView_enterEvent
  vtbl[].vtbl.leaveEvent = miqt_exec_method_cQTableView_leaveEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQTableView_moveEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQTableView_closeEvent
  vtbl[].vtbl.tabletEvent = miqt_exec_method_cQTableView_tabletEvent
  vtbl[].vtbl.actionEvent = miqt_exec_method_cQTableView_actionEvent
  vtbl[].vtbl.showEvent = miqt_exec_method_cQTableView_showEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQTableView_hideEvent
  vtbl[].vtbl.nativeEvent = miqt_exec_method_cQTableView_nativeEvent
  vtbl[].vtbl.metric = miqt_exec_method_cQTableView_metric
  vtbl[].vtbl.initPainter = miqt_exec_method_cQTableView_initPainter
  vtbl[].vtbl.redirected = miqt_exec_method_cQTableView_redirected
  vtbl[].vtbl.sharedPainter = miqt_exec_method_cQTableView_sharedPainter
  vtbl[].vtbl.childEvent = miqt_exec_method_cQTableView_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQTableView_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQTableView_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQTableView_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQTableView_new(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

proc create*(T: type gen_qtableview_types.QTableView,
    vtbl: VirtualQTableView) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQTableViewVTable, _: ptr cQTableView) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQTableView()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQTableView, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQTableView_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQTableView_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQTableView_metacall
  vtbl[].vtbl.setModel = miqt_exec_method_cQTableView_setModel
  vtbl[].vtbl.setRootIndex = miqt_exec_method_cQTableView_setRootIndex
  vtbl[].vtbl.setSelectionModel = miqt_exec_method_cQTableView_setSelectionModel
  vtbl[].vtbl.doItemsLayout = miqt_exec_method_cQTableView_doItemsLayout
  vtbl[].vtbl.visualRect = miqt_exec_method_cQTableView_visualRect
  vtbl[].vtbl.scrollTo = miqt_exec_method_cQTableView_scrollTo
  vtbl[].vtbl.indexAt = miqt_exec_method_cQTableView_indexAt
  vtbl[].vtbl.scrollContentsBy = miqt_exec_method_cQTableView_scrollContentsBy
  vtbl[].vtbl.viewOptions = miqt_exec_method_cQTableView_viewOptions
  vtbl[].vtbl.paintEvent = miqt_exec_method_cQTableView_paintEvent
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQTableView_timerEvent
  vtbl[].vtbl.horizontalOffset = miqt_exec_method_cQTableView_horizontalOffset
  vtbl[].vtbl.verticalOffset = miqt_exec_method_cQTableView_verticalOffset
  vtbl[].vtbl.moveCursor = miqt_exec_method_cQTableView_moveCursor
  vtbl[].vtbl.setSelection = miqt_exec_method_cQTableView_setSelection
  vtbl[].vtbl.visualRegionForSelection = miqt_exec_method_cQTableView_visualRegionForSelection
  vtbl[].vtbl.selectedIndexes = miqt_exec_method_cQTableView_selectedIndexes
  vtbl[].vtbl.updateGeometries = miqt_exec_method_cQTableView_updateGeometries
  vtbl[].vtbl.viewportSizeHint = miqt_exec_method_cQTableView_viewportSizeHint
  vtbl[].vtbl.sizeHintForRow = miqt_exec_method_cQTableView_sizeHintForRow
  vtbl[].vtbl.sizeHintForColumn = miqt_exec_method_cQTableView_sizeHintForColumn
  vtbl[].vtbl.verticalScrollbarAction = miqt_exec_method_cQTableView_verticalScrollbarAction
  vtbl[].vtbl.horizontalScrollbarAction = miqt_exec_method_cQTableView_horizontalScrollbarAction
  vtbl[].vtbl.isIndexHidden = miqt_exec_method_cQTableView_isIndexHidden
  vtbl[].vtbl.selectionChanged = miqt_exec_method_cQTableView_selectionChanged
  vtbl[].vtbl.currentChanged = miqt_exec_method_cQTableView_currentChanged
  vtbl[].vtbl.keyboardSearch = miqt_exec_method_cQTableView_keyboardSearch
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQTableView_inputMethodQuery
  vtbl[].vtbl.reset = miqt_exec_method_cQTableView_reset
  vtbl[].vtbl.selectAll = miqt_exec_method_cQTableView_selectAll
  vtbl[].vtbl.dataChanged = miqt_exec_method_cQTableView_dataChanged
  vtbl[].vtbl.rowsInserted = miqt_exec_method_cQTableView_rowsInserted
  vtbl[].vtbl.rowsAboutToBeRemoved = miqt_exec_method_cQTableView_rowsAboutToBeRemoved
  vtbl[].vtbl.updateEditorData = miqt_exec_method_cQTableView_updateEditorData
  vtbl[].vtbl.updateEditorGeometries = miqt_exec_method_cQTableView_updateEditorGeometries
  vtbl[].vtbl.verticalScrollbarValueChanged = miqt_exec_method_cQTableView_verticalScrollbarValueChanged
  vtbl[].vtbl.horizontalScrollbarValueChanged = miqt_exec_method_cQTableView_horizontalScrollbarValueChanged
  vtbl[].vtbl.closeEditor = miqt_exec_method_cQTableView_closeEditor
  vtbl[].vtbl.commitData = miqt_exec_method_cQTableView_commitData
  vtbl[].vtbl.editorDestroyed = miqt_exec_method_cQTableView_editorDestroyed
  vtbl[].vtbl.edit = miqt_exec_method_cQTableView_edit2
  vtbl[].vtbl.selectionCommand = miqt_exec_method_cQTableView_selectionCommand
  vtbl[].vtbl.startDrag = miqt_exec_method_cQTableView_startDrag
  vtbl[].vtbl.focusNextPrevChild = miqt_exec_method_cQTableView_focusNextPrevChild
  vtbl[].vtbl.event = miqt_exec_method_cQTableView_event
  vtbl[].vtbl.viewportEvent = miqt_exec_method_cQTableView_viewportEvent
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQTableView_mousePressEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQTableView_mouseMoveEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQTableView_mouseReleaseEvent
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQTableView_mouseDoubleClickEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQTableView_dragEnterEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQTableView_dragMoveEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQTableView_dragLeaveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQTableView_dropEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQTableView_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQTableView_focusOutEvent
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQTableView_keyPressEvent
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQTableView_resizeEvent
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQTableView_inputMethodEvent
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQTableView_eventFilter
  vtbl[].vtbl.minimumSizeHint = miqt_exec_method_cQTableView_minimumSizeHint
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQTableView_sizeHint
  vtbl[].vtbl.setupViewport = miqt_exec_method_cQTableView_setupViewport
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQTableView_wheelEvent
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQTableView_contextMenuEvent
  vtbl[].vtbl.changeEvent = miqt_exec_method_cQTableView_changeEvent
  vtbl[].vtbl.devType = miqt_exec_method_cQTableView_devType
  vtbl[].vtbl.setVisible = miqt_exec_method_cQTableView_setVisible
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQTableView_heightForWidth
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQTableView_hasHeightForWidth
  vtbl[].vtbl.paintEngine = miqt_exec_method_cQTableView_paintEngine
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQTableView_keyReleaseEvent
  vtbl[].vtbl.enterEvent = miqt_exec_method_cQTableView_enterEvent
  vtbl[].vtbl.leaveEvent = miqt_exec_method_cQTableView_leaveEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQTableView_moveEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQTableView_closeEvent
  vtbl[].vtbl.tabletEvent = miqt_exec_method_cQTableView_tabletEvent
  vtbl[].vtbl.actionEvent = miqt_exec_method_cQTableView_actionEvent
  vtbl[].vtbl.showEvent = miqt_exec_method_cQTableView_showEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQTableView_hideEvent
  vtbl[].vtbl.nativeEvent = miqt_exec_method_cQTableView_nativeEvent
  vtbl[].vtbl.metric = miqt_exec_method_cQTableView_metric
  vtbl[].vtbl.initPainter = miqt_exec_method_cQTableView_initPainter
  vtbl[].vtbl.redirected = miqt_exec_method_cQTableView_redirected
  vtbl[].vtbl.sharedPainter = miqt_exec_method_cQTableView_sharedPainter
  vtbl[].vtbl.childEvent = miqt_exec_method_cQTableView_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQTableView_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQTableView_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQTableView_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQTableView_new2(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qtableview_types.QTableView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTableView_staticMetaObject())
