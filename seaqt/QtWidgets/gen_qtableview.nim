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


{.compile("gen_qtableview.cpp", QtWidgetsCFlags).}


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

proc fcQTableView_metaObject(self: pointer): pointer {.importc: "QTableView_metaObject".}
proc fcQTableView_metacast(self: pointer, param1: cstring): pointer {.importc: "QTableView_metacast".}
proc fcQTableView_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTableView_metacall".}
proc fcQTableView_tr(s: cstring): struct_miqt_string {.importc: "QTableView_tr".}
proc fcQTableView_setModel(self: pointer, model: pointer): void {.importc: "QTableView_setModel".}
proc fcQTableView_setRootIndex(self: pointer, index: pointer): void {.importc: "QTableView_setRootIndex".}
proc fcQTableView_setSelectionModel(self: pointer, selectionModel: pointer): void {.importc: "QTableView_setSelectionModel".}
proc fcQTableView_doItemsLayout(self: pointer): void {.importc: "QTableView_doItemsLayout".}
proc fcQTableView_horizontalHeader(self: pointer): pointer {.importc: "QTableView_horizontalHeader".}
proc fcQTableView_verticalHeader(self: pointer): pointer {.importc: "QTableView_verticalHeader".}
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
proc fcQTableView_isSortingEnabled(self: pointer): bool {.importc: "QTableView_isSortingEnabled".}
proc fcQTableView_showGrid(self: pointer): bool {.importc: "QTableView_showGrid".}
proc fcQTableView_gridStyle(self: pointer): cint {.importc: "QTableView_gridStyle".}
proc fcQTableView_setGridStyle(self: pointer, style: cint): void {.importc: "QTableView_setGridStyle".}
proc fcQTableView_setWordWrap(self: pointer, on: bool): void {.importc: "QTableView_setWordWrap".}
proc fcQTableView_wordWrap(self: pointer): bool {.importc: "QTableView_wordWrap".}
proc fcQTableView_setCornerButtonEnabled(self: pointer, enable: bool): void {.importc: "QTableView_setCornerButtonEnabled".}
proc fcQTableView_isCornerButtonEnabled(self: pointer): bool {.importc: "QTableView_isCornerButtonEnabled".}
proc fcQTableView_visualRect(self: pointer, index: pointer): pointer {.importc: "QTableView_visualRect".}
proc fcQTableView_scrollTo(self: pointer, index: pointer, hint: cint): void {.importc: "QTableView_scrollTo".}
proc fcQTableView_indexAt(self: pointer, p: pointer): pointer {.importc: "QTableView_indexAt".}
proc fcQTableView_setSpan(self: pointer, row: cint, column: cint, rowSpan: cint, columnSpan: cint): void {.importc: "QTableView_setSpan".}
proc fcQTableView_rowSpan(self: pointer, row: cint, column: cint): cint {.importc: "QTableView_rowSpan".}
proc fcQTableView_columnSpan(self: pointer, row: cint, column: cint): cint {.importc: "QTableView_columnSpan".}
proc fcQTableView_clearSpans(self: pointer): void {.importc: "QTableView_clearSpans".}
proc fcQTableView_selectRow(self: pointer, row: cint): void {.importc: "QTableView_selectRow".}
proc fcQTableView_selectColumn(self: pointer, column: cint): void {.importc: "QTableView_selectColumn".}
proc fcQTableView_hideRow(self: pointer, row: cint): void {.importc: "QTableView_hideRow".}
proc fcQTableView_hideColumn(self: pointer, column: cint): void {.importc: "QTableView_hideColumn".}
proc fcQTableView_showRow(self: pointer, row: cint): void {.importc: "QTableView_showRow".}
proc fcQTableView_showColumn(self: pointer, column: cint): void {.importc: "QTableView_showColumn".}
proc fcQTableView_resizeRowToContents(self: pointer, row: cint): void {.importc: "QTableView_resizeRowToContents".}
proc fcQTableView_resizeRowsToContents(self: pointer): void {.importc: "QTableView_resizeRowsToContents".}
proc fcQTableView_resizeColumnToContents(self: pointer, column: cint): void {.importc: "QTableView_resizeColumnToContents".}
proc fcQTableView_resizeColumnsToContents(self: pointer): void {.importc: "QTableView_resizeColumnsToContents".}
proc fcQTableView_sortByColumn(self: pointer, column: cint, order: cint): void {.importc: "QTableView_sortByColumn".}
proc fcQTableView_setShowGrid(self: pointer, show: bool): void {.importc: "QTableView_setShowGrid".}
proc fcQTableView_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTableView_tr2".}
proc fcQTableView_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTableView_tr3".}
proc fcQTableView_vtbl(self: pointer): pointer {.importc: "QTableView_vtbl".}
proc fcQTableView_vdata(self: pointer): pointer {.importc: "QTableView_vdata".}

type cQTableViewVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setModel*: proc(self: pointer, model: pointer): void {.cdecl, raises: [], gcsafe.}
  setRootIndex*: proc(self: pointer, index: pointer): void {.cdecl, raises: [], gcsafe.}
  setSelectionModel*: proc(self: pointer, selectionModel: pointer): void {.cdecl, raises: [], gcsafe.}
  doItemsLayout*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  visualRect*: proc(self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  scrollTo*: proc(self: pointer, index: pointer, hint: cint): void {.cdecl, raises: [], gcsafe.}
  indexAt*: proc(self: pointer, p: pointer): pointer {.cdecl, raises: [], gcsafe.}
  scrollContentsBy*: proc(self: pointer, dx: cint, dy: cint): void {.cdecl, raises: [], gcsafe.}
  initViewItemOption*: proc(self: pointer, option: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  horizontalOffset*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  verticalOffset*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  moveCursor*: proc(self: pointer, cursorAction: cint, modifiers: cint): pointer {.cdecl, raises: [], gcsafe.}
  setSelection*: proc(self: pointer, rect: pointer, command: cint): void {.cdecl, raises: [], gcsafe.}
  visualRegionForSelection*: proc(self: pointer, selection: pointer): pointer {.cdecl, raises: [], gcsafe.}
  selectedIndexes*: proc(self: pointer): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  updateGeometries*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  viewportSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sizeHintForRow*: proc(self: pointer, row: cint): cint {.cdecl, raises: [], gcsafe.}
  sizeHintForColumn*: proc(self: pointer, column: cint): cint {.cdecl, raises: [], gcsafe.}
  verticalScrollbarAction*: proc(self: pointer, action: cint): void {.cdecl, raises: [], gcsafe.}
  horizontalScrollbarAction*: proc(self: pointer, action: cint): void {.cdecl, raises: [], gcsafe.}
  isIndexHidden*: proc(self: pointer, index: pointer): bool {.cdecl, raises: [], gcsafe.}
  selectionChanged*: proc(self: pointer, selected: pointer, deselected: pointer): void {.cdecl, raises: [], gcsafe.}
  currentChanged*: proc(self: pointer, current: pointer, previous: pointer): void {.cdecl, raises: [], gcsafe.}
  keyboardSearch*: proc(self: pointer, search: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
  itemDelegateForIndex*: proc(self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(self: pointer, query: cint): pointer {.cdecl, raises: [], gcsafe.}
  reset*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  selectAll*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  dataChanged*: proc(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.cdecl, raises: [], gcsafe.}
  rowsInserted*: proc(self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl, raises: [], gcsafe.}
  rowsAboutToBeRemoved*: proc(self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl, raises: [], gcsafe.}
  updateEditorData*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  updateEditorGeometries*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  verticalScrollbarValueChanged*: proc(self: pointer, value: cint): void {.cdecl, raises: [], gcsafe.}
  horizontalScrollbarValueChanged*: proc(self: pointer, value: cint): void {.cdecl, raises: [], gcsafe.}
  closeEditor*: proc(self: pointer, editor: pointer, hint: cint): void {.cdecl, raises: [], gcsafe.}
  commitData*: proc(self: pointer, editor: pointer): void {.cdecl, raises: [], gcsafe.}
  editorDestroyed*: proc(self: pointer, editor: pointer): void {.cdecl, raises: [], gcsafe.}
  edit2*: proc(self: pointer, index: pointer, trigger: cint, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  selectionCommand*: proc(self: pointer, index: pointer, event: pointer): cint {.cdecl, raises: [], gcsafe.}
  startDrag*: proc(self: pointer, supportedActions: cint): void {.cdecl, raises: [], gcsafe.}
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
  inputMethodEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, objectVal: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setupViewport*: proc(self: pointer, viewport: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  initStyleOption*: proc(self: pointer, option: pointer): void {.cdecl, raises: [], gcsafe.}
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
  nativeEvent*: proc(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQTableView_virtualbase_metaObject(self: pointer): pointer {.importc: "QTableView_virtualbase_metaObject".}
proc fcQTableView_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QTableView_virtualbase_metacast".}
proc fcQTableView_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTableView_virtualbase_metacall".}
proc fcQTableView_virtualbase_setModel(self: pointer, model: pointer): void {.importc: "QTableView_virtualbase_setModel".}
proc fcQTableView_virtualbase_setRootIndex(self: pointer, index: pointer): void {.importc: "QTableView_virtualbase_setRootIndex".}
proc fcQTableView_virtualbase_setSelectionModel(self: pointer, selectionModel: pointer): void {.importc: "QTableView_virtualbase_setSelectionModel".}
proc fcQTableView_virtualbase_doItemsLayout(self: pointer): void {.importc: "QTableView_virtualbase_doItemsLayout".}
proc fcQTableView_virtualbase_visualRect(self: pointer, index: pointer): pointer {.importc: "QTableView_virtualbase_visualRect".}
proc fcQTableView_virtualbase_scrollTo(self: pointer, index: pointer, hint: cint): void {.importc: "QTableView_virtualbase_scrollTo".}
proc fcQTableView_virtualbase_indexAt(self: pointer, p: pointer): pointer {.importc: "QTableView_virtualbase_indexAt".}
proc fcQTableView_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.importc: "QTableView_virtualbase_scrollContentsBy".}
proc fcQTableView_virtualbase_initViewItemOption(self: pointer, option: pointer): void {.importc: "QTableView_virtualbase_initViewItemOption".}
proc fcQTableView_virtualbase_paintEvent(self: pointer, e: pointer): void {.importc: "QTableView_virtualbase_paintEvent".}
proc fcQTableView_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QTableView_virtualbase_timerEvent".}
proc fcQTableView_virtualbase_horizontalOffset(self: pointer): cint {.importc: "QTableView_virtualbase_horizontalOffset".}
proc fcQTableView_virtualbase_verticalOffset(self: pointer): cint {.importc: "QTableView_virtualbase_verticalOffset".}
proc fcQTableView_virtualbase_moveCursor(self: pointer, cursorAction: cint, modifiers: cint): pointer {.importc: "QTableView_virtualbase_moveCursor".}
proc fcQTableView_virtualbase_setSelection(self: pointer, rect: pointer, command: cint): void {.importc: "QTableView_virtualbase_setSelection".}
proc fcQTableView_virtualbase_visualRegionForSelection(self: pointer, selection: pointer): pointer {.importc: "QTableView_virtualbase_visualRegionForSelection".}
proc fcQTableView_virtualbase_selectedIndexes(self: pointer): struct_miqt_array {.importc: "QTableView_virtualbase_selectedIndexes".}
proc fcQTableView_virtualbase_updateGeometries(self: pointer): void {.importc: "QTableView_virtualbase_updateGeometries".}
proc fcQTableView_virtualbase_viewportSizeHint(self: pointer): pointer {.importc: "QTableView_virtualbase_viewportSizeHint".}
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
proc fcQTableView_virtualbase_reset(self: pointer): void {.importc: "QTableView_virtualbase_reset".}
proc fcQTableView_virtualbase_selectAll(self: pointer): void {.importc: "QTableView_virtualbase_selectAll".}
proc fcQTableView_virtualbase_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.importc: "QTableView_virtualbase_dataChanged".}
proc fcQTableView_virtualbase_rowsInserted(self: pointer, parent: pointer, start: cint, endVal: cint): void {.importc: "QTableView_virtualbase_rowsInserted".}
proc fcQTableView_virtualbase_rowsAboutToBeRemoved(self: pointer, parent: pointer, start: cint, endVal: cint): void {.importc: "QTableView_virtualbase_rowsAboutToBeRemoved".}
proc fcQTableView_virtualbase_updateEditorData(self: pointer): void {.importc: "QTableView_virtualbase_updateEditorData".}
proc fcQTableView_virtualbase_updateEditorGeometries(self: pointer): void {.importc: "QTableView_virtualbase_updateEditorGeometries".}
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
proc fcQTableView_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QTableView_virtualbase_minimumSizeHint".}
proc fcQTableView_virtualbase_sizeHint(self: pointer): pointer {.importc: "QTableView_virtualbase_sizeHint".}
proc fcQTableView_virtualbase_setupViewport(self: pointer, viewport: pointer): void {.importc: "QTableView_virtualbase_setupViewport".}
proc fcQTableView_virtualbase_wheelEvent(self: pointer, param1: pointer): void {.importc: "QTableView_virtualbase_wheelEvent".}
proc fcQTableView_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void {.importc: "QTableView_virtualbase_contextMenuEvent".}
proc fcQTableView_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QTableView_virtualbase_changeEvent".}
proc fcQTableView_virtualbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QTableView_virtualbase_initStyleOption".}
proc fcQTableView_virtualbase_devType(self: pointer): cint {.importc: "QTableView_virtualbase_devType".}
proc fcQTableView_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QTableView_virtualbase_setVisible".}
proc fcQTableView_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QTableView_virtualbase_heightForWidth".}
proc fcQTableView_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QTableView_virtualbase_hasHeightForWidth".}
proc fcQTableView_virtualbase_paintEngine(self: pointer): pointer {.importc: "QTableView_virtualbase_paintEngine".}
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
proc fcQTableView_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QTableView_virtualbase_sharedPainter".}
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
proc fcQTableView_protectedbase_state(self: pointer): cint {.importc: "QTableView_protectedbase_state".}
proc fcQTableView_protectedbase_setState(self: pointer, state: cint): void {.importc: "QTableView_protectedbase_setState".}
proc fcQTableView_protectedbase_scheduleDelayedItemsLayout(self: pointer): void {.importc: "QTableView_protectedbase_scheduleDelayedItemsLayout".}
proc fcQTableView_protectedbase_executeDelayedItemsLayout(self: pointer): void {.importc: "QTableView_protectedbase_executeDelayedItemsLayout".}
proc fcQTableView_protectedbase_setDirtyRegion(self: pointer, region: pointer): void {.importc: "QTableView_protectedbase_setDirtyRegion".}
proc fcQTableView_protectedbase_scrollDirtyRegion(self: pointer, dx: cint, dy: cint): void {.importc: "QTableView_protectedbase_scrollDirtyRegion".}
proc fcQTableView_protectedbase_dirtyRegionOffset(self: pointer): pointer {.importc: "QTableView_protectedbase_dirtyRegionOffset".}
proc fcQTableView_protectedbase_startAutoScroll(self: pointer): void {.importc: "QTableView_protectedbase_startAutoScroll".}
proc fcQTableView_protectedbase_stopAutoScroll(self: pointer): void {.importc: "QTableView_protectedbase_stopAutoScroll".}
proc fcQTableView_protectedbase_doAutoScroll(self: pointer): void {.importc: "QTableView_protectedbase_doAutoScroll".}
proc fcQTableView_protectedbase_dropIndicatorPosition(self: pointer): cint {.importc: "QTableView_protectedbase_dropIndicatorPosition".}
proc fcQTableView_protectedbase_setViewportMargins(self: pointer, left: cint, top: cint, right: cint, bottom: cint): void {.importc: "QTableView_protectedbase_setViewportMargins".}
proc fcQTableView_protectedbase_viewportMargins(self: pointer): pointer {.importc: "QTableView_protectedbase_viewportMargins".}
proc fcQTableView_protectedbase_drawFrame(self: pointer, param1: pointer): void {.importc: "QTableView_protectedbase_drawFrame".}
proc fcQTableView_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QTableView_protectedbase_updateMicroFocus".}
proc fcQTableView_protectedbase_create(self: pointer): void {.importc: "QTableView_protectedbase_create".}
proc fcQTableView_protectedbase_destroy(self: pointer): void {.importc: "QTableView_protectedbase_destroy".}
proc fcQTableView_protectedbase_focusNextChild(self: pointer): bool {.importc: "QTableView_protectedbase_focusNextChild".}
proc fcQTableView_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QTableView_protectedbase_focusPreviousChild".}
proc fcQTableView_protectedbase_sender(self: pointer): pointer {.importc: "QTableView_protectedbase_sender".}
proc fcQTableView_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QTableView_protectedbase_senderSignalIndex".}
proc fcQTableView_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QTableView_protectedbase_receivers".}
proc fcQTableView_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QTableView_protectedbase_isSignalConnected".}
proc fcQTableView_new(vtbl, vdata: pointer, parent: pointer): ptr cQTableView {.importc: "QTableView_new".}
proc fcQTableView_new2(vtbl, vdata: pointer): ptr cQTableView {.importc: "QTableView_new2".}
proc fcQTableView_staticMetaObject(): pointer {.importc: "QTableView_staticMetaObject".}

proc metaObject*(self: gen_qtableview_types.QTableView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTableView_metaObject(self.h), owned: false)

proc metacast*(self: gen_qtableview_types.QTableView, param1: cstring): pointer =
  fcQTableView_metacast(self.h, param1)

proc metacall*(self: gen_qtableview_types.QTableView, param1: cint, param2: cint, param3: pointer): cint =
  fcQTableView_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qtableview_types.QTableView, s: cstring): string =
  let v_ms = fcQTableView_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setModel*(self: gen_qtableview_types.QTableView, model: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQTableView_setModel(self.h, model.h)

proc setRootIndex*(self: gen_qtableview_types.QTableView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQTableView_setRootIndex(self.h, index.h)

proc setSelectionModel*(self: gen_qtableview_types.QTableView, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void =
  fcQTableView_setSelectionModel(self.h, selectionModel.h)

proc doItemsLayout*(self: gen_qtableview_types.QTableView): void =
  fcQTableView_doItemsLayout(self.h)

proc horizontalHeader*(self: gen_qtableview_types.QTableView): gen_qheaderview_types.QHeaderView =
  gen_qheaderview_types.QHeaderView(h: fcQTableView_horizontalHeader(self.h), owned: false)

proc verticalHeader*(self: gen_qtableview_types.QTableView): gen_qheaderview_types.QHeaderView =
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

proc isSortingEnabled*(self: gen_qtableview_types.QTableView): bool =
  fcQTableView_isSortingEnabled(self.h)

proc showGrid*(self: gen_qtableview_types.QTableView): bool =
  fcQTableView_showGrid(self.h)

proc gridStyle*(self: gen_qtableview_types.QTableView): cint =
  cint(fcQTableView_gridStyle(self.h))

proc setGridStyle*(self: gen_qtableview_types.QTableView, style: cint): void =
  fcQTableView_setGridStyle(self.h, cint(style))

proc setWordWrap*(self: gen_qtableview_types.QTableView, on: bool): void =
  fcQTableView_setWordWrap(self.h, on)

proc wordWrap*(self: gen_qtableview_types.QTableView): bool =
  fcQTableView_wordWrap(self.h)

proc setCornerButtonEnabled*(self: gen_qtableview_types.QTableView, enable: bool): void =
  fcQTableView_setCornerButtonEnabled(self.h, enable)

proc isCornerButtonEnabled*(self: gen_qtableview_types.QTableView): bool =
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

proc clearSpans*(self: gen_qtableview_types.QTableView): void =
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

proc resizeRowsToContents*(self: gen_qtableview_types.QTableView): void =
  fcQTableView_resizeRowsToContents(self.h)

proc resizeColumnToContents*(self: gen_qtableview_types.QTableView, column: cint): void =
  fcQTableView_resizeColumnToContents(self.h, column)

proc resizeColumnsToContents*(self: gen_qtableview_types.QTableView): void =
  fcQTableView_resizeColumnsToContents(self.h)

proc sortByColumn*(self: gen_qtableview_types.QTableView, column: cint, order: cint): void =
  fcQTableView_sortByColumn(self.h, column, cint(order))

proc setShowGrid*(self: gen_qtableview_types.QTableView, show: bool): void =
  fcQTableView_setShowGrid(self.h, show)

proc tr*(_: type gen_qtableview_types.QTableView, s: cstring, c: cstring): string =
  let v_ms = fcQTableView_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qtableview_types.QTableView, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTableView_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
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
type QTableViewkeyboardSearchProc* = proc(self: QTableView, search: openArray[char]): void {.raises: [], gcsafe.}
type QTableViewitemDelegateForIndexProc* = proc(self: QTableView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemdelegate_types.QAbstractItemDelegate {.raises: [], gcsafe.}
type QTableViewinputMethodQueryProc* = proc(self: QTableView, query: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QTableViewresetProc* = proc(self: QTableView): void {.raises: [], gcsafe.}
type QTableViewselectAllProc* = proc(self: QTableView): void {.raises: [], gcsafe.}
type QTableViewdataChangedProc* = proc(self: QTableView, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: openArray[cint]): void {.raises: [], gcsafe.}
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
type QTableViewnativeEventProc* = proc(self: QTableView, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
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

proc QTableViewmetaObject*(self: gen_qtableview_types.QTableView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTableView_virtualbase_metaObject(self.h), owned: false)

proc QTableViewmetacast*(self: gen_qtableview_types.QTableView, param1: cstring): pointer =
  fcQTableView_virtualbase_metacast(self.h, param1)

proc QTableViewmetacall*(self: gen_qtableview_types.QTableView, param1: cint, param2: cint, param3: pointer): cint =
  fcQTableView_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QTableViewsetModel*(self: gen_qtableview_types.QTableView, model: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQTableView_virtualbase_setModel(self.h, model.h)

proc QTableViewsetRootIndex*(self: gen_qtableview_types.QTableView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQTableView_virtualbase_setRootIndex(self.h, index.h)

proc QTableViewsetSelectionModel*(self: gen_qtableview_types.QTableView, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void =
  fcQTableView_virtualbase_setSelectionModel(self.h, selectionModel.h)

proc QTableViewdoItemsLayout*(self: gen_qtableview_types.QTableView): void =
  fcQTableView_virtualbase_doItemsLayout(self.h)

proc QTableViewvisualRect*(self: gen_qtableview_types.QTableView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQTableView_virtualbase_visualRect(self.h, index.h), owned: true)

proc QTableViewscrollTo*(self: gen_qtableview_types.QTableView, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void =
  fcQTableView_virtualbase_scrollTo(self.h, index.h, cint(hint))

proc QTableViewindexAt*(self: gen_qtableview_types.QTableView, p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTableView_virtualbase_indexAt(self.h, p.h), owned: true)

proc QTableViewscrollContentsBy*(self: gen_qtableview_types.QTableView, dx: cint, dy: cint): void =
  fcQTableView_virtualbase_scrollContentsBy(self.h, dx, dy)

proc QTableViewinitViewItemOption*(self: gen_qtableview_types.QTableView, option: gen_qstyleoption_types.QStyleOptionViewItem): void =
  fcQTableView_virtualbase_initViewItemOption(self.h, option.h)

proc QTableViewpaintEvent*(self: gen_qtableview_types.QTableView, e: gen_qevent_types.QPaintEvent): void =
  fcQTableView_virtualbase_paintEvent(self.h, e.h)

proc QTableViewtimerEvent*(self: gen_qtableview_types.QTableView, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQTableView_virtualbase_timerEvent(self.h, event.h)

proc QTableViewhorizontalOffset*(self: gen_qtableview_types.QTableView): cint =
  fcQTableView_virtualbase_horizontalOffset(self.h)

proc QTableViewverticalOffset*(self: gen_qtableview_types.QTableView): cint =
  fcQTableView_virtualbase_verticalOffset(self.h)

proc QTableViewmoveCursor*(self: gen_qtableview_types.QTableView, cursorAction: cint, modifiers: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTableView_virtualbase_moveCursor(self.h, cint(cursorAction), cint(modifiers)), owned: true)

proc QTableViewsetSelection*(self: gen_qtableview_types.QTableView, rect: gen_qrect_types.QRect, command: cint): void =
  fcQTableView_virtualbase_setSelection(self.h, rect.h, cint(command))

proc QTableViewvisualRegionForSelection*(self: gen_qtableview_types.QTableView, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQTableView_virtualbase_visualRegionForSelection(self.h, selection.h), owned: true)

proc QTableViewselectedIndexes*(self: gen_qtableview_types.QTableView): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQTableView_virtualbase_selectedIndexes(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc QTableViewupdateGeometries*(self: gen_qtableview_types.QTableView): void =
  fcQTableView_virtualbase_updateGeometries(self.h)

proc QTableViewviewportSizeHint*(self: gen_qtableview_types.QTableView): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTableView_virtualbase_viewportSizeHint(self.h), owned: true)

proc QTableViewsizeHintForRow*(self: gen_qtableview_types.QTableView, row: cint): cint =
  fcQTableView_virtualbase_sizeHintForRow(self.h, row)

proc QTableViewsizeHintForColumn*(self: gen_qtableview_types.QTableView, column: cint): cint =
  fcQTableView_virtualbase_sizeHintForColumn(self.h, column)

proc QTableViewverticalScrollbarAction*(self: gen_qtableview_types.QTableView, action: cint): void =
  fcQTableView_virtualbase_verticalScrollbarAction(self.h, action)

proc QTableViewhorizontalScrollbarAction*(self: gen_qtableview_types.QTableView, action: cint): void =
  fcQTableView_virtualbase_horizontalScrollbarAction(self.h, action)

proc QTableViewisIndexHidden*(self: gen_qtableview_types.QTableView, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQTableView_virtualbase_isIndexHidden(self.h, index.h)

proc QTableViewselectionChanged*(self: gen_qtableview_types.QTableView, selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void =
  fcQTableView_virtualbase_selectionChanged(self.h, selected.h, deselected.h)

proc QTableViewcurrentChanged*(self: gen_qtableview_types.QTableView, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQTableView_virtualbase_currentChanged(self.h, current.h, previous.h)

proc QTableViewkeyboardSearch*(self: gen_qtableview_types.QTableView, search: openArray[char]): void =
  fcQTableView_virtualbase_keyboardSearch(self.h, struct_miqt_string(data: if len(search) > 0: addr search[0] else: nil, len: csize_t(len(search))))

proc QTableViewitemDelegateForIndex*(self: gen_qtableview_types.QTableView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemdelegate_types.QAbstractItemDelegate =
  gen_qabstractitemdelegate_types.QAbstractItemDelegate(h: fcQTableView_virtualbase_itemDelegateForIndex(self.h, index.h), owned: false)

proc QTableViewinputMethodQuery*(self: gen_qtableview_types.QTableView, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQTableView_virtualbase_inputMethodQuery(self.h, cint(query)), owned: true)

proc QTableViewreset*(self: gen_qtableview_types.QTableView): void =
  fcQTableView_virtualbase_reset(self.h)

proc QTableViewselectAll*(self: gen_qtableview_types.QTableView): void =
  fcQTableView_virtualbase_selectAll(self.h)

proc QTableViewdataChanged*(self: gen_qtableview_types.QTableView, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: openArray[cint]): void =
  var roles_CArray = newSeq[cint](len(roles))
  for i in 0..<len(roles):
    roles_CArray[i] = roles[i]

  fcQTableView_virtualbase_dataChanged(self.h, topLeft.h, bottomRight.h, struct_miqt_array(len: csize_t(len(roles)), data: if len(roles) == 0: nil else: addr(roles_CArray[0])))

proc QTableViewrowsInserted*(self: gen_qtableview_types.QTableView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fcQTableView_virtualbase_rowsInserted(self.h, parent.h, start, endVal)

proc QTableViewrowsAboutToBeRemoved*(self: gen_qtableview_types.QTableView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fcQTableView_virtualbase_rowsAboutToBeRemoved(self.h, parent.h, start, endVal)

proc QTableViewupdateEditorData*(self: gen_qtableview_types.QTableView): void =
  fcQTableView_virtualbase_updateEditorData(self.h)

proc QTableViewupdateEditorGeometries*(self: gen_qtableview_types.QTableView): void =
  fcQTableView_virtualbase_updateEditorGeometries(self.h)

proc QTableViewverticalScrollbarValueChanged*(self: gen_qtableview_types.QTableView, value: cint): void =
  fcQTableView_virtualbase_verticalScrollbarValueChanged(self.h, value)

proc QTableViewhorizontalScrollbarValueChanged*(self: gen_qtableview_types.QTableView, value: cint): void =
  fcQTableView_virtualbase_horizontalScrollbarValueChanged(self.h, value)

proc QTableViewcloseEditor*(self: gen_qtableview_types.QTableView, editor: gen_qwidget_types.QWidget, hint: cint): void =
  fcQTableView_virtualbase_closeEditor(self.h, editor.h, cint(hint))

proc QTableViewcommitData*(self: gen_qtableview_types.QTableView, editor: gen_qwidget_types.QWidget): void =
  fcQTableView_virtualbase_commitData(self.h, editor.h)

proc QTableVieweditorDestroyed*(self: gen_qtableview_types.QTableView, editor: gen_qobject_types.QObject): void =
  fcQTableView_virtualbase_editorDestroyed(self.h, editor.h)

proc QTableViewedit*(self: gen_qtableview_types.QTableView, index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool =
  fcQTableView_virtualbase_edit2(self.h, index.h, cint(trigger), event.h)

proc QTableViewselectionCommand*(self: gen_qtableview_types.QTableView, index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint =
  cint(fcQTableView_virtualbase_selectionCommand(self.h, index.h, event.h))

proc QTableViewstartDrag*(self: gen_qtableview_types.QTableView, supportedActions: cint): void =
  fcQTableView_virtualbase_startDrag(self.h, cint(supportedActions))

proc QTableViewfocusNextPrevChild*(self: gen_qtableview_types.QTableView, next: bool): bool =
  fcQTableView_virtualbase_focusNextPrevChild(self.h, next)

proc QTableViewevent*(self: gen_qtableview_types.QTableView, event: gen_qcoreevent_types.QEvent): bool =
  fcQTableView_virtualbase_event(self.h, event.h)

proc QTableViewviewportEvent*(self: gen_qtableview_types.QTableView, event: gen_qcoreevent_types.QEvent): bool =
  fcQTableView_virtualbase_viewportEvent(self.h, event.h)

proc QTableViewmousePressEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QMouseEvent): void =
  fcQTableView_virtualbase_mousePressEvent(self.h, event.h)

proc QTableViewmouseMoveEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QMouseEvent): void =
  fcQTableView_virtualbase_mouseMoveEvent(self.h, event.h)

proc QTableViewmouseReleaseEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QMouseEvent): void =
  fcQTableView_virtualbase_mouseReleaseEvent(self.h, event.h)

proc QTableViewmouseDoubleClickEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QMouseEvent): void =
  fcQTableView_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc QTableViewdragEnterEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QDragEnterEvent): void =
  fcQTableView_virtualbase_dragEnterEvent(self.h, event.h)

proc QTableViewdragMoveEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QDragMoveEvent): void =
  fcQTableView_virtualbase_dragMoveEvent(self.h, event.h)

proc QTableViewdragLeaveEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQTableView_virtualbase_dragLeaveEvent(self.h, event.h)

proc QTableViewdropEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QDropEvent): void =
  fcQTableView_virtualbase_dropEvent(self.h, event.h)

proc QTableViewfocusInEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QFocusEvent): void =
  fcQTableView_virtualbase_focusInEvent(self.h, event.h)

proc QTableViewfocusOutEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QFocusEvent): void =
  fcQTableView_virtualbase_focusOutEvent(self.h, event.h)

proc QTableViewkeyPressEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QKeyEvent): void =
  fcQTableView_virtualbase_keyPressEvent(self.h, event.h)

proc QTableViewresizeEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QResizeEvent): void =
  fcQTableView_virtualbase_resizeEvent(self.h, event.h)

proc QTableViewinputMethodEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QInputMethodEvent): void =
  fcQTableView_virtualbase_inputMethodEvent(self.h, event.h)

proc QTableVieweventFilter*(self: gen_qtableview_types.QTableView, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQTableView_virtualbase_eventFilter(self.h, objectVal.h, event.h)

proc QTableViewminimumSizeHint*(self: gen_qtableview_types.QTableView): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTableView_virtualbase_minimumSizeHint(self.h), owned: true)

proc QTableViewsizeHint*(self: gen_qtableview_types.QTableView): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTableView_virtualbase_sizeHint(self.h), owned: true)

proc QTableViewsetupViewport*(self: gen_qtableview_types.QTableView, viewport: gen_qwidget_types.QWidget): void =
  fcQTableView_virtualbase_setupViewport(self.h, viewport.h)

proc QTableViewwheelEvent*(self: gen_qtableview_types.QTableView, param1: gen_qevent_types.QWheelEvent): void =
  fcQTableView_virtualbase_wheelEvent(self.h, param1.h)

proc QTableViewcontextMenuEvent*(self: gen_qtableview_types.QTableView, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQTableView_virtualbase_contextMenuEvent(self.h, param1.h)

proc QTableViewchangeEvent*(self: gen_qtableview_types.QTableView, param1: gen_qcoreevent_types.QEvent): void =
  fcQTableView_virtualbase_changeEvent(self.h, param1.h)

proc QTableViewinitStyleOption*(self: gen_qtableview_types.QTableView, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fcQTableView_virtualbase_initStyleOption(self.h, option.h)

proc QTableViewdevType*(self: gen_qtableview_types.QTableView): cint =
  fcQTableView_virtualbase_devType(self.h)

proc QTableViewsetVisible*(self: gen_qtableview_types.QTableView, visible: bool): void =
  fcQTableView_virtualbase_setVisible(self.h, visible)

proc QTableViewheightForWidth*(self: gen_qtableview_types.QTableView, param1: cint): cint =
  fcQTableView_virtualbase_heightForWidth(self.h, param1)

proc QTableViewhasHeightForWidth*(self: gen_qtableview_types.QTableView): bool =
  fcQTableView_virtualbase_hasHeightForWidth(self.h)

proc QTableViewpaintEngine*(self: gen_qtableview_types.QTableView): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQTableView_virtualbase_paintEngine(self.h), owned: false)

proc QTableViewkeyReleaseEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QKeyEvent): void =
  fcQTableView_virtualbase_keyReleaseEvent(self.h, event.h)

proc QTableViewenterEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QEnterEvent): void =
  fcQTableView_virtualbase_enterEvent(self.h, event.h)

proc QTableViewleaveEvent*(self: gen_qtableview_types.QTableView, event: gen_qcoreevent_types.QEvent): void =
  fcQTableView_virtualbase_leaveEvent(self.h, event.h)

proc QTableViewmoveEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QMoveEvent): void =
  fcQTableView_virtualbase_moveEvent(self.h, event.h)

proc QTableViewcloseEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QCloseEvent): void =
  fcQTableView_virtualbase_closeEvent(self.h, event.h)

proc QTableViewtabletEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QTabletEvent): void =
  fcQTableView_virtualbase_tabletEvent(self.h, event.h)

proc QTableViewactionEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QActionEvent): void =
  fcQTableView_virtualbase_actionEvent(self.h, event.h)

proc QTableViewshowEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QShowEvent): void =
  fcQTableView_virtualbase_showEvent(self.h, event.h)

proc QTableViewhideEvent*(self: gen_qtableview_types.QTableView, event: gen_qevent_types.QHideEvent): void =
  fcQTableView_virtualbase_hideEvent(self.h, event.h)

proc QTableViewnativeEvent*(self: gen_qtableview_types.QTableView, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool =
  fcQTableView_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc QTableViewmetric*(self: gen_qtableview_types.QTableView, param1: cint): cint =
  fcQTableView_virtualbase_metric(self.h, cint(param1))

proc QTableViewinitPainter*(self: gen_qtableview_types.QTableView, painter: gen_qpainter_types.QPainter): void =
  fcQTableView_virtualbase_initPainter(self.h, painter.h)

proc QTableViewredirected*(self: gen_qtableview_types.QTableView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQTableView_virtualbase_redirected(self.h, offset.h), owned: false)

proc QTableViewsharedPainter*(self: gen_qtableview_types.QTableView): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQTableView_virtualbase_sharedPainter(self.h), owned: false)

proc QTableViewchildEvent*(self: gen_qtableview_types.QTableView, event: gen_qcoreevent_types.QChildEvent): void =
  fcQTableView_virtualbase_childEvent(self.h, event.h)

proc QTableViewcustomEvent*(self: gen_qtableview_types.QTableView, event: gen_qcoreevent_types.QEvent): void =
  fcQTableView_virtualbase_customEvent(self.h, event.h)

proc QTableViewconnectNotify*(self: gen_qtableview_types.QTableView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTableView_virtualbase_connectNotify(self.h, signal.h)

proc QTableViewdisconnectNotify*(self: gen_qtableview_types.QTableView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTableView_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQTableView_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTableView_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQTableView_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQTableView_vtable_callback_setModel(self: pointer, model: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model, owned: false)
  vtbl[].setModel(self, slotval1)

proc fcQTableView_vtable_callback_setRootIndex(self: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  vtbl[].setRootIndex(self, slotval1)

proc fcQTableView_vtable_callback_setSelectionModel(self: pointer, selectionModel: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelectionModel(h: selectionModel, owned: false)
  vtbl[].setSelectionModel(self, slotval1)

proc fcQTableView_vtable_callback_doItemsLayout(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  vtbl[].doItemsLayout(self)

proc fcQTableView_vtable_callback_visualRect(self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].visualRect(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTableView_vtable_callback_scrollTo(self: pointer, index: pointer, hint: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = cint(hint)
  vtbl[].scrollTo(self, slotval1, slotval2)

proc fcQTableView_vtable_callback_indexAt(self: pointer, p: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: p, owned: false)
  var virtualReturn = vtbl[].indexAt(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTableView_vtable_callback_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = dx
  let slotval2 = dy
  vtbl[].scrollContentsBy(self, slotval1, slotval2)

proc fcQTableView_vtable_callback_initViewItemOption(self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  vtbl[].initViewItemOption(self, slotval1)

proc fcQTableView_vtable_callback_paintEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: e, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc fcQTableView_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQTableView_vtable_callback_horizontalOffset(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  var virtualReturn = vtbl[].horizontalOffset(self)
  virtualReturn

proc fcQTableView_vtable_callback_verticalOffset(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  var virtualReturn = vtbl[].verticalOffset(self)
  virtualReturn

proc fcQTableView_vtable_callback_moveCursor(self: pointer, cursorAction: cint, modifiers: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = cint(cursorAction)
  let slotval2 = cint(modifiers)
  var virtualReturn = vtbl[].moveCursor(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTableView_vtable_callback_setSelection(self: pointer, rect: pointer, command: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qrect_types.QRect(h: rect, owned: false)
  let slotval2 = cint(command)
  vtbl[].setSelection(self, slotval1, slotval2)

proc fcQTableView_vtable_callback_visualRegionForSelection(self: pointer, selection: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection, owned: false)
  var virtualReturn = vtbl[].visualRegionForSelection(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTableView_vtable_callback_selectedIndexes(self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  var virtualReturn = vtbl[].selectedIndexes(self)
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn[i].owned = false # TODO move?
    let virtualReturn_i_h = virtualReturn[i].h
    virtualReturn[i].h = nil
    virtualReturn_CArray[i] = virtualReturn_i_h

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQTableView_vtable_callback_updateGeometries(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  vtbl[].updateGeometries(self)

proc fcQTableView_vtable_callback_viewportSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  var virtualReturn = vtbl[].viewportSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTableView_vtable_callback_sizeHintForRow(self: pointer, row: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = row
  var virtualReturn = vtbl[].sizeHintForRow(self, slotval1)
  virtualReturn

proc fcQTableView_vtable_callback_sizeHintForColumn(self: pointer, column: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = column
  var virtualReturn = vtbl[].sizeHintForColumn(self, slotval1)
  virtualReturn

proc fcQTableView_vtable_callback_verticalScrollbarAction(self: pointer, action: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = action
  vtbl[].verticalScrollbarAction(self, slotval1)

proc fcQTableView_vtable_callback_horizontalScrollbarAction(self: pointer, action: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = action
  vtbl[].horizontalScrollbarAction(self, slotval1)

proc fcQTableView_vtable_callback_isIndexHidden(self: pointer, index: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].isIndexHidden(self, slotval1)
  virtualReturn

proc fcQTableView_vtable_callback_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selected, owned: false)
  let slotval2 = gen_qitemselectionmodel_types.QItemSelection(h: deselected, owned: false)
  vtbl[].selectionChanged(self, slotval1, slotval2)

proc fcQTableView_vtable_callback_currentChanged(self: pointer, current: pointer, previous: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: current, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: previous, owned: false)
  vtbl[].currentChanged(self, slotval1, slotval2)

proc fcQTableView_vtable_callback_keyboardSearch(self: pointer, search: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let vsearch_ms = search
  let vsearchx_ret = string.fromBytes(vsearch_ms)
  c_free(vsearch_ms.data)
  let slotval1 = vsearchx_ret
  vtbl[].keyboardSearch(self, slotval1)

proc fcQTableView_vtable_callback_itemDelegateForIndex(self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].itemDelegateForIndex(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTableView_vtable_callback_inputMethodQuery(self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = cint(query)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTableView_vtable_callback_reset(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  vtbl[].reset(self)

proc fcQTableView_vtable_callback_selectAll(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  vtbl[].selectAll(self)

proc fcQTableView_vtable_callback_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
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

proc fcQTableView_vtable_callback_rowsInserted(self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  let slotval2 = start
  let slotval3 = endVal
  vtbl[].rowsInserted(self, slotval1, slotval2, slotval3)

proc fcQTableView_vtable_callback_rowsAboutToBeRemoved(self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  let slotval2 = start
  let slotval3 = endVal
  vtbl[].rowsAboutToBeRemoved(self, slotval1, slotval2, slotval3)

proc fcQTableView_vtable_callback_updateEditorData(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  vtbl[].updateEditorData(self)

proc fcQTableView_vtable_callback_updateEditorGeometries(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  vtbl[].updateEditorGeometries(self)

proc fcQTableView_vtable_callback_verticalScrollbarValueChanged(self: pointer, value: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = value
  vtbl[].verticalScrollbarValueChanged(self, slotval1)

proc fcQTableView_vtable_callback_horizontalScrollbarValueChanged(self: pointer, value: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = value
  vtbl[].horizontalScrollbarValueChanged(self, slotval1)

proc fcQTableView_vtable_callback_closeEditor(self: pointer, editor: pointer, hint: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  let slotval2 = cint(hint)
  vtbl[].closeEditor(self, slotval1, slotval2)

proc fcQTableView_vtable_callback_commitData(self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  vtbl[].commitData(self, slotval1)

proc fcQTableView_vtable_callback_editorDestroyed(self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qobject_types.QObject(h: editor, owned: false)
  vtbl[].editorDestroyed(self, slotval1)

proc fcQTableView_vtable_callback_edit2(self: pointer, index: pointer, trigger: cint, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = cint(trigger)
  let slotval3 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].edit2(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQTableView_vtable_callback_selectionCommand(self: pointer, index: pointer, event: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].selectionCommand(self, slotval1, slotval2)
  cint(virtualReturn)

proc fcQTableView_vtable_callback_startDrag(self: pointer, supportedActions: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = cint(supportedActions)
  vtbl[].startDrag(self, slotval1)

proc fcQTableView_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc fcQTableView_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQTableView_vtable_callback_viewportEvent(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].viewportEvent(self, slotval1)
  virtualReturn

proc fcQTableView_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc fcQTableView_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc fcQTableView_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc fcQTableView_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc fcQTableView_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc fcQTableView_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc fcQTableView_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc fcQTableView_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc fcQTableView_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc fcQTableView_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc fcQTableView_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc fcQTableView_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc fcQTableView_vtable_callback_inputMethodEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc fcQTableView_vtable_callback_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qobject_types.QObject(h: objectVal, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQTableView_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTableView_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTableView_vtable_callback_setupViewport(self: pointer, viewport: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: viewport, owned: false)
  vtbl[].setupViewport(self, slotval1)

proc fcQTableView_vtable_callback_wheelEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc fcQTableView_vtable_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc fcQTableView_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc fcQTableView_vtable_callback_initStyleOption(self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionFrame(h: option, owned: false)
  vtbl[].initStyleOption(self, slotval1)

proc fcQTableView_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc fcQTableView_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc fcQTableView_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc fcQTableView_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc fcQTableView_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTableView_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc fcQTableView_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc fcQTableView_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc fcQTableView_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc fcQTableView_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc fcQTableView_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc fcQTableView_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc fcQTableView_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc fcQTableView_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc fcQTableView_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQTableView_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc fcQTableView_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc fcQTableView_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTableView_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTableView_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQTableView_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQTableView_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQTableView_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTableViewVTable](fcQTableView_vdata(self))
  let self = QTableView(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQTableView* {.inheritable.} = ref object of QTableView
  vtbl*: cQTableViewVTable

method metaObject*(self: VirtualQTableView): gen_qobjectdefs_types.QMetaObject {.base.} =
  QTableViewmetaObject(self[])
method metacast*(self: VirtualQTableView, param1: cstring): pointer {.base.} =
  QTableViewmetacast(self[], param1)
method metacall*(self: VirtualQTableView, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QTableViewmetacall(self[], param1, param2, param3)
method setModel*(self: VirtualQTableView, model: gen_qabstractitemmodel_types.QAbstractItemModel): void {.base.} =
  QTableViewsetModel(self[], model)
method setRootIndex*(self: VirtualQTableView, index: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QTableViewsetRootIndex(self[], index)
method setSelectionModel*(self: VirtualQTableView, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void {.base.} =
  QTableViewsetSelectionModel(self[], selectionModel)
method doItemsLayout*(self: VirtualQTableView): void {.base.} =
  QTableViewdoItemsLayout(self[])
method visualRect*(self: VirtualQTableView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect {.base.} =
  QTableViewvisualRect(self[], index)
method scrollTo*(self: VirtualQTableView, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void {.base.} =
  QTableViewscrollTo(self[], index, hint)
method indexAt*(self: VirtualQTableView, p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QTableViewindexAt(self[], p)
method scrollContentsBy*(self: VirtualQTableView, dx: cint, dy: cint): void {.base.} =
  QTableViewscrollContentsBy(self[], dx, dy)
method initViewItemOption*(self: VirtualQTableView, option: gen_qstyleoption_types.QStyleOptionViewItem): void {.base.} =
  QTableViewinitViewItemOption(self[], option)
method paintEvent*(self: VirtualQTableView, e: gen_qevent_types.QPaintEvent): void {.base.} =
  QTableViewpaintEvent(self[], e)
method timerEvent*(self: VirtualQTableView, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QTableViewtimerEvent(self[], event)
method horizontalOffset*(self: VirtualQTableView): cint {.base.} =
  QTableViewhorizontalOffset(self[])
method verticalOffset*(self: VirtualQTableView): cint {.base.} =
  QTableViewverticalOffset(self[])
method moveCursor*(self: VirtualQTableView, cursorAction: cint, modifiers: cint): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QTableViewmoveCursor(self[], cursorAction, modifiers)
method setSelection*(self: VirtualQTableView, rect: gen_qrect_types.QRect, command: cint): void {.base.} =
  QTableViewsetSelection(self[], rect, command)
method visualRegionForSelection*(self: VirtualQTableView, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion {.base.} =
  QTableViewvisualRegionForSelection(self[], selection)
method selectedIndexes*(self: VirtualQTableView): seq[gen_qabstractitemmodel_types.QModelIndex] {.base.} =
  QTableViewselectedIndexes(self[])
method updateGeometries*(self: VirtualQTableView): void {.base.} =
  QTableViewupdateGeometries(self[])
method viewportSizeHint*(self: VirtualQTableView): gen_qsize_types.QSize {.base.} =
  QTableViewviewportSizeHint(self[])
method sizeHintForRow*(self: VirtualQTableView, row: cint): cint {.base.} =
  QTableViewsizeHintForRow(self[], row)
method sizeHintForColumn*(self: VirtualQTableView, column: cint): cint {.base.} =
  QTableViewsizeHintForColumn(self[], column)
method verticalScrollbarAction*(self: VirtualQTableView, action: cint): void {.base.} =
  QTableViewverticalScrollbarAction(self[], action)
method horizontalScrollbarAction*(self: VirtualQTableView, action: cint): void {.base.} =
  QTableViewhorizontalScrollbarAction(self[], action)
method isIndexHidden*(self: VirtualQTableView, index: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QTableViewisIndexHidden(self[], index)
method selectionChanged*(self: VirtualQTableView, selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void {.base.} =
  QTableViewselectionChanged(self[], selected, deselected)
method currentChanged*(self: VirtualQTableView, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QTableViewcurrentChanged(self[], current, previous)
method keyboardSearch*(self: VirtualQTableView, search: openArray[char]): void {.base.} =
  QTableViewkeyboardSearch(self[], search)
method itemDelegateForIndex*(self: VirtualQTableView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemdelegate_types.QAbstractItemDelegate {.base.} =
  QTableViewitemDelegateForIndex(self[], index)
method inputMethodQuery*(self: VirtualQTableView, query: cint): gen_qvariant_types.QVariant {.base.} =
  QTableViewinputMethodQuery(self[], query)
method reset*(self: VirtualQTableView): void {.base.} =
  QTableViewreset(self[])
method selectAll*(self: VirtualQTableView): void {.base.} =
  QTableViewselectAll(self[])
method dataChanged*(self: VirtualQTableView, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: openArray[cint]): void {.base.} =
  QTableViewdataChanged(self[], topLeft, bottomRight, roles)
method rowsInserted*(self: VirtualQTableView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void {.base.} =
  QTableViewrowsInserted(self[], parent, start, endVal)
method rowsAboutToBeRemoved*(self: VirtualQTableView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void {.base.} =
  QTableViewrowsAboutToBeRemoved(self[], parent, start, endVal)
method updateEditorData*(self: VirtualQTableView): void {.base.} =
  QTableViewupdateEditorData(self[])
method updateEditorGeometries*(self: VirtualQTableView): void {.base.} =
  QTableViewupdateEditorGeometries(self[])
method verticalScrollbarValueChanged*(self: VirtualQTableView, value: cint): void {.base.} =
  QTableViewverticalScrollbarValueChanged(self[], value)
method horizontalScrollbarValueChanged*(self: VirtualQTableView, value: cint): void {.base.} =
  QTableViewhorizontalScrollbarValueChanged(self[], value)
method closeEditor*(self: VirtualQTableView, editor: gen_qwidget_types.QWidget, hint: cint): void {.base.} =
  QTableViewcloseEditor(self[], editor, hint)
method commitData*(self: VirtualQTableView, editor: gen_qwidget_types.QWidget): void {.base.} =
  QTableViewcommitData(self[], editor)
method editorDestroyed*(self: VirtualQTableView, editor: gen_qobject_types.QObject): void {.base.} =
  QTableVieweditorDestroyed(self[], editor)
method edit*(self: VirtualQTableView, index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTableViewedit(self[], index, trigger, event)
method selectionCommand*(self: VirtualQTableView, index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint {.base.} =
  QTableViewselectionCommand(self[], index, event)
method startDrag*(self: VirtualQTableView, supportedActions: cint): void {.base.} =
  QTableViewstartDrag(self[], supportedActions)
method focusNextPrevChild*(self: VirtualQTableView, next: bool): bool {.base.} =
  QTableViewfocusNextPrevChild(self[], next)
method event*(self: VirtualQTableView, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTableViewevent(self[], event)
method viewportEvent*(self: VirtualQTableView, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTableViewviewportEvent(self[], event)
method mousePressEvent*(self: VirtualQTableView, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QTableViewmousePressEvent(self[], event)
method mouseMoveEvent*(self: VirtualQTableView, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QTableViewmouseMoveEvent(self[], event)
method mouseReleaseEvent*(self: VirtualQTableView, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QTableViewmouseReleaseEvent(self[], event)
method mouseDoubleClickEvent*(self: VirtualQTableView, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QTableViewmouseDoubleClickEvent(self[], event)
method dragEnterEvent*(self: VirtualQTableView, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QTableViewdragEnterEvent(self[], event)
method dragMoveEvent*(self: VirtualQTableView, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QTableViewdragMoveEvent(self[], event)
method dragLeaveEvent*(self: VirtualQTableView, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QTableViewdragLeaveEvent(self[], event)
method dropEvent*(self: VirtualQTableView, event: gen_qevent_types.QDropEvent): void {.base.} =
  QTableViewdropEvent(self[], event)
method focusInEvent*(self: VirtualQTableView, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QTableViewfocusInEvent(self[], event)
method focusOutEvent*(self: VirtualQTableView, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QTableViewfocusOutEvent(self[], event)
method keyPressEvent*(self: VirtualQTableView, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QTableViewkeyPressEvent(self[], event)
method resizeEvent*(self: VirtualQTableView, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QTableViewresizeEvent(self[], event)
method inputMethodEvent*(self: VirtualQTableView, event: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QTableViewinputMethodEvent(self[], event)
method eventFilter*(self: VirtualQTableView, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTableVieweventFilter(self[], objectVal, event)
method minimumSizeHint*(self: VirtualQTableView): gen_qsize_types.QSize {.base.} =
  QTableViewminimumSizeHint(self[])
method sizeHint*(self: VirtualQTableView): gen_qsize_types.QSize {.base.} =
  QTableViewsizeHint(self[])
method setupViewport*(self: VirtualQTableView, viewport: gen_qwidget_types.QWidget): void {.base.} =
  QTableViewsetupViewport(self[], viewport)
method wheelEvent*(self: VirtualQTableView, param1: gen_qevent_types.QWheelEvent): void {.base.} =
  QTableViewwheelEvent(self[], param1)
method contextMenuEvent*(self: VirtualQTableView, param1: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QTableViewcontextMenuEvent(self[], param1)
method changeEvent*(self: VirtualQTableView, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QTableViewchangeEvent(self[], param1)
method initStyleOption*(self: VirtualQTableView, option: gen_qstyleoption_types.QStyleOptionFrame): void {.base.} =
  QTableViewinitStyleOption(self[], option)
method devType*(self: VirtualQTableView): cint {.base.} =
  QTableViewdevType(self[])
method setVisible*(self: VirtualQTableView, visible: bool): void {.base.} =
  QTableViewsetVisible(self[], visible)
method heightForWidth*(self: VirtualQTableView, param1: cint): cint {.base.} =
  QTableViewheightForWidth(self[], param1)
method hasHeightForWidth*(self: VirtualQTableView): bool {.base.} =
  QTableViewhasHeightForWidth(self[])
method paintEngine*(self: VirtualQTableView): gen_qpaintengine_types.QPaintEngine {.base.} =
  QTableViewpaintEngine(self[])
method keyReleaseEvent*(self: VirtualQTableView, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QTableViewkeyReleaseEvent(self[], event)
method enterEvent*(self: VirtualQTableView, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QTableViewenterEvent(self[], event)
method leaveEvent*(self: VirtualQTableView, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QTableViewleaveEvent(self[], event)
method moveEvent*(self: VirtualQTableView, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QTableViewmoveEvent(self[], event)
method closeEvent*(self: VirtualQTableView, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QTableViewcloseEvent(self[], event)
method tabletEvent*(self: VirtualQTableView, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QTableViewtabletEvent(self[], event)
method actionEvent*(self: VirtualQTableView, event: gen_qevent_types.QActionEvent): void {.base.} =
  QTableViewactionEvent(self[], event)
method showEvent*(self: VirtualQTableView, event: gen_qevent_types.QShowEvent): void {.base.} =
  QTableViewshowEvent(self[], event)
method hideEvent*(self: VirtualQTableView, event: gen_qevent_types.QHideEvent): void {.base.} =
  QTableViewhideEvent(self[], event)
method nativeEvent*(self: VirtualQTableView, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QTableViewnativeEvent(self[], eventType, message, resultVal)
method metric*(self: VirtualQTableView, param1: cint): cint {.base.} =
  QTableViewmetric(self[], param1)
method initPainter*(self: VirtualQTableView, painter: gen_qpainter_types.QPainter): void {.base.} =
  QTableViewinitPainter(self[], painter)
method redirected*(self: VirtualQTableView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QTableViewredirected(self[], offset)
method sharedPainter*(self: VirtualQTableView): gen_qpainter_types.QPainter {.base.} =
  QTableViewsharedPainter(self[])
method childEvent*(self: VirtualQTableView, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QTableViewchildEvent(self[], event)
method customEvent*(self: VirtualQTableView, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QTableViewcustomEvent(self[], event)
method connectNotify*(self: VirtualQTableView, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QTableViewconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQTableView, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QTableViewdisconnectNotify(self[], signal)

proc fcQTableView_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTableView_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQTableView_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQTableView_method_callback_setModel(self: pointer, model: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model, owned: false)
  inst.setModel(slotval1)

proc fcQTableView_method_callback_setRootIndex(self: pointer, index: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  inst.setRootIndex(slotval1)

proc fcQTableView_method_callback_setSelectionModel(self: pointer, selectionModel: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelectionModel(h: selectionModel, owned: false)
  inst.setSelectionModel(slotval1)

proc fcQTableView_method_callback_doItemsLayout(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  inst.doItemsLayout()

proc fcQTableView_method_callback_visualRect(self: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.visualRect(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTableView_method_callback_scrollTo(self: pointer, index: pointer, hint: cint): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = cint(hint)
  inst.scrollTo(slotval1, slotval2)

proc fcQTableView_method_callback_indexAt(self: pointer, p: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: p, owned: false)
  var virtualReturn = inst.indexAt(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTableView_method_callback_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = dx
  let slotval2 = dy
  inst.scrollContentsBy(slotval1, slotval2)

proc fcQTableView_method_callback_initViewItemOption(self: pointer, option: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  inst.initViewItemOption(slotval1)

proc fcQTableView_method_callback_paintEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: e, owned: false)
  inst.paintEvent(slotval1)

proc fcQTableView_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQTableView_method_callback_horizontalOffset(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  var virtualReturn = inst.horizontalOffset()
  virtualReturn

proc fcQTableView_method_callback_verticalOffset(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  var virtualReturn = inst.verticalOffset()
  virtualReturn

proc fcQTableView_method_callback_moveCursor(self: pointer, cursorAction: cint, modifiers: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = cint(cursorAction)
  let slotval2 = cint(modifiers)
  var virtualReturn = inst.moveCursor(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTableView_method_callback_setSelection(self: pointer, rect: pointer, command: cint): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qrect_types.QRect(h: rect, owned: false)
  let slotval2 = cint(command)
  inst.setSelection(slotval1, slotval2)

proc fcQTableView_method_callback_visualRegionForSelection(self: pointer, selection: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection, owned: false)
  var virtualReturn = inst.visualRegionForSelection(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTableView_method_callback_selectedIndexes(self: pointer): struct_miqt_array {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  var virtualReturn = inst.selectedIndexes()
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn[i].owned = false # TODO move?
    let virtualReturn_i_h = virtualReturn[i].h
    virtualReturn[i].h = nil
    virtualReturn_CArray[i] = virtualReturn_i_h

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQTableView_method_callback_updateGeometries(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  inst.updateGeometries()

proc fcQTableView_method_callback_viewportSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  var virtualReturn = inst.viewportSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTableView_method_callback_sizeHintForRow(self: pointer, row: cint): cint {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = row
  var virtualReturn = inst.sizeHintForRow(slotval1)
  virtualReturn

proc fcQTableView_method_callback_sizeHintForColumn(self: pointer, column: cint): cint {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = column
  var virtualReturn = inst.sizeHintForColumn(slotval1)
  virtualReturn

proc fcQTableView_method_callback_verticalScrollbarAction(self: pointer, action: cint): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = action
  inst.verticalScrollbarAction(slotval1)

proc fcQTableView_method_callback_horizontalScrollbarAction(self: pointer, action: cint): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = action
  inst.horizontalScrollbarAction(slotval1)

proc fcQTableView_method_callback_isIndexHidden(self: pointer, index: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.isIndexHidden(slotval1)
  virtualReturn

proc fcQTableView_method_callback_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selected, owned: false)
  let slotval2 = gen_qitemselectionmodel_types.QItemSelection(h: deselected, owned: false)
  inst.selectionChanged(slotval1, slotval2)

proc fcQTableView_method_callback_currentChanged(self: pointer, current: pointer, previous: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: current, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: previous, owned: false)
  inst.currentChanged(slotval1, slotval2)

proc fcQTableView_method_callback_keyboardSearch(self: pointer, search: struct_miqt_string): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let vsearch_ms = search
  let vsearchx_ret = string.fromBytes(vsearch_ms)
  c_free(vsearch_ms.data)
  let slotval1 = vsearchx_ret
  inst.keyboardSearch(slotval1)

proc fcQTableView_method_callback_itemDelegateForIndex(self: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.itemDelegateForIndex(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTableView_method_callback_inputMethodQuery(self: pointer, query: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = cint(query)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTableView_method_callback_reset(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  inst.reset()

proc fcQTableView_method_callback_selectAll(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  inst.selectAll()

proc fcQTableView_method_callback_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
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

proc fcQTableView_method_callback_rowsInserted(self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  let slotval2 = start
  let slotval3 = endVal
  inst.rowsInserted(slotval1, slotval2, slotval3)

proc fcQTableView_method_callback_rowsAboutToBeRemoved(self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  let slotval2 = start
  let slotval3 = endVal
  inst.rowsAboutToBeRemoved(slotval1, slotval2, slotval3)

proc fcQTableView_method_callback_updateEditorData(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  inst.updateEditorData()

proc fcQTableView_method_callback_updateEditorGeometries(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  inst.updateEditorGeometries()

proc fcQTableView_method_callback_verticalScrollbarValueChanged(self: pointer, value: cint): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = value
  inst.verticalScrollbarValueChanged(slotval1)

proc fcQTableView_method_callback_horizontalScrollbarValueChanged(self: pointer, value: cint): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = value
  inst.horizontalScrollbarValueChanged(slotval1)

proc fcQTableView_method_callback_closeEditor(self: pointer, editor: pointer, hint: cint): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  let slotval2 = cint(hint)
  inst.closeEditor(slotval1, slotval2)

proc fcQTableView_method_callback_commitData(self: pointer, editor: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  inst.commitData(slotval1)

proc fcQTableView_method_callback_editorDestroyed(self: pointer, editor: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: editor, owned: false)
  inst.editorDestroyed(slotval1)

proc fcQTableView_method_callback_edit2(self: pointer, index: pointer, trigger: cint, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = cint(trigger)
  let slotval3 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.edit(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQTableView_method_callback_selectionCommand(self: pointer, index: pointer, event: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.selectionCommand(slotval1, slotval2)
  cint(virtualReturn)

proc fcQTableView_method_callback_startDrag(self: pointer, supportedActions: cint): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = cint(supportedActions)
  inst.startDrag(slotval1)

proc fcQTableView_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

proc fcQTableView_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQTableView_method_callback_viewportEvent(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.viewportEvent(slotval1)
  virtualReturn

proc fcQTableView_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

proc fcQTableView_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

proc fcQTableView_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

proc fcQTableView_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

proc fcQTableView_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

proc fcQTableView_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

proc fcQTableView_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

proc fcQTableView_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

proc fcQTableView_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

proc fcQTableView_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

proc fcQTableView_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyPressEvent(slotval1)

proc fcQTableView_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

proc fcQTableView_method_callback_inputMethodEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event, owned: false)
  inst.inputMethodEvent(slotval1)

proc fcQTableView_method_callback_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: objectVal, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQTableView_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTableView_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTableView_method_callback_setupViewport(self: pointer, viewport: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: viewport, owned: false)
  inst.setupViewport(slotval1)

proc fcQTableView_method_callback_wheelEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1, owned: false)
  inst.wheelEvent(slotval1)

proc fcQTableView_method_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  inst.contextMenuEvent(slotval1)

proc fcQTableView_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.changeEvent(slotval1)

proc fcQTableView_method_callback_initStyleOption(self: pointer, option: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qstyleoption_types.QStyleOptionFrame(h: option, owned: false)
  inst.initStyleOption(slotval1)

proc fcQTableView_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

proc fcQTableView_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

proc fcQTableView_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

proc fcQTableView_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

proc fcQTableView_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTableView_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

proc fcQTableView_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

proc fcQTableView_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

proc fcQTableView_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

proc fcQTableView_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

proc fcQTableView_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

proc fcQTableView_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

proc fcQTableView_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

proc fcQTableView_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

proc fcQTableView_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQTableView_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

proc fcQTableView_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

proc fcQTableView_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTableView_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTableView_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQTableView_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQTableView_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQTableView_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTableView](fcQTableView_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


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

proc state*(self: gen_qtableview_types.QTableView): cint =
  cint(fcQTableView_protectedbase_state(self.h))

proc setState*(self: gen_qtableview_types.QTableView, state: cint): void =
  fcQTableView_protectedbase_setState(self.h, cint(state))

proc scheduleDelayedItemsLayout*(self: gen_qtableview_types.QTableView): void =
  fcQTableView_protectedbase_scheduleDelayedItemsLayout(self.h)

proc executeDelayedItemsLayout*(self: gen_qtableview_types.QTableView): void =
  fcQTableView_protectedbase_executeDelayedItemsLayout(self.h)

proc setDirtyRegion*(self: gen_qtableview_types.QTableView, region: gen_qregion_types.QRegion): void =
  fcQTableView_protectedbase_setDirtyRegion(self.h, region.h)

proc scrollDirtyRegion*(self: gen_qtableview_types.QTableView, dx: cint, dy: cint): void =
  fcQTableView_protectedbase_scrollDirtyRegion(self.h, dx, dy)

proc dirtyRegionOffset*(self: gen_qtableview_types.QTableView): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQTableView_protectedbase_dirtyRegionOffset(self.h), owned: true)

proc startAutoScroll*(self: gen_qtableview_types.QTableView): void =
  fcQTableView_protectedbase_startAutoScroll(self.h)

proc stopAutoScroll*(self: gen_qtableview_types.QTableView): void =
  fcQTableView_protectedbase_stopAutoScroll(self.h)

proc doAutoScroll*(self: gen_qtableview_types.QTableView): void =
  fcQTableView_protectedbase_doAutoScroll(self.h)

proc dropIndicatorPosition*(self: gen_qtableview_types.QTableView): cint =
  cint(fcQTableView_protectedbase_dropIndicatorPosition(self.h))

proc setViewportMargins*(self: gen_qtableview_types.QTableView, left: cint, top: cint, right: cint, bottom: cint): void =
  fcQTableView_protectedbase_setViewportMargins(self.h, left, top, right, bottom)

proc viewportMargins*(self: gen_qtableview_types.QTableView): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQTableView_protectedbase_viewportMargins(self.h), owned: true)

proc drawFrame*(self: gen_qtableview_types.QTableView, param1: gen_qpainter_types.QPainter): void =
  fcQTableView_protectedbase_drawFrame(self.h, param1.h)

proc updateMicroFocus*(self: gen_qtableview_types.QTableView): void =
  fcQTableView_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qtableview_types.QTableView): void =
  fcQTableView_protectedbase_create(self.h)

proc destroy*(self: gen_qtableview_types.QTableView): void =
  fcQTableView_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qtableview_types.QTableView): bool =
  fcQTableView_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qtableview_types.QTableView): bool =
  fcQTableView_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qtableview_types.QTableView): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQTableView_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qtableview_types.QTableView): cint =
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
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTableViewVTable](fcQTableView_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQTableView_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQTableView_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQTableView_vtable_callback_metacall
  if not isNil(vtbl[].setModel):
    vtbl[].vtbl.setModel = fcQTableView_vtable_callback_setModel
  if not isNil(vtbl[].setRootIndex):
    vtbl[].vtbl.setRootIndex = fcQTableView_vtable_callback_setRootIndex
  if not isNil(vtbl[].setSelectionModel):
    vtbl[].vtbl.setSelectionModel = fcQTableView_vtable_callback_setSelectionModel
  if not isNil(vtbl[].doItemsLayout):
    vtbl[].vtbl.doItemsLayout = fcQTableView_vtable_callback_doItemsLayout
  if not isNil(vtbl[].visualRect):
    vtbl[].vtbl.visualRect = fcQTableView_vtable_callback_visualRect
  if not isNil(vtbl[].scrollTo):
    vtbl[].vtbl.scrollTo = fcQTableView_vtable_callback_scrollTo
  if not isNil(vtbl[].indexAt):
    vtbl[].vtbl.indexAt = fcQTableView_vtable_callback_indexAt
  if not isNil(vtbl[].scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = fcQTableView_vtable_callback_scrollContentsBy
  if not isNil(vtbl[].initViewItemOption):
    vtbl[].vtbl.initViewItemOption = fcQTableView_vtable_callback_initViewItemOption
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQTableView_vtable_callback_paintEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQTableView_vtable_callback_timerEvent
  if not isNil(vtbl[].horizontalOffset):
    vtbl[].vtbl.horizontalOffset = fcQTableView_vtable_callback_horizontalOffset
  if not isNil(vtbl[].verticalOffset):
    vtbl[].vtbl.verticalOffset = fcQTableView_vtable_callback_verticalOffset
  if not isNil(vtbl[].moveCursor):
    vtbl[].vtbl.moveCursor = fcQTableView_vtable_callback_moveCursor
  if not isNil(vtbl[].setSelection):
    vtbl[].vtbl.setSelection = fcQTableView_vtable_callback_setSelection
  if not isNil(vtbl[].visualRegionForSelection):
    vtbl[].vtbl.visualRegionForSelection = fcQTableView_vtable_callback_visualRegionForSelection
  if not isNil(vtbl[].selectedIndexes):
    vtbl[].vtbl.selectedIndexes = fcQTableView_vtable_callback_selectedIndexes
  if not isNil(vtbl[].updateGeometries):
    vtbl[].vtbl.updateGeometries = fcQTableView_vtable_callback_updateGeometries
  if not isNil(vtbl[].viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = fcQTableView_vtable_callback_viewportSizeHint
  if not isNil(vtbl[].sizeHintForRow):
    vtbl[].vtbl.sizeHintForRow = fcQTableView_vtable_callback_sizeHintForRow
  if not isNil(vtbl[].sizeHintForColumn):
    vtbl[].vtbl.sizeHintForColumn = fcQTableView_vtable_callback_sizeHintForColumn
  if not isNil(vtbl[].verticalScrollbarAction):
    vtbl[].vtbl.verticalScrollbarAction = fcQTableView_vtable_callback_verticalScrollbarAction
  if not isNil(vtbl[].horizontalScrollbarAction):
    vtbl[].vtbl.horizontalScrollbarAction = fcQTableView_vtable_callback_horizontalScrollbarAction
  if not isNil(vtbl[].isIndexHidden):
    vtbl[].vtbl.isIndexHidden = fcQTableView_vtable_callback_isIndexHidden
  if not isNil(vtbl[].selectionChanged):
    vtbl[].vtbl.selectionChanged = fcQTableView_vtable_callback_selectionChanged
  if not isNil(vtbl[].currentChanged):
    vtbl[].vtbl.currentChanged = fcQTableView_vtable_callback_currentChanged
  if not isNil(vtbl[].keyboardSearch):
    vtbl[].vtbl.keyboardSearch = fcQTableView_vtable_callback_keyboardSearch
  if not isNil(vtbl[].itemDelegateForIndex):
    vtbl[].vtbl.itemDelegateForIndex = fcQTableView_vtable_callback_itemDelegateForIndex
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQTableView_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = fcQTableView_vtable_callback_reset
  if not isNil(vtbl[].selectAll):
    vtbl[].vtbl.selectAll = fcQTableView_vtable_callback_selectAll
  if not isNil(vtbl[].dataChanged):
    vtbl[].vtbl.dataChanged = fcQTableView_vtable_callback_dataChanged
  if not isNil(vtbl[].rowsInserted):
    vtbl[].vtbl.rowsInserted = fcQTableView_vtable_callback_rowsInserted
  if not isNil(vtbl[].rowsAboutToBeRemoved):
    vtbl[].vtbl.rowsAboutToBeRemoved = fcQTableView_vtable_callback_rowsAboutToBeRemoved
  if not isNil(vtbl[].updateEditorData):
    vtbl[].vtbl.updateEditorData = fcQTableView_vtable_callback_updateEditorData
  if not isNil(vtbl[].updateEditorGeometries):
    vtbl[].vtbl.updateEditorGeometries = fcQTableView_vtable_callback_updateEditorGeometries
  if not isNil(vtbl[].verticalScrollbarValueChanged):
    vtbl[].vtbl.verticalScrollbarValueChanged = fcQTableView_vtable_callback_verticalScrollbarValueChanged
  if not isNil(vtbl[].horizontalScrollbarValueChanged):
    vtbl[].vtbl.horizontalScrollbarValueChanged = fcQTableView_vtable_callback_horizontalScrollbarValueChanged
  if not isNil(vtbl[].closeEditor):
    vtbl[].vtbl.closeEditor = fcQTableView_vtable_callback_closeEditor
  if not isNil(vtbl[].commitData):
    vtbl[].vtbl.commitData = fcQTableView_vtable_callback_commitData
  if not isNil(vtbl[].editorDestroyed):
    vtbl[].vtbl.editorDestroyed = fcQTableView_vtable_callback_editorDestroyed
  if not isNil(vtbl[].edit2):
    vtbl[].vtbl.edit2 = fcQTableView_vtable_callback_edit2
  if not isNil(vtbl[].selectionCommand):
    vtbl[].vtbl.selectionCommand = fcQTableView_vtable_callback_selectionCommand
  if not isNil(vtbl[].startDrag):
    vtbl[].vtbl.startDrag = fcQTableView_vtable_callback_startDrag
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQTableView_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQTableView_vtable_callback_event
  if not isNil(vtbl[].viewportEvent):
    vtbl[].vtbl.viewportEvent = fcQTableView_vtable_callback_viewportEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQTableView_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQTableView_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQTableView_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQTableView_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQTableView_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQTableView_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQTableView_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQTableView_vtable_callback_dropEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQTableView_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQTableView_vtable_callback_focusOutEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQTableView_vtable_callback_keyPressEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQTableView_vtable_callback_resizeEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQTableView_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQTableView_vtable_callback_eventFilter
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQTableView_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQTableView_vtable_callback_sizeHint
  if not isNil(vtbl[].setupViewport):
    vtbl[].vtbl.setupViewport = fcQTableView_vtable_callback_setupViewport
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQTableView_vtable_callback_wheelEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQTableView_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQTableView_vtable_callback_changeEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = fcQTableView_vtable_callback_initStyleOption
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQTableView_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQTableView_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQTableView_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQTableView_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQTableView_vtable_callback_paintEngine
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQTableView_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQTableView_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQTableView_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQTableView_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQTableView_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQTableView_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQTableView_vtable_callback_actionEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQTableView_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQTableView_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQTableView_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQTableView_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQTableView_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQTableView_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQTableView_vtable_callback_sharedPainter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQTableView_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQTableView_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQTableView_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQTableView_vtable_callback_disconnectNotify
  gen_qtableview_types.QTableView(h: fcQTableView_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qtableview_types.QTableView,
    vtbl: ref QTableViewVTable = nil): gen_qtableview_types.QTableView =
  let vtbl = if vtbl == nil: new QTableViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTableViewVTable](fcQTableView_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQTableView_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQTableView_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQTableView_vtable_callback_metacall
  if not isNil(vtbl[].setModel):
    vtbl[].vtbl.setModel = fcQTableView_vtable_callback_setModel
  if not isNil(vtbl[].setRootIndex):
    vtbl[].vtbl.setRootIndex = fcQTableView_vtable_callback_setRootIndex
  if not isNil(vtbl[].setSelectionModel):
    vtbl[].vtbl.setSelectionModel = fcQTableView_vtable_callback_setSelectionModel
  if not isNil(vtbl[].doItemsLayout):
    vtbl[].vtbl.doItemsLayout = fcQTableView_vtable_callback_doItemsLayout
  if not isNil(vtbl[].visualRect):
    vtbl[].vtbl.visualRect = fcQTableView_vtable_callback_visualRect
  if not isNil(vtbl[].scrollTo):
    vtbl[].vtbl.scrollTo = fcQTableView_vtable_callback_scrollTo
  if not isNil(vtbl[].indexAt):
    vtbl[].vtbl.indexAt = fcQTableView_vtable_callback_indexAt
  if not isNil(vtbl[].scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = fcQTableView_vtable_callback_scrollContentsBy
  if not isNil(vtbl[].initViewItemOption):
    vtbl[].vtbl.initViewItemOption = fcQTableView_vtable_callback_initViewItemOption
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQTableView_vtable_callback_paintEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQTableView_vtable_callback_timerEvent
  if not isNil(vtbl[].horizontalOffset):
    vtbl[].vtbl.horizontalOffset = fcQTableView_vtable_callback_horizontalOffset
  if not isNil(vtbl[].verticalOffset):
    vtbl[].vtbl.verticalOffset = fcQTableView_vtable_callback_verticalOffset
  if not isNil(vtbl[].moveCursor):
    vtbl[].vtbl.moveCursor = fcQTableView_vtable_callback_moveCursor
  if not isNil(vtbl[].setSelection):
    vtbl[].vtbl.setSelection = fcQTableView_vtable_callback_setSelection
  if not isNil(vtbl[].visualRegionForSelection):
    vtbl[].vtbl.visualRegionForSelection = fcQTableView_vtable_callback_visualRegionForSelection
  if not isNil(vtbl[].selectedIndexes):
    vtbl[].vtbl.selectedIndexes = fcQTableView_vtable_callback_selectedIndexes
  if not isNil(vtbl[].updateGeometries):
    vtbl[].vtbl.updateGeometries = fcQTableView_vtable_callback_updateGeometries
  if not isNil(vtbl[].viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = fcQTableView_vtable_callback_viewportSizeHint
  if not isNil(vtbl[].sizeHintForRow):
    vtbl[].vtbl.sizeHintForRow = fcQTableView_vtable_callback_sizeHintForRow
  if not isNil(vtbl[].sizeHintForColumn):
    vtbl[].vtbl.sizeHintForColumn = fcQTableView_vtable_callback_sizeHintForColumn
  if not isNil(vtbl[].verticalScrollbarAction):
    vtbl[].vtbl.verticalScrollbarAction = fcQTableView_vtable_callback_verticalScrollbarAction
  if not isNil(vtbl[].horizontalScrollbarAction):
    vtbl[].vtbl.horizontalScrollbarAction = fcQTableView_vtable_callback_horizontalScrollbarAction
  if not isNil(vtbl[].isIndexHidden):
    vtbl[].vtbl.isIndexHidden = fcQTableView_vtable_callback_isIndexHidden
  if not isNil(vtbl[].selectionChanged):
    vtbl[].vtbl.selectionChanged = fcQTableView_vtable_callback_selectionChanged
  if not isNil(vtbl[].currentChanged):
    vtbl[].vtbl.currentChanged = fcQTableView_vtable_callback_currentChanged
  if not isNil(vtbl[].keyboardSearch):
    vtbl[].vtbl.keyboardSearch = fcQTableView_vtable_callback_keyboardSearch
  if not isNil(vtbl[].itemDelegateForIndex):
    vtbl[].vtbl.itemDelegateForIndex = fcQTableView_vtable_callback_itemDelegateForIndex
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQTableView_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = fcQTableView_vtable_callback_reset
  if not isNil(vtbl[].selectAll):
    vtbl[].vtbl.selectAll = fcQTableView_vtable_callback_selectAll
  if not isNil(vtbl[].dataChanged):
    vtbl[].vtbl.dataChanged = fcQTableView_vtable_callback_dataChanged
  if not isNil(vtbl[].rowsInserted):
    vtbl[].vtbl.rowsInserted = fcQTableView_vtable_callback_rowsInserted
  if not isNil(vtbl[].rowsAboutToBeRemoved):
    vtbl[].vtbl.rowsAboutToBeRemoved = fcQTableView_vtable_callback_rowsAboutToBeRemoved
  if not isNil(vtbl[].updateEditorData):
    vtbl[].vtbl.updateEditorData = fcQTableView_vtable_callback_updateEditorData
  if not isNil(vtbl[].updateEditorGeometries):
    vtbl[].vtbl.updateEditorGeometries = fcQTableView_vtable_callback_updateEditorGeometries
  if not isNil(vtbl[].verticalScrollbarValueChanged):
    vtbl[].vtbl.verticalScrollbarValueChanged = fcQTableView_vtable_callback_verticalScrollbarValueChanged
  if not isNil(vtbl[].horizontalScrollbarValueChanged):
    vtbl[].vtbl.horizontalScrollbarValueChanged = fcQTableView_vtable_callback_horizontalScrollbarValueChanged
  if not isNil(vtbl[].closeEditor):
    vtbl[].vtbl.closeEditor = fcQTableView_vtable_callback_closeEditor
  if not isNil(vtbl[].commitData):
    vtbl[].vtbl.commitData = fcQTableView_vtable_callback_commitData
  if not isNil(vtbl[].editorDestroyed):
    vtbl[].vtbl.editorDestroyed = fcQTableView_vtable_callback_editorDestroyed
  if not isNil(vtbl[].edit2):
    vtbl[].vtbl.edit2 = fcQTableView_vtable_callback_edit2
  if not isNil(vtbl[].selectionCommand):
    vtbl[].vtbl.selectionCommand = fcQTableView_vtable_callback_selectionCommand
  if not isNil(vtbl[].startDrag):
    vtbl[].vtbl.startDrag = fcQTableView_vtable_callback_startDrag
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQTableView_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQTableView_vtable_callback_event
  if not isNil(vtbl[].viewportEvent):
    vtbl[].vtbl.viewportEvent = fcQTableView_vtable_callback_viewportEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQTableView_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQTableView_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQTableView_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQTableView_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQTableView_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQTableView_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQTableView_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQTableView_vtable_callback_dropEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQTableView_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQTableView_vtable_callback_focusOutEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQTableView_vtable_callback_keyPressEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQTableView_vtable_callback_resizeEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQTableView_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQTableView_vtable_callback_eventFilter
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQTableView_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQTableView_vtable_callback_sizeHint
  if not isNil(vtbl[].setupViewport):
    vtbl[].vtbl.setupViewport = fcQTableView_vtable_callback_setupViewport
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQTableView_vtable_callback_wheelEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQTableView_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQTableView_vtable_callback_changeEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = fcQTableView_vtable_callback_initStyleOption
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQTableView_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQTableView_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQTableView_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQTableView_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQTableView_vtable_callback_paintEngine
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQTableView_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQTableView_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQTableView_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQTableView_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQTableView_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQTableView_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQTableView_vtable_callback_actionEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQTableView_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQTableView_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQTableView_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQTableView_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQTableView_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQTableView_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQTableView_vtable_callback_sharedPainter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQTableView_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQTableView_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQTableView_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQTableView_vtable_callback_disconnectNotify
  gen_qtableview_types.QTableView(h: fcQTableView_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQTableView_mvtbl = cQTableViewVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQTableView()[])](self.fcQTableView_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQTableView_method_callback_metaObject,
  metacast: fcQTableView_method_callback_metacast,
  metacall: fcQTableView_method_callback_metacall,
  setModel: fcQTableView_method_callback_setModel,
  setRootIndex: fcQTableView_method_callback_setRootIndex,
  setSelectionModel: fcQTableView_method_callback_setSelectionModel,
  doItemsLayout: fcQTableView_method_callback_doItemsLayout,
  visualRect: fcQTableView_method_callback_visualRect,
  scrollTo: fcQTableView_method_callback_scrollTo,
  indexAt: fcQTableView_method_callback_indexAt,
  scrollContentsBy: fcQTableView_method_callback_scrollContentsBy,
  initViewItemOption: fcQTableView_method_callback_initViewItemOption,
  paintEvent: fcQTableView_method_callback_paintEvent,
  timerEvent: fcQTableView_method_callback_timerEvent,
  horizontalOffset: fcQTableView_method_callback_horizontalOffset,
  verticalOffset: fcQTableView_method_callback_verticalOffset,
  moveCursor: fcQTableView_method_callback_moveCursor,
  setSelection: fcQTableView_method_callback_setSelection,
  visualRegionForSelection: fcQTableView_method_callback_visualRegionForSelection,
  selectedIndexes: fcQTableView_method_callback_selectedIndexes,
  updateGeometries: fcQTableView_method_callback_updateGeometries,
  viewportSizeHint: fcQTableView_method_callback_viewportSizeHint,
  sizeHintForRow: fcQTableView_method_callback_sizeHintForRow,
  sizeHintForColumn: fcQTableView_method_callback_sizeHintForColumn,
  verticalScrollbarAction: fcQTableView_method_callback_verticalScrollbarAction,
  horizontalScrollbarAction: fcQTableView_method_callback_horizontalScrollbarAction,
  isIndexHidden: fcQTableView_method_callback_isIndexHidden,
  selectionChanged: fcQTableView_method_callback_selectionChanged,
  currentChanged: fcQTableView_method_callback_currentChanged,
  keyboardSearch: fcQTableView_method_callback_keyboardSearch,
  itemDelegateForIndex: fcQTableView_method_callback_itemDelegateForIndex,
  inputMethodQuery: fcQTableView_method_callback_inputMethodQuery,
  reset: fcQTableView_method_callback_reset,
  selectAll: fcQTableView_method_callback_selectAll,
  dataChanged: fcQTableView_method_callback_dataChanged,
  rowsInserted: fcQTableView_method_callback_rowsInserted,
  rowsAboutToBeRemoved: fcQTableView_method_callback_rowsAboutToBeRemoved,
  updateEditorData: fcQTableView_method_callback_updateEditorData,
  updateEditorGeometries: fcQTableView_method_callback_updateEditorGeometries,
  verticalScrollbarValueChanged: fcQTableView_method_callback_verticalScrollbarValueChanged,
  horizontalScrollbarValueChanged: fcQTableView_method_callback_horizontalScrollbarValueChanged,
  closeEditor: fcQTableView_method_callback_closeEditor,
  commitData: fcQTableView_method_callback_commitData,
  editorDestroyed: fcQTableView_method_callback_editorDestroyed,
  edit2: fcQTableView_method_callback_edit2,
  selectionCommand: fcQTableView_method_callback_selectionCommand,
  startDrag: fcQTableView_method_callback_startDrag,
  focusNextPrevChild: fcQTableView_method_callback_focusNextPrevChild,
  event: fcQTableView_method_callback_event,
  viewportEvent: fcQTableView_method_callback_viewportEvent,
  mousePressEvent: fcQTableView_method_callback_mousePressEvent,
  mouseMoveEvent: fcQTableView_method_callback_mouseMoveEvent,
  mouseReleaseEvent: fcQTableView_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: fcQTableView_method_callback_mouseDoubleClickEvent,
  dragEnterEvent: fcQTableView_method_callback_dragEnterEvent,
  dragMoveEvent: fcQTableView_method_callback_dragMoveEvent,
  dragLeaveEvent: fcQTableView_method_callback_dragLeaveEvent,
  dropEvent: fcQTableView_method_callback_dropEvent,
  focusInEvent: fcQTableView_method_callback_focusInEvent,
  focusOutEvent: fcQTableView_method_callback_focusOutEvent,
  keyPressEvent: fcQTableView_method_callback_keyPressEvent,
  resizeEvent: fcQTableView_method_callback_resizeEvent,
  inputMethodEvent: fcQTableView_method_callback_inputMethodEvent,
  eventFilter: fcQTableView_method_callback_eventFilter,
  minimumSizeHint: fcQTableView_method_callback_minimumSizeHint,
  sizeHint: fcQTableView_method_callback_sizeHint,
  setupViewport: fcQTableView_method_callback_setupViewport,
  wheelEvent: fcQTableView_method_callback_wheelEvent,
  contextMenuEvent: fcQTableView_method_callback_contextMenuEvent,
  changeEvent: fcQTableView_method_callback_changeEvent,
  initStyleOption: fcQTableView_method_callback_initStyleOption,
  devType: fcQTableView_method_callback_devType,
  setVisible: fcQTableView_method_callback_setVisible,
  heightForWidth: fcQTableView_method_callback_heightForWidth,
  hasHeightForWidth: fcQTableView_method_callback_hasHeightForWidth,
  paintEngine: fcQTableView_method_callback_paintEngine,
  keyReleaseEvent: fcQTableView_method_callback_keyReleaseEvent,
  enterEvent: fcQTableView_method_callback_enterEvent,
  leaveEvent: fcQTableView_method_callback_leaveEvent,
  moveEvent: fcQTableView_method_callback_moveEvent,
  closeEvent: fcQTableView_method_callback_closeEvent,
  tabletEvent: fcQTableView_method_callback_tabletEvent,
  actionEvent: fcQTableView_method_callback_actionEvent,
  showEvent: fcQTableView_method_callback_showEvent,
  hideEvent: fcQTableView_method_callback_hideEvent,
  nativeEvent: fcQTableView_method_callback_nativeEvent,
  metric: fcQTableView_method_callback_metric,
  initPainter: fcQTableView_method_callback_initPainter,
  redirected: fcQTableView_method_callback_redirected,
  sharedPainter: fcQTableView_method_callback_sharedPainter,
  childEvent: fcQTableView_method_callback_childEvent,
  customEvent: fcQTableView_method_callback_customEvent,
  connectNotify: fcQTableView_method_callback_connectNotify,
  disconnectNotify: fcQTableView_method_callback_disconnectNotify,
)
proc create*(T: type gen_qtableview_types.QTableView,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQTableView) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTableView_new(addr(cQTableView_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qtableview_types.QTableView,
    inst: VirtualQTableView) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTableView_new2(addr(cQTableView_mvtbl), addr(inst[]))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qtableview_types.QTableView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTableView_staticMetaObject())
