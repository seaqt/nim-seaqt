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
  gen_qabstractitemdelegate_types,
  gen_qabstractitemview,
  gen_qheaderview_types,
  gen_qstyleoption_types,
  gen_qwidget_types

type cQTableView*{.exportc: "QTableView", incompleteStruct.} = object

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
type cQTableViewVTable = object
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
  initViewItemOption*: proc(vtbl, self: pointer, option: pointer): void {.cdecl, raises: [], gcsafe.}
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
  itemDelegateForIndex*: proc(vtbl, self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
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
  initStyleOption*: proc(vtbl, self: pointer, option: pointer): void {.cdecl, raises: [], gcsafe.}
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
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
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
proc fcQTableView_virtualbase_initViewItemOption(self: pointer, option: pointer): void {.importc: "QTableView_virtualbase_initViewItemOption".}
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
proc fcQTableView_virtualbase_itemDelegateForIndex(self: pointer, index: pointer): pointer {.importc: "QTableView_virtualbase_itemDelegateForIndex".}
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
proc fcQTableView_virtualbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QTableView_virtualbase_initStyleOption".}
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
proc fcQTableView_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QTableView_virtualbase_nativeEvent".}
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
proc fcQTableView_delete(self: pointer) {.importc: "QTableView_delete".}

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
type QTableViewinitViewItemOptionProc* = proc(self: QTableView, option: gen_qstyleoption_types.QStyleOptionViewItem): void {.raises: [], gcsafe.}
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
type QTableViewitemDelegateForIndexProc* = proc(self: QTableView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemdelegate_types.QAbstractItemDelegate {.raises: [], gcsafe.}
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
type QTableViewinitStyleOptionProc* = proc(self: QTableView, option: gen_qstyleoption_types.QStyleOptionFrame): void {.raises: [], gcsafe.}
type QTableViewdevTypeProc* = proc(self: QTableView): cint {.raises: [], gcsafe.}
type QTableViewsetVisibleProc* = proc(self: QTableView, visible: bool): void {.raises: [], gcsafe.}
type QTableViewheightForWidthProc* = proc(self: QTableView, param1: cint): cint {.raises: [], gcsafe.}
type QTableViewhasHeightForWidthProc* = proc(self: QTableView): bool {.raises: [], gcsafe.}
type QTableViewpaintEngineProc* = proc(self: QTableView): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QTableViewkeyReleaseEventProc* = proc(self: QTableView, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QTableViewenterEventProc* = proc(self: QTableView, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QTableViewleaveEventProc* = proc(self: QTableView, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTableViewmoveEventProc* = proc(self: QTableView, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QTableViewcloseEventProc* = proc(self: QTableView, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QTableViewtabletEventProc* = proc(self: QTableView, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QTableViewactionEventProc* = proc(self: QTableView, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QTableViewshowEventProc* = proc(self: QTableView, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QTableViewhideEventProc* = proc(self: QTableView, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QTableViewnativeEventProc* = proc(self: QTableView, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QTableViewmetricProc* = proc(self: QTableView, param1: cint): cint {.raises: [], gcsafe.}
type QTableViewinitPainterProc* = proc(self: QTableView, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QTableViewredirectedProc* = proc(self: QTableView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QTableViewsharedPainterProc* = proc(self: QTableView): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QTableViewchildEventProc* = proc(self: QTableView, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QTableViewcustomEventProc* = proc(self: QTableView, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTableViewconnectNotifyProc* = proc(self: QTableView, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTableViewdisconnectNotifyProc* = proc(self: QTableView, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTableViewVTable* = object
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
  initViewItemOption*: QTableViewinitViewItemOptionProc
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
  itemDelegateForIndex*: QTableViewitemDelegateForIndexProc
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
  initStyleOption*: QTableViewinitStyleOptionProc
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
  gen_qobjectdefs_types.QMetaObject(h: fcQTableView_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQTableView_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

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
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model)
  vtbl[].setModel(self, slotval1)

proc QTableViewsetRootIndex*(self: gen_qtableview_types.QTableView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQTableView_virtualbase_setRootIndex(self.h, index.h)

proc miqt_exec_callback_cQTableView_setRootIndex(vtbl: pointer, self: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  vtbl[].setRootIndex(self, slotval1)

proc QTableViewsetSelectionModel*(self: gen_qtableview_types.QTableView, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void =
  fcQTableView_virtualbase_setSelectionModel(self.h, selectionModel.h)

proc miqt_exec_callback_cQTableView_setSelectionModel(vtbl: pointer, self: pointer, selectionModel: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelectionModel(h: selectionModel)
  vtbl[].setSelectionModel(self, slotval1)

proc QTableViewdoItemsLayout*(self: gen_qtableview_types.QTableView, ): void =
  fcQTableView_virtualbase_doItemsLayout(self.h)

proc miqt_exec_callback_cQTableView_doItemsLayout(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  vtbl[].doItemsLayout(self)

proc QTableViewvisualRect*(self: gen_qtableview_types.QTableView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQTableView_virtualbase_visualRect(self.h, index.h))

proc miqt_exec_callback_cQTableView_visualRect(vtbl: pointer, self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].visualRect(self, slotval1)
  virtualReturn.h

proc QTableViewscrollTo*(self: gen_qtableview_types.QTableView, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void =
  fcQTableView_virtualbase_scrollTo(self.h, index.h, cint(hint))

proc miqt_exec_callback_cQTableView_scrollTo(vtbl: pointer, self: pointer, index: pointer, hint: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let slotval2 = cint(hint)
  vtbl[].scrollTo(self, slotval1, slotval2)

proc QTableViewindexAt*(self: gen_qtableview_types.QTableView, p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTableView_virtualbase_indexAt(self.h, p.h))

proc miqt_exec_callback_cQTableView_indexAt(vtbl: pointer, self: pointer, p: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: p)
  var virtualReturn = vtbl[].indexAt(self, slotval1)
  virtualReturn.h

proc QTableViewscrollContentsBy*(self: gen_qtableview_types.QTableView, dx: cint, dy: cint): void =
  fcQTableView_virtualbase_scrollContentsBy(self.h, dx, dy)

proc miqt_exec_callback_cQTableView_scrollContentsBy(vtbl: pointer, self: pointer, dx: cint, dy: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = dx
  let slotval2 = dy
  vtbl[].scrollContentsBy(self, slotval1, slotval2)

proc QTableViewinitViewItemOption*(self: gen_qtableview_types.QTableView, option: gen_qstyleoption_types.QStyleOptionViewItem): void =
  fcQTableView_virtualbase_initViewItemOption(self.h, option.h)

proc miqt_exec_callback_cQTableView_initViewItemOption(vtbl: pointer, self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionViewItem(h: option)
  vtbl[].initViewItemOption(self, slotval1)

proc QTableViewpaintEvent*(self: gen_qtableview_types.QTableView, e: gen_qevent_types.QPaintEvent): void =
  fcQTableView_virtualbase_paintEvent(self.h, e.h)

proc miqt_exec_callback_cQTableView_paintEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: e)
  vtbl[].paintEvent(self, slotval1)

proc QTableViewtimerEvent*(self: gen_qtableview_types.QTableView, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQTableView_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
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
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTableView_virtualbase_moveCursor(self.h, cint(cursorAction), cint(modifiers)))

proc miqt_exec_callback_cQTableView_moveCursor(vtbl: pointer, self: pointer, cursorAction: cint, modifiers: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = cint(cursorAction)
  let slotval2 = cint(modifiers)
  var virtualReturn = vtbl[].moveCursor(self, slotval1, slotval2)
  virtualReturn.h

proc QTableViewsetSelection*(self: gen_qtableview_types.QTableView, rect: gen_qrect_types.QRect, command: cint): void =
  fcQTableView_virtualbase_setSelection(self.h, rect.h, cint(command))

proc miqt_exec_callback_cQTableView_setSelection(vtbl: pointer, self: pointer, rect: pointer, command: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qrect_types.QRect(h: rect)
  let slotval2 = cint(command)
  vtbl[].setSelection(self, slotval1, slotval2)

proc QTableViewvisualRegionForSelection*(self: gen_qtableview_types.QTableView, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQTableView_virtualbase_visualRegionForSelection(self.h, selection.h))

proc miqt_exec_callback_cQTableView_visualRegionForSelection(vtbl: pointer, self: pointer, selection: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection)
  var virtualReturn = vtbl[].visualRegionForSelection(self, slotval1)
  virtualReturn.h

proc QTableViewselectedIndexes*(self: gen_qtableview_types.QTableView, ): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQTableView_virtualbase_selectedIndexes(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  vx_ret

proc miqt_exec_callback_cQTableView_selectedIndexes(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  var virtualReturn = vtbl[].selectedIndexes(self)
  var virtualReturn_CArray = newSeq[pointer](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QTableViewupdateGeometries*(self: gen_qtableview_types.QTableView, ): void =
  fcQTableView_virtualbase_updateGeometries(self.h)

proc miqt_exec_callback_cQTableView_updateGeometries(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  vtbl[].updateGeometries(self)

proc QTableViewviewportSizeHint*(self: gen_qtableview_types.QTableView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTableView_virtualbase_viewportSizeHint(self.h))

proc miqt_exec_callback_cQTableView_viewportSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  var virtualReturn = vtbl[].viewportSizeHint(self)
  virtualReturn.h

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
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].isIndexHidden(self, slotval1)
  virtualReturn

proc QTableViewselectionChanged*(self: gen_qtableview_types.QTableView, selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void =
  fcQTableView_virtualbase_selectionChanged(self.h, selected.h, deselected.h)

proc miqt_exec_callback_cQTableView_selectionChanged(vtbl: pointer, self: pointer, selected: pointer, deselected: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selected)
  let slotval2 = gen_qitemselectionmodel_types.QItemSelection(h: deselected)
  vtbl[].selectionChanged(self, slotval1, slotval2)

proc QTableViewcurrentChanged*(self: gen_qtableview_types.QTableView, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQTableView_virtualbase_currentChanged(self.h, current.h, previous.h)

proc miqt_exec_callback_cQTableView_currentChanged(vtbl: pointer, self: pointer, current: pointer, previous: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: current)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: previous)
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

proc QTableViewitemDelegateForIndex*(self: gen_qtableview_types.QTableView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemdelegate_types.QAbstractItemDelegate =
  gen_qabstractitemdelegate_types.QAbstractItemDelegate(h: fcQTableView_virtualbase_itemDelegateForIndex(self.h, index.h))

proc miqt_exec_callback_cQTableView_itemDelegateForIndex(vtbl: pointer, self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].itemDelegateForIndex(self, slotval1)
  virtualReturn.h

proc QTableViewinputMethodQuery*(self: gen_qtableview_types.QTableView, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQTableView_virtualbase_inputMethodQuery(self.h, cint(query)))

proc miqt_exec_callback_cQTableView_inputMethodQuery(vtbl: pointer, self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = cint(query)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

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
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: topLeft)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: bottomRight)
  var vroles_ma = roles
  var vrolesx_ret = newSeq[cint](int(vroles_ma.len))
  let vroles_outCast = cast[ptr UncheckedArray[cint]](vroles_ma.data)
  for i in 0 ..< vroles_ma.len:
    vrolesx_ret[i] = vroles_outCast[i]
  let slotval3 = vrolesx_ret
  vtbl[].dataChanged(self, slotval1, slotval2, slotval3)

proc QTableViewrowsInserted*(self: gen_qtableview_types.QTableView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fcQTableView_virtualbase_rowsInserted(self.h, parent.h, start, endVal)

proc miqt_exec_callback_cQTableView_rowsInserted(vtbl: pointer, self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  let slotval2 = start
  let slotval3 = endVal
  vtbl[].rowsInserted(self, slotval1, slotval2, slotval3)

proc QTableViewrowsAboutToBeRemoved*(self: gen_qtableview_types.QTableView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fcQTableView_virtualbase_rowsAboutToBeRemoved(self.h, parent.h, start, endVal)

proc miqt_exec_callback_cQTableView_rowsAboutToBeRemoved(vtbl: pointer, self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
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
  let slotval1 = gen_qwidget_types.QWidget(h: editor)
  let slotval2 = cint(hint)
  vtbl[].closeEditor(self, slotval1, slotval2)

proc QTableViewcommitData*(self: gen_qtableview_types.QTableView, editor: gen_qwidget_types.QWidget): void =
  fcQTableView_virtualbase_commitData(self.h, editor.h)

proc miqt_exec_callback_cQTableView_commitData(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor)
  vtbl[].commitData(self, slotval1)

proc QTableVieweditorDestroyed*(self: gen_qtableview_types.QTableView, editor: gen_qobject_types.QObject): void =
  fcQTableView_virtualbase_editorDestroyed(self.h, editor.h)

proc miqt_exec_callback_cQTableView_editorDestroyed(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qobject_types.QObject(h: editor)
  vtbl[].editorDestroyed(self, slotval1)

proc QTableViewedit*(self: gen_qtableview_types.QTableView, index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool =
  fcQTableView_virtualbase_edit2(self.h, index.h, cint(trigger), event.h)

proc miqt_exec_callback_cQTableView_edit2(vtbl: pointer, self: pointer, index: pointer, trigger: cint, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let slotval2 = cint(trigger)
  let slotval3 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].edit2(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTableViewselectionCommand*(self: gen_qtableview_types.QTableView, index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint =
  cint(fcQTableView_virtualbase_selectionCommand(self.h, index.h, event.h))

proc miqt_exec_callback_cQTableView_selectionCommand(vtbl: pointer, self: pointer, index: pointer, event: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
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
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QTableViewviewportEvent*(self: gen_qtableview_types.QTableView, event: gen_qcoreevent_types.QEvent): bool =
  fcQTableView_virtualbase_viewportEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_viewportEvent(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].viewportEvent(self, slotval1)
  virtualReturn

proc QTableViewmousePressEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QMouseEvent): void =
  fcQTableView_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QTableViewmouseMoveEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QMouseEvent): void =
  fcQTableView_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QTableViewmouseReleaseEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QMouseEvent): void =
  fcQTableView_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QTableViewmouseDoubleClickEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QMouseEvent): void =
  fcQTableView_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QTableViewdragEnterEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QDragEnterEvent): void =
  fcQTableView_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QTableViewdragMoveEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QDragMoveEvent): void =
  fcQTableView_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QTableViewdragLeaveEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQTableView_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QTableViewdropEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QDropEvent): void =
  fcQTableView_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QTableViewfocusInEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QFocusEvent): void =
  fcQTableView_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QTableViewfocusOutEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QFocusEvent): void =
  fcQTableView_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QTableViewkeyPressEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QKeyEvent): void =
  fcQTableView_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyPressEvent(self, slotval1)

proc QTableViewresizeEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QResizeEvent): void =
  fcQTableView_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)
  vtbl[].resizeEvent(self, slotval1)

proc QTableViewinputMethodEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QInputMethodEvent): void =
  fcQTableView_virtualbase_inputMethodEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_inputMethodEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)
  vtbl[].inputMethodEvent(self, slotval1)

proc QTableVieweventFilter*(self: gen_qtableview_types.QTableView, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQTableView_virtualbase_eventFilter(self.h, objectVal.h, event.h)

proc miqt_exec_callback_cQTableView_eventFilter(vtbl: pointer, self: pointer, objectVal: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qobject_types.QObject(h: objectVal)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QTableViewminimumSizeHint*(self: gen_qtableview_types.QTableView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTableView_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQTableView_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QTableViewsizeHint*(self: gen_qtableview_types.QTableView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTableView_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQTableView_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QTableViewsetupViewport*(self: gen_qtableview_types.QTableView, viewport: gen_qwidget_types.QWidget): void =
  fcQTableView_virtualbase_setupViewport(self.h, viewport.h)

proc miqt_exec_callback_cQTableView_setupViewport(vtbl: pointer, self: pointer, viewport: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: viewport)
  vtbl[].setupViewport(self, slotval1)

proc QTableViewwheelEvent*(self: gen_qtableview_types.QTableView, param1: gen_qevent_types.QWheelEvent): void =
  fcQTableView_virtualbase_wheelEvent(self.h, param1.h)

proc miqt_exec_callback_cQTableView_wheelEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1)
  vtbl[].wheelEvent(self, slotval1)

proc QTableViewcontextMenuEvent*(self: gen_qtableview_types.QTableView, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQTableView_virtualbase_contextMenuEvent(self.h, param1.h)

proc miqt_exec_callback_cQTableView_contextMenuEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)
  vtbl[].contextMenuEvent(self, slotval1)

proc QTableViewchangeEvent*(self: gen_qtableview_types.QTableView, param1: gen_qcoreevent_types.QEvent): void =
  fcQTableView_virtualbase_changeEvent(self.h, param1.h)

proc miqt_exec_callback_cQTableView_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  vtbl[].changeEvent(self, slotval1)

proc QTableViewinitStyleOption*(self: gen_qtableview_types.QTableView, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fcQTableView_virtualbase_initStyleOption(self.h, option.h)

proc miqt_exec_callback_cQTableView_initStyleOption(vtbl: pointer, self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionFrame(h: option)
  vtbl[].initStyleOption(self, slotval1)

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
  gen_qpaintengine_types.QPaintEngine(h: fcQTableView_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQTableView_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QTableViewkeyReleaseEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QKeyEvent): void =
  fcQTableView_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QTableViewenterEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QEnterEvent): void =
  fcQTableView_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QTableViewleaveEvent*(self: gen_qtableview_types.QTableView, event: gen_qcoreevent_types.QEvent): void =
  fcQTableView_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QTableViewmoveEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QMoveEvent): void =
  fcQTableView_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QTableViewcloseEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QCloseEvent): void =
  fcQTableView_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QTableViewtabletEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QTabletEvent): void =
  fcQTableView_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QTableViewactionEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QActionEvent): void =
  fcQTableView_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QTableViewshowEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QShowEvent): void =
  fcQTableView_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  vtbl[].showEvent(self, slotval1)

proc QTableViewhideEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QHideEvent): void =
  fcQTableView_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QTableViewnativeEvent*(self: gen_qtableview_types.QTableView, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fcQTableView_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQTableView_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
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
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QTableViewredirected*(self: gen_qtableview_types.QTableView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQTableView_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQTableView_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QTableViewsharedPainter*(self: gen_qtableview_types.QTableView, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQTableView_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQTableView_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QTableViewchildEvent*(self: gen_qtableview_types.QTableView, event: gen_qcoreevent_types.QChildEvent): void =
  fcQTableView_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QTableViewcustomEvent*(self: gen_qtableview_types.QTableView, event: gen_qcoreevent_types.QEvent): void =
  fcQTableView_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQTableView_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QTableViewconnectNotify*(self: gen_qtableview_types.QTableView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTableView_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQTableView_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QTableViewdisconnectNotify*(self: gen_qtableview_types.QTableView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTableView_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQTableView_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](vtbl)
  let self = QTableView(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

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
  gen_qpoint_types.QPoint(h: fcQTableView_protectedbase_dirtyRegionOffset(self.h))

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
  gen_qmargins_types.QMargins(h: fcQTableView_protectedbase_viewportMargins(self.h))

proc drawFrame*(self: gen_qtableview_types.QTableView, param1: gen_qpainter_types.QPainter): void =
  fcQTableView_protectedbase_drawFrame(self.h, param1.h)

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
  gen_qobject_types.QObject(h: fcQTableView_protectedbase_sender(self.h))

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
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTableViewVTable, _: ptr cQTableView) {.cdecl.} =
    let vtbl = cast[ref QTableViewVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQTableView_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQTableView_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQTableView_metacall
  if not isNil(vtbl.setModel):
    vtbl[].vtbl.setModel = miqt_exec_callback_cQTableView_setModel
  if not isNil(vtbl.setRootIndex):
    vtbl[].vtbl.setRootIndex = miqt_exec_callback_cQTableView_setRootIndex
  if not isNil(vtbl.setSelectionModel):
    vtbl[].vtbl.setSelectionModel = miqt_exec_callback_cQTableView_setSelectionModel
  if not isNil(vtbl.doItemsLayout):
    vtbl[].vtbl.doItemsLayout = miqt_exec_callback_cQTableView_doItemsLayout
  if not isNil(vtbl.visualRect):
    vtbl[].vtbl.visualRect = miqt_exec_callback_cQTableView_visualRect
  if not isNil(vtbl.scrollTo):
    vtbl[].vtbl.scrollTo = miqt_exec_callback_cQTableView_scrollTo
  if not isNil(vtbl.indexAt):
    vtbl[].vtbl.indexAt = miqt_exec_callback_cQTableView_indexAt
  if not isNil(vtbl.scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = miqt_exec_callback_cQTableView_scrollContentsBy
  if not isNil(vtbl.initViewItemOption):
    vtbl[].vtbl.initViewItemOption = miqt_exec_callback_cQTableView_initViewItemOption
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQTableView_paintEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQTableView_timerEvent
  if not isNil(vtbl.horizontalOffset):
    vtbl[].vtbl.horizontalOffset = miqt_exec_callback_cQTableView_horizontalOffset
  if not isNil(vtbl.verticalOffset):
    vtbl[].vtbl.verticalOffset = miqt_exec_callback_cQTableView_verticalOffset
  if not isNil(vtbl.moveCursor):
    vtbl[].vtbl.moveCursor = miqt_exec_callback_cQTableView_moveCursor
  if not isNil(vtbl.setSelection):
    vtbl[].vtbl.setSelection = miqt_exec_callback_cQTableView_setSelection
  if not isNil(vtbl.visualRegionForSelection):
    vtbl[].vtbl.visualRegionForSelection = miqt_exec_callback_cQTableView_visualRegionForSelection
  if not isNil(vtbl.selectedIndexes):
    vtbl[].vtbl.selectedIndexes = miqt_exec_callback_cQTableView_selectedIndexes
  if not isNil(vtbl.updateGeometries):
    vtbl[].vtbl.updateGeometries = miqt_exec_callback_cQTableView_updateGeometries
  if not isNil(vtbl.viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = miqt_exec_callback_cQTableView_viewportSizeHint
  if not isNil(vtbl.sizeHintForRow):
    vtbl[].vtbl.sizeHintForRow = miqt_exec_callback_cQTableView_sizeHintForRow
  if not isNil(vtbl.sizeHintForColumn):
    vtbl[].vtbl.sizeHintForColumn = miqt_exec_callback_cQTableView_sizeHintForColumn
  if not isNil(vtbl.verticalScrollbarAction):
    vtbl[].vtbl.verticalScrollbarAction = miqt_exec_callback_cQTableView_verticalScrollbarAction
  if not isNil(vtbl.horizontalScrollbarAction):
    vtbl[].vtbl.horizontalScrollbarAction = miqt_exec_callback_cQTableView_horizontalScrollbarAction
  if not isNil(vtbl.isIndexHidden):
    vtbl[].vtbl.isIndexHidden = miqt_exec_callback_cQTableView_isIndexHidden
  if not isNil(vtbl.selectionChanged):
    vtbl[].vtbl.selectionChanged = miqt_exec_callback_cQTableView_selectionChanged
  if not isNil(vtbl.currentChanged):
    vtbl[].vtbl.currentChanged = miqt_exec_callback_cQTableView_currentChanged
  if not isNil(vtbl.keyboardSearch):
    vtbl[].vtbl.keyboardSearch = miqt_exec_callback_cQTableView_keyboardSearch
  if not isNil(vtbl.itemDelegateForIndex):
    vtbl[].vtbl.itemDelegateForIndex = miqt_exec_callback_cQTableView_itemDelegateForIndex
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQTableView_inputMethodQuery
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQTableView_reset
  if not isNil(vtbl.selectAll):
    vtbl[].vtbl.selectAll = miqt_exec_callback_cQTableView_selectAll
  if not isNil(vtbl.dataChanged):
    vtbl[].vtbl.dataChanged = miqt_exec_callback_cQTableView_dataChanged
  if not isNil(vtbl.rowsInserted):
    vtbl[].vtbl.rowsInserted = miqt_exec_callback_cQTableView_rowsInserted
  if not isNil(vtbl.rowsAboutToBeRemoved):
    vtbl[].vtbl.rowsAboutToBeRemoved = miqt_exec_callback_cQTableView_rowsAboutToBeRemoved
  if not isNil(vtbl.updateEditorData):
    vtbl[].vtbl.updateEditorData = miqt_exec_callback_cQTableView_updateEditorData
  if not isNil(vtbl.updateEditorGeometries):
    vtbl[].vtbl.updateEditorGeometries = miqt_exec_callback_cQTableView_updateEditorGeometries
  if not isNil(vtbl.verticalScrollbarValueChanged):
    vtbl[].vtbl.verticalScrollbarValueChanged = miqt_exec_callback_cQTableView_verticalScrollbarValueChanged
  if not isNil(vtbl.horizontalScrollbarValueChanged):
    vtbl[].vtbl.horizontalScrollbarValueChanged = miqt_exec_callback_cQTableView_horizontalScrollbarValueChanged
  if not isNil(vtbl.closeEditor):
    vtbl[].vtbl.closeEditor = miqt_exec_callback_cQTableView_closeEditor
  if not isNil(vtbl.commitData):
    vtbl[].vtbl.commitData = miqt_exec_callback_cQTableView_commitData
  if not isNil(vtbl.editorDestroyed):
    vtbl[].vtbl.editorDestroyed = miqt_exec_callback_cQTableView_editorDestroyed
  if not isNil(vtbl.edit2):
    vtbl[].vtbl.edit2 = miqt_exec_callback_cQTableView_edit2
  if not isNil(vtbl.selectionCommand):
    vtbl[].vtbl.selectionCommand = miqt_exec_callback_cQTableView_selectionCommand
  if not isNil(vtbl.startDrag):
    vtbl[].vtbl.startDrag = miqt_exec_callback_cQTableView_startDrag
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQTableView_focusNextPrevChild
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQTableView_event
  if not isNil(vtbl.viewportEvent):
    vtbl[].vtbl.viewportEvent = miqt_exec_callback_cQTableView_viewportEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQTableView_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQTableView_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQTableView_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQTableView_mouseDoubleClickEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQTableView_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQTableView_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQTableView_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQTableView_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQTableView_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQTableView_focusOutEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQTableView_keyPressEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQTableView_resizeEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQTableView_inputMethodEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQTableView_eventFilter
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQTableView_minimumSizeHint
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQTableView_sizeHint
  if not isNil(vtbl.setupViewport):
    vtbl[].vtbl.setupViewport = miqt_exec_callback_cQTableView_setupViewport
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQTableView_wheelEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQTableView_contextMenuEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQTableView_changeEvent
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQTableView_initStyleOption
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQTableView_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQTableView_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQTableView_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQTableView_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQTableView_paintEngine
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQTableView_keyReleaseEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQTableView_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQTableView_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQTableView_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQTableView_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQTableView_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQTableView_actionEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQTableView_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQTableView_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQTableView_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQTableView_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQTableView_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQTableView_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQTableView_sharedPainter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQTableView_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQTableView_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQTableView_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQTableView_disconnectNotify
  gen_qtableview_types.QTableView(h: fcQTableView_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qtableview_types.QTableView,
    vtbl: ref QTableViewVTable = nil): gen_qtableview_types.QTableView =
  let vtbl = if vtbl == nil: new QTableViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTableViewVTable, _: ptr cQTableView) {.cdecl.} =
    let vtbl = cast[ref QTableViewVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQTableView_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQTableView_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQTableView_metacall
  if not isNil(vtbl.setModel):
    vtbl[].vtbl.setModel = miqt_exec_callback_cQTableView_setModel
  if not isNil(vtbl.setRootIndex):
    vtbl[].vtbl.setRootIndex = miqt_exec_callback_cQTableView_setRootIndex
  if not isNil(vtbl.setSelectionModel):
    vtbl[].vtbl.setSelectionModel = miqt_exec_callback_cQTableView_setSelectionModel
  if not isNil(vtbl.doItemsLayout):
    vtbl[].vtbl.doItemsLayout = miqt_exec_callback_cQTableView_doItemsLayout
  if not isNil(vtbl.visualRect):
    vtbl[].vtbl.visualRect = miqt_exec_callback_cQTableView_visualRect
  if not isNil(vtbl.scrollTo):
    vtbl[].vtbl.scrollTo = miqt_exec_callback_cQTableView_scrollTo
  if not isNil(vtbl.indexAt):
    vtbl[].vtbl.indexAt = miqt_exec_callback_cQTableView_indexAt
  if not isNil(vtbl.scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = miqt_exec_callback_cQTableView_scrollContentsBy
  if not isNil(vtbl.initViewItemOption):
    vtbl[].vtbl.initViewItemOption = miqt_exec_callback_cQTableView_initViewItemOption
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQTableView_paintEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQTableView_timerEvent
  if not isNil(vtbl.horizontalOffset):
    vtbl[].vtbl.horizontalOffset = miqt_exec_callback_cQTableView_horizontalOffset
  if not isNil(vtbl.verticalOffset):
    vtbl[].vtbl.verticalOffset = miqt_exec_callback_cQTableView_verticalOffset
  if not isNil(vtbl.moveCursor):
    vtbl[].vtbl.moveCursor = miqt_exec_callback_cQTableView_moveCursor
  if not isNil(vtbl.setSelection):
    vtbl[].vtbl.setSelection = miqt_exec_callback_cQTableView_setSelection
  if not isNil(vtbl.visualRegionForSelection):
    vtbl[].vtbl.visualRegionForSelection = miqt_exec_callback_cQTableView_visualRegionForSelection
  if not isNil(vtbl.selectedIndexes):
    vtbl[].vtbl.selectedIndexes = miqt_exec_callback_cQTableView_selectedIndexes
  if not isNil(vtbl.updateGeometries):
    vtbl[].vtbl.updateGeometries = miqt_exec_callback_cQTableView_updateGeometries
  if not isNil(vtbl.viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = miqt_exec_callback_cQTableView_viewportSizeHint
  if not isNil(vtbl.sizeHintForRow):
    vtbl[].vtbl.sizeHintForRow = miqt_exec_callback_cQTableView_sizeHintForRow
  if not isNil(vtbl.sizeHintForColumn):
    vtbl[].vtbl.sizeHintForColumn = miqt_exec_callback_cQTableView_sizeHintForColumn
  if not isNil(vtbl.verticalScrollbarAction):
    vtbl[].vtbl.verticalScrollbarAction = miqt_exec_callback_cQTableView_verticalScrollbarAction
  if not isNil(vtbl.horizontalScrollbarAction):
    vtbl[].vtbl.horizontalScrollbarAction = miqt_exec_callback_cQTableView_horizontalScrollbarAction
  if not isNil(vtbl.isIndexHidden):
    vtbl[].vtbl.isIndexHidden = miqt_exec_callback_cQTableView_isIndexHidden
  if not isNil(vtbl.selectionChanged):
    vtbl[].vtbl.selectionChanged = miqt_exec_callback_cQTableView_selectionChanged
  if not isNil(vtbl.currentChanged):
    vtbl[].vtbl.currentChanged = miqt_exec_callback_cQTableView_currentChanged
  if not isNil(vtbl.keyboardSearch):
    vtbl[].vtbl.keyboardSearch = miqt_exec_callback_cQTableView_keyboardSearch
  if not isNil(vtbl.itemDelegateForIndex):
    vtbl[].vtbl.itemDelegateForIndex = miqt_exec_callback_cQTableView_itemDelegateForIndex
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQTableView_inputMethodQuery
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQTableView_reset
  if not isNil(vtbl.selectAll):
    vtbl[].vtbl.selectAll = miqt_exec_callback_cQTableView_selectAll
  if not isNil(vtbl.dataChanged):
    vtbl[].vtbl.dataChanged = miqt_exec_callback_cQTableView_dataChanged
  if not isNil(vtbl.rowsInserted):
    vtbl[].vtbl.rowsInserted = miqt_exec_callback_cQTableView_rowsInserted
  if not isNil(vtbl.rowsAboutToBeRemoved):
    vtbl[].vtbl.rowsAboutToBeRemoved = miqt_exec_callback_cQTableView_rowsAboutToBeRemoved
  if not isNil(vtbl.updateEditorData):
    vtbl[].vtbl.updateEditorData = miqt_exec_callback_cQTableView_updateEditorData
  if not isNil(vtbl.updateEditorGeometries):
    vtbl[].vtbl.updateEditorGeometries = miqt_exec_callback_cQTableView_updateEditorGeometries
  if not isNil(vtbl.verticalScrollbarValueChanged):
    vtbl[].vtbl.verticalScrollbarValueChanged = miqt_exec_callback_cQTableView_verticalScrollbarValueChanged
  if not isNil(vtbl.horizontalScrollbarValueChanged):
    vtbl[].vtbl.horizontalScrollbarValueChanged = miqt_exec_callback_cQTableView_horizontalScrollbarValueChanged
  if not isNil(vtbl.closeEditor):
    vtbl[].vtbl.closeEditor = miqt_exec_callback_cQTableView_closeEditor
  if not isNil(vtbl.commitData):
    vtbl[].vtbl.commitData = miqt_exec_callback_cQTableView_commitData
  if not isNil(vtbl.editorDestroyed):
    vtbl[].vtbl.editorDestroyed = miqt_exec_callback_cQTableView_editorDestroyed
  if not isNil(vtbl.edit2):
    vtbl[].vtbl.edit2 = miqt_exec_callback_cQTableView_edit2
  if not isNil(vtbl.selectionCommand):
    vtbl[].vtbl.selectionCommand = miqt_exec_callback_cQTableView_selectionCommand
  if not isNil(vtbl.startDrag):
    vtbl[].vtbl.startDrag = miqt_exec_callback_cQTableView_startDrag
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQTableView_focusNextPrevChild
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQTableView_event
  if not isNil(vtbl.viewportEvent):
    vtbl[].vtbl.viewportEvent = miqt_exec_callback_cQTableView_viewportEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQTableView_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQTableView_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQTableView_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQTableView_mouseDoubleClickEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQTableView_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQTableView_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQTableView_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQTableView_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQTableView_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQTableView_focusOutEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQTableView_keyPressEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQTableView_resizeEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQTableView_inputMethodEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQTableView_eventFilter
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQTableView_minimumSizeHint
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQTableView_sizeHint
  if not isNil(vtbl.setupViewport):
    vtbl[].vtbl.setupViewport = miqt_exec_callback_cQTableView_setupViewport
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQTableView_wheelEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQTableView_contextMenuEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQTableView_changeEvent
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQTableView_initStyleOption
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQTableView_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQTableView_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQTableView_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQTableView_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQTableView_paintEngine
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQTableView_keyReleaseEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQTableView_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQTableView_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQTableView_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQTableView_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQTableView_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQTableView_actionEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQTableView_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQTableView_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQTableView_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQTableView_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQTableView_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQTableView_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQTableView_sharedPainter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQTableView_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQTableView_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQTableView_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQTableView_disconnectNotify
  gen_qtableview_types.QTableView(h: fcQTableView_new2(addr(vtbl[]), ))

proc staticMetaObject*(_: type gen_qtableview_types.QTableView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTableView_staticMetaObject())
proc delete*(self: gen_qtableview_types.QTableView) =
  fcQTableView_delete(self.h)
