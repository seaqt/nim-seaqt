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

type cQTreeView*{.exportc: "QTreeView", incompleteStruct.} = object

proc fcQTreeView_metaObject(self: pointer, ): pointer {.importc: "QTreeView_metaObject".}
proc fcQTreeView_metacast(self: pointer, param1: cstring): pointer {.importc: "QTreeView_metacast".}
proc fcQTreeView_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTreeView_metacall".}
proc fcQTreeView_tr(s: cstring): struct_miqt_string {.importc: "QTreeView_tr".}
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
proc fcQTreeView_sortByColumn(self: pointer, column: cint, order: cint): void {.importc: "QTreeView_sortByColumn".}
proc fcQTreeView_expandAll(self: pointer, ): void {.importc: "QTreeView_expandAll".}
proc fcQTreeView_expandRecursively(self: pointer, index: pointer): void {.importc: "QTreeView_expandRecursively".}
proc fcQTreeView_collapseAll(self: pointer, ): void {.importc: "QTreeView_collapseAll".}
proc fcQTreeView_expandToDepth(self: pointer, depth: cint): void {.importc: "QTreeView_expandToDepth".}
proc fcQTreeView_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTreeView_tr2".}
proc fcQTreeView_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTreeView_tr3".}
proc fcQTreeView_expandRecursively2(self: pointer, index: pointer, depth: cint): void {.importc: "QTreeView_expandRecursively2".}
type cQTreeViewVTable = object
  destructor*: proc(vtbl: ptr cQTreeViewVTable, self: ptr cQTreeView) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setModel*: proc(vtbl, self: pointer, model: pointer): void {.cdecl, raises: [], gcsafe.}
  setRootIndex*: proc(vtbl, self: pointer, index: pointer): void {.cdecl, raises: [], gcsafe.}
  setSelectionModel*: proc(vtbl, self: pointer, selectionModel: pointer): void {.cdecl, raises: [], gcsafe.}
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
  changeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
  itemDelegateForIndex*: proc(vtbl, self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
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
  initViewItemOption*: proc(vtbl, self: pointer, option: pointer): void {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(vtbl, self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
proc fcQTreeView_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QTreeView_virtualbase_metaObject".}
proc fcQTreeView_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QTreeView_virtualbase_metacast".}
proc fcQTreeView_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTreeView_virtualbase_metacall".}
proc fcQTreeView_virtualbase_setModel(self: pointer, model: pointer): void {.importc: "QTreeView_virtualbase_setModel".}
proc fcQTreeView_virtualbase_setRootIndex(self: pointer, index: pointer): void {.importc: "QTreeView_virtualbase_setRootIndex".}
proc fcQTreeView_virtualbase_setSelectionModel(self: pointer, selectionModel: pointer): void {.importc: "QTreeView_virtualbase_setSelectionModel".}
proc fcQTreeView_virtualbase_keyboardSearch(self: pointer, search: struct_miqt_string): void {.importc: "QTreeView_virtualbase_keyboardSearch".}
proc fcQTreeView_virtualbase_visualRect(self: pointer, index: pointer): pointer {.importc: "QTreeView_virtualbase_visualRect".}
proc fcQTreeView_virtualbase_scrollTo(self: pointer, index: pointer, hint: cint): void {.importc: "QTreeView_virtualbase_scrollTo".}
proc fcQTreeView_virtualbase_indexAt(self: pointer, p: pointer): pointer {.importc: "QTreeView_virtualbase_indexAt".}
proc fcQTreeView_virtualbase_doItemsLayout(self: pointer, ): void {.importc: "QTreeView_virtualbase_doItemsLayout".}
proc fcQTreeView_virtualbase_reset(self: pointer, ): void {.importc: "QTreeView_virtualbase_reset".}
proc fcQTreeView_virtualbase_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.importc: "QTreeView_virtualbase_dataChanged".}
proc fcQTreeView_virtualbase_selectAll(self: pointer, ): void {.importc: "QTreeView_virtualbase_selectAll".}
proc fcQTreeView_virtualbase_verticalScrollbarValueChanged(self: pointer, value: cint): void {.importc: "QTreeView_virtualbase_verticalScrollbarValueChanged".}
proc fcQTreeView_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.importc: "QTreeView_virtualbase_scrollContentsBy".}
proc fcQTreeView_virtualbase_rowsInserted(self: pointer, parent: pointer, start: cint, endVal: cint): void {.importc: "QTreeView_virtualbase_rowsInserted".}
proc fcQTreeView_virtualbase_rowsAboutToBeRemoved(self: pointer, parent: pointer, start: cint, endVal: cint): void {.importc: "QTreeView_virtualbase_rowsAboutToBeRemoved".}
proc fcQTreeView_virtualbase_moveCursor(self: pointer, cursorAction: cint, modifiers: cint): pointer {.importc: "QTreeView_virtualbase_moveCursor".}
proc fcQTreeView_virtualbase_horizontalOffset(self: pointer, ): cint {.importc: "QTreeView_virtualbase_horizontalOffset".}
proc fcQTreeView_virtualbase_verticalOffset(self: pointer, ): cint {.importc: "QTreeView_virtualbase_verticalOffset".}
proc fcQTreeView_virtualbase_setSelection(self: pointer, rect: pointer, command: cint): void {.importc: "QTreeView_virtualbase_setSelection".}
proc fcQTreeView_virtualbase_visualRegionForSelection(self: pointer, selection: pointer): pointer {.importc: "QTreeView_virtualbase_visualRegionForSelection".}
proc fcQTreeView_virtualbase_selectedIndexes(self: pointer, ): struct_miqt_array {.importc: "QTreeView_virtualbase_selectedIndexes".}
proc fcQTreeView_virtualbase_changeEvent(self: pointer, event: pointer): void {.importc: "QTreeView_virtualbase_changeEvent".}
proc fcQTreeView_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QTreeView_virtualbase_timerEvent".}
proc fcQTreeView_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QTreeView_virtualbase_paintEvent".}
proc fcQTreeView_virtualbase_drawRow(self: pointer, painter: pointer, options: pointer, index: pointer): void {.importc: "QTreeView_virtualbase_drawRow".}
proc fcQTreeView_virtualbase_drawBranches(self: pointer, painter: pointer, rect: pointer, index: pointer): void {.importc: "QTreeView_virtualbase_drawBranches".}
proc fcQTreeView_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QTreeView_virtualbase_mousePressEvent".}
proc fcQTreeView_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QTreeView_virtualbase_mouseReleaseEvent".}
proc fcQTreeView_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QTreeView_virtualbase_mouseDoubleClickEvent".}
proc fcQTreeView_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QTreeView_virtualbase_mouseMoveEvent".}
proc fcQTreeView_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QTreeView_virtualbase_keyPressEvent".}
proc fcQTreeView_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QTreeView_virtualbase_dragMoveEvent".}
proc fcQTreeView_virtualbase_viewportEvent(self: pointer, event: pointer): bool {.importc: "QTreeView_virtualbase_viewportEvent".}
proc fcQTreeView_virtualbase_updateGeometries(self: pointer, ): void {.importc: "QTreeView_virtualbase_updateGeometries".}
proc fcQTreeView_virtualbase_viewportSizeHint(self: pointer, ): pointer {.importc: "QTreeView_virtualbase_viewportSizeHint".}
proc fcQTreeView_virtualbase_sizeHintForColumn(self: pointer, column: cint): cint {.importc: "QTreeView_virtualbase_sizeHintForColumn".}
proc fcQTreeView_virtualbase_horizontalScrollbarAction(self: pointer, action: cint): void {.importc: "QTreeView_virtualbase_horizontalScrollbarAction".}
proc fcQTreeView_virtualbase_isIndexHidden(self: pointer, index: pointer): bool {.importc: "QTreeView_virtualbase_isIndexHidden".}
proc fcQTreeView_virtualbase_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void {.importc: "QTreeView_virtualbase_selectionChanged".}
proc fcQTreeView_virtualbase_currentChanged(self: pointer, current: pointer, previous: pointer): void {.importc: "QTreeView_virtualbase_currentChanged".}
proc fcQTreeView_virtualbase_sizeHintForRow(self: pointer, row: cint): cint {.importc: "QTreeView_virtualbase_sizeHintForRow".}
proc fcQTreeView_virtualbase_itemDelegateForIndex(self: pointer, index: pointer): pointer {.importc: "QTreeView_virtualbase_itemDelegateForIndex".}
proc fcQTreeView_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QTreeView_virtualbase_inputMethodQuery".}
proc fcQTreeView_virtualbase_updateEditorData(self: pointer, ): void {.importc: "QTreeView_virtualbase_updateEditorData".}
proc fcQTreeView_virtualbase_updateEditorGeometries(self: pointer, ): void {.importc: "QTreeView_virtualbase_updateEditorGeometries".}
proc fcQTreeView_virtualbase_verticalScrollbarAction(self: pointer, action: cint): void {.importc: "QTreeView_virtualbase_verticalScrollbarAction".}
proc fcQTreeView_virtualbase_horizontalScrollbarValueChanged(self: pointer, value: cint): void {.importc: "QTreeView_virtualbase_horizontalScrollbarValueChanged".}
proc fcQTreeView_virtualbase_closeEditor(self: pointer, editor: pointer, hint: cint): void {.importc: "QTreeView_virtualbase_closeEditor".}
proc fcQTreeView_virtualbase_commitData(self: pointer, editor: pointer): void {.importc: "QTreeView_virtualbase_commitData".}
proc fcQTreeView_virtualbase_editorDestroyed(self: pointer, editor: pointer): void {.importc: "QTreeView_virtualbase_editorDestroyed".}
proc fcQTreeView_virtualbase_edit2(self: pointer, index: pointer, trigger: cint, event: pointer): bool {.importc: "QTreeView_virtualbase_edit2".}
proc fcQTreeView_virtualbase_selectionCommand(self: pointer, index: pointer, event: pointer): cint {.importc: "QTreeView_virtualbase_selectionCommand".}
proc fcQTreeView_virtualbase_startDrag(self: pointer, supportedActions: cint): void {.importc: "QTreeView_virtualbase_startDrag".}
proc fcQTreeView_virtualbase_initViewItemOption(self: pointer, option: pointer): void {.importc: "QTreeView_virtualbase_initViewItemOption".}
proc fcQTreeView_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QTreeView_virtualbase_focusNextPrevChild".}
proc fcQTreeView_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QTreeView_virtualbase_event".}
proc fcQTreeView_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QTreeView_virtualbase_dragEnterEvent".}
proc fcQTreeView_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QTreeView_virtualbase_dragLeaveEvent".}
proc fcQTreeView_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QTreeView_virtualbase_dropEvent".}
proc fcQTreeView_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QTreeView_virtualbase_focusInEvent".}
proc fcQTreeView_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QTreeView_virtualbase_focusOutEvent".}
proc fcQTreeView_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QTreeView_virtualbase_resizeEvent".}
proc fcQTreeView_virtualbase_inputMethodEvent(self: pointer, event: pointer): void {.importc: "QTreeView_virtualbase_inputMethodEvent".}
proc fcQTreeView_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool {.importc: "QTreeView_virtualbase_eventFilter".}
proc fcQTreeView_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QTreeView_virtualbase_minimumSizeHint".}
proc fcQTreeView_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QTreeView_virtualbase_sizeHint".}
proc fcQTreeView_virtualbase_setupViewport(self: pointer, viewport: pointer): void {.importc: "QTreeView_virtualbase_setupViewport".}
proc fcQTreeView_virtualbase_wheelEvent(self: pointer, param1: pointer): void {.importc: "QTreeView_virtualbase_wheelEvent".}
proc fcQTreeView_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void {.importc: "QTreeView_virtualbase_contextMenuEvent".}
proc fcQTreeView_virtualbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QTreeView_virtualbase_initStyleOption".}
proc fcQTreeView_virtualbase_devType(self: pointer, ): cint {.importc: "QTreeView_virtualbase_devType".}
proc fcQTreeView_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QTreeView_virtualbase_setVisible".}
proc fcQTreeView_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QTreeView_virtualbase_heightForWidth".}
proc fcQTreeView_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QTreeView_virtualbase_hasHeightForWidth".}
proc fcQTreeView_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QTreeView_virtualbase_paintEngine".}
proc fcQTreeView_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QTreeView_virtualbase_keyReleaseEvent".}
proc fcQTreeView_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QTreeView_virtualbase_enterEvent".}
proc fcQTreeView_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QTreeView_virtualbase_leaveEvent".}
proc fcQTreeView_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QTreeView_virtualbase_moveEvent".}
proc fcQTreeView_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QTreeView_virtualbase_closeEvent".}
proc fcQTreeView_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QTreeView_virtualbase_tabletEvent".}
proc fcQTreeView_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QTreeView_virtualbase_actionEvent".}
proc fcQTreeView_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QTreeView_virtualbase_showEvent".}
proc fcQTreeView_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QTreeView_virtualbase_hideEvent".}
proc fcQTreeView_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QTreeView_virtualbase_nativeEvent".}
proc fcQTreeView_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QTreeView_virtualbase_metric".}
proc fcQTreeView_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QTreeView_virtualbase_initPainter".}
proc fcQTreeView_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QTreeView_virtualbase_redirected".}
proc fcQTreeView_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QTreeView_virtualbase_sharedPainter".}
proc fcQTreeView_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QTreeView_virtualbase_childEvent".}
proc fcQTreeView_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QTreeView_virtualbase_customEvent".}
proc fcQTreeView_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QTreeView_virtualbase_connectNotify".}
proc fcQTreeView_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QTreeView_virtualbase_disconnectNotify".}
proc fcQTreeView_new(vtbl: pointer, parent: pointer): ptr cQTreeView {.importc: "QTreeView_new".}
proc fcQTreeView_new2(vtbl: pointer, ): ptr cQTreeView {.importc: "QTreeView_new2".}
proc fcQTreeView_staticMetaObject(): pointer {.importc: "QTreeView_staticMetaObject".}
proc fcQTreeView_delete(self: pointer) {.importc: "QTreeView_delete".}

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
proc miqt_exec_callback_cQTreeView_expanded(slot: int, index: pointer) {.exportc: "miqt_exec_callback_QTreeView_expanded".} =
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
proc miqt_exec_callback_cQTreeView_collapsed(slot: int, index: pointer) {.exportc: "miqt_exec_callback_QTreeView_collapsed".} =
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

proc sortByColumn*(self: gen_qtreeview_types.QTreeView, column: cint, order: cint): void =
  fcQTreeView_sortByColumn(self.h, column, cint(order))

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

proc expandRecursively*(self: gen_qtreeview_types.QTreeView, index: gen_qabstractitemmodel_types.QModelIndex, depth: cint): void =
  fcQTreeView_expandRecursively2(self.h, index.h, depth)

type QTreeViewmetaObjectProc* = proc(self: QTreeView): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QTreeViewmetacastProc* = proc(self: QTreeView, param1: cstring): pointer {.raises: [], gcsafe.}
type QTreeViewmetacallProc* = proc(self: QTreeView, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QTreeViewsetModelProc* = proc(self: QTreeView, model: gen_qabstractitemmodel_types.QAbstractItemModel): void {.raises: [], gcsafe.}
type QTreeViewsetRootIndexProc* = proc(self: QTreeView, index: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QTreeViewsetSelectionModelProc* = proc(self: QTreeView, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void {.raises: [], gcsafe.}
type QTreeViewkeyboardSearchProc* = proc(self: QTreeView, search: string): void {.raises: [], gcsafe.}
type QTreeViewvisualRectProc* = proc(self: QTreeView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect {.raises: [], gcsafe.}
type QTreeViewscrollToProc* = proc(self: QTreeView, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void {.raises: [], gcsafe.}
type QTreeViewindexAtProc* = proc(self: QTreeView, p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QTreeViewdoItemsLayoutProc* = proc(self: QTreeView): void {.raises: [], gcsafe.}
type QTreeViewresetProc* = proc(self: QTreeView): void {.raises: [], gcsafe.}
type QTreeViewdataChangedProc* = proc(self: QTreeView, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: seq[cint]): void {.raises: [], gcsafe.}
type QTreeViewselectAllProc* = proc(self: QTreeView): void {.raises: [], gcsafe.}
type QTreeViewverticalScrollbarValueChangedProc* = proc(self: QTreeView, value: cint): void {.raises: [], gcsafe.}
type QTreeViewscrollContentsByProc* = proc(self: QTreeView, dx: cint, dy: cint): void {.raises: [], gcsafe.}
type QTreeViewrowsInsertedProc* = proc(self: QTreeView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void {.raises: [], gcsafe.}
type QTreeViewrowsAboutToBeRemovedProc* = proc(self: QTreeView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void {.raises: [], gcsafe.}
type QTreeViewmoveCursorProc* = proc(self: QTreeView, cursorAction: cint, modifiers: cint): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QTreeViewhorizontalOffsetProc* = proc(self: QTreeView): cint {.raises: [], gcsafe.}
type QTreeViewverticalOffsetProc* = proc(self: QTreeView): cint {.raises: [], gcsafe.}
type QTreeViewsetSelectionProc* = proc(self: QTreeView, rect: gen_qrect_types.QRect, command: cint): void {.raises: [], gcsafe.}
type QTreeViewvisualRegionForSelectionProc* = proc(self: QTreeView, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion {.raises: [], gcsafe.}
type QTreeViewselectedIndexesProc* = proc(self: QTreeView): seq[gen_qabstractitemmodel_types.QModelIndex] {.raises: [], gcsafe.}
type QTreeViewchangeEventProc* = proc(self: QTreeView, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTreeViewtimerEventProc* = proc(self: QTreeView, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QTreeViewpaintEventProc* = proc(self: QTreeView, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QTreeViewdrawRowProc* = proc(self: QTreeView, painter: gen_qpainter_types.QPainter, options: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QTreeViewdrawBranchesProc* = proc(self: QTreeView, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, index: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QTreeViewmousePressEventProc* = proc(self: QTreeView, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QTreeViewmouseReleaseEventProc* = proc(self: QTreeView, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QTreeViewmouseDoubleClickEventProc* = proc(self: QTreeView, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QTreeViewmouseMoveEventProc* = proc(self: QTreeView, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QTreeViewkeyPressEventProc* = proc(self: QTreeView, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QTreeViewdragMoveEventProc* = proc(self: QTreeView, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QTreeViewviewportEventProc* = proc(self: QTreeView, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTreeViewupdateGeometriesProc* = proc(self: QTreeView): void {.raises: [], gcsafe.}
type QTreeViewviewportSizeHintProc* = proc(self: QTreeView): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QTreeViewsizeHintForColumnProc* = proc(self: QTreeView, column: cint): cint {.raises: [], gcsafe.}
type QTreeViewhorizontalScrollbarActionProc* = proc(self: QTreeView, action: cint): void {.raises: [], gcsafe.}
type QTreeViewisIndexHiddenProc* = proc(self: QTreeView, index: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QTreeViewselectionChangedProc* = proc(self: QTreeView, selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void {.raises: [], gcsafe.}
type QTreeViewcurrentChangedProc* = proc(self: QTreeView, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QTreeViewsizeHintForRowProc* = proc(self: QTreeView, row: cint): cint {.raises: [], gcsafe.}
type QTreeViewitemDelegateForIndexProc* = proc(self: QTreeView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemdelegate_types.QAbstractItemDelegate {.raises: [], gcsafe.}
type QTreeViewinputMethodQueryProc* = proc(self: QTreeView, query: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QTreeViewupdateEditorDataProc* = proc(self: QTreeView): void {.raises: [], gcsafe.}
type QTreeViewupdateEditorGeometriesProc* = proc(self: QTreeView): void {.raises: [], gcsafe.}
type QTreeViewverticalScrollbarActionProc* = proc(self: QTreeView, action: cint): void {.raises: [], gcsafe.}
type QTreeViewhorizontalScrollbarValueChangedProc* = proc(self: QTreeView, value: cint): void {.raises: [], gcsafe.}
type QTreeViewcloseEditorProc* = proc(self: QTreeView, editor: gen_qwidget_types.QWidget, hint: cint): void {.raises: [], gcsafe.}
type QTreeViewcommitDataProc* = proc(self: QTreeView, editor: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QTreeVieweditorDestroyedProc* = proc(self: QTreeView, editor: gen_qobject_types.QObject): void {.raises: [], gcsafe.}
type QTreeViewedit2Proc* = proc(self: QTreeView, index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTreeViewselectionCommandProc* = proc(self: QTreeView, index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint {.raises: [], gcsafe.}
type QTreeViewstartDragProc* = proc(self: QTreeView, supportedActions: cint): void {.raises: [], gcsafe.}
type QTreeViewinitViewItemOptionProc* = proc(self: QTreeView, option: gen_qstyleoption_types.QStyleOptionViewItem): void {.raises: [], gcsafe.}
type QTreeViewfocusNextPrevChildProc* = proc(self: QTreeView, next: bool): bool {.raises: [], gcsafe.}
type QTreeVieweventProc* = proc(self: QTreeView, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTreeViewdragEnterEventProc* = proc(self: QTreeView, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QTreeViewdragLeaveEventProc* = proc(self: QTreeView, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QTreeViewdropEventProc* = proc(self: QTreeView, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QTreeViewfocusInEventProc* = proc(self: QTreeView, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QTreeViewfocusOutEventProc* = proc(self: QTreeView, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QTreeViewresizeEventProc* = proc(self: QTreeView, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QTreeViewinputMethodEventProc* = proc(self: QTreeView, event: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QTreeVieweventFilterProc* = proc(self: QTreeView, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTreeViewminimumSizeHintProc* = proc(self: QTreeView): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QTreeViewsizeHintProc* = proc(self: QTreeView): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QTreeViewsetupViewportProc* = proc(self: QTreeView, viewport: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QTreeViewwheelEventProc* = proc(self: QTreeView, param1: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QTreeViewcontextMenuEventProc* = proc(self: QTreeView, param1: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QTreeViewinitStyleOptionProc* = proc(self: QTreeView, option: gen_qstyleoption_types.QStyleOptionFrame): void {.raises: [], gcsafe.}
type QTreeViewdevTypeProc* = proc(self: QTreeView): cint {.raises: [], gcsafe.}
type QTreeViewsetVisibleProc* = proc(self: QTreeView, visible: bool): void {.raises: [], gcsafe.}
type QTreeViewheightForWidthProc* = proc(self: QTreeView, param1: cint): cint {.raises: [], gcsafe.}
type QTreeViewhasHeightForWidthProc* = proc(self: QTreeView): bool {.raises: [], gcsafe.}
type QTreeViewpaintEngineProc* = proc(self: QTreeView): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QTreeViewkeyReleaseEventProc* = proc(self: QTreeView, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QTreeViewenterEventProc* = proc(self: QTreeView, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QTreeViewleaveEventProc* = proc(self: QTreeView, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTreeViewmoveEventProc* = proc(self: QTreeView, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QTreeViewcloseEventProc* = proc(self: QTreeView, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QTreeViewtabletEventProc* = proc(self: QTreeView, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QTreeViewactionEventProc* = proc(self: QTreeView, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QTreeViewshowEventProc* = proc(self: QTreeView, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QTreeViewhideEventProc* = proc(self: QTreeView, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QTreeViewnativeEventProc* = proc(self: QTreeView, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QTreeViewmetricProc* = proc(self: QTreeView, param1: cint): cint {.raises: [], gcsafe.}
type QTreeViewinitPainterProc* = proc(self: QTreeView, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QTreeViewredirectedProc* = proc(self: QTreeView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QTreeViewsharedPainterProc* = proc(self: QTreeView): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QTreeViewchildEventProc* = proc(self: QTreeView, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QTreeViewcustomEventProc* = proc(self: QTreeView, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTreeViewconnectNotifyProc* = proc(self: QTreeView, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTreeViewdisconnectNotifyProc* = proc(self: QTreeView, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTreeViewVTable* = object
  vtbl: cQTreeViewVTable
  metaObject*: QTreeViewmetaObjectProc
  metacast*: QTreeViewmetacastProc
  metacall*: QTreeViewmetacallProc
  setModel*: QTreeViewsetModelProc
  setRootIndex*: QTreeViewsetRootIndexProc
  setSelectionModel*: QTreeViewsetSelectionModelProc
  keyboardSearch*: QTreeViewkeyboardSearchProc
  visualRect*: QTreeViewvisualRectProc
  scrollTo*: QTreeViewscrollToProc
  indexAt*: QTreeViewindexAtProc
  doItemsLayout*: QTreeViewdoItemsLayoutProc
  reset*: QTreeViewresetProc
  dataChanged*: QTreeViewdataChangedProc
  selectAll*: QTreeViewselectAllProc
  verticalScrollbarValueChanged*: QTreeViewverticalScrollbarValueChangedProc
  scrollContentsBy*: QTreeViewscrollContentsByProc
  rowsInserted*: QTreeViewrowsInsertedProc
  rowsAboutToBeRemoved*: QTreeViewrowsAboutToBeRemovedProc
  moveCursor*: QTreeViewmoveCursorProc
  horizontalOffset*: QTreeViewhorizontalOffsetProc
  verticalOffset*: QTreeViewverticalOffsetProc
  setSelection*: QTreeViewsetSelectionProc
  visualRegionForSelection*: QTreeViewvisualRegionForSelectionProc
  selectedIndexes*: QTreeViewselectedIndexesProc
  changeEvent*: QTreeViewchangeEventProc
  timerEvent*: QTreeViewtimerEventProc
  paintEvent*: QTreeViewpaintEventProc
  drawRow*: QTreeViewdrawRowProc
  drawBranches*: QTreeViewdrawBranchesProc
  mousePressEvent*: QTreeViewmousePressEventProc
  mouseReleaseEvent*: QTreeViewmouseReleaseEventProc
  mouseDoubleClickEvent*: QTreeViewmouseDoubleClickEventProc
  mouseMoveEvent*: QTreeViewmouseMoveEventProc
  keyPressEvent*: QTreeViewkeyPressEventProc
  dragMoveEvent*: QTreeViewdragMoveEventProc
  viewportEvent*: QTreeViewviewportEventProc
  updateGeometries*: QTreeViewupdateGeometriesProc
  viewportSizeHint*: QTreeViewviewportSizeHintProc
  sizeHintForColumn*: QTreeViewsizeHintForColumnProc
  horizontalScrollbarAction*: QTreeViewhorizontalScrollbarActionProc
  isIndexHidden*: QTreeViewisIndexHiddenProc
  selectionChanged*: QTreeViewselectionChangedProc
  currentChanged*: QTreeViewcurrentChangedProc
  sizeHintForRow*: QTreeViewsizeHintForRowProc
  itemDelegateForIndex*: QTreeViewitemDelegateForIndexProc
  inputMethodQuery*: QTreeViewinputMethodQueryProc
  updateEditorData*: QTreeViewupdateEditorDataProc
  updateEditorGeometries*: QTreeViewupdateEditorGeometriesProc
  verticalScrollbarAction*: QTreeViewverticalScrollbarActionProc
  horizontalScrollbarValueChanged*: QTreeViewhorizontalScrollbarValueChangedProc
  closeEditor*: QTreeViewcloseEditorProc
  commitData*: QTreeViewcommitDataProc
  editorDestroyed*: QTreeVieweditorDestroyedProc
  edit2*: QTreeViewedit2Proc
  selectionCommand*: QTreeViewselectionCommandProc
  startDrag*: QTreeViewstartDragProc
  initViewItemOption*: QTreeViewinitViewItemOptionProc
  focusNextPrevChild*: QTreeViewfocusNextPrevChildProc
  event*: QTreeVieweventProc
  dragEnterEvent*: QTreeViewdragEnterEventProc
  dragLeaveEvent*: QTreeViewdragLeaveEventProc
  dropEvent*: QTreeViewdropEventProc
  focusInEvent*: QTreeViewfocusInEventProc
  focusOutEvent*: QTreeViewfocusOutEventProc
  resizeEvent*: QTreeViewresizeEventProc
  inputMethodEvent*: QTreeViewinputMethodEventProc
  eventFilter*: QTreeVieweventFilterProc
  minimumSizeHint*: QTreeViewminimumSizeHintProc
  sizeHint*: QTreeViewsizeHintProc
  setupViewport*: QTreeViewsetupViewportProc
  wheelEvent*: QTreeViewwheelEventProc
  contextMenuEvent*: QTreeViewcontextMenuEventProc
  initStyleOption*: QTreeViewinitStyleOptionProc
  devType*: QTreeViewdevTypeProc
  setVisible*: QTreeViewsetVisibleProc
  heightForWidth*: QTreeViewheightForWidthProc
  hasHeightForWidth*: QTreeViewhasHeightForWidthProc
  paintEngine*: QTreeViewpaintEngineProc
  keyReleaseEvent*: QTreeViewkeyReleaseEventProc
  enterEvent*: QTreeViewenterEventProc
  leaveEvent*: QTreeViewleaveEventProc
  moveEvent*: QTreeViewmoveEventProc
  closeEvent*: QTreeViewcloseEventProc
  tabletEvent*: QTreeViewtabletEventProc
  actionEvent*: QTreeViewactionEventProc
  showEvent*: QTreeViewshowEventProc
  hideEvent*: QTreeViewhideEventProc
  nativeEvent*: QTreeViewnativeEventProc
  metric*: QTreeViewmetricProc
  initPainter*: QTreeViewinitPainterProc
  redirected*: QTreeViewredirectedProc
  sharedPainter*: QTreeViewsharedPainterProc
  childEvent*: QTreeViewchildEventProc
  customEvent*: QTreeViewcustomEventProc
  connectNotify*: QTreeViewconnectNotifyProc
  disconnectNotify*: QTreeViewdisconnectNotifyProc
proc QTreeViewmetaObject*(self: gen_qtreeview_types.QTreeView, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTreeView_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQTreeView_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QTreeViewmetacast*(self: gen_qtreeview_types.QTreeView, param1: cstring): pointer =
  fcQTreeView_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQTreeView_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QTreeViewmetacall*(self: gen_qtreeview_types.QTreeView, param1: cint, param2: cint, param3: pointer): cint =
  fcQTreeView_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQTreeView_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTreeViewsetModel*(self: gen_qtreeview_types.QTreeView, model: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQTreeView_virtualbase_setModel(self.h, model.h)

proc miqt_exec_callback_cQTreeView_setModel(vtbl: pointer, self: pointer, model: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model)
  vtbl[].setModel(self, slotval1)

proc QTreeViewsetRootIndex*(self: gen_qtreeview_types.QTreeView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQTreeView_virtualbase_setRootIndex(self.h, index.h)

proc miqt_exec_callback_cQTreeView_setRootIndex(vtbl: pointer, self: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  vtbl[].setRootIndex(self, slotval1)

proc QTreeViewsetSelectionModel*(self: gen_qtreeview_types.QTreeView, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void =
  fcQTreeView_virtualbase_setSelectionModel(self.h, selectionModel.h)

proc miqt_exec_callback_cQTreeView_setSelectionModel(vtbl: pointer, self: pointer, selectionModel: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelectionModel(h: selectionModel)
  vtbl[].setSelectionModel(self, slotval1)

proc QTreeViewkeyboardSearch*(self: gen_qtreeview_types.QTreeView, search: string): void =
  fcQTreeView_virtualbase_keyboardSearch(self.h, struct_miqt_string(data: search, len: csize_t(len(search))))

proc miqt_exec_callback_cQTreeView_keyboardSearch(vtbl: pointer, self: pointer, search: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let vsearch_ms = search
  let vsearchx_ret = string.fromBytes(toOpenArrayByte(vsearch_ms.data, 0, int(vsearch_ms.len)-1))
  c_free(vsearch_ms.data)
  let slotval1 = vsearchx_ret
  vtbl[].keyboardSearch(self, slotval1)

proc QTreeViewvisualRect*(self: gen_qtreeview_types.QTreeView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQTreeView_virtualbase_visualRect(self.h, index.h))

proc miqt_exec_callback_cQTreeView_visualRect(vtbl: pointer, self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].visualRect(self, slotval1)
  virtualReturn.h

proc QTreeViewscrollTo*(self: gen_qtreeview_types.QTreeView, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void =
  fcQTreeView_virtualbase_scrollTo(self.h, index.h, cint(hint))

proc miqt_exec_callback_cQTreeView_scrollTo(vtbl: pointer, self: pointer, index: pointer, hint: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let slotval2 = cint(hint)
  vtbl[].scrollTo(self, slotval1, slotval2)

proc QTreeViewindexAt*(self: gen_qtreeview_types.QTreeView, p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTreeView_virtualbase_indexAt(self.h, p.h))

proc miqt_exec_callback_cQTreeView_indexAt(vtbl: pointer, self: pointer, p: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: p)
  var virtualReturn = vtbl[].indexAt(self, slotval1)
  virtualReturn.h

proc QTreeViewdoItemsLayout*(self: gen_qtreeview_types.QTreeView, ): void =
  fcQTreeView_virtualbase_doItemsLayout(self.h)

proc miqt_exec_callback_cQTreeView_doItemsLayout(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  vtbl[].doItemsLayout(self)

proc QTreeViewreset*(self: gen_qtreeview_types.QTreeView, ): void =
  fcQTreeView_virtualbase_reset(self.h)

proc miqt_exec_callback_cQTreeView_reset(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  vtbl[].reset(self)

proc QTreeViewdataChanged*(self: gen_qtreeview_types.QTreeView, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: seq[cint]): void =
  var roles_CArray = newSeq[cint](len(roles))
  for i in 0..<len(roles):
    roles_CArray[i] = roles[i]

  fcQTreeView_virtualbase_dataChanged(self.h, topLeft.h, bottomRight.h, struct_miqt_array(len: csize_t(len(roles)), data: if len(roles) == 0: nil else: addr(roles_CArray[0])))

proc miqt_exec_callback_cQTreeView_dataChanged(vtbl: pointer, self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: topLeft)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: bottomRight)
  var vroles_ma = roles
  var vrolesx_ret = newSeq[cint](int(vroles_ma.len))
  let vroles_outCast = cast[ptr UncheckedArray[cint]](vroles_ma.data)
  for i in 0 ..< vroles_ma.len:
    vrolesx_ret[i] = vroles_outCast[i]
  let slotval3 = vrolesx_ret
  vtbl[].dataChanged(self, slotval1, slotval2, slotval3)

proc QTreeViewselectAll*(self: gen_qtreeview_types.QTreeView, ): void =
  fcQTreeView_virtualbase_selectAll(self.h)

proc miqt_exec_callback_cQTreeView_selectAll(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  vtbl[].selectAll(self)

proc QTreeViewverticalScrollbarValueChanged*(self: gen_qtreeview_types.QTreeView, value: cint): void =
  fcQTreeView_virtualbase_verticalScrollbarValueChanged(self.h, value)

proc miqt_exec_callback_cQTreeView_verticalScrollbarValueChanged(vtbl: pointer, self: pointer, value: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = value
  vtbl[].verticalScrollbarValueChanged(self, slotval1)

proc QTreeViewscrollContentsBy*(self: gen_qtreeview_types.QTreeView, dx: cint, dy: cint): void =
  fcQTreeView_virtualbase_scrollContentsBy(self.h, dx, dy)

proc miqt_exec_callback_cQTreeView_scrollContentsBy(vtbl: pointer, self: pointer, dx: cint, dy: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = dx
  let slotval2 = dy
  vtbl[].scrollContentsBy(self, slotval1, slotval2)

proc QTreeViewrowsInserted*(self: gen_qtreeview_types.QTreeView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fcQTreeView_virtualbase_rowsInserted(self.h, parent.h, start, endVal)

proc miqt_exec_callback_cQTreeView_rowsInserted(vtbl: pointer, self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  let slotval2 = start
  let slotval3 = endVal
  vtbl[].rowsInserted(self, slotval1, slotval2, slotval3)

proc QTreeViewrowsAboutToBeRemoved*(self: gen_qtreeview_types.QTreeView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fcQTreeView_virtualbase_rowsAboutToBeRemoved(self.h, parent.h, start, endVal)

proc miqt_exec_callback_cQTreeView_rowsAboutToBeRemoved(vtbl: pointer, self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  let slotval2 = start
  let slotval3 = endVal
  vtbl[].rowsAboutToBeRemoved(self, slotval1, slotval2, slotval3)

proc QTreeViewmoveCursor*(self: gen_qtreeview_types.QTreeView, cursorAction: cint, modifiers: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQTreeView_virtualbase_moveCursor(self.h, cint(cursorAction), cint(modifiers)))

proc miqt_exec_callback_cQTreeView_moveCursor(vtbl: pointer, self: pointer, cursorAction: cint, modifiers: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = cint(cursorAction)
  let slotval2 = cint(modifiers)
  var virtualReturn = vtbl[].moveCursor(self, slotval1, slotval2)
  virtualReturn.h

proc QTreeViewhorizontalOffset*(self: gen_qtreeview_types.QTreeView, ): cint =
  fcQTreeView_virtualbase_horizontalOffset(self.h)

proc miqt_exec_callback_cQTreeView_horizontalOffset(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  var virtualReturn = vtbl[].horizontalOffset(self)
  virtualReturn

proc QTreeViewverticalOffset*(self: gen_qtreeview_types.QTreeView, ): cint =
  fcQTreeView_virtualbase_verticalOffset(self.h)

proc miqt_exec_callback_cQTreeView_verticalOffset(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  var virtualReturn = vtbl[].verticalOffset(self)
  virtualReturn

proc QTreeViewsetSelection*(self: gen_qtreeview_types.QTreeView, rect: gen_qrect_types.QRect, command: cint): void =
  fcQTreeView_virtualbase_setSelection(self.h, rect.h, cint(command))

proc miqt_exec_callback_cQTreeView_setSelection(vtbl: pointer, self: pointer, rect: pointer, command: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qrect_types.QRect(h: rect)
  let slotval2 = cint(command)
  vtbl[].setSelection(self, slotval1, slotval2)

proc QTreeViewvisualRegionForSelection*(self: gen_qtreeview_types.QTreeView, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQTreeView_virtualbase_visualRegionForSelection(self.h, selection.h))

proc miqt_exec_callback_cQTreeView_visualRegionForSelection(vtbl: pointer, self: pointer, selection: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection)
  var virtualReturn = vtbl[].visualRegionForSelection(self, slotval1)
  virtualReturn.h

proc QTreeViewselectedIndexes*(self: gen_qtreeview_types.QTreeView, ): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQTreeView_virtualbase_selectedIndexes(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  vx_ret

proc miqt_exec_callback_cQTreeView_selectedIndexes(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  var virtualReturn = vtbl[].selectedIndexes(self)
  var virtualReturn_CArray = newSeq[pointer](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QTreeViewchangeEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qcoreevent_types.QEvent): void =
  fcQTreeView_virtualbase_changeEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeView_changeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].changeEvent(self, slotval1)

proc QTreeViewtimerEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQTreeView_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeView_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QTreeViewpaintEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qevent_types.QPaintEvent): void =
  fcQTreeView_virtualbase_paintEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeView_paintEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)
  vtbl[].paintEvent(self, slotval1)

proc QTreeViewdrawRow*(self: gen_qtreeview_types.QTreeView, painter: gen_qpainter_types.QPainter, options: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQTreeView_virtualbase_drawRow(self.h, painter.h, options.h, index.h)

proc miqt_exec_callback_cQTreeView_drawRow(vtbl: pointer, self: pointer, painter: pointer, options: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  let slotval2 = gen_qstyleoption_types.QStyleOptionViewItem(h: options)
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  vtbl[].drawRow(self, slotval1, slotval2, slotval3)

proc QTreeViewdrawBranches*(self: gen_qtreeview_types.QTreeView, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQTreeView_virtualbase_drawBranches(self.h, painter.h, rect.h, index.h)

proc miqt_exec_callback_cQTreeView_drawBranches(vtbl: pointer, self: pointer, painter: pointer, rect: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  let slotval2 = gen_qrect_types.QRect(h: rect)
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  vtbl[].drawBranches(self, slotval1, slotval2, slotval3)

proc QTreeViewmousePressEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qevent_types.QMouseEvent): void =
  fcQTreeView_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeView_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QTreeViewmouseReleaseEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qevent_types.QMouseEvent): void =
  fcQTreeView_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeView_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QTreeViewmouseDoubleClickEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qevent_types.QMouseEvent): void =
  fcQTreeView_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeView_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QTreeViewmouseMoveEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qevent_types.QMouseEvent): void =
  fcQTreeView_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeView_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QTreeViewkeyPressEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qevent_types.QKeyEvent): void =
  fcQTreeView_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeView_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyPressEvent(self, slotval1)

proc QTreeViewdragMoveEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qevent_types.QDragMoveEvent): void =
  fcQTreeView_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeView_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QTreeViewviewportEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qcoreevent_types.QEvent): bool =
  fcQTreeView_virtualbase_viewportEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeView_viewportEvent(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].viewportEvent(self, slotval1)
  virtualReturn

proc QTreeViewupdateGeometries*(self: gen_qtreeview_types.QTreeView, ): void =
  fcQTreeView_virtualbase_updateGeometries(self.h)

proc miqt_exec_callback_cQTreeView_updateGeometries(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  vtbl[].updateGeometries(self)

proc QTreeViewviewportSizeHint*(self: gen_qtreeview_types.QTreeView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTreeView_virtualbase_viewportSizeHint(self.h))

proc miqt_exec_callback_cQTreeView_viewportSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  var virtualReturn = vtbl[].viewportSizeHint(self)
  virtualReturn.h

proc QTreeViewsizeHintForColumn*(self: gen_qtreeview_types.QTreeView, column: cint): cint =
  fcQTreeView_virtualbase_sizeHintForColumn(self.h, column)

proc miqt_exec_callback_cQTreeView_sizeHintForColumn(vtbl: pointer, self: pointer, column: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = column
  var virtualReturn = vtbl[].sizeHintForColumn(self, slotval1)
  virtualReturn

proc QTreeViewhorizontalScrollbarAction*(self: gen_qtreeview_types.QTreeView, action: cint): void =
  fcQTreeView_virtualbase_horizontalScrollbarAction(self.h, action)

proc miqt_exec_callback_cQTreeView_horizontalScrollbarAction(vtbl: pointer, self: pointer, action: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = action
  vtbl[].horizontalScrollbarAction(self, slotval1)

proc QTreeViewisIndexHidden*(self: gen_qtreeview_types.QTreeView, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQTreeView_virtualbase_isIndexHidden(self.h, index.h)

proc miqt_exec_callback_cQTreeView_isIndexHidden(vtbl: pointer, self: pointer, index: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].isIndexHidden(self, slotval1)
  virtualReturn

proc QTreeViewselectionChanged*(self: gen_qtreeview_types.QTreeView, selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void =
  fcQTreeView_virtualbase_selectionChanged(self.h, selected.h, deselected.h)

proc miqt_exec_callback_cQTreeView_selectionChanged(vtbl: pointer, self: pointer, selected: pointer, deselected: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selected)
  let slotval2 = gen_qitemselectionmodel_types.QItemSelection(h: deselected)
  vtbl[].selectionChanged(self, slotval1, slotval2)

proc QTreeViewcurrentChanged*(self: gen_qtreeview_types.QTreeView, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQTreeView_virtualbase_currentChanged(self.h, current.h, previous.h)

proc miqt_exec_callback_cQTreeView_currentChanged(vtbl: pointer, self: pointer, current: pointer, previous: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: current)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: previous)
  vtbl[].currentChanged(self, slotval1, slotval2)

proc QTreeViewsizeHintForRow*(self: gen_qtreeview_types.QTreeView, row: cint): cint =
  fcQTreeView_virtualbase_sizeHintForRow(self.h, row)

proc miqt_exec_callback_cQTreeView_sizeHintForRow(vtbl: pointer, self: pointer, row: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = row
  var virtualReturn = vtbl[].sizeHintForRow(self, slotval1)
  virtualReturn

proc QTreeViewitemDelegateForIndex*(self: gen_qtreeview_types.QTreeView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemdelegate_types.QAbstractItemDelegate =
  gen_qabstractitemdelegate_types.QAbstractItemDelegate(h: fcQTreeView_virtualbase_itemDelegateForIndex(self.h, index.h))

proc miqt_exec_callback_cQTreeView_itemDelegateForIndex(vtbl: pointer, self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].itemDelegateForIndex(self, slotval1)
  virtualReturn.h

proc QTreeViewinputMethodQuery*(self: gen_qtreeview_types.QTreeView, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQTreeView_virtualbase_inputMethodQuery(self.h, cint(query)))

proc miqt_exec_callback_cQTreeView_inputMethodQuery(vtbl: pointer, self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = cint(query)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QTreeViewupdateEditorData*(self: gen_qtreeview_types.QTreeView, ): void =
  fcQTreeView_virtualbase_updateEditorData(self.h)

proc miqt_exec_callback_cQTreeView_updateEditorData(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  vtbl[].updateEditorData(self)

proc QTreeViewupdateEditorGeometries*(self: gen_qtreeview_types.QTreeView, ): void =
  fcQTreeView_virtualbase_updateEditorGeometries(self.h)

proc miqt_exec_callback_cQTreeView_updateEditorGeometries(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  vtbl[].updateEditorGeometries(self)

proc QTreeViewverticalScrollbarAction*(self: gen_qtreeview_types.QTreeView, action: cint): void =
  fcQTreeView_virtualbase_verticalScrollbarAction(self.h, action)

proc miqt_exec_callback_cQTreeView_verticalScrollbarAction(vtbl: pointer, self: pointer, action: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = action
  vtbl[].verticalScrollbarAction(self, slotval1)

proc QTreeViewhorizontalScrollbarValueChanged*(self: gen_qtreeview_types.QTreeView, value: cint): void =
  fcQTreeView_virtualbase_horizontalScrollbarValueChanged(self.h, value)

proc miqt_exec_callback_cQTreeView_horizontalScrollbarValueChanged(vtbl: pointer, self: pointer, value: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = value
  vtbl[].horizontalScrollbarValueChanged(self, slotval1)

proc QTreeViewcloseEditor*(self: gen_qtreeview_types.QTreeView, editor: gen_qwidget_types.QWidget, hint: cint): void =
  fcQTreeView_virtualbase_closeEditor(self.h, editor.h, cint(hint))

proc miqt_exec_callback_cQTreeView_closeEditor(vtbl: pointer, self: pointer, editor: pointer, hint: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor)
  let slotval2 = cint(hint)
  vtbl[].closeEditor(self, slotval1, slotval2)

proc QTreeViewcommitData*(self: gen_qtreeview_types.QTreeView, editor: gen_qwidget_types.QWidget): void =
  fcQTreeView_virtualbase_commitData(self.h, editor.h)

proc miqt_exec_callback_cQTreeView_commitData(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor)
  vtbl[].commitData(self, slotval1)

proc QTreeVieweditorDestroyed*(self: gen_qtreeview_types.QTreeView, editor: gen_qobject_types.QObject): void =
  fcQTreeView_virtualbase_editorDestroyed(self.h, editor.h)

proc miqt_exec_callback_cQTreeView_editorDestroyed(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qobject_types.QObject(h: editor)
  vtbl[].editorDestroyed(self, slotval1)

proc QTreeViewedit*(self: gen_qtreeview_types.QTreeView, index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool =
  fcQTreeView_virtualbase_edit2(self.h, index.h, cint(trigger), event.h)

proc miqt_exec_callback_cQTreeView_edit2(vtbl: pointer, self: pointer, index: pointer, trigger: cint, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let slotval2 = cint(trigger)
  let slotval3 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].edit2(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTreeViewselectionCommand*(self: gen_qtreeview_types.QTreeView, index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint =
  cint(fcQTreeView_virtualbase_selectionCommand(self.h, index.h, event.h))

proc miqt_exec_callback_cQTreeView_selectionCommand(vtbl: pointer, self: pointer, index: pointer, event: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].selectionCommand(self, slotval1, slotval2)
  cint(virtualReturn)

proc QTreeViewstartDrag*(self: gen_qtreeview_types.QTreeView, supportedActions: cint): void =
  fcQTreeView_virtualbase_startDrag(self.h, cint(supportedActions))

proc miqt_exec_callback_cQTreeView_startDrag(vtbl: pointer, self: pointer, supportedActions: cint): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = cint(supportedActions)
  vtbl[].startDrag(self, slotval1)

proc QTreeViewinitViewItemOption*(self: gen_qtreeview_types.QTreeView, option: gen_qstyleoption_types.QStyleOptionViewItem): void =
  fcQTreeView_virtualbase_initViewItemOption(self.h, option.h)

proc miqt_exec_callback_cQTreeView_initViewItemOption(vtbl: pointer, self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionViewItem(h: option)
  vtbl[].initViewItemOption(self, slotval1)

proc QTreeViewfocusNextPrevChild*(self: gen_qtreeview_types.QTreeView, next: bool): bool =
  fcQTreeView_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQTreeView_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QTreeViewevent*(self: gen_qtreeview_types.QTreeView, event: gen_qcoreevent_types.QEvent): bool =
  fcQTreeView_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQTreeView_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QTreeViewdragEnterEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qevent_types.QDragEnterEvent): void =
  fcQTreeView_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeView_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QTreeViewdragLeaveEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQTreeView_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeView_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QTreeViewdropEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qevent_types.QDropEvent): void =
  fcQTreeView_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeView_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QTreeViewfocusInEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qevent_types.QFocusEvent): void =
  fcQTreeView_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeView_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QTreeViewfocusOutEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qevent_types.QFocusEvent): void =
  fcQTreeView_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeView_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QTreeViewresizeEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qevent_types.QResizeEvent): void =
  fcQTreeView_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeView_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)
  vtbl[].resizeEvent(self, slotval1)

proc QTreeViewinputMethodEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qevent_types.QInputMethodEvent): void =
  fcQTreeView_virtualbase_inputMethodEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeView_inputMethodEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)
  vtbl[].inputMethodEvent(self, slotval1)

proc QTreeVieweventFilter*(self: gen_qtreeview_types.QTreeView, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQTreeView_virtualbase_eventFilter(self.h, objectVal.h, event.h)

proc miqt_exec_callback_cQTreeView_eventFilter(vtbl: pointer, self: pointer, objectVal: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qobject_types.QObject(h: objectVal)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QTreeViewminimumSizeHint*(self: gen_qtreeview_types.QTreeView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTreeView_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQTreeView_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QTreeViewsizeHint*(self: gen_qtreeview_types.QTreeView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQTreeView_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQTreeView_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QTreeViewsetupViewport*(self: gen_qtreeview_types.QTreeView, viewport: gen_qwidget_types.QWidget): void =
  fcQTreeView_virtualbase_setupViewport(self.h, viewport.h)

proc miqt_exec_callback_cQTreeView_setupViewport(vtbl: pointer, self: pointer, viewport: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: viewport)
  vtbl[].setupViewport(self, slotval1)

proc QTreeViewwheelEvent*(self: gen_qtreeview_types.QTreeView, param1: gen_qevent_types.QWheelEvent): void =
  fcQTreeView_virtualbase_wheelEvent(self.h, param1.h)

proc miqt_exec_callback_cQTreeView_wheelEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1)
  vtbl[].wheelEvent(self, slotval1)

proc QTreeViewcontextMenuEvent*(self: gen_qtreeview_types.QTreeView, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQTreeView_virtualbase_contextMenuEvent(self.h, param1.h)

proc miqt_exec_callback_cQTreeView_contextMenuEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)
  vtbl[].contextMenuEvent(self, slotval1)

proc QTreeViewinitStyleOption*(self: gen_qtreeview_types.QTreeView, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fcQTreeView_virtualbase_initStyleOption(self.h, option.h)

proc miqt_exec_callback_cQTreeView_initStyleOption(vtbl: pointer, self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionFrame(h: option)
  vtbl[].initStyleOption(self, slotval1)

proc QTreeViewdevType*(self: gen_qtreeview_types.QTreeView, ): cint =
  fcQTreeView_virtualbase_devType(self.h)

proc miqt_exec_callback_cQTreeView_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QTreeViewsetVisible*(self: gen_qtreeview_types.QTreeView, visible: bool): void =
  fcQTreeView_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQTreeView_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QTreeViewheightForWidth*(self: gen_qtreeview_types.QTreeView, param1: cint): cint =
  fcQTreeView_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQTreeView_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QTreeViewhasHeightForWidth*(self: gen_qtreeview_types.QTreeView, ): bool =
  fcQTreeView_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQTreeView_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QTreeViewpaintEngine*(self: gen_qtreeview_types.QTreeView, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQTreeView_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQTreeView_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QTreeViewkeyReleaseEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qevent_types.QKeyEvent): void =
  fcQTreeView_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeView_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QTreeViewenterEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qevent_types.QEnterEvent): void =
  fcQTreeView_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeView_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QTreeViewleaveEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qcoreevent_types.QEvent): void =
  fcQTreeView_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeView_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QTreeViewmoveEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qevent_types.QMoveEvent): void =
  fcQTreeView_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeView_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QTreeViewcloseEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qevent_types.QCloseEvent): void =
  fcQTreeView_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeView_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QTreeViewtabletEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qevent_types.QTabletEvent): void =
  fcQTreeView_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeView_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QTreeViewactionEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qevent_types.QActionEvent): void =
  fcQTreeView_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeView_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QTreeViewshowEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qevent_types.QShowEvent): void =
  fcQTreeView_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeView_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  vtbl[].showEvent(self, slotval1)

proc QTreeViewhideEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qevent_types.QHideEvent): void =
  fcQTreeView_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeView_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QTreeViewnativeEvent*(self: gen_qtreeview_types.QTreeView, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fcQTreeView_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQTreeView_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTreeViewmetric*(self: gen_qtreeview_types.QTreeView, param1: cint): cint =
  fcQTreeView_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQTreeView_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QTreeViewinitPainter*(self: gen_qtreeview_types.QTreeView, painter: gen_qpainter_types.QPainter): void =
  fcQTreeView_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQTreeView_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QTreeViewredirected*(self: gen_qtreeview_types.QTreeView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQTreeView_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQTreeView_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QTreeViewsharedPainter*(self: gen_qtreeview_types.QTreeView, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQTreeView_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQTreeView_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QTreeViewchildEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qcoreevent_types.QChildEvent): void =
  fcQTreeView_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeView_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QTreeViewcustomEvent*(self: gen_qtreeview_types.QTreeView, event: gen_qcoreevent_types.QEvent): void =
  fcQTreeView_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQTreeView_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QTreeViewconnectNotify*(self: gen_qtreeview_types.QTreeView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTreeView_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQTreeView_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QTreeViewdisconnectNotify*(self: gen_qtreeview_types.QTreeView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTreeView_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQTreeView_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTreeViewVTable](vtbl)
  let self = QTreeView(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qtreeview_types.QTreeView,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QTreeViewVTable = nil): gen_qtreeview_types.QTreeView =
  let vtbl = if vtbl == nil: new QTreeViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTreeViewVTable, _: ptr cQTreeView) {.cdecl.} =
    let vtbl = cast[ref QTreeViewVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQTreeView_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQTreeView_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQTreeView_metacall
  if not isNil(vtbl.setModel):
    vtbl[].vtbl.setModel = miqt_exec_callback_cQTreeView_setModel
  if not isNil(vtbl.setRootIndex):
    vtbl[].vtbl.setRootIndex = miqt_exec_callback_cQTreeView_setRootIndex
  if not isNil(vtbl.setSelectionModel):
    vtbl[].vtbl.setSelectionModel = miqt_exec_callback_cQTreeView_setSelectionModel
  if not isNil(vtbl.keyboardSearch):
    vtbl[].vtbl.keyboardSearch = miqt_exec_callback_cQTreeView_keyboardSearch
  if not isNil(vtbl.visualRect):
    vtbl[].vtbl.visualRect = miqt_exec_callback_cQTreeView_visualRect
  if not isNil(vtbl.scrollTo):
    vtbl[].vtbl.scrollTo = miqt_exec_callback_cQTreeView_scrollTo
  if not isNil(vtbl.indexAt):
    vtbl[].vtbl.indexAt = miqt_exec_callback_cQTreeView_indexAt
  if not isNil(vtbl.doItemsLayout):
    vtbl[].vtbl.doItemsLayout = miqt_exec_callback_cQTreeView_doItemsLayout
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQTreeView_reset
  if not isNil(vtbl.dataChanged):
    vtbl[].vtbl.dataChanged = miqt_exec_callback_cQTreeView_dataChanged
  if not isNil(vtbl.selectAll):
    vtbl[].vtbl.selectAll = miqt_exec_callback_cQTreeView_selectAll
  if not isNil(vtbl.verticalScrollbarValueChanged):
    vtbl[].vtbl.verticalScrollbarValueChanged = miqt_exec_callback_cQTreeView_verticalScrollbarValueChanged
  if not isNil(vtbl.scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = miqt_exec_callback_cQTreeView_scrollContentsBy
  if not isNil(vtbl.rowsInserted):
    vtbl[].vtbl.rowsInserted = miqt_exec_callback_cQTreeView_rowsInserted
  if not isNil(vtbl.rowsAboutToBeRemoved):
    vtbl[].vtbl.rowsAboutToBeRemoved = miqt_exec_callback_cQTreeView_rowsAboutToBeRemoved
  if not isNil(vtbl.moveCursor):
    vtbl[].vtbl.moveCursor = miqt_exec_callback_cQTreeView_moveCursor
  if not isNil(vtbl.horizontalOffset):
    vtbl[].vtbl.horizontalOffset = miqt_exec_callback_cQTreeView_horizontalOffset
  if not isNil(vtbl.verticalOffset):
    vtbl[].vtbl.verticalOffset = miqt_exec_callback_cQTreeView_verticalOffset
  if not isNil(vtbl.setSelection):
    vtbl[].vtbl.setSelection = miqt_exec_callback_cQTreeView_setSelection
  if not isNil(vtbl.visualRegionForSelection):
    vtbl[].vtbl.visualRegionForSelection = miqt_exec_callback_cQTreeView_visualRegionForSelection
  if not isNil(vtbl.selectedIndexes):
    vtbl[].vtbl.selectedIndexes = miqt_exec_callback_cQTreeView_selectedIndexes
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQTreeView_changeEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQTreeView_timerEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQTreeView_paintEvent
  if not isNil(vtbl.drawRow):
    vtbl[].vtbl.drawRow = miqt_exec_callback_cQTreeView_drawRow
  if not isNil(vtbl.drawBranches):
    vtbl[].vtbl.drawBranches = miqt_exec_callback_cQTreeView_drawBranches
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQTreeView_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQTreeView_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQTreeView_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQTreeView_mouseMoveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQTreeView_keyPressEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQTreeView_dragMoveEvent
  if not isNil(vtbl.viewportEvent):
    vtbl[].vtbl.viewportEvent = miqt_exec_callback_cQTreeView_viewportEvent
  if not isNil(vtbl.updateGeometries):
    vtbl[].vtbl.updateGeometries = miqt_exec_callback_cQTreeView_updateGeometries
  if not isNil(vtbl.viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = miqt_exec_callback_cQTreeView_viewportSizeHint
  if not isNil(vtbl.sizeHintForColumn):
    vtbl[].vtbl.sizeHintForColumn = miqt_exec_callback_cQTreeView_sizeHintForColumn
  if not isNil(vtbl.horizontalScrollbarAction):
    vtbl[].vtbl.horizontalScrollbarAction = miqt_exec_callback_cQTreeView_horizontalScrollbarAction
  if not isNil(vtbl.isIndexHidden):
    vtbl[].vtbl.isIndexHidden = miqt_exec_callback_cQTreeView_isIndexHidden
  if not isNil(vtbl.selectionChanged):
    vtbl[].vtbl.selectionChanged = miqt_exec_callback_cQTreeView_selectionChanged
  if not isNil(vtbl.currentChanged):
    vtbl[].vtbl.currentChanged = miqt_exec_callback_cQTreeView_currentChanged
  if not isNil(vtbl.sizeHintForRow):
    vtbl[].vtbl.sizeHintForRow = miqt_exec_callback_cQTreeView_sizeHintForRow
  if not isNil(vtbl.itemDelegateForIndex):
    vtbl[].vtbl.itemDelegateForIndex = miqt_exec_callback_cQTreeView_itemDelegateForIndex
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQTreeView_inputMethodQuery
  if not isNil(vtbl.updateEditorData):
    vtbl[].vtbl.updateEditorData = miqt_exec_callback_cQTreeView_updateEditorData
  if not isNil(vtbl.updateEditorGeometries):
    vtbl[].vtbl.updateEditorGeometries = miqt_exec_callback_cQTreeView_updateEditorGeometries
  if not isNil(vtbl.verticalScrollbarAction):
    vtbl[].vtbl.verticalScrollbarAction = miqt_exec_callback_cQTreeView_verticalScrollbarAction
  if not isNil(vtbl.horizontalScrollbarValueChanged):
    vtbl[].vtbl.horizontalScrollbarValueChanged = miqt_exec_callback_cQTreeView_horizontalScrollbarValueChanged
  if not isNil(vtbl.closeEditor):
    vtbl[].vtbl.closeEditor = miqt_exec_callback_cQTreeView_closeEditor
  if not isNil(vtbl.commitData):
    vtbl[].vtbl.commitData = miqt_exec_callback_cQTreeView_commitData
  if not isNil(vtbl.editorDestroyed):
    vtbl[].vtbl.editorDestroyed = miqt_exec_callback_cQTreeView_editorDestroyed
  if not isNil(vtbl.edit2):
    vtbl[].vtbl.edit2 = miqt_exec_callback_cQTreeView_edit2
  if not isNil(vtbl.selectionCommand):
    vtbl[].vtbl.selectionCommand = miqt_exec_callback_cQTreeView_selectionCommand
  if not isNil(vtbl.startDrag):
    vtbl[].vtbl.startDrag = miqt_exec_callback_cQTreeView_startDrag
  if not isNil(vtbl.initViewItemOption):
    vtbl[].vtbl.initViewItemOption = miqt_exec_callback_cQTreeView_initViewItemOption
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQTreeView_focusNextPrevChild
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQTreeView_event
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQTreeView_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQTreeView_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQTreeView_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQTreeView_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQTreeView_focusOutEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQTreeView_resizeEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQTreeView_inputMethodEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQTreeView_eventFilter
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQTreeView_minimumSizeHint
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQTreeView_sizeHint
  if not isNil(vtbl.setupViewport):
    vtbl[].vtbl.setupViewport = miqt_exec_callback_cQTreeView_setupViewport
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQTreeView_wheelEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQTreeView_contextMenuEvent
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQTreeView_initStyleOption
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQTreeView_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQTreeView_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQTreeView_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQTreeView_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQTreeView_paintEngine
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQTreeView_keyReleaseEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQTreeView_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQTreeView_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQTreeView_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQTreeView_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQTreeView_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQTreeView_actionEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQTreeView_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQTreeView_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQTreeView_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQTreeView_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQTreeView_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQTreeView_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQTreeView_sharedPainter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQTreeView_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQTreeView_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQTreeView_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQTreeView_disconnectNotify
  gen_qtreeview_types.QTreeView(h: fcQTreeView_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qtreeview_types.QTreeView,
    vtbl: ref QTreeViewVTable = nil): gen_qtreeview_types.QTreeView =
  let vtbl = if vtbl == nil: new QTreeViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTreeViewVTable, _: ptr cQTreeView) {.cdecl.} =
    let vtbl = cast[ref QTreeViewVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQTreeView_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQTreeView_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQTreeView_metacall
  if not isNil(vtbl.setModel):
    vtbl[].vtbl.setModel = miqt_exec_callback_cQTreeView_setModel
  if not isNil(vtbl.setRootIndex):
    vtbl[].vtbl.setRootIndex = miqt_exec_callback_cQTreeView_setRootIndex
  if not isNil(vtbl.setSelectionModel):
    vtbl[].vtbl.setSelectionModel = miqt_exec_callback_cQTreeView_setSelectionModel
  if not isNil(vtbl.keyboardSearch):
    vtbl[].vtbl.keyboardSearch = miqt_exec_callback_cQTreeView_keyboardSearch
  if not isNil(vtbl.visualRect):
    vtbl[].vtbl.visualRect = miqt_exec_callback_cQTreeView_visualRect
  if not isNil(vtbl.scrollTo):
    vtbl[].vtbl.scrollTo = miqt_exec_callback_cQTreeView_scrollTo
  if not isNil(vtbl.indexAt):
    vtbl[].vtbl.indexAt = miqt_exec_callback_cQTreeView_indexAt
  if not isNil(vtbl.doItemsLayout):
    vtbl[].vtbl.doItemsLayout = miqt_exec_callback_cQTreeView_doItemsLayout
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQTreeView_reset
  if not isNil(vtbl.dataChanged):
    vtbl[].vtbl.dataChanged = miqt_exec_callback_cQTreeView_dataChanged
  if not isNil(vtbl.selectAll):
    vtbl[].vtbl.selectAll = miqt_exec_callback_cQTreeView_selectAll
  if not isNil(vtbl.verticalScrollbarValueChanged):
    vtbl[].vtbl.verticalScrollbarValueChanged = miqt_exec_callback_cQTreeView_verticalScrollbarValueChanged
  if not isNil(vtbl.scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = miqt_exec_callback_cQTreeView_scrollContentsBy
  if not isNil(vtbl.rowsInserted):
    vtbl[].vtbl.rowsInserted = miqt_exec_callback_cQTreeView_rowsInserted
  if not isNil(vtbl.rowsAboutToBeRemoved):
    vtbl[].vtbl.rowsAboutToBeRemoved = miqt_exec_callback_cQTreeView_rowsAboutToBeRemoved
  if not isNil(vtbl.moveCursor):
    vtbl[].vtbl.moveCursor = miqt_exec_callback_cQTreeView_moveCursor
  if not isNil(vtbl.horizontalOffset):
    vtbl[].vtbl.horizontalOffset = miqt_exec_callback_cQTreeView_horizontalOffset
  if not isNil(vtbl.verticalOffset):
    vtbl[].vtbl.verticalOffset = miqt_exec_callback_cQTreeView_verticalOffset
  if not isNil(vtbl.setSelection):
    vtbl[].vtbl.setSelection = miqt_exec_callback_cQTreeView_setSelection
  if not isNil(vtbl.visualRegionForSelection):
    vtbl[].vtbl.visualRegionForSelection = miqt_exec_callback_cQTreeView_visualRegionForSelection
  if not isNil(vtbl.selectedIndexes):
    vtbl[].vtbl.selectedIndexes = miqt_exec_callback_cQTreeView_selectedIndexes
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQTreeView_changeEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQTreeView_timerEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQTreeView_paintEvent
  if not isNil(vtbl.drawRow):
    vtbl[].vtbl.drawRow = miqt_exec_callback_cQTreeView_drawRow
  if not isNil(vtbl.drawBranches):
    vtbl[].vtbl.drawBranches = miqt_exec_callback_cQTreeView_drawBranches
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQTreeView_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQTreeView_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQTreeView_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQTreeView_mouseMoveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQTreeView_keyPressEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQTreeView_dragMoveEvent
  if not isNil(vtbl.viewportEvent):
    vtbl[].vtbl.viewportEvent = miqt_exec_callback_cQTreeView_viewportEvent
  if not isNil(vtbl.updateGeometries):
    vtbl[].vtbl.updateGeometries = miqt_exec_callback_cQTreeView_updateGeometries
  if not isNil(vtbl.viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = miqt_exec_callback_cQTreeView_viewportSizeHint
  if not isNil(vtbl.sizeHintForColumn):
    vtbl[].vtbl.sizeHintForColumn = miqt_exec_callback_cQTreeView_sizeHintForColumn
  if not isNil(vtbl.horizontalScrollbarAction):
    vtbl[].vtbl.horizontalScrollbarAction = miqt_exec_callback_cQTreeView_horizontalScrollbarAction
  if not isNil(vtbl.isIndexHidden):
    vtbl[].vtbl.isIndexHidden = miqt_exec_callback_cQTreeView_isIndexHidden
  if not isNil(vtbl.selectionChanged):
    vtbl[].vtbl.selectionChanged = miqt_exec_callback_cQTreeView_selectionChanged
  if not isNil(vtbl.currentChanged):
    vtbl[].vtbl.currentChanged = miqt_exec_callback_cQTreeView_currentChanged
  if not isNil(vtbl.sizeHintForRow):
    vtbl[].vtbl.sizeHintForRow = miqt_exec_callback_cQTreeView_sizeHintForRow
  if not isNil(vtbl.itemDelegateForIndex):
    vtbl[].vtbl.itemDelegateForIndex = miqt_exec_callback_cQTreeView_itemDelegateForIndex
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQTreeView_inputMethodQuery
  if not isNil(vtbl.updateEditorData):
    vtbl[].vtbl.updateEditorData = miqt_exec_callback_cQTreeView_updateEditorData
  if not isNil(vtbl.updateEditorGeometries):
    vtbl[].vtbl.updateEditorGeometries = miqt_exec_callback_cQTreeView_updateEditorGeometries
  if not isNil(vtbl.verticalScrollbarAction):
    vtbl[].vtbl.verticalScrollbarAction = miqt_exec_callback_cQTreeView_verticalScrollbarAction
  if not isNil(vtbl.horizontalScrollbarValueChanged):
    vtbl[].vtbl.horizontalScrollbarValueChanged = miqt_exec_callback_cQTreeView_horizontalScrollbarValueChanged
  if not isNil(vtbl.closeEditor):
    vtbl[].vtbl.closeEditor = miqt_exec_callback_cQTreeView_closeEditor
  if not isNil(vtbl.commitData):
    vtbl[].vtbl.commitData = miqt_exec_callback_cQTreeView_commitData
  if not isNil(vtbl.editorDestroyed):
    vtbl[].vtbl.editorDestroyed = miqt_exec_callback_cQTreeView_editorDestroyed
  if not isNil(vtbl.edit2):
    vtbl[].vtbl.edit2 = miqt_exec_callback_cQTreeView_edit2
  if not isNil(vtbl.selectionCommand):
    vtbl[].vtbl.selectionCommand = miqt_exec_callback_cQTreeView_selectionCommand
  if not isNil(vtbl.startDrag):
    vtbl[].vtbl.startDrag = miqt_exec_callback_cQTreeView_startDrag
  if not isNil(vtbl.initViewItemOption):
    vtbl[].vtbl.initViewItemOption = miqt_exec_callback_cQTreeView_initViewItemOption
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQTreeView_focusNextPrevChild
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQTreeView_event
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQTreeView_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQTreeView_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQTreeView_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQTreeView_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQTreeView_focusOutEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQTreeView_resizeEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQTreeView_inputMethodEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQTreeView_eventFilter
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQTreeView_minimumSizeHint
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQTreeView_sizeHint
  if not isNil(vtbl.setupViewport):
    vtbl[].vtbl.setupViewport = miqt_exec_callback_cQTreeView_setupViewport
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQTreeView_wheelEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQTreeView_contextMenuEvent
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQTreeView_initStyleOption
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQTreeView_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQTreeView_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQTreeView_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQTreeView_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQTreeView_paintEngine
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQTreeView_keyReleaseEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQTreeView_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQTreeView_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQTreeView_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQTreeView_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQTreeView_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQTreeView_actionEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQTreeView_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQTreeView_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQTreeView_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQTreeView_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQTreeView_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQTreeView_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQTreeView_sharedPainter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQTreeView_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQTreeView_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQTreeView_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQTreeView_disconnectNotify
  gen_qtreeview_types.QTreeView(h: fcQTreeView_new2(addr(vtbl[]), ))

proc staticMetaObject*(_: type gen_qtreeview_types.QTreeView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTreeView_staticMetaObject())
proc delete*(self: gen_qtreeview_types.QTreeView) =
  fcQTreeView_delete(self.h)
