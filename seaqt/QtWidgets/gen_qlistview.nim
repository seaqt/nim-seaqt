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


{.compile("gen_qlistview.cpp", QtWidgetsCFlags).}


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
  gen_qstyleoption_types,
  gen_qwidget_types

type cQListView*{.exportc: "QListView", incompleteStruct.} = object

proc fcQListView_metaObject(self: pointer): pointer {.importc: "QListView_metaObject".}
proc fcQListView_metacast(self: pointer, param1: cstring): pointer {.importc: "QListView_metacast".}
proc fcQListView_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QListView_metacall".}
proc fcQListView_tr(s: cstring): struct_miqt_string {.importc: "QListView_tr".}
proc fcQListView_setMovement(self: pointer, movement: cint): void {.importc: "QListView_setMovement".}
proc fcQListView_movement(self: pointer): cint {.importc: "QListView_movement".}
proc fcQListView_setFlow(self: pointer, flow: cint): void {.importc: "QListView_setFlow".}
proc fcQListView_flow(self: pointer): cint {.importc: "QListView_flow".}
proc fcQListView_setWrapping(self: pointer, enable: bool): void {.importc: "QListView_setWrapping".}
proc fcQListView_isWrapping(self: pointer): bool {.importc: "QListView_isWrapping".}
proc fcQListView_setResizeMode(self: pointer, mode: cint): void {.importc: "QListView_setResizeMode".}
proc fcQListView_resizeMode(self: pointer): cint {.importc: "QListView_resizeMode".}
proc fcQListView_setLayoutMode(self: pointer, mode: cint): void {.importc: "QListView_setLayoutMode".}
proc fcQListView_layoutMode(self: pointer): cint {.importc: "QListView_layoutMode".}
proc fcQListView_setSpacing(self: pointer, space: cint): void {.importc: "QListView_setSpacing".}
proc fcQListView_spacing(self: pointer): cint {.importc: "QListView_spacing".}
proc fcQListView_setBatchSize(self: pointer, batchSize: cint): void {.importc: "QListView_setBatchSize".}
proc fcQListView_batchSize(self: pointer): cint {.importc: "QListView_batchSize".}
proc fcQListView_setGridSize(self: pointer, size: pointer): void {.importc: "QListView_setGridSize".}
proc fcQListView_gridSize(self: pointer): pointer {.importc: "QListView_gridSize".}
proc fcQListView_setViewMode(self: pointer, mode: cint): void {.importc: "QListView_setViewMode".}
proc fcQListView_viewMode(self: pointer): cint {.importc: "QListView_viewMode".}
proc fcQListView_clearPropertyFlags(self: pointer): void {.importc: "QListView_clearPropertyFlags".}
proc fcQListView_isRowHidden(self: pointer, row: cint): bool {.importc: "QListView_isRowHidden".}
proc fcQListView_setRowHidden(self: pointer, row: cint, hide: bool): void {.importc: "QListView_setRowHidden".}
proc fcQListView_setModelColumn(self: pointer, column: cint): void {.importc: "QListView_setModelColumn".}
proc fcQListView_modelColumn(self: pointer): cint {.importc: "QListView_modelColumn".}
proc fcQListView_setUniformItemSizes(self: pointer, enable: bool): void {.importc: "QListView_setUniformItemSizes".}
proc fcQListView_uniformItemSizes(self: pointer): bool {.importc: "QListView_uniformItemSizes".}
proc fcQListView_setWordWrap(self: pointer, on: bool): void {.importc: "QListView_setWordWrap".}
proc fcQListView_wordWrap(self: pointer): bool {.importc: "QListView_wordWrap".}
proc fcQListView_setSelectionRectVisible(self: pointer, show: bool): void {.importc: "QListView_setSelectionRectVisible".}
proc fcQListView_isSelectionRectVisible(self: pointer): bool {.importc: "QListView_isSelectionRectVisible".}
proc fcQListView_setItemAlignment(self: pointer, alignment: cint): void {.importc: "QListView_setItemAlignment".}
proc fcQListView_itemAlignment(self: pointer): cint {.importc: "QListView_itemAlignment".}
proc fcQListView_visualRect(self: pointer, index: pointer): pointer {.importc: "QListView_visualRect".}
proc fcQListView_scrollTo(self: pointer, index: pointer, hint: cint): void {.importc: "QListView_scrollTo".}
proc fcQListView_indexAt(self: pointer, p: pointer): pointer {.importc: "QListView_indexAt".}
proc fcQListView_doItemsLayout(self: pointer): void {.importc: "QListView_doItemsLayout".}
proc fcQListView_reset(self: pointer): void {.importc: "QListView_reset".}
proc fcQListView_setRootIndex(self: pointer, index: pointer): void {.importc: "QListView_setRootIndex".}
proc fcQListView_indexesMoved(self: pointer, indexes: struct_miqt_array): void {.importc: "QListView_indexesMoved".}
proc fcQListView_connect_indexesMoved(self: pointer, slot: int, callback: proc (slot: int, indexes: struct_miqt_array) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QListView_connect_indexesMoved".}
proc fcQListView_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QListView_tr2".}
proc fcQListView_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QListView_tr3".}
proc fcQListView_vtbl(self: pointer): pointer {.importc: "QListView_vtbl".}
proc fcQListView_vdata(self: pointer): pointer {.importc: "QListView_vdata".}
type cQListViewVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  visualRect*: proc(self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  scrollTo*: proc(self: pointer, index: pointer, hint: cint): void {.cdecl, raises: [], gcsafe.}
  indexAt*: proc(self: pointer, p: pointer): pointer {.cdecl, raises: [], gcsafe.}
  doItemsLayout*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  reset*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  setRootIndex*: proc(self: pointer, index: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  scrollContentsBy*: proc(self: pointer, dx: cint, dy: cint): void {.cdecl, raises: [], gcsafe.}
  dataChanged*: proc(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.cdecl, raises: [], gcsafe.}
  rowsInserted*: proc(self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl, raises: [], gcsafe.}
  rowsAboutToBeRemoved*: proc(self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  startDrag*: proc(self: pointer, supportedActions: cint): void {.cdecl, raises: [], gcsafe.}
  initViewItemOption*: proc(self: pointer, option: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  horizontalOffset*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  verticalOffset*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  moveCursor*: proc(self: pointer, cursorAction: cint, modifiers: cint): pointer {.cdecl, raises: [], gcsafe.}
  setSelection*: proc(self: pointer, rect: pointer, command: cint): void {.cdecl, raises: [], gcsafe.}
  visualRegionForSelection*: proc(self: pointer, selection: pointer): pointer {.cdecl, raises: [], gcsafe.}
  selectedIndexes*: proc(self: pointer): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  updateGeometries*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  isIndexHidden*: proc(self: pointer, index: pointer): bool {.cdecl, raises: [], gcsafe.}
  selectionChanged*: proc(self: pointer, selected: pointer, deselected: pointer): void {.cdecl, raises: [], gcsafe.}
  currentChanged*: proc(self: pointer, current: pointer, previous: pointer): void {.cdecl, raises: [], gcsafe.}
  viewportSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setModel*: proc(self: pointer, model: pointer): void {.cdecl, raises: [], gcsafe.}
  setSelectionModel*: proc(self: pointer, selectionModel: pointer): void {.cdecl, raises: [], gcsafe.}
  keyboardSearch*: proc(self: pointer, search: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
  sizeHintForRow*: proc(self: pointer, row: cint): cint {.cdecl, raises: [], gcsafe.}
  sizeHintForColumn*: proc(self: pointer, column: cint): cint {.cdecl, raises: [], gcsafe.}
  itemDelegateForIndex*: proc(self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(self: pointer, query: cint): pointer {.cdecl, raises: [], gcsafe.}
  selectAll*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  updateEditorData*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  updateEditorGeometries*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  verticalScrollbarAction*: proc(self: pointer, action: cint): void {.cdecl, raises: [], gcsafe.}
  horizontalScrollbarAction*: proc(self: pointer, action: cint): void {.cdecl, raises: [], gcsafe.}
  verticalScrollbarValueChanged*: proc(self: pointer, value: cint): void {.cdecl, raises: [], gcsafe.}
  horizontalScrollbarValueChanged*: proc(self: pointer, value: cint): void {.cdecl, raises: [], gcsafe.}
  closeEditor*: proc(self: pointer, editor: pointer, hint: cint): void {.cdecl, raises: [], gcsafe.}
  commitData*: proc(self: pointer, editor: pointer): void {.cdecl, raises: [], gcsafe.}
  editorDestroyed*: proc(self: pointer, editor: pointer): void {.cdecl, raises: [], gcsafe.}
  edit2*: proc(self: pointer, index: pointer, trigger: cint, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  selectionCommand*: proc(self: pointer, index: pointer, event: pointer): cint {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  viewportEvent*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, objectVal: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setupViewport*: proc(self: pointer, viewport: pointer): void {.cdecl, raises: [], gcsafe.}
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
proc fcQListView_virtualbase_metaObject(self: pointer): pointer {.importc: "QListView_virtualbase_metaObject".}
proc fcQListView_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QListView_virtualbase_metacast".}
proc fcQListView_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QListView_virtualbase_metacall".}
proc fcQListView_virtualbase_visualRect(self: pointer, index: pointer): pointer {.importc: "QListView_virtualbase_visualRect".}
proc fcQListView_virtualbase_scrollTo(self: pointer, index: pointer, hint: cint): void {.importc: "QListView_virtualbase_scrollTo".}
proc fcQListView_virtualbase_indexAt(self: pointer, p: pointer): pointer {.importc: "QListView_virtualbase_indexAt".}
proc fcQListView_virtualbase_doItemsLayout(self: pointer): void {.importc: "QListView_virtualbase_doItemsLayout".}
proc fcQListView_virtualbase_reset(self: pointer): void {.importc: "QListView_virtualbase_reset".}
proc fcQListView_virtualbase_setRootIndex(self: pointer, index: pointer): void {.importc: "QListView_virtualbase_setRootIndex".}
proc fcQListView_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QListView_virtualbase_event".}
proc fcQListView_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.importc: "QListView_virtualbase_scrollContentsBy".}
proc fcQListView_virtualbase_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.importc: "QListView_virtualbase_dataChanged".}
proc fcQListView_virtualbase_rowsInserted(self: pointer, parent: pointer, start: cint, endVal: cint): void {.importc: "QListView_virtualbase_rowsInserted".}
proc fcQListView_virtualbase_rowsAboutToBeRemoved(self: pointer, parent: pointer, start: cint, endVal: cint): void {.importc: "QListView_virtualbase_rowsAboutToBeRemoved".}
proc fcQListView_virtualbase_mouseMoveEvent(self: pointer, e: pointer): void {.importc: "QListView_virtualbase_mouseMoveEvent".}
proc fcQListView_virtualbase_mouseReleaseEvent(self: pointer, e: pointer): void {.importc: "QListView_virtualbase_mouseReleaseEvent".}
proc fcQListView_virtualbase_wheelEvent(self: pointer, e: pointer): void {.importc: "QListView_virtualbase_wheelEvent".}
proc fcQListView_virtualbase_timerEvent(self: pointer, e: pointer): void {.importc: "QListView_virtualbase_timerEvent".}
proc fcQListView_virtualbase_resizeEvent(self: pointer, e: pointer): void {.importc: "QListView_virtualbase_resizeEvent".}
proc fcQListView_virtualbase_dragMoveEvent(self: pointer, e: pointer): void {.importc: "QListView_virtualbase_dragMoveEvent".}
proc fcQListView_virtualbase_dragLeaveEvent(self: pointer, e: pointer): void {.importc: "QListView_virtualbase_dragLeaveEvent".}
proc fcQListView_virtualbase_dropEvent(self: pointer, e: pointer): void {.importc: "QListView_virtualbase_dropEvent".}
proc fcQListView_virtualbase_startDrag(self: pointer, supportedActions: cint): void {.importc: "QListView_virtualbase_startDrag".}
proc fcQListView_virtualbase_initViewItemOption(self: pointer, option: pointer): void {.importc: "QListView_virtualbase_initViewItemOption".}
proc fcQListView_virtualbase_paintEvent(self: pointer, e: pointer): void {.importc: "QListView_virtualbase_paintEvent".}
proc fcQListView_virtualbase_horizontalOffset(self: pointer): cint {.importc: "QListView_virtualbase_horizontalOffset".}
proc fcQListView_virtualbase_verticalOffset(self: pointer): cint {.importc: "QListView_virtualbase_verticalOffset".}
proc fcQListView_virtualbase_moveCursor(self: pointer, cursorAction: cint, modifiers: cint): pointer {.importc: "QListView_virtualbase_moveCursor".}
proc fcQListView_virtualbase_setSelection(self: pointer, rect: pointer, command: cint): void {.importc: "QListView_virtualbase_setSelection".}
proc fcQListView_virtualbase_visualRegionForSelection(self: pointer, selection: pointer): pointer {.importc: "QListView_virtualbase_visualRegionForSelection".}
proc fcQListView_virtualbase_selectedIndexes(self: pointer): struct_miqt_array {.importc: "QListView_virtualbase_selectedIndexes".}
proc fcQListView_virtualbase_updateGeometries(self: pointer): void {.importc: "QListView_virtualbase_updateGeometries".}
proc fcQListView_virtualbase_isIndexHidden(self: pointer, index: pointer): bool {.importc: "QListView_virtualbase_isIndexHidden".}
proc fcQListView_virtualbase_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void {.importc: "QListView_virtualbase_selectionChanged".}
proc fcQListView_virtualbase_currentChanged(self: pointer, current: pointer, previous: pointer): void {.importc: "QListView_virtualbase_currentChanged".}
proc fcQListView_virtualbase_viewportSizeHint(self: pointer): pointer {.importc: "QListView_virtualbase_viewportSizeHint".}
proc fcQListView_virtualbase_setModel(self: pointer, model: pointer): void {.importc: "QListView_virtualbase_setModel".}
proc fcQListView_virtualbase_setSelectionModel(self: pointer, selectionModel: pointer): void {.importc: "QListView_virtualbase_setSelectionModel".}
proc fcQListView_virtualbase_keyboardSearch(self: pointer, search: struct_miqt_string): void {.importc: "QListView_virtualbase_keyboardSearch".}
proc fcQListView_virtualbase_sizeHintForRow(self: pointer, row: cint): cint {.importc: "QListView_virtualbase_sizeHintForRow".}
proc fcQListView_virtualbase_sizeHintForColumn(self: pointer, column: cint): cint {.importc: "QListView_virtualbase_sizeHintForColumn".}
proc fcQListView_virtualbase_itemDelegateForIndex(self: pointer, index: pointer): pointer {.importc: "QListView_virtualbase_itemDelegateForIndex".}
proc fcQListView_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QListView_virtualbase_inputMethodQuery".}
proc fcQListView_virtualbase_selectAll(self: pointer): void {.importc: "QListView_virtualbase_selectAll".}
proc fcQListView_virtualbase_updateEditorData(self: pointer): void {.importc: "QListView_virtualbase_updateEditorData".}
proc fcQListView_virtualbase_updateEditorGeometries(self: pointer): void {.importc: "QListView_virtualbase_updateEditorGeometries".}
proc fcQListView_virtualbase_verticalScrollbarAction(self: pointer, action: cint): void {.importc: "QListView_virtualbase_verticalScrollbarAction".}
proc fcQListView_virtualbase_horizontalScrollbarAction(self: pointer, action: cint): void {.importc: "QListView_virtualbase_horizontalScrollbarAction".}
proc fcQListView_virtualbase_verticalScrollbarValueChanged(self: pointer, value: cint): void {.importc: "QListView_virtualbase_verticalScrollbarValueChanged".}
proc fcQListView_virtualbase_horizontalScrollbarValueChanged(self: pointer, value: cint): void {.importc: "QListView_virtualbase_horizontalScrollbarValueChanged".}
proc fcQListView_virtualbase_closeEditor(self: pointer, editor: pointer, hint: cint): void {.importc: "QListView_virtualbase_closeEditor".}
proc fcQListView_virtualbase_commitData(self: pointer, editor: pointer): void {.importc: "QListView_virtualbase_commitData".}
proc fcQListView_virtualbase_editorDestroyed(self: pointer, editor: pointer): void {.importc: "QListView_virtualbase_editorDestroyed".}
proc fcQListView_virtualbase_edit2(self: pointer, index: pointer, trigger: cint, event: pointer): bool {.importc: "QListView_virtualbase_edit2".}
proc fcQListView_virtualbase_selectionCommand(self: pointer, index: pointer, event: pointer): cint {.importc: "QListView_virtualbase_selectionCommand".}
proc fcQListView_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QListView_virtualbase_focusNextPrevChild".}
proc fcQListView_virtualbase_viewportEvent(self: pointer, event: pointer): bool {.importc: "QListView_virtualbase_viewportEvent".}
proc fcQListView_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QListView_virtualbase_mousePressEvent".}
proc fcQListView_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QListView_virtualbase_mouseDoubleClickEvent".}
proc fcQListView_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QListView_virtualbase_dragEnterEvent".}
proc fcQListView_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QListView_virtualbase_focusInEvent".}
proc fcQListView_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QListView_virtualbase_focusOutEvent".}
proc fcQListView_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QListView_virtualbase_keyPressEvent".}
proc fcQListView_virtualbase_inputMethodEvent(self: pointer, event: pointer): void {.importc: "QListView_virtualbase_inputMethodEvent".}
proc fcQListView_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool {.importc: "QListView_virtualbase_eventFilter".}
proc fcQListView_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QListView_virtualbase_minimumSizeHint".}
proc fcQListView_virtualbase_sizeHint(self: pointer): pointer {.importc: "QListView_virtualbase_sizeHint".}
proc fcQListView_virtualbase_setupViewport(self: pointer, viewport: pointer): void {.importc: "QListView_virtualbase_setupViewport".}
proc fcQListView_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void {.importc: "QListView_virtualbase_contextMenuEvent".}
proc fcQListView_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QListView_virtualbase_changeEvent".}
proc fcQListView_virtualbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QListView_virtualbase_initStyleOption".}
proc fcQListView_virtualbase_devType(self: pointer): cint {.importc: "QListView_virtualbase_devType".}
proc fcQListView_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QListView_virtualbase_setVisible".}
proc fcQListView_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QListView_virtualbase_heightForWidth".}
proc fcQListView_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QListView_virtualbase_hasHeightForWidth".}
proc fcQListView_virtualbase_paintEngine(self: pointer): pointer {.importc: "QListView_virtualbase_paintEngine".}
proc fcQListView_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QListView_virtualbase_keyReleaseEvent".}
proc fcQListView_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QListView_virtualbase_enterEvent".}
proc fcQListView_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QListView_virtualbase_leaveEvent".}
proc fcQListView_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QListView_virtualbase_moveEvent".}
proc fcQListView_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QListView_virtualbase_closeEvent".}
proc fcQListView_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QListView_virtualbase_tabletEvent".}
proc fcQListView_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QListView_virtualbase_actionEvent".}
proc fcQListView_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QListView_virtualbase_showEvent".}
proc fcQListView_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QListView_virtualbase_hideEvent".}
proc fcQListView_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QListView_virtualbase_nativeEvent".}
proc fcQListView_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QListView_virtualbase_metric".}
proc fcQListView_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QListView_virtualbase_initPainter".}
proc fcQListView_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QListView_virtualbase_redirected".}
proc fcQListView_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QListView_virtualbase_sharedPainter".}
proc fcQListView_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QListView_virtualbase_childEvent".}
proc fcQListView_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QListView_virtualbase_customEvent".}
proc fcQListView_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QListView_virtualbase_connectNotify".}
proc fcQListView_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QListView_virtualbase_disconnectNotify".}
proc fcQListView_protectedbase_resizeContents(self: pointer, width: cint, height: cint): void {.importc: "QListView_protectedbase_resizeContents".}
proc fcQListView_protectedbase_contentsSize(self: pointer): pointer {.importc: "QListView_protectedbase_contentsSize".}
proc fcQListView_protectedbase_rectForIndex(self: pointer, index: pointer): pointer {.importc: "QListView_protectedbase_rectForIndex".}
proc fcQListView_protectedbase_setPositionForIndex(self: pointer, position: pointer, index: pointer): void {.importc: "QListView_protectedbase_setPositionForIndex".}
proc fcQListView_protectedbase_state(self: pointer): cint {.importc: "QListView_protectedbase_state".}
proc fcQListView_protectedbase_setState(self: pointer, state: cint): void {.importc: "QListView_protectedbase_setState".}
proc fcQListView_protectedbase_scheduleDelayedItemsLayout(self: pointer): void {.importc: "QListView_protectedbase_scheduleDelayedItemsLayout".}
proc fcQListView_protectedbase_executeDelayedItemsLayout(self: pointer): void {.importc: "QListView_protectedbase_executeDelayedItemsLayout".}
proc fcQListView_protectedbase_setDirtyRegion(self: pointer, region: pointer): void {.importc: "QListView_protectedbase_setDirtyRegion".}
proc fcQListView_protectedbase_scrollDirtyRegion(self: pointer, dx: cint, dy: cint): void {.importc: "QListView_protectedbase_scrollDirtyRegion".}
proc fcQListView_protectedbase_dirtyRegionOffset(self: pointer): pointer {.importc: "QListView_protectedbase_dirtyRegionOffset".}
proc fcQListView_protectedbase_startAutoScroll(self: pointer): void {.importc: "QListView_protectedbase_startAutoScroll".}
proc fcQListView_protectedbase_stopAutoScroll(self: pointer): void {.importc: "QListView_protectedbase_stopAutoScroll".}
proc fcQListView_protectedbase_doAutoScroll(self: pointer): void {.importc: "QListView_protectedbase_doAutoScroll".}
proc fcQListView_protectedbase_dropIndicatorPosition(self: pointer): cint {.importc: "QListView_protectedbase_dropIndicatorPosition".}
proc fcQListView_protectedbase_setViewportMargins(self: pointer, left: cint, top: cint, right: cint, bottom: cint): void {.importc: "QListView_protectedbase_setViewportMargins".}
proc fcQListView_protectedbase_viewportMargins(self: pointer): pointer {.importc: "QListView_protectedbase_viewportMargins".}
proc fcQListView_protectedbase_drawFrame(self: pointer, param1: pointer): void {.importc: "QListView_protectedbase_drawFrame".}
proc fcQListView_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QListView_protectedbase_updateMicroFocus".}
proc fcQListView_protectedbase_create(self: pointer): void {.importc: "QListView_protectedbase_create".}
proc fcQListView_protectedbase_destroy(self: pointer): void {.importc: "QListView_protectedbase_destroy".}
proc fcQListView_protectedbase_focusNextChild(self: pointer): bool {.importc: "QListView_protectedbase_focusNextChild".}
proc fcQListView_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QListView_protectedbase_focusPreviousChild".}
proc fcQListView_protectedbase_sender(self: pointer): pointer {.importc: "QListView_protectedbase_sender".}
proc fcQListView_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QListView_protectedbase_senderSignalIndex".}
proc fcQListView_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QListView_protectedbase_receivers".}
proc fcQListView_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QListView_protectedbase_isSignalConnected".}
proc fcQListView_new(vtbl, vdata: pointer, parent: pointer): ptr cQListView {.importc: "QListView_new".}
proc fcQListView_new2(vtbl, vdata: pointer): ptr cQListView {.importc: "QListView_new2".}
proc fcQListView_staticMetaObject(): pointer {.importc: "QListView_staticMetaObject".}

proc metaObject*(self: gen_qlistview_types.QListView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQListView_metaObject(self.h), owned: false)

proc metacast*(self: gen_qlistview_types.QListView, param1: cstring): pointer =
  fcQListView_metacast(self.h, param1)

proc metacall*(self: gen_qlistview_types.QListView, param1: cint, param2: cint, param3: pointer): cint =
  fcQListView_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qlistview_types.QListView, s: cstring): string =
  let v_ms = fcQListView_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setMovement*(self: gen_qlistview_types.QListView, movement: cint): void =
  fcQListView_setMovement(self.h, cint(movement))

proc movement*(self: gen_qlistview_types.QListView): cint =
  cint(fcQListView_movement(self.h))

proc setFlow*(self: gen_qlistview_types.QListView, flow: cint): void =
  fcQListView_setFlow(self.h, cint(flow))

proc flow*(self: gen_qlistview_types.QListView): cint =
  cint(fcQListView_flow(self.h))

proc setWrapping*(self: gen_qlistview_types.QListView, enable: bool): void =
  fcQListView_setWrapping(self.h, enable)

proc isWrapping*(self: gen_qlistview_types.QListView): bool =
  fcQListView_isWrapping(self.h)

proc setResizeMode*(self: gen_qlistview_types.QListView, mode: cint): void =
  fcQListView_setResizeMode(self.h, cint(mode))

proc resizeMode*(self: gen_qlistview_types.QListView): cint =
  cint(fcQListView_resizeMode(self.h))

proc setLayoutMode*(self: gen_qlistview_types.QListView, mode: cint): void =
  fcQListView_setLayoutMode(self.h, cint(mode))

proc layoutMode*(self: gen_qlistview_types.QListView): cint =
  cint(fcQListView_layoutMode(self.h))

proc setSpacing*(self: gen_qlistview_types.QListView, space: cint): void =
  fcQListView_setSpacing(self.h, space)

proc spacing*(self: gen_qlistview_types.QListView): cint =
  fcQListView_spacing(self.h)

proc setBatchSize*(self: gen_qlistview_types.QListView, batchSize: cint): void =
  fcQListView_setBatchSize(self.h, batchSize)

proc batchSize*(self: gen_qlistview_types.QListView): cint =
  fcQListView_batchSize(self.h)

proc setGridSize*(self: gen_qlistview_types.QListView, size: gen_qsize_types.QSize): void =
  fcQListView_setGridSize(self.h, size.h)

proc gridSize*(self: gen_qlistview_types.QListView): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQListView_gridSize(self.h), owned: true)

proc setViewMode*(self: gen_qlistview_types.QListView, mode: cint): void =
  fcQListView_setViewMode(self.h, cint(mode))

proc viewMode*(self: gen_qlistview_types.QListView): cint =
  cint(fcQListView_viewMode(self.h))

proc clearPropertyFlags*(self: gen_qlistview_types.QListView): void =
  fcQListView_clearPropertyFlags(self.h)

proc isRowHidden*(self: gen_qlistview_types.QListView, row: cint): bool =
  fcQListView_isRowHidden(self.h, row)

proc setRowHidden*(self: gen_qlistview_types.QListView, row: cint, hide: bool): void =
  fcQListView_setRowHidden(self.h, row, hide)

proc setModelColumn*(self: gen_qlistview_types.QListView, column: cint): void =
  fcQListView_setModelColumn(self.h, column)

proc modelColumn*(self: gen_qlistview_types.QListView): cint =
  fcQListView_modelColumn(self.h)

proc setUniformItemSizes*(self: gen_qlistview_types.QListView, enable: bool): void =
  fcQListView_setUniformItemSizes(self.h, enable)

proc uniformItemSizes*(self: gen_qlistview_types.QListView): bool =
  fcQListView_uniformItemSizes(self.h)

proc setWordWrap*(self: gen_qlistview_types.QListView, on: bool): void =
  fcQListView_setWordWrap(self.h, on)

proc wordWrap*(self: gen_qlistview_types.QListView): bool =
  fcQListView_wordWrap(self.h)

proc setSelectionRectVisible*(self: gen_qlistview_types.QListView, show: bool): void =
  fcQListView_setSelectionRectVisible(self.h, show)

proc isSelectionRectVisible*(self: gen_qlistview_types.QListView): bool =
  fcQListView_isSelectionRectVisible(self.h)

proc setItemAlignment*(self: gen_qlistview_types.QListView, alignment: cint): void =
  fcQListView_setItemAlignment(self.h, cint(alignment))

proc itemAlignment*(self: gen_qlistview_types.QListView): cint =
  cint(fcQListView_itemAlignment(self.h))

proc visualRect*(self: gen_qlistview_types.QListView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQListView_visualRect(self.h, index.h), owned: true)

proc scrollTo*(self: gen_qlistview_types.QListView, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void =
  fcQListView_scrollTo(self.h, index.h, cint(hint))

proc indexAt*(self: gen_qlistview_types.QListView, p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQListView_indexAt(self.h, p.h), owned: true)

proc doItemsLayout*(self: gen_qlistview_types.QListView): void =
  fcQListView_doItemsLayout(self.h)

proc reset*(self: gen_qlistview_types.QListView): void =
  fcQListView_reset(self.h)

proc setRootIndex*(self: gen_qlistview_types.QListView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQListView_setRootIndex(self.h, index.h)

proc indexesMoved*(self: gen_qlistview_types.QListView, indexes: openArray[gen_qabstractitemmodel_types.QModelIndex]): void =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  fcQListView_indexesMoved(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0])))

type QListViewindexesMovedSlot* = proc(indexes: openArray[gen_qabstractitemmodel_types.QModelIndex])
proc cQListView_slot_callback_indexesMoved(slot: int, indexes: struct_miqt_array) {.cdecl.} =
  let nimfunc = cast[ptr QListViewindexesMovedSlot](cast[pointer](slot))
  var vindexes_ma = indexes
  var vindexesx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(vindexes_ma.len))
  let vindexes_outCast = cast[ptr UncheckedArray[pointer]](vindexes_ma.data)
  for i in 0 ..< vindexes_ma.len:
    vindexesx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: vindexes_outCast[i], owned: true)
  c_free(vindexes_ma.data)
  let slotval1 = vindexesx_ret

  nimfunc[](slotval1)

proc cQListView_slot_callback_indexesMoved_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QListViewindexesMovedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onindexesMoved*(self: gen_qlistview_types.QListView, slot: QListViewindexesMovedSlot) =
  var tmp = new QListViewindexesMovedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_connect_indexesMoved(self.h, cast[int](addr tmp[]), cQListView_slot_callback_indexesMoved, cQListView_slot_callback_indexesMoved_release)

proc tr*(_: type gen_qlistview_types.QListView, s: cstring, c: cstring): string =
  let v_ms = fcQListView_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qlistview_types.QListView, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQListView_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QListViewmetaObjectProc* = proc(self: QListView): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QListViewmetacastProc* = proc(self: QListView, param1: cstring): pointer {.raises: [], gcsafe.}
type QListViewmetacallProc* = proc(self: QListView, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QListViewvisualRectProc* = proc(self: QListView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect {.raises: [], gcsafe.}
type QListViewscrollToProc* = proc(self: QListView, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void {.raises: [], gcsafe.}
type QListViewindexAtProc* = proc(self: QListView, p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QListViewdoItemsLayoutProc* = proc(self: QListView): void {.raises: [], gcsafe.}
type QListViewresetProc* = proc(self: QListView): void {.raises: [], gcsafe.}
type QListViewsetRootIndexProc* = proc(self: QListView, index: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QListVieweventProc* = proc(self: QListView, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QListViewscrollContentsByProc* = proc(self: QListView, dx: cint, dy: cint): void {.raises: [], gcsafe.}
type QListViewdataChangedProc* = proc(self: QListView, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: openArray[cint]): void {.raises: [], gcsafe.}
type QListViewrowsInsertedProc* = proc(self: QListView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void {.raises: [], gcsafe.}
type QListViewrowsAboutToBeRemovedProc* = proc(self: QListView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void {.raises: [], gcsafe.}
type QListViewmouseMoveEventProc* = proc(self: QListView, e: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QListViewmouseReleaseEventProc* = proc(self: QListView, e: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QListViewwheelEventProc* = proc(self: QListView, e: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QListViewtimerEventProc* = proc(self: QListView, e: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QListViewresizeEventProc* = proc(self: QListView, e: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QListViewdragMoveEventProc* = proc(self: QListView, e: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QListViewdragLeaveEventProc* = proc(self: QListView, e: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QListViewdropEventProc* = proc(self: QListView, e: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QListViewstartDragProc* = proc(self: QListView, supportedActions: cint): void {.raises: [], gcsafe.}
type QListViewinitViewItemOptionProc* = proc(self: QListView, option: gen_qstyleoption_types.QStyleOptionViewItem): void {.raises: [], gcsafe.}
type QListViewpaintEventProc* = proc(self: QListView, e: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QListViewhorizontalOffsetProc* = proc(self: QListView): cint {.raises: [], gcsafe.}
type QListViewverticalOffsetProc* = proc(self: QListView): cint {.raises: [], gcsafe.}
type QListViewmoveCursorProc* = proc(self: QListView, cursorAction: cint, modifiers: cint): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QListViewsetSelectionProc* = proc(self: QListView, rect: gen_qrect_types.QRect, command: cint): void {.raises: [], gcsafe.}
type QListViewvisualRegionForSelectionProc* = proc(self: QListView, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion {.raises: [], gcsafe.}
type QListViewselectedIndexesProc* = proc(self: QListView): seq[gen_qabstractitemmodel_types.QModelIndex] {.raises: [], gcsafe.}
type QListViewupdateGeometriesProc* = proc(self: QListView): void {.raises: [], gcsafe.}
type QListViewisIndexHiddenProc* = proc(self: QListView, index: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QListViewselectionChangedProc* = proc(self: QListView, selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void {.raises: [], gcsafe.}
type QListViewcurrentChangedProc* = proc(self: QListView, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QListViewviewportSizeHintProc* = proc(self: QListView): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QListViewsetModelProc* = proc(self: QListView, model: gen_qabstractitemmodel_types.QAbstractItemModel): void {.raises: [], gcsafe.}
type QListViewsetSelectionModelProc* = proc(self: QListView, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void {.raises: [], gcsafe.}
type QListViewkeyboardSearchProc* = proc(self: QListView, search: openArray[char]): void {.raises: [], gcsafe.}
type QListViewsizeHintForRowProc* = proc(self: QListView, row: cint): cint {.raises: [], gcsafe.}
type QListViewsizeHintForColumnProc* = proc(self: QListView, column: cint): cint {.raises: [], gcsafe.}
type QListViewitemDelegateForIndexProc* = proc(self: QListView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemdelegate_types.QAbstractItemDelegate {.raises: [], gcsafe.}
type QListViewinputMethodQueryProc* = proc(self: QListView, query: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QListViewselectAllProc* = proc(self: QListView): void {.raises: [], gcsafe.}
type QListViewupdateEditorDataProc* = proc(self: QListView): void {.raises: [], gcsafe.}
type QListViewupdateEditorGeometriesProc* = proc(self: QListView): void {.raises: [], gcsafe.}
type QListViewverticalScrollbarActionProc* = proc(self: QListView, action: cint): void {.raises: [], gcsafe.}
type QListViewhorizontalScrollbarActionProc* = proc(self: QListView, action: cint): void {.raises: [], gcsafe.}
type QListViewverticalScrollbarValueChangedProc* = proc(self: QListView, value: cint): void {.raises: [], gcsafe.}
type QListViewhorizontalScrollbarValueChangedProc* = proc(self: QListView, value: cint): void {.raises: [], gcsafe.}
type QListViewcloseEditorProc* = proc(self: QListView, editor: gen_qwidget_types.QWidget, hint: cint): void {.raises: [], gcsafe.}
type QListViewcommitDataProc* = proc(self: QListView, editor: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QListVieweditorDestroyedProc* = proc(self: QListView, editor: gen_qobject_types.QObject): void {.raises: [], gcsafe.}
type QListViewedit2Proc* = proc(self: QListView, index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QListViewselectionCommandProc* = proc(self: QListView, index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint {.raises: [], gcsafe.}
type QListViewfocusNextPrevChildProc* = proc(self: QListView, next: bool): bool {.raises: [], gcsafe.}
type QListViewviewportEventProc* = proc(self: QListView, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QListViewmousePressEventProc* = proc(self: QListView, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QListViewmouseDoubleClickEventProc* = proc(self: QListView, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QListViewdragEnterEventProc* = proc(self: QListView, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QListViewfocusInEventProc* = proc(self: QListView, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QListViewfocusOutEventProc* = proc(self: QListView, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QListViewkeyPressEventProc* = proc(self: QListView, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QListViewinputMethodEventProc* = proc(self: QListView, event: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QListVieweventFilterProc* = proc(self: QListView, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QListViewminimumSizeHintProc* = proc(self: QListView): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QListViewsizeHintProc* = proc(self: QListView): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QListViewsetupViewportProc* = proc(self: QListView, viewport: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QListViewcontextMenuEventProc* = proc(self: QListView, param1: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QListViewchangeEventProc* = proc(self: QListView, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QListViewinitStyleOptionProc* = proc(self: QListView, option: gen_qstyleoption_types.QStyleOptionFrame): void {.raises: [], gcsafe.}
type QListViewdevTypeProc* = proc(self: QListView): cint {.raises: [], gcsafe.}
type QListViewsetVisibleProc* = proc(self: QListView, visible: bool): void {.raises: [], gcsafe.}
type QListViewheightForWidthProc* = proc(self: QListView, param1: cint): cint {.raises: [], gcsafe.}
type QListViewhasHeightForWidthProc* = proc(self: QListView): bool {.raises: [], gcsafe.}
type QListViewpaintEngineProc* = proc(self: QListView): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QListViewkeyReleaseEventProc* = proc(self: QListView, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QListViewenterEventProc* = proc(self: QListView, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QListViewleaveEventProc* = proc(self: QListView, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QListViewmoveEventProc* = proc(self: QListView, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QListViewcloseEventProc* = proc(self: QListView, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QListViewtabletEventProc* = proc(self: QListView, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QListViewactionEventProc* = proc(self: QListView, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QListViewshowEventProc* = proc(self: QListView, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QListViewhideEventProc* = proc(self: QListView, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QListViewnativeEventProc* = proc(self: QListView, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QListViewmetricProc* = proc(self: QListView, param1: cint): cint {.raises: [], gcsafe.}
type QListViewinitPainterProc* = proc(self: QListView, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QListViewredirectedProc* = proc(self: QListView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QListViewsharedPainterProc* = proc(self: QListView): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QListViewchildEventProc* = proc(self: QListView, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QListViewcustomEventProc* = proc(self: QListView, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QListViewconnectNotifyProc* = proc(self: QListView, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QListViewdisconnectNotifyProc* = proc(self: QListView, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QListViewVTable* {.inheritable, pure.} = object
  vtbl: cQListViewVTable
  metaObject*: QListViewmetaObjectProc
  metacast*: QListViewmetacastProc
  metacall*: QListViewmetacallProc
  visualRect*: QListViewvisualRectProc
  scrollTo*: QListViewscrollToProc
  indexAt*: QListViewindexAtProc
  doItemsLayout*: QListViewdoItemsLayoutProc
  reset*: QListViewresetProc
  setRootIndex*: QListViewsetRootIndexProc
  event*: QListVieweventProc
  scrollContentsBy*: QListViewscrollContentsByProc
  dataChanged*: QListViewdataChangedProc
  rowsInserted*: QListViewrowsInsertedProc
  rowsAboutToBeRemoved*: QListViewrowsAboutToBeRemovedProc
  mouseMoveEvent*: QListViewmouseMoveEventProc
  mouseReleaseEvent*: QListViewmouseReleaseEventProc
  wheelEvent*: QListViewwheelEventProc
  timerEvent*: QListViewtimerEventProc
  resizeEvent*: QListViewresizeEventProc
  dragMoveEvent*: QListViewdragMoveEventProc
  dragLeaveEvent*: QListViewdragLeaveEventProc
  dropEvent*: QListViewdropEventProc
  startDrag*: QListViewstartDragProc
  initViewItemOption*: QListViewinitViewItemOptionProc
  paintEvent*: QListViewpaintEventProc
  horizontalOffset*: QListViewhorizontalOffsetProc
  verticalOffset*: QListViewverticalOffsetProc
  moveCursor*: QListViewmoveCursorProc
  setSelection*: QListViewsetSelectionProc
  visualRegionForSelection*: QListViewvisualRegionForSelectionProc
  selectedIndexes*: QListViewselectedIndexesProc
  updateGeometries*: QListViewupdateGeometriesProc
  isIndexHidden*: QListViewisIndexHiddenProc
  selectionChanged*: QListViewselectionChangedProc
  currentChanged*: QListViewcurrentChangedProc
  viewportSizeHint*: QListViewviewportSizeHintProc
  setModel*: QListViewsetModelProc
  setSelectionModel*: QListViewsetSelectionModelProc
  keyboardSearch*: QListViewkeyboardSearchProc
  sizeHintForRow*: QListViewsizeHintForRowProc
  sizeHintForColumn*: QListViewsizeHintForColumnProc
  itemDelegateForIndex*: QListViewitemDelegateForIndexProc
  inputMethodQuery*: QListViewinputMethodQueryProc
  selectAll*: QListViewselectAllProc
  updateEditorData*: QListViewupdateEditorDataProc
  updateEditorGeometries*: QListViewupdateEditorGeometriesProc
  verticalScrollbarAction*: QListViewverticalScrollbarActionProc
  horizontalScrollbarAction*: QListViewhorizontalScrollbarActionProc
  verticalScrollbarValueChanged*: QListViewverticalScrollbarValueChangedProc
  horizontalScrollbarValueChanged*: QListViewhorizontalScrollbarValueChangedProc
  closeEditor*: QListViewcloseEditorProc
  commitData*: QListViewcommitDataProc
  editorDestroyed*: QListVieweditorDestroyedProc
  edit2*: QListViewedit2Proc
  selectionCommand*: QListViewselectionCommandProc
  focusNextPrevChild*: QListViewfocusNextPrevChildProc
  viewportEvent*: QListViewviewportEventProc
  mousePressEvent*: QListViewmousePressEventProc
  mouseDoubleClickEvent*: QListViewmouseDoubleClickEventProc
  dragEnterEvent*: QListViewdragEnterEventProc
  focusInEvent*: QListViewfocusInEventProc
  focusOutEvent*: QListViewfocusOutEventProc
  keyPressEvent*: QListViewkeyPressEventProc
  inputMethodEvent*: QListViewinputMethodEventProc
  eventFilter*: QListVieweventFilterProc
  minimumSizeHint*: QListViewminimumSizeHintProc
  sizeHint*: QListViewsizeHintProc
  setupViewport*: QListViewsetupViewportProc
  contextMenuEvent*: QListViewcontextMenuEventProc
  changeEvent*: QListViewchangeEventProc
  initStyleOption*: QListViewinitStyleOptionProc
  devType*: QListViewdevTypeProc
  setVisible*: QListViewsetVisibleProc
  heightForWidth*: QListViewheightForWidthProc
  hasHeightForWidth*: QListViewhasHeightForWidthProc
  paintEngine*: QListViewpaintEngineProc
  keyReleaseEvent*: QListViewkeyReleaseEventProc
  enterEvent*: QListViewenterEventProc
  leaveEvent*: QListViewleaveEventProc
  moveEvent*: QListViewmoveEventProc
  closeEvent*: QListViewcloseEventProc
  tabletEvent*: QListViewtabletEventProc
  actionEvent*: QListViewactionEventProc
  showEvent*: QListViewshowEventProc
  hideEvent*: QListViewhideEventProc
  nativeEvent*: QListViewnativeEventProc
  metric*: QListViewmetricProc
  initPainter*: QListViewinitPainterProc
  redirected*: QListViewredirectedProc
  sharedPainter*: QListViewsharedPainterProc
  childEvent*: QListViewchildEventProc
  customEvent*: QListViewcustomEventProc
  connectNotify*: QListViewconnectNotifyProc
  disconnectNotify*: QListViewdisconnectNotifyProc
proc QListViewmetaObject*(self: gen_qlistview_types.QListView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQListView_virtualbase_metaObject(self.h), owned: false)

proc cQListView_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QListViewmetacast*(self: gen_qlistview_types.QListView, param1: cstring): pointer =
  fcQListView_virtualbase_metacast(self.h, param1)

proc cQListView_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QListViewmetacall*(self: gen_qlistview_types.QListView, param1: cint, param2: cint, param3: pointer): cint =
  fcQListView_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQListView_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QListViewvisualRect*(self: gen_qlistview_types.QListView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQListView_virtualbase_visualRect(self.h, index.h), owned: true)

proc cQListView_vtable_callback_visualRect(self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].visualRect(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QListViewscrollTo*(self: gen_qlistview_types.QListView, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void =
  fcQListView_virtualbase_scrollTo(self.h, index.h, cint(hint))

proc cQListView_vtable_callback_scrollTo(self: pointer, index: pointer, hint: cint): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = cint(hint)
  vtbl[].scrollTo(self, slotval1, slotval2)

proc QListViewindexAt*(self: gen_qlistview_types.QListView, p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQListView_virtualbase_indexAt(self.h, p.h), owned: true)

proc cQListView_vtable_callback_indexAt(self: pointer, p: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: p, owned: false)
  var virtualReturn = vtbl[].indexAt(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QListViewdoItemsLayout*(self: gen_qlistview_types.QListView): void =
  fcQListView_virtualbase_doItemsLayout(self.h)

proc cQListView_vtable_callback_doItemsLayout(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  vtbl[].doItemsLayout(self)

proc QListViewreset*(self: gen_qlistview_types.QListView): void =
  fcQListView_virtualbase_reset(self.h)

proc cQListView_vtable_callback_reset(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  vtbl[].reset(self)

proc QListViewsetRootIndex*(self: gen_qlistview_types.QListView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQListView_virtualbase_setRootIndex(self.h, index.h)

proc cQListView_vtable_callback_setRootIndex(self: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  vtbl[].setRootIndex(self, slotval1)

proc QListViewevent*(self: gen_qlistview_types.QListView, e: gen_qcoreevent_types.QEvent): bool =
  fcQListView_virtualbase_event(self.h, e.h)

proc cQListView_vtable_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QListViewscrollContentsBy*(self: gen_qlistview_types.QListView, dx: cint, dy: cint): void =
  fcQListView_virtualbase_scrollContentsBy(self.h, dx, dy)

proc cQListView_vtable_callback_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = dx
  let slotval2 = dy
  vtbl[].scrollContentsBy(self, slotval1, slotval2)

proc QListViewdataChanged*(self: gen_qlistview_types.QListView, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: openArray[cint]): void =
  var roles_CArray = newSeq[cint](len(roles))
  for i in 0..<len(roles):
    roles_CArray[i] = roles[i]

  fcQListView_virtualbase_dataChanged(self.h, topLeft.h, bottomRight.h, struct_miqt_array(len: csize_t(len(roles)), data: if len(roles) == 0: nil else: addr(roles_CArray[0])))

proc cQListView_vtable_callback_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
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

proc QListViewrowsInserted*(self: gen_qlistview_types.QListView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fcQListView_virtualbase_rowsInserted(self.h, parent.h, start, endVal)

proc cQListView_vtable_callback_rowsInserted(self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  let slotval2 = start
  let slotval3 = endVal
  vtbl[].rowsInserted(self, slotval1, slotval2, slotval3)

proc QListViewrowsAboutToBeRemoved*(self: gen_qlistview_types.QListView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fcQListView_virtualbase_rowsAboutToBeRemoved(self.h, parent.h, start, endVal)

proc cQListView_vtable_callback_rowsAboutToBeRemoved(self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  let slotval2 = start
  let slotval3 = endVal
  vtbl[].rowsAboutToBeRemoved(self, slotval1, slotval2, slotval3)

proc QListViewmouseMoveEvent*(self: gen_qlistview_types.QListView, e: gen_qevent_types.QMouseEvent): void =
  fcQListView_virtualbase_mouseMoveEvent(self.h, e.h)

proc cQListView_vtable_callback_mouseMoveEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QListViewmouseReleaseEvent*(self: gen_qlistview_types.QListView, e: gen_qevent_types.QMouseEvent): void =
  fcQListView_virtualbase_mouseReleaseEvent(self.h, e.h)

proc cQListView_vtable_callback_mouseReleaseEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QListViewwheelEvent*(self: gen_qlistview_types.QListView, e: gen_qevent_types.QWheelEvent): void =
  fcQListView_virtualbase_wheelEvent(self.h, e.h)

proc cQListView_vtable_callback_wheelEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: e, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QListViewtimerEvent*(self: gen_qlistview_types.QListView, e: gen_qcoreevent_types.QTimerEvent): void =
  fcQListView_virtualbase_timerEvent(self.h, e.h)

proc cQListView_vtable_callback_timerEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: e, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QListViewresizeEvent*(self: gen_qlistview_types.QListView, e: gen_qevent_types.QResizeEvent): void =
  fcQListView_virtualbase_resizeEvent(self.h, e.h)

proc cQListView_vtable_callback_resizeEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: e, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QListViewdragMoveEvent*(self: gen_qlistview_types.QListView, e: gen_qevent_types.QDragMoveEvent): void =
  fcQListView_virtualbase_dragMoveEvent(self.h, e.h)

proc cQListView_vtable_callback_dragMoveEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: e, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QListViewdragLeaveEvent*(self: gen_qlistview_types.QListView, e: gen_qevent_types.QDragLeaveEvent): void =
  fcQListView_virtualbase_dragLeaveEvent(self.h, e.h)

proc cQListView_vtable_callback_dragLeaveEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: e, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QListViewdropEvent*(self: gen_qlistview_types.QListView, e: gen_qevent_types.QDropEvent): void =
  fcQListView_virtualbase_dropEvent(self.h, e.h)

proc cQListView_vtable_callback_dropEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: e, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QListViewstartDrag*(self: gen_qlistview_types.QListView, supportedActions: cint): void =
  fcQListView_virtualbase_startDrag(self.h, cint(supportedActions))

proc cQListView_vtable_callback_startDrag(self: pointer, supportedActions: cint): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = cint(supportedActions)
  vtbl[].startDrag(self, slotval1)

proc QListViewinitViewItemOption*(self: gen_qlistview_types.QListView, option: gen_qstyleoption_types.QStyleOptionViewItem): void =
  fcQListView_virtualbase_initViewItemOption(self.h, option.h)

proc cQListView_vtable_callback_initViewItemOption(self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  vtbl[].initViewItemOption(self, slotval1)

proc QListViewpaintEvent*(self: gen_qlistview_types.QListView, e: gen_qevent_types.QPaintEvent): void =
  fcQListView_virtualbase_paintEvent(self.h, e.h)

proc cQListView_vtable_callback_paintEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: e, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QListViewhorizontalOffset*(self: gen_qlistview_types.QListView): cint =
  fcQListView_virtualbase_horizontalOffset(self.h)

proc cQListView_vtable_callback_horizontalOffset(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  var virtualReturn = vtbl[].horizontalOffset(self)
  virtualReturn

proc QListViewverticalOffset*(self: gen_qlistview_types.QListView): cint =
  fcQListView_virtualbase_verticalOffset(self.h)

proc cQListView_vtable_callback_verticalOffset(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  var virtualReturn = vtbl[].verticalOffset(self)
  virtualReturn

proc QListViewmoveCursor*(self: gen_qlistview_types.QListView, cursorAction: cint, modifiers: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQListView_virtualbase_moveCursor(self.h, cint(cursorAction), cint(modifiers)), owned: true)

proc cQListView_vtable_callback_moveCursor(self: pointer, cursorAction: cint, modifiers: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = cint(cursorAction)
  let slotval2 = cint(modifiers)
  var virtualReturn = vtbl[].moveCursor(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QListViewsetSelection*(self: gen_qlistview_types.QListView, rect: gen_qrect_types.QRect, command: cint): void =
  fcQListView_virtualbase_setSelection(self.h, rect.h, cint(command))

proc cQListView_vtable_callback_setSelection(self: pointer, rect: pointer, command: cint): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qrect_types.QRect(h: rect, owned: false)
  let slotval2 = cint(command)
  vtbl[].setSelection(self, slotval1, slotval2)

proc QListViewvisualRegionForSelection*(self: gen_qlistview_types.QListView, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQListView_virtualbase_visualRegionForSelection(self.h, selection.h), owned: true)

proc cQListView_vtable_callback_visualRegionForSelection(self: pointer, selection: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection, owned: false)
  var virtualReturn = vtbl[].visualRegionForSelection(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QListViewselectedIndexes*(self: gen_qlistview_types.QListView): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQListView_virtualbase_selectedIndexes(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc cQListView_vtable_callback_selectedIndexes(self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  var virtualReturn = vtbl[].selectedIndexes(self)
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn[i].owned = false # TODO move?
    let virtualReturn_i_h = virtualReturn[i].h
    virtualReturn[i].h = nil
    virtualReturn_CArray[i] = virtualReturn_i_h

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QListViewupdateGeometries*(self: gen_qlistview_types.QListView): void =
  fcQListView_virtualbase_updateGeometries(self.h)

proc cQListView_vtable_callback_updateGeometries(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  vtbl[].updateGeometries(self)

proc QListViewisIndexHidden*(self: gen_qlistview_types.QListView, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQListView_virtualbase_isIndexHidden(self.h, index.h)

proc cQListView_vtable_callback_isIndexHidden(self: pointer, index: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].isIndexHidden(self, slotval1)
  virtualReturn

proc QListViewselectionChanged*(self: gen_qlistview_types.QListView, selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void =
  fcQListView_virtualbase_selectionChanged(self.h, selected.h, deselected.h)

proc cQListView_vtable_callback_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selected, owned: false)
  let slotval2 = gen_qitemselectionmodel_types.QItemSelection(h: deselected, owned: false)
  vtbl[].selectionChanged(self, slotval1, slotval2)

proc QListViewcurrentChanged*(self: gen_qlistview_types.QListView, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQListView_virtualbase_currentChanged(self.h, current.h, previous.h)

proc cQListView_vtable_callback_currentChanged(self: pointer, current: pointer, previous: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: current, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: previous, owned: false)
  vtbl[].currentChanged(self, slotval1, slotval2)

proc QListViewviewportSizeHint*(self: gen_qlistview_types.QListView): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQListView_virtualbase_viewportSizeHint(self.h), owned: true)

proc cQListView_vtable_callback_viewportSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  var virtualReturn = vtbl[].viewportSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QListViewsetModel*(self: gen_qlistview_types.QListView, model: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQListView_virtualbase_setModel(self.h, model.h)

proc cQListView_vtable_callback_setModel(self: pointer, model: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model, owned: false)
  vtbl[].setModel(self, slotval1)

proc QListViewsetSelectionModel*(self: gen_qlistview_types.QListView, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void =
  fcQListView_virtualbase_setSelectionModel(self.h, selectionModel.h)

proc cQListView_vtable_callback_setSelectionModel(self: pointer, selectionModel: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelectionModel(h: selectionModel, owned: false)
  vtbl[].setSelectionModel(self, slotval1)

proc QListViewkeyboardSearch*(self: gen_qlistview_types.QListView, search: openArray[char]): void =
  fcQListView_virtualbase_keyboardSearch(self.h, struct_miqt_string(data: if len(search) > 0: addr search[0] else: nil, len: csize_t(len(search))))

proc cQListView_vtable_callback_keyboardSearch(self: pointer, search: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let vsearch_ms = search
  let vsearchx_ret = string.fromBytes(vsearch_ms)
  c_free(vsearch_ms.data)
  let slotval1 = vsearchx_ret
  vtbl[].keyboardSearch(self, slotval1)

proc QListViewsizeHintForRow*(self: gen_qlistview_types.QListView, row: cint): cint =
  fcQListView_virtualbase_sizeHintForRow(self.h, row)

proc cQListView_vtable_callback_sizeHintForRow(self: pointer, row: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = row
  var virtualReturn = vtbl[].sizeHintForRow(self, slotval1)
  virtualReturn

proc QListViewsizeHintForColumn*(self: gen_qlistview_types.QListView, column: cint): cint =
  fcQListView_virtualbase_sizeHintForColumn(self.h, column)

proc cQListView_vtable_callback_sizeHintForColumn(self: pointer, column: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = column
  var virtualReturn = vtbl[].sizeHintForColumn(self, slotval1)
  virtualReturn

proc QListViewitemDelegateForIndex*(self: gen_qlistview_types.QListView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemdelegate_types.QAbstractItemDelegate =
  gen_qabstractitemdelegate_types.QAbstractItemDelegate(h: fcQListView_virtualbase_itemDelegateForIndex(self.h, index.h), owned: false)

proc cQListView_vtable_callback_itemDelegateForIndex(self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].itemDelegateForIndex(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QListViewinputMethodQuery*(self: gen_qlistview_types.QListView, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQListView_virtualbase_inputMethodQuery(self.h, cint(query)), owned: true)

proc cQListView_vtable_callback_inputMethodQuery(self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = cint(query)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QListViewselectAll*(self: gen_qlistview_types.QListView): void =
  fcQListView_virtualbase_selectAll(self.h)

proc cQListView_vtable_callback_selectAll(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  vtbl[].selectAll(self)

proc QListViewupdateEditorData*(self: gen_qlistview_types.QListView): void =
  fcQListView_virtualbase_updateEditorData(self.h)

proc cQListView_vtable_callback_updateEditorData(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  vtbl[].updateEditorData(self)

proc QListViewupdateEditorGeometries*(self: gen_qlistview_types.QListView): void =
  fcQListView_virtualbase_updateEditorGeometries(self.h)

proc cQListView_vtable_callback_updateEditorGeometries(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  vtbl[].updateEditorGeometries(self)

proc QListViewverticalScrollbarAction*(self: gen_qlistview_types.QListView, action: cint): void =
  fcQListView_virtualbase_verticalScrollbarAction(self.h, action)

proc cQListView_vtable_callback_verticalScrollbarAction(self: pointer, action: cint): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = action
  vtbl[].verticalScrollbarAction(self, slotval1)

proc QListViewhorizontalScrollbarAction*(self: gen_qlistview_types.QListView, action: cint): void =
  fcQListView_virtualbase_horizontalScrollbarAction(self.h, action)

proc cQListView_vtable_callback_horizontalScrollbarAction(self: pointer, action: cint): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = action
  vtbl[].horizontalScrollbarAction(self, slotval1)

proc QListViewverticalScrollbarValueChanged*(self: gen_qlistview_types.QListView, value: cint): void =
  fcQListView_virtualbase_verticalScrollbarValueChanged(self.h, value)

proc cQListView_vtable_callback_verticalScrollbarValueChanged(self: pointer, value: cint): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = value
  vtbl[].verticalScrollbarValueChanged(self, slotval1)

proc QListViewhorizontalScrollbarValueChanged*(self: gen_qlistview_types.QListView, value: cint): void =
  fcQListView_virtualbase_horizontalScrollbarValueChanged(self.h, value)

proc cQListView_vtable_callback_horizontalScrollbarValueChanged(self: pointer, value: cint): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = value
  vtbl[].horizontalScrollbarValueChanged(self, slotval1)

proc QListViewcloseEditor*(self: gen_qlistview_types.QListView, editor: gen_qwidget_types.QWidget, hint: cint): void =
  fcQListView_virtualbase_closeEditor(self.h, editor.h, cint(hint))

proc cQListView_vtable_callback_closeEditor(self: pointer, editor: pointer, hint: cint): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  let slotval2 = cint(hint)
  vtbl[].closeEditor(self, slotval1, slotval2)

proc QListViewcommitData*(self: gen_qlistview_types.QListView, editor: gen_qwidget_types.QWidget): void =
  fcQListView_virtualbase_commitData(self.h, editor.h)

proc cQListView_vtable_callback_commitData(self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  vtbl[].commitData(self, slotval1)

proc QListVieweditorDestroyed*(self: gen_qlistview_types.QListView, editor: gen_qobject_types.QObject): void =
  fcQListView_virtualbase_editorDestroyed(self.h, editor.h)

proc cQListView_vtable_callback_editorDestroyed(self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qobject_types.QObject(h: editor, owned: false)
  vtbl[].editorDestroyed(self, slotval1)

proc QListViewedit*(self: gen_qlistview_types.QListView, index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool =
  fcQListView_virtualbase_edit2(self.h, index.h, cint(trigger), event.h)

proc cQListView_vtable_callback_edit2(self: pointer, index: pointer, trigger: cint, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = cint(trigger)
  let slotval3 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].edit2(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QListViewselectionCommand*(self: gen_qlistview_types.QListView, index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint =
  cint(fcQListView_virtualbase_selectionCommand(self.h, index.h, event.h))

proc cQListView_vtable_callback_selectionCommand(self: pointer, index: pointer, event: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].selectionCommand(self, slotval1, slotval2)
  cint(virtualReturn)

proc QListViewfocusNextPrevChild*(self: gen_qlistview_types.QListView, next: bool): bool =
  fcQListView_virtualbase_focusNextPrevChild(self.h, next)

proc cQListView_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QListViewviewportEvent*(self: gen_qlistview_types.QListView, event: gen_qcoreevent_types.QEvent): bool =
  fcQListView_virtualbase_viewportEvent(self.h, event.h)

proc cQListView_vtable_callback_viewportEvent(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].viewportEvent(self, slotval1)
  virtualReturn

proc QListViewmousePressEvent*(self: gen_qlistview_types.QListView, event: gen_qevent_types.QMouseEvent): void =
  fcQListView_virtualbase_mousePressEvent(self.h, event.h)

proc cQListView_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QListViewmouseDoubleClickEvent*(self: gen_qlistview_types.QListView, event: gen_qevent_types.QMouseEvent): void =
  fcQListView_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc cQListView_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QListViewdragEnterEvent*(self: gen_qlistview_types.QListView, event: gen_qevent_types.QDragEnterEvent): void =
  fcQListView_virtualbase_dragEnterEvent(self.h, event.h)

proc cQListView_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QListViewfocusInEvent*(self: gen_qlistview_types.QListView, event: gen_qevent_types.QFocusEvent): void =
  fcQListView_virtualbase_focusInEvent(self.h, event.h)

proc cQListView_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QListViewfocusOutEvent*(self: gen_qlistview_types.QListView, event: gen_qevent_types.QFocusEvent): void =
  fcQListView_virtualbase_focusOutEvent(self.h, event.h)

proc cQListView_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QListViewkeyPressEvent*(self: gen_qlistview_types.QListView, event: gen_qevent_types.QKeyEvent): void =
  fcQListView_virtualbase_keyPressEvent(self.h, event.h)

proc cQListView_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QListViewinputMethodEvent*(self: gen_qlistview_types.QListView, event: gen_qevent_types.QInputMethodEvent): void =
  fcQListView_virtualbase_inputMethodEvent(self.h, event.h)

proc cQListView_vtable_callback_inputMethodEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QListVieweventFilter*(self: gen_qlistview_types.QListView, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQListView_virtualbase_eventFilter(self.h, objectVal.h, event.h)

proc cQListView_vtable_callback_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qobject_types.QObject(h: objectVal, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QListViewminimumSizeHint*(self: gen_qlistview_types.QListView): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQListView_virtualbase_minimumSizeHint(self.h), owned: true)

proc cQListView_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QListViewsizeHint*(self: gen_qlistview_types.QListView): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQListView_virtualbase_sizeHint(self.h), owned: true)

proc cQListView_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QListViewsetupViewport*(self: gen_qlistview_types.QListView, viewport: gen_qwidget_types.QWidget): void =
  fcQListView_virtualbase_setupViewport(self.h, viewport.h)

proc cQListView_vtable_callback_setupViewport(self: pointer, viewport: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: viewport, owned: false)
  vtbl[].setupViewport(self, slotval1)

proc QListViewcontextMenuEvent*(self: gen_qlistview_types.QListView, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQListView_virtualbase_contextMenuEvent(self.h, param1.h)

proc cQListView_vtable_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QListViewchangeEvent*(self: gen_qlistview_types.QListView, param1: gen_qcoreevent_types.QEvent): void =
  fcQListView_virtualbase_changeEvent(self.h, param1.h)

proc cQListView_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QListViewinitStyleOption*(self: gen_qlistview_types.QListView, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fcQListView_virtualbase_initStyleOption(self.h, option.h)

proc cQListView_vtable_callback_initStyleOption(self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionFrame(h: option, owned: false)
  vtbl[].initStyleOption(self, slotval1)

proc QListViewdevType*(self: gen_qlistview_types.QListView): cint =
  fcQListView_virtualbase_devType(self.h)

proc cQListView_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QListViewsetVisible*(self: gen_qlistview_types.QListView, visible: bool): void =
  fcQListView_virtualbase_setVisible(self.h, visible)

proc cQListView_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QListViewheightForWidth*(self: gen_qlistview_types.QListView, param1: cint): cint =
  fcQListView_virtualbase_heightForWidth(self.h, param1)

proc cQListView_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QListViewhasHeightForWidth*(self: gen_qlistview_types.QListView): bool =
  fcQListView_virtualbase_hasHeightForWidth(self.h)

proc cQListView_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QListViewpaintEngine*(self: gen_qlistview_types.QListView): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQListView_virtualbase_paintEngine(self.h), owned: false)

proc cQListView_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QListViewkeyReleaseEvent*(self: gen_qlistview_types.QListView, event: gen_qevent_types.QKeyEvent): void =
  fcQListView_virtualbase_keyReleaseEvent(self.h, event.h)

proc cQListView_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QListViewenterEvent*(self: gen_qlistview_types.QListView, event: gen_qevent_types.QEnterEvent): void =
  fcQListView_virtualbase_enterEvent(self.h, event.h)

proc cQListView_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QListViewleaveEvent*(self: gen_qlistview_types.QListView, event: gen_qcoreevent_types.QEvent): void =
  fcQListView_virtualbase_leaveEvent(self.h, event.h)

proc cQListView_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QListViewmoveEvent*(self: gen_qlistview_types.QListView, event: gen_qevent_types.QMoveEvent): void =
  fcQListView_virtualbase_moveEvent(self.h, event.h)

proc cQListView_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QListViewcloseEvent*(self: gen_qlistview_types.QListView, event: gen_qevent_types.QCloseEvent): void =
  fcQListView_virtualbase_closeEvent(self.h, event.h)

proc cQListView_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QListViewtabletEvent*(self: gen_qlistview_types.QListView, event: gen_qevent_types.QTabletEvent): void =
  fcQListView_virtualbase_tabletEvent(self.h, event.h)

proc cQListView_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QListViewactionEvent*(self: gen_qlistview_types.QListView, event: gen_qevent_types.QActionEvent): void =
  fcQListView_virtualbase_actionEvent(self.h, event.h)

proc cQListView_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QListViewshowEvent*(self: gen_qlistview_types.QListView, event: gen_qevent_types.QShowEvent): void =
  fcQListView_virtualbase_showEvent(self.h, event.h)

proc cQListView_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QListViewhideEvent*(self: gen_qlistview_types.QListView, event: gen_qevent_types.QHideEvent): void =
  fcQListView_virtualbase_hideEvent(self.h, event.h)

proc cQListView_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QListViewnativeEvent*(self: gen_qlistview_types.QListView, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool =
  fcQListView_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc cQListView_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QListViewmetric*(self: gen_qlistview_types.QListView, param1: cint): cint =
  fcQListView_virtualbase_metric(self.h, cint(param1))

proc cQListView_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QListViewinitPainter*(self: gen_qlistview_types.QListView, painter: gen_qpainter_types.QPainter): void =
  fcQListView_virtualbase_initPainter(self.h, painter.h)

proc cQListView_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QListViewredirected*(self: gen_qlistview_types.QListView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQListView_virtualbase_redirected(self.h, offset.h), owned: false)

proc cQListView_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QListViewsharedPainter*(self: gen_qlistview_types.QListView): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQListView_virtualbase_sharedPainter(self.h), owned: false)

proc cQListView_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QListViewchildEvent*(self: gen_qlistview_types.QListView, event: gen_qcoreevent_types.QChildEvent): void =
  fcQListView_virtualbase_childEvent(self.h, event.h)

proc cQListView_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QListViewcustomEvent*(self: gen_qlistview_types.QListView, event: gen_qcoreevent_types.QEvent): void =
  fcQListView_virtualbase_customEvent(self.h, event.h)

proc cQListView_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QListViewconnectNotify*(self: gen_qlistview_types.QListView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQListView_virtualbase_connectNotify(self.h, signal.h)

proc cQListView_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QListViewdisconnectNotify*(self: gen_qlistview_types.QListView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQListView_virtualbase_disconnectNotify(self.h, signal.h)

proc cQListView_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](fcQListView_vdata(self))
  let self = QListView(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQListView* {.inheritable.} = ref object of QListView
  vtbl*: cQListViewVTable
method metaObject*(self: VirtualQListView): gen_qobjectdefs_types.QMetaObject {.base.} =
  QListViewmetaObject(self[])
proc cQListView_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQListView, param1: cstring): pointer {.base.} =
  QListViewmetacast(self[], param1)
proc cQListView_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQListView, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QListViewmetacall(self[], param1, param2, param3)
proc cQListView_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method visualRect*(self: VirtualQListView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect {.base.} =
  QListViewvisualRect(self[], index)
proc cQListView_method_callback_visualRect(self: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.visualRect(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method scrollTo*(self: VirtualQListView, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void {.base.} =
  QListViewscrollTo(self[], index, hint)
proc cQListView_method_callback_scrollTo(self: pointer, index: pointer, hint: cint): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = cint(hint)
  inst.scrollTo(slotval1, slotval2)

method indexAt*(self: VirtualQListView, p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QListViewindexAt(self[], p)
proc cQListView_method_callback_indexAt(self: pointer, p: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: p, owned: false)
  var virtualReturn = inst.indexAt(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method doItemsLayout*(self: VirtualQListView): void {.base.} =
  QListViewdoItemsLayout(self[])
proc cQListView_method_callback_doItemsLayout(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  inst.doItemsLayout()

method reset*(self: VirtualQListView): void {.base.} =
  QListViewreset(self[])
proc cQListView_method_callback_reset(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  inst.reset()

method setRootIndex*(self: VirtualQListView, index: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QListViewsetRootIndex(self[], index)
proc cQListView_method_callback_setRootIndex(self: pointer, index: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  inst.setRootIndex(slotval1)

method event*(self: VirtualQListView, e: gen_qcoreevent_types.QEvent): bool {.base.} =
  QListViewevent(self[], e)
proc cQListView_method_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method scrollContentsBy*(self: VirtualQListView, dx: cint, dy: cint): void {.base.} =
  QListViewscrollContentsBy(self[], dx, dy)
proc cQListView_method_callback_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = dx
  let slotval2 = dy
  inst.scrollContentsBy(slotval1, slotval2)

method dataChanged*(self: VirtualQListView, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: openArray[cint]): void {.base.} =
  QListViewdataChanged(self[], topLeft, bottomRight, roles)
proc cQListView_method_callback_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
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

method rowsInserted*(self: VirtualQListView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void {.base.} =
  QListViewrowsInserted(self[], parent, start, endVal)
proc cQListView_method_callback_rowsInserted(self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  let slotval2 = start
  let slotval3 = endVal
  inst.rowsInserted(slotval1, slotval2, slotval3)

method rowsAboutToBeRemoved*(self: VirtualQListView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void {.base.} =
  QListViewrowsAboutToBeRemoved(self[], parent, start, endVal)
proc cQListView_method_callback_rowsAboutToBeRemoved(self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  let slotval2 = start
  let slotval3 = endVal
  inst.rowsAboutToBeRemoved(slotval1, slotval2, slotval3)

method mouseMoveEvent*(self: VirtualQListView, e: gen_qevent_types.QMouseEvent): void {.base.} =
  QListViewmouseMoveEvent(self[], e)
proc cQListView_method_callback_mouseMoveEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  inst.mouseMoveEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQListView, e: gen_qevent_types.QMouseEvent): void {.base.} =
  QListViewmouseReleaseEvent(self[], e)
proc cQListView_method_callback_mouseReleaseEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  inst.mouseReleaseEvent(slotval1)

method wheelEvent*(self: VirtualQListView, e: gen_qevent_types.QWheelEvent): void {.base.} =
  QListViewwheelEvent(self[], e)
proc cQListView_method_callback_wheelEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: e, owned: false)
  inst.wheelEvent(slotval1)

method timerEvent*(self: VirtualQListView, e: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QListViewtimerEvent(self[], e)
proc cQListView_method_callback_timerEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: e, owned: false)
  inst.timerEvent(slotval1)

method resizeEvent*(self: VirtualQListView, e: gen_qevent_types.QResizeEvent): void {.base.} =
  QListViewresizeEvent(self[], e)
proc cQListView_method_callback_resizeEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: e, owned: false)
  inst.resizeEvent(slotval1)

method dragMoveEvent*(self: VirtualQListView, e: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QListViewdragMoveEvent(self[], e)
proc cQListView_method_callback_dragMoveEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: e, owned: false)
  inst.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQListView, e: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QListViewdragLeaveEvent(self[], e)
proc cQListView_method_callback_dragLeaveEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: e, owned: false)
  inst.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQListView, e: gen_qevent_types.QDropEvent): void {.base.} =
  QListViewdropEvent(self[], e)
proc cQListView_method_callback_dropEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: e, owned: false)
  inst.dropEvent(slotval1)

method startDrag*(self: VirtualQListView, supportedActions: cint): void {.base.} =
  QListViewstartDrag(self[], supportedActions)
proc cQListView_method_callback_startDrag(self: pointer, supportedActions: cint): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = cint(supportedActions)
  inst.startDrag(slotval1)

method initViewItemOption*(self: VirtualQListView, option: gen_qstyleoption_types.QStyleOptionViewItem): void {.base.} =
  QListViewinitViewItemOption(self[], option)
proc cQListView_method_callback_initViewItemOption(self: pointer, option: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  inst.initViewItemOption(slotval1)

method paintEvent*(self: VirtualQListView, e: gen_qevent_types.QPaintEvent): void {.base.} =
  QListViewpaintEvent(self[], e)
proc cQListView_method_callback_paintEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: e, owned: false)
  inst.paintEvent(slotval1)

method horizontalOffset*(self: VirtualQListView): cint {.base.} =
  QListViewhorizontalOffset(self[])
proc cQListView_method_callback_horizontalOffset(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  var virtualReturn = inst.horizontalOffset()
  virtualReturn

method verticalOffset*(self: VirtualQListView): cint {.base.} =
  QListViewverticalOffset(self[])
proc cQListView_method_callback_verticalOffset(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  var virtualReturn = inst.verticalOffset()
  virtualReturn

method moveCursor*(self: VirtualQListView, cursorAction: cint, modifiers: cint): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QListViewmoveCursor(self[], cursorAction, modifiers)
proc cQListView_method_callback_moveCursor(self: pointer, cursorAction: cint, modifiers: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = cint(cursorAction)
  let slotval2 = cint(modifiers)
  var virtualReturn = inst.moveCursor(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method setSelection*(self: VirtualQListView, rect: gen_qrect_types.QRect, command: cint): void {.base.} =
  QListViewsetSelection(self[], rect, command)
proc cQListView_method_callback_setSelection(self: pointer, rect: pointer, command: cint): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qrect_types.QRect(h: rect, owned: false)
  let slotval2 = cint(command)
  inst.setSelection(slotval1, slotval2)

method visualRegionForSelection*(self: VirtualQListView, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion {.base.} =
  QListViewvisualRegionForSelection(self[], selection)
proc cQListView_method_callback_visualRegionForSelection(self: pointer, selection: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection, owned: false)
  var virtualReturn = inst.visualRegionForSelection(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method selectedIndexes*(self: VirtualQListView): seq[gen_qabstractitemmodel_types.QModelIndex] {.base.} =
  QListViewselectedIndexes(self[])
proc cQListView_method_callback_selectedIndexes(self: pointer): struct_miqt_array {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  var virtualReturn = inst.selectedIndexes()
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn[i].owned = false # TODO move?
    let virtualReturn_i_h = virtualReturn[i].h
    virtualReturn[i].h = nil
    virtualReturn_CArray[i] = virtualReturn_i_h

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

method updateGeometries*(self: VirtualQListView): void {.base.} =
  QListViewupdateGeometries(self[])
proc cQListView_method_callback_updateGeometries(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  inst.updateGeometries()

method isIndexHidden*(self: VirtualQListView, index: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QListViewisIndexHidden(self[], index)
proc cQListView_method_callback_isIndexHidden(self: pointer, index: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.isIndexHidden(slotval1)
  virtualReturn

method selectionChanged*(self: VirtualQListView, selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void {.base.} =
  QListViewselectionChanged(self[], selected, deselected)
proc cQListView_method_callback_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selected, owned: false)
  let slotval2 = gen_qitemselectionmodel_types.QItemSelection(h: deselected, owned: false)
  inst.selectionChanged(slotval1, slotval2)

method currentChanged*(self: VirtualQListView, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QListViewcurrentChanged(self[], current, previous)
proc cQListView_method_callback_currentChanged(self: pointer, current: pointer, previous: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: current, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: previous, owned: false)
  inst.currentChanged(slotval1, slotval2)

method viewportSizeHint*(self: VirtualQListView): gen_qsize_types.QSize {.base.} =
  QListViewviewportSizeHint(self[])
proc cQListView_method_callback_viewportSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  var virtualReturn = inst.viewportSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method setModel*(self: VirtualQListView, model: gen_qabstractitemmodel_types.QAbstractItemModel): void {.base.} =
  QListViewsetModel(self[], model)
proc cQListView_method_callback_setModel(self: pointer, model: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model, owned: false)
  inst.setModel(slotval1)

method setSelectionModel*(self: VirtualQListView, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void {.base.} =
  QListViewsetSelectionModel(self[], selectionModel)
proc cQListView_method_callback_setSelectionModel(self: pointer, selectionModel: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelectionModel(h: selectionModel, owned: false)
  inst.setSelectionModel(slotval1)

method keyboardSearch*(self: VirtualQListView, search: openArray[char]): void {.base.} =
  QListViewkeyboardSearch(self[], search)
proc cQListView_method_callback_keyboardSearch(self: pointer, search: struct_miqt_string): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let vsearch_ms = search
  let vsearchx_ret = string.fromBytes(vsearch_ms)
  c_free(vsearch_ms.data)
  let slotval1 = vsearchx_ret
  inst.keyboardSearch(slotval1)

method sizeHintForRow*(self: VirtualQListView, row: cint): cint {.base.} =
  QListViewsizeHintForRow(self[], row)
proc cQListView_method_callback_sizeHintForRow(self: pointer, row: cint): cint {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = row
  var virtualReturn = inst.sizeHintForRow(slotval1)
  virtualReturn

method sizeHintForColumn*(self: VirtualQListView, column: cint): cint {.base.} =
  QListViewsizeHintForColumn(self[], column)
proc cQListView_method_callback_sizeHintForColumn(self: pointer, column: cint): cint {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = column
  var virtualReturn = inst.sizeHintForColumn(slotval1)
  virtualReturn

method itemDelegateForIndex*(self: VirtualQListView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemdelegate_types.QAbstractItemDelegate {.base.} =
  QListViewitemDelegateForIndex(self[], index)
proc cQListView_method_callback_itemDelegateForIndex(self: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.itemDelegateForIndex(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodQuery*(self: VirtualQListView, query: cint): gen_qvariant_types.QVariant {.base.} =
  QListViewinputMethodQuery(self[], query)
proc cQListView_method_callback_inputMethodQuery(self: pointer, query: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = cint(query)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method selectAll*(self: VirtualQListView): void {.base.} =
  QListViewselectAll(self[])
proc cQListView_method_callback_selectAll(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  inst.selectAll()

method updateEditorData*(self: VirtualQListView): void {.base.} =
  QListViewupdateEditorData(self[])
proc cQListView_method_callback_updateEditorData(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  inst.updateEditorData()

method updateEditorGeometries*(self: VirtualQListView): void {.base.} =
  QListViewupdateEditorGeometries(self[])
proc cQListView_method_callback_updateEditorGeometries(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  inst.updateEditorGeometries()

method verticalScrollbarAction*(self: VirtualQListView, action: cint): void {.base.} =
  QListViewverticalScrollbarAction(self[], action)
proc cQListView_method_callback_verticalScrollbarAction(self: pointer, action: cint): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = action
  inst.verticalScrollbarAction(slotval1)

method horizontalScrollbarAction*(self: VirtualQListView, action: cint): void {.base.} =
  QListViewhorizontalScrollbarAction(self[], action)
proc cQListView_method_callback_horizontalScrollbarAction(self: pointer, action: cint): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = action
  inst.horizontalScrollbarAction(slotval1)

method verticalScrollbarValueChanged*(self: VirtualQListView, value: cint): void {.base.} =
  QListViewverticalScrollbarValueChanged(self[], value)
proc cQListView_method_callback_verticalScrollbarValueChanged(self: pointer, value: cint): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = value
  inst.verticalScrollbarValueChanged(slotval1)

method horizontalScrollbarValueChanged*(self: VirtualQListView, value: cint): void {.base.} =
  QListViewhorizontalScrollbarValueChanged(self[], value)
proc cQListView_method_callback_horizontalScrollbarValueChanged(self: pointer, value: cint): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = value
  inst.horizontalScrollbarValueChanged(slotval1)

method closeEditor*(self: VirtualQListView, editor: gen_qwidget_types.QWidget, hint: cint): void {.base.} =
  QListViewcloseEditor(self[], editor, hint)
proc cQListView_method_callback_closeEditor(self: pointer, editor: pointer, hint: cint): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  let slotval2 = cint(hint)
  inst.closeEditor(slotval1, slotval2)

method commitData*(self: VirtualQListView, editor: gen_qwidget_types.QWidget): void {.base.} =
  QListViewcommitData(self[], editor)
proc cQListView_method_callback_commitData(self: pointer, editor: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  inst.commitData(slotval1)

method editorDestroyed*(self: VirtualQListView, editor: gen_qobject_types.QObject): void {.base.} =
  QListVieweditorDestroyed(self[], editor)
proc cQListView_method_callback_editorDestroyed(self: pointer, editor: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: editor, owned: false)
  inst.editorDestroyed(slotval1)

method edit*(self: VirtualQListView, index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QListViewedit(self[], index, trigger, event)
proc cQListView_method_callback_edit2(self: pointer, index: pointer, trigger: cint, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = cint(trigger)
  let slotval3 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.edit(slotval1, slotval2, slotval3)
  virtualReturn

method selectionCommand*(self: VirtualQListView, index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint {.base.} =
  QListViewselectionCommand(self[], index, event)
proc cQListView_method_callback_selectionCommand(self: pointer, index: pointer, event: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.selectionCommand(slotval1, slotval2)
  cint(virtualReturn)

method focusNextPrevChild*(self: VirtualQListView, next: bool): bool {.base.} =
  QListViewfocusNextPrevChild(self[], next)
proc cQListView_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method viewportEvent*(self: VirtualQListView, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QListViewviewportEvent(self[], event)
proc cQListView_method_callback_viewportEvent(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.viewportEvent(slotval1)
  virtualReturn

method mousePressEvent*(self: VirtualQListView, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QListViewmousePressEvent(self[], event)
proc cQListView_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQListView, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QListViewmouseDoubleClickEvent(self[], event)
proc cQListView_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method dragEnterEvent*(self: VirtualQListView, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QListViewdragEnterEvent(self[], event)
proc cQListView_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

method focusInEvent*(self: VirtualQListView, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QListViewfocusInEvent(self[], event)
proc cQListView_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQListView, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QListViewfocusOutEvent(self[], event)
proc cQListView_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

method keyPressEvent*(self: VirtualQListView, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QListViewkeyPressEvent(self[], event)
proc cQListView_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyPressEvent(slotval1)

method inputMethodEvent*(self: VirtualQListView, event: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QListViewinputMethodEvent(self[], event)
proc cQListView_method_callback_inputMethodEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event, owned: false)
  inst.inputMethodEvent(slotval1)

method eventFilter*(self: VirtualQListView, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QListVieweventFilter(self[], objectVal, event)
proc cQListView_method_callback_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: objectVal, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method minimumSizeHint*(self: VirtualQListView): gen_qsize_types.QSize {.base.} =
  QListViewminimumSizeHint(self[])
proc cQListView_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sizeHint*(self: VirtualQListView): gen_qsize_types.QSize {.base.} =
  QListViewsizeHint(self[])
proc cQListView_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method setupViewport*(self: VirtualQListView, viewport: gen_qwidget_types.QWidget): void {.base.} =
  QListViewsetupViewport(self[], viewport)
proc cQListView_method_callback_setupViewport(self: pointer, viewport: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: viewport, owned: false)
  inst.setupViewport(slotval1)

method contextMenuEvent*(self: VirtualQListView, param1: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QListViewcontextMenuEvent(self[], param1)
proc cQListView_method_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  inst.contextMenuEvent(slotval1)

method changeEvent*(self: VirtualQListView, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QListViewchangeEvent(self[], param1)
proc cQListView_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.changeEvent(slotval1)

method initStyleOption*(self: VirtualQListView, option: gen_qstyleoption_types.QStyleOptionFrame): void {.base.} =
  QListViewinitStyleOption(self[], option)
proc cQListView_method_callback_initStyleOption(self: pointer, option: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qstyleoption_types.QStyleOptionFrame(h: option, owned: false)
  inst.initStyleOption(slotval1)

method devType*(self: VirtualQListView): cint {.base.} =
  QListViewdevType(self[])
proc cQListView_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

method setVisible*(self: VirtualQListView, visible: bool): void {.base.} =
  QListViewsetVisible(self[], visible)
proc cQListView_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

method heightForWidth*(self: VirtualQListView, param1: cint): cint {.base.} =
  QListViewheightForWidth(self[], param1)
proc cQListView_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQListView): bool {.base.} =
  QListViewhasHeightForWidth(self[])
proc cQListView_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQListView): gen_qpaintengine_types.QPaintEngine {.base.} =
  QListViewpaintEngine(self[])
proc cQListView_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method keyReleaseEvent*(self: VirtualQListView, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QListViewkeyReleaseEvent(self[], event)
proc cQListView_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

method enterEvent*(self: VirtualQListView, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QListViewenterEvent(self[], event)
proc cQListView_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

method leaveEvent*(self: VirtualQListView, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QListViewleaveEvent(self[], event)
proc cQListView_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

method moveEvent*(self: VirtualQListView, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QListViewmoveEvent(self[], event)
proc cQListView_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

method closeEvent*(self: VirtualQListView, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QListViewcloseEvent(self[], event)
proc cQListView_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

method tabletEvent*(self: VirtualQListView, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QListViewtabletEvent(self[], event)
proc cQListView_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

method actionEvent*(self: VirtualQListView, event: gen_qevent_types.QActionEvent): void {.base.} =
  QListViewactionEvent(self[], event)
proc cQListView_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

method showEvent*(self: VirtualQListView, event: gen_qevent_types.QShowEvent): void {.base.} =
  QListViewshowEvent(self[], event)
proc cQListView_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

method hideEvent*(self: VirtualQListView, event: gen_qevent_types.QHideEvent): void {.base.} =
  QListViewhideEvent(self[], event)
proc cQListView_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

method nativeEvent*(self: VirtualQListView, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QListViewnativeEvent(self[], eventType, message, resultVal)
proc cQListView_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method metric*(self: VirtualQListView, param1: cint): cint {.base.} =
  QListViewmetric(self[], param1)
proc cQListView_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQListView, painter: gen_qpainter_types.QPainter): void {.base.} =
  QListViewinitPainter(self[], painter)
proc cQListView_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

method redirected*(self: VirtualQListView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QListViewredirected(self[], offset)
proc cQListView_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQListView): gen_qpainter_types.QPainter {.base.} =
  QListViewsharedPainter(self[])
proc cQListView_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method childEvent*(self: VirtualQListView, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QListViewchildEvent(self[], event)
proc cQListView_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQListView, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QListViewcustomEvent(self[], event)
proc cQListView_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQListView, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QListViewconnectNotify(self[], signal)
proc cQListView_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQListView, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QListViewdisconnectNotify(self[], signal)
proc cQListView_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQListView](fcQListView_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc resizeContents*(self: gen_qlistview_types.QListView, width: cint, height: cint): void =
  fcQListView_protectedbase_resizeContents(self.h, width, height)

proc contentsSize*(self: gen_qlistview_types.QListView): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQListView_protectedbase_contentsSize(self.h), owned: true)

proc rectForIndex*(self: gen_qlistview_types.QListView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQListView_protectedbase_rectForIndex(self.h, index.h), owned: true)

proc setPositionForIndex*(self: gen_qlistview_types.QListView, position: gen_qpoint_types.QPoint, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQListView_protectedbase_setPositionForIndex(self.h, position.h, index.h)

proc state*(self: gen_qlistview_types.QListView): cint =
  cint(fcQListView_protectedbase_state(self.h))

proc setState*(self: gen_qlistview_types.QListView, state: cint): void =
  fcQListView_protectedbase_setState(self.h, cint(state))

proc scheduleDelayedItemsLayout*(self: gen_qlistview_types.QListView): void =
  fcQListView_protectedbase_scheduleDelayedItemsLayout(self.h)

proc executeDelayedItemsLayout*(self: gen_qlistview_types.QListView): void =
  fcQListView_protectedbase_executeDelayedItemsLayout(self.h)

proc setDirtyRegion*(self: gen_qlistview_types.QListView, region: gen_qregion_types.QRegion): void =
  fcQListView_protectedbase_setDirtyRegion(self.h, region.h)

proc scrollDirtyRegion*(self: gen_qlistview_types.QListView, dx: cint, dy: cint): void =
  fcQListView_protectedbase_scrollDirtyRegion(self.h, dx, dy)

proc dirtyRegionOffset*(self: gen_qlistview_types.QListView): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQListView_protectedbase_dirtyRegionOffset(self.h), owned: true)

proc startAutoScroll*(self: gen_qlistview_types.QListView): void =
  fcQListView_protectedbase_startAutoScroll(self.h)

proc stopAutoScroll*(self: gen_qlistview_types.QListView): void =
  fcQListView_protectedbase_stopAutoScroll(self.h)

proc doAutoScroll*(self: gen_qlistview_types.QListView): void =
  fcQListView_protectedbase_doAutoScroll(self.h)

proc dropIndicatorPosition*(self: gen_qlistview_types.QListView): cint =
  cint(fcQListView_protectedbase_dropIndicatorPosition(self.h))

proc setViewportMargins*(self: gen_qlistview_types.QListView, left: cint, top: cint, right: cint, bottom: cint): void =
  fcQListView_protectedbase_setViewportMargins(self.h, left, top, right, bottom)

proc viewportMargins*(self: gen_qlistview_types.QListView): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQListView_protectedbase_viewportMargins(self.h), owned: true)

proc drawFrame*(self: gen_qlistview_types.QListView, param1: gen_qpainter_types.QPainter): void =
  fcQListView_protectedbase_drawFrame(self.h, param1.h)

proc updateMicroFocus*(self: gen_qlistview_types.QListView): void =
  fcQListView_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qlistview_types.QListView): void =
  fcQListView_protectedbase_create(self.h)

proc destroy*(self: gen_qlistview_types.QListView): void =
  fcQListView_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qlistview_types.QListView): bool =
  fcQListView_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qlistview_types.QListView): bool =
  fcQListView_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qlistview_types.QListView): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQListView_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qlistview_types.QListView): cint =
  fcQListView_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qlistview_types.QListView, signal: cstring): cint =
  fcQListView_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qlistview_types.QListView, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQListView_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qlistview_types.QListView,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QListViewVTable = nil): gen_qlistview_types.QListView =
  let vtbl = if vtbl == nil: new QListViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QListViewVTable](fcQListView_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQListView_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQListView_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQListView_vtable_callback_metacall
  if not isNil(vtbl[].visualRect):
    vtbl[].vtbl.visualRect = cQListView_vtable_callback_visualRect
  if not isNil(vtbl[].scrollTo):
    vtbl[].vtbl.scrollTo = cQListView_vtable_callback_scrollTo
  if not isNil(vtbl[].indexAt):
    vtbl[].vtbl.indexAt = cQListView_vtable_callback_indexAt
  if not isNil(vtbl[].doItemsLayout):
    vtbl[].vtbl.doItemsLayout = cQListView_vtable_callback_doItemsLayout
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = cQListView_vtable_callback_reset
  if not isNil(vtbl[].setRootIndex):
    vtbl[].vtbl.setRootIndex = cQListView_vtable_callback_setRootIndex
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQListView_vtable_callback_event
  if not isNil(vtbl[].scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = cQListView_vtable_callback_scrollContentsBy
  if not isNil(vtbl[].dataChanged):
    vtbl[].vtbl.dataChanged = cQListView_vtable_callback_dataChanged
  if not isNil(vtbl[].rowsInserted):
    vtbl[].vtbl.rowsInserted = cQListView_vtable_callback_rowsInserted
  if not isNil(vtbl[].rowsAboutToBeRemoved):
    vtbl[].vtbl.rowsAboutToBeRemoved = cQListView_vtable_callback_rowsAboutToBeRemoved
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQListView_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQListView_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQListView_vtable_callback_wheelEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQListView_vtable_callback_timerEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQListView_vtable_callback_resizeEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQListView_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQListView_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQListView_vtable_callback_dropEvent
  if not isNil(vtbl[].startDrag):
    vtbl[].vtbl.startDrag = cQListView_vtable_callback_startDrag
  if not isNil(vtbl[].initViewItemOption):
    vtbl[].vtbl.initViewItemOption = cQListView_vtable_callback_initViewItemOption
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQListView_vtable_callback_paintEvent
  if not isNil(vtbl[].horizontalOffset):
    vtbl[].vtbl.horizontalOffset = cQListView_vtable_callback_horizontalOffset
  if not isNil(vtbl[].verticalOffset):
    vtbl[].vtbl.verticalOffset = cQListView_vtable_callback_verticalOffset
  if not isNil(vtbl[].moveCursor):
    vtbl[].vtbl.moveCursor = cQListView_vtable_callback_moveCursor
  if not isNil(vtbl[].setSelection):
    vtbl[].vtbl.setSelection = cQListView_vtable_callback_setSelection
  if not isNil(vtbl[].visualRegionForSelection):
    vtbl[].vtbl.visualRegionForSelection = cQListView_vtable_callback_visualRegionForSelection
  if not isNil(vtbl[].selectedIndexes):
    vtbl[].vtbl.selectedIndexes = cQListView_vtable_callback_selectedIndexes
  if not isNil(vtbl[].updateGeometries):
    vtbl[].vtbl.updateGeometries = cQListView_vtable_callback_updateGeometries
  if not isNil(vtbl[].isIndexHidden):
    vtbl[].vtbl.isIndexHidden = cQListView_vtable_callback_isIndexHidden
  if not isNil(vtbl[].selectionChanged):
    vtbl[].vtbl.selectionChanged = cQListView_vtable_callback_selectionChanged
  if not isNil(vtbl[].currentChanged):
    vtbl[].vtbl.currentChanged = cQListView_vtable_callback_currentChanged
  if not isNil(vtbl[].viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = cQListView_vtable_callback_viewportSizeHint
  if not isNil(vtbl[].setModel):
    vtbl[].vtbl.setModel = cQListView_vtable_callback_setModel
  if not isNil(vtbl[].setSelectionModel):
    vtbl[].vtbl.setSelectionModel = cQListView_vtable_callback_setSelectionModel
  if not isNil(vtbl[].keyboardSearch):
    vtbl[].vtbl.keyboardSearch = cQListView_vtable_callback_keyboardSearch
  if not isNil(vtbl[].sizeHintForRow):
    vtbl[].vtbl.sizeHintForRow = cQListView_vtable_callback_sizeHintForRow
  if not isNil(vtbl[].sizeHintForColumn):
    vtbl[].vtbl.sizeHintForColumn = cQListView_vtable_callback_sizeHintForColumn
  if not isNil(vtbl[].itemDelegateForIndex):
    vtbl[].vtbl.itemDelegateForIndex = cQListView_vtable_callback_itemDelegateForIndex
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQListView_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].selectAll):
    vtbl[].vtbl.selectAll = cQListView_vtable_callback_selectAll
  if not isNil(vtbl[].updateEditorData):
    vtbl[].vtbl.updateEditorData = cQListView_vtable_callback_updateEditorData
  if not isNil(vtbl[].updateEditorGeometries):
    vtbl[].vtbl.updateEditorGeometries = cQListView_vtable_callback_updateEditorGeometries
  if not isNil(vtbl[].verticalScrollbarAction):
    vtbl[].vtbl.verticalScrollbarAction = cQListView_vtable_callback_verticalScrollbarAction
  if not isNil(vtbl[].horizontalScrollbarAction):
    vtbl[].vtbl.horizontalScrollbarAction = cQListView_vtable_callback_horizontalScrollbarAction
  if not isNil(vtbl[].verticalScrollbarValueChanged):
    vtbl[].vtbl.verticalScrollbarValueChanged = cQListView_vtable_callback_verticalScrollbarValueChanged
  if not isNil(vtbl[].horizontalScrollbarValueChanged):
    vtbl[].vtbl.horizontalScrollbarValueChanged = cQListView_vtable_callback_horizontalScrollbarValueChanged
  if not isNil(vtbl[].closeEditor):
    vtbl[].vtbl.closeEditor = cQListView_vtable_callback_closeEditor
  if not isNil(vtbl[].commitData):
    vtbl[].vtbl.commitData = cQListView_vtable_callback_commitData
  if not isNil(vtbl[].editorDestroyed):
    vtbl[].vtbl.editorDestroyed = cQListView_vtable_callback_editorDestroyed
  if not isNil(vtbl[].edit2):
    vtbl[].vtbl.edit2 = cQListView_vtable_callback_edit2
  if not isNil(vtbl[].selectionCommand):
    vtbl[].vtbl.selectionCommand = cQListView_vtable_callback_selectionCommand
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQListView_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].viewportEvent):
    vtbl[].vtbl.viewportEvent = cQListView_vtable_callback_viewportEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQListView_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQListView_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQListView_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQListView_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQListView_vtable_callback_focusOutEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQListView_vtable_callback_keyPressEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQListView_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQListView_vtable_callback_eventFilter
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQListView_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQListView_vtable_callback_sizeHint
  if not isNil(vtbl[].setupViewport):
    vtbl[].vtbl.setupViewport = cQListView_vtable_callback_setupViewport
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQListView_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQListView_vtable_callback_changeEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQListView_vtable_callback_initStyleOption
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQListView_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQListView_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQListView_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQListView_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQListView_vtable_callback_paintEngine
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQListView_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQListView_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQListView_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQListView_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQListView_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQListView_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQListView_vtable_callback_actionEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQListView_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQListView_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQListView_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQListView_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQListView_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQListView_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQListView_vtable_callback_sharedPainter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQListView_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQListView_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQListView_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQListView_vtable_callback_disconnectNotify
  gen_qlistview_types.QListView(h: fcQListView_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qlistview_types.QListView,
    vtbl: ref QListViewVTable = nil): gen_qlistview_types.QListView =
  let vtbl = if vtbl == nil: new QListViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QListViewVTable](fcQListView_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQListView_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQListView_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQListView_vtable_callback_metacall
  if not isNil(vtbl[].visualRect):
    vtbl[].vtbl.visualRect = cQListView_vtable_callback_visualRect
  if not isNil(vtbl[].scrollTo):
    vtbl[].vtbl.scrollTo = cQListView_vtable_callback_scrollTo
  if not isNil(vtbl[].indexAt):
    vtbl[].vtbl.indexAt = cQListView_vtable_callback_indexAt
  if not isNil(vtbl[].doItemsLayout):
    vtbl[].vtbl.doItemsLayout = cQListView_vtable_callback_doItemsLayout
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = cQListView_vtable_callback_reset
  if not isNil(vtbl[].setRootIndex):
    vtbl[].vtbl.setRootIndex = cQListView_vtable_callback_setRootIndex
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQListView_vtable_callback_event
  if not isNil(vtbl[].scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = cQListView_vtable_callback_scrollContentsBy
  if not isNil(vtbl[].dataChanged):
    vtbl[].vtbl.dataChanged = cQListView_vtable_callback_dataChanged
  if not isNil(vtbl[].rowsInserted):
    vtbl[].vtbl.rowsInserted = cQListView_vtable_callback_rowsInserted
  if not isNil(vtbl[].rowsAboutToBeRemoved):
    vtbl[].vtbl.rowsAboutToBeRemoved = cQListView_vtable_callback_rowsAboutToBeRemoved
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQListView_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQListView_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQListView_vtable_callback_wheelEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQListView_vtable_callback_timerEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQListView_vtable_callback_resizeEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQListView_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQListView_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQListView_vtable_callback_dropEvent
  if not isNil(vtbl[].startDrag):
    vtbl[].vtbl.startDrag = cQListView_vtable_callback_startDrag
  if not isNil(vtbl[].initViewItemOption):
    vtbl[].vtbl.initViewItemOption = cQListView_vtable_callback_initViewItemOption
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQListView_vtable_callback_paintEvent
  if not isNil(vtbl[].horizontalOffset):
    vtbl[].vtbl.horizontalOffset = cQListView_vtable_callback_horizontalOffset
  if not isNil(vtbl[].verticalOffset):
    vtbl[].vtbl.verticalOffset = cQListView_vtable_callback_verticalOffset
  if not isNil(vtbl[].moveCursor):
    vtbl[].vtbl.moveCursor = cQListView_vtable_callback_moveCursor
  if not isNil(vtbl[].setSelection):
    vtbl[].vtbl.setSelection = cQListView_vtable_callback_setSelection
  if not isNil(vtbl[].visualRegionForSelection):
    vtbl[].vtbl.visualRegionForSelection = cQListView_vtable_callback_visualRegionForSelection
  if not isNil(vtbl[].selectedIndexes):
    vtbl[].vtbl.selectedIndexes = cQListView_vtable_callback_selectedIndexes
  if not isNil(vtbl[].updateGeometries):
    vtbl[].vtbl.updateGeometries = cQListView_vtable_callback_updateGeometries
  if not isNil(vtbl[].isIndexHidden):
    vtbl[].vtbl.isIndexHidden = cQListView_vtable_callback_isIndexHidden
  if not isNil(vtbl[].selectionChanged):
    vtbl[].vtbl.selectionChanged = cQListView_vtable_callback_selectionChanged
  if not isNil(vtbl[].currentChanged):
    vtbl[].vtbl.currentChanged = cQListView_vtable_callback_currentChanged
  if not isNil(vtbl[].viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = cQListView_vtable_callback_viewportSizeHint
  if not isNil(vtbl[].setModel):
    vtbl[].vtbl.setModel = cQListView_vtable_callback_setModel
  if not isNil(vtbl[].setSelectionModel):
    vtbl[].vtbl.setSelectionModel = cQListView_vtable_callback_setSelectionModel
  if not isNil(vtbl[].keyboardSearch):
    vtbl[].vtbl.keyboardSearch = cQListView_vtable_callback_keyboardSearch
  if not isNil(vtbl[].sizeHintForRow):
    vtbl[].vtbl.sizeHintForRow = cQListView_vtable_callback_sizeHintForRow
  if not isNil(vtbl[].sizeHintForColumn):
    vtbl[].vtbl.sizeHintForColumn = cQListView_vtable_callback_sizeHintForColumn
  if not isNil(vtbl[].itemDelegateForIndex):
    vtbl[].vtbl.itemDelegateForIndex = cQListView_vtable_callback_itemDelegateForIndex
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQListView_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].selectAll):
    vtbl[].vtbl.selectAll = cQListView_vtable_callback_selectAll
  if not isNil(vtbl[].updateEditorData):
    vtbl[].vtbl.updateEditorData = cQListView_vtable_callback_updateEditorData
  if not isNil(vtbl[].updateEditorGeometries):
    vtbl[].vtbl.updateEditorGeometries = cQListView_vtable_callback_updateEditorGeometries
  if not isNil(vtbl[].verticalScrollbarAction):
    vtbl[].vtbl.verticalScrollbarAction = cQListView_vtable_callback_verticalScrollbarAction
  if not isNil(vtbl[].horizontalScrollbarAction):
    vtbl[].vtbl.horizontalScrollbarAction = cQListView_vtable_callback_horizontalScrollbarAction
  if not isNil(vtbl[].verticalScrollbarValueChanged):
    vtbl[].vtbl.verticalScrollbarValueChanged = cQListView_vtable_callback_verticalScrollbarValueChanged
  if not isNil(vtbl[].horizontalScrollbarValueChanged):
    vtbl[].vtbl.horizontalScrollbarValueChanged = cQListView_vtable_callback_horizontalScrollbarValueChanged
  if not isNil(vtbl[].closeEditor):
    vtbl[].vtbl.closeEditor = cQListView_vtable_callback_closeEditor
  if not isNil(vtbl[].commitData):
    vtbl[].vtbl.commitData = cQListView_vtable_callback_commitData
  if not isNil(vtbl[].editorDestroyed):
    vtbl[].vtbl.editorDestroyed = cQListView_vtable_callback_editorDestroyed
  if not isNil(vtbl[].edit2):
    vtbl[].vtbl.edit2 = cQListView_vtable_callback_edit2
  if not isNil(vtbl[].selectionCommand):
    vtbl[].vtbl.selectionCommand = cQListView_vtable_callback_selectionCommand
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQListView_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].viewportEvent):
    vtbl[].vtbl.viewportEvent = cQListView_vtable_callback_viewportEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQListView_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQListView_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQListView_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQListView_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQListView_vtable_callback_focusOutEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQListView_vtable_callback_keyPressEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQListView_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQListView_vtable_callback_eventFilter
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQListView_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQListView_vtable_callback_sizeHint
  if not isNil(vtbl[].setupViewport):
    vtbl[].vtbl.setupViewport = cQListView_vtable_callback_setupViewport
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQListView_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQListView_vtable_callback_changeEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQListView_vtable_callback_initStyleOption
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQListView_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQListView_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQListView_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQListView_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQListView_vtable_callback_paintEngine
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQListView_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQListView_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQListView_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQListView_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQListView_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQListView_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQListView_vtable_callback_actionEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQListView_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQListView_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQListView_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQListView_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQListView_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQListView_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQListView_vtable_callback_sharedPainter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQListView_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQListView_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQListView_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQListView_vtable_callback_disconnectNotify
  gen_qlistview_types.QListView(h: fcQListView_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQListView_mvtbl = cQListViewVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQListView()[])](self.fcQListView_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQListView_method_callback_metaObject,
  metacast: cQListView_method_callback_metacast,
  metacall: cQListView_method_callback_metacall,
  visualRect: cQListView_method_callback_visualRect,
  scrollTo: cQListView_method_callback_scrollTo,
  indexAt: cQListView_method_callback_indexAt,
  doItemsLayout: cQListView_method_callback_doItemsLayout,
  reset: cQListView_method_callback_reset,
  setRootIndex: cQListView_method_callback_setRootIndex,
  event: cQListView_method_callback_event,
  scrollContentsBy: cQListView_method_callback_scrollContentsBy,
  dataChanged: cQListView_method_callback_dataChanged,
  rowsInserted: cQListView_method_callback_rowsInserted,
  rowsAboutToBeRemoved: cQListView_method_callback_rowsAboutToBeRemoved,
  mouseMoveEvent: cQListView_method_callback_mouseMoveEvent,
  mouseReleaseEvent: cQListView_method_callback_mouseReleaseEvent,
  wheelEvent: cQListView_method_callback_wheelEvent,
  timerEvent: cQListView_method_callback_timerEvent,
  resizeEvent: cQListView_method_callback_resizeEvent,
  dragMoveEvent: cQListView_method_callback_dragMoveEvent,
  dragLeaveEvent: cQListView_method_callback_dragLeaveEvent,
  dropEvent: cQListView_method_callback_dropEvent,
  startDrag: cQListView_method_callback_startDrag,
  initViewItemOption: cQListView_method_callback_initViewItemOption,
  paintEvent: cQListView_method_callback_paintEvent,
  horizontalOffset: cQListView_method_callback_horizontalOffset,
  verticalOffset: cQListView_method_callback_verticalOffset,
  moveCursor: cQListView_method_callback_moveCursor,
  setSelection: cQListView_method_callback_setSelection,
  visualRegionForSelection: cQListView_method_callback_visualRegionForSelection,
  selectedIndexes: cQListView_method_callback_selectedIndexes,
  updateGeometries: cQListView_method_callback_updateGeometries,
  isIndexHidden: cQListView_method_callback_isIndexHidden,
  selectionChanged: cQListView_method_callback_selectionChanged,
  currentChanged: cQListView_method_callback_currentChanged,
  viewportSizeHint: cQListView_method_callback_viewportSizeHint,
  setModel: cQListView_method_callback_setModel,
  setSelectionModel: cQListView_method_callback_setSelectionModel,
  keyboardSearch: cQListView_method_callback_keyboardSearch,
  sizeHintForRow: cQListView_method_callback_sizeHintForRow,
  sizeHintForColumn: cQListView_method_callback_sizeHintForColumn,
  itemDelegateForIndex: cQListView_method_callback_itemDelegateForIndex,
  inputMethodQuery: cQListView_method_callback_inputMethodQuery,
  selectAll: cQListView_method_callback_selectAll,
  updateEditorData: cQListView_method_callback_updateEditorData,
  updateEditorGeometries: cQListView_method_callback_updateEditorGeometries,
  verticalScrollbarAction: cQListView_method_callback_verticalScrollbarAction,
  horizontalScrollbarAction: cQListView_method_callback_horizontalScrollbarAction,
  verticalScrollbarValueChanged: cQListView_method_callback_verticalScrollbarValueChanged,
  horizontalScrollbarValueChanged: cQListView_method_callback_horizontalScrollbarValueChanged,
  closeEditor: cQListView_method_callback_closeEditor,
  commitData: cQListView_method_callback_commitData,
  editorDestroyed: cQListView_method_callback_editorDestroyed,
  edit2: cQListView_method_callback_edit2,
  selectionCommand: cQListView_method_callback_selectionCommand,
  focusNextPrevChild: cQListView_method_callback_focusNextPrevChild,
  viewportEvent: cQListView_method_callback_viewportEvent,
  mousePressEvent: cQListView_method_callback_mousePressEvent,
  mouseDoubleClickEvent: cQListView_method_callback_mouseDoubleClickEvent,
  dragEnterEvent: cQListView_method_callback_dragEnterEvent,
  focusInEvent: cQListView_method_callback_focusInEvent,
  focusOutEvent: cQListView_method_callback_focusOutEvent,
  keyPressEvent: cQListView_method_callback_keyPressEvent,
  inputMethodEvent: cQListView_method_callback_inputMethodEvent,
  eventFilter: cQListView_method_callback_eventFilter,
  minimumSizeHint: cQListView_method_callback_minimumSizeHint,
  sizeHint: cQListView_method_callback_sizeHint,
  setupViewport: cQListView_method_callback_setupViewport,
  contextMenuEvent: cQListView_method_callback_contextMenuEvent,
  changeEvent: cQListView_method_callback_changeEvent,
  initStyleOption: cQListView_method_callback_initStyleOption,
  devType: cQListView_method_callback_devType,
  setVisible: cQListView_method_callback_setVisible,
  heightForWidth: cQListView_method_callback_heightForWidth,
  hasHeightForWidth: cQListView_method_callback_hasHeightForWidth,
  paintEngine: cQListView_method_callback_paintEngine,
  keyReleaseEvent: cQListView_method_callback_keyReleaseEvent,
  enterEvent: cQListView_method_callback_enterEvent,
  leaveEvent: cQListView_method_callback_leaveEvent,
  moveEvent: cQListView_method_callback_moveEvent,
  closeEvent: cQListView_method_callback_closeEvent,
  tabletEvent: cQListView_method_callback_tabletEvent,
  actionEvent: cQListView_method_callback_actionEvent,
  showEvent: cQListView_method_callback_showEvent,
  hideEvent: cQListView_method_callback_hideEvent,
  nativeEvent: cQListView_method_callback_nativeEvent,
  metric: cQListView_method_callback_metric,
  initPainter: cQListView_method_callback_initPainter,
  redirected: cQListView_method_callback_redirected,
  sharedPainter: cQListView_method_callback_sharedPainter,
  childEvent: cQListView_method_callback_childEvent,
  customEvent: cQListView_method_callback_customEvent,
  connectNotify: cQListView_method_callback_connectNotify,
  disconnectNotify: cQListView_method_callback_disconnectNotify,
)
proc create*(T: type gen_qlistview_types.QListView,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQListView) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQListView_new(addr(cQListView_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qlistview_types.QListView,
    inst: VirtualQListView) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQListView_new2(addr(cQListView_mvtbl), addr(inst[]))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qlistview_types.QListView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQListView_staticMetaObject())
