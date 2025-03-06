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
type cQListViewVTable = object
  destructor*: proc(vtbl: ptr cQListViewVTable, self: ptr cQListView) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  visualRect*: proc(vtbl, self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  scrollTo*: proc(vtbl, self: pointer, index: pointer, hint: cint): void {.cdecl, raises: [], gcsafe.}
  indexAt*: proc(vtbl, self: pointer, p: pointer): pointer {.cdecl, raises: [], gcsafe.}
  doItemsLayout*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  reset*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  setRootIndex*: proc(vtbl, self: pointer, index: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  scrollContentsBy*: proc(vtbl, self: pointer, dx: cint, dy: cint): void {.cdecl, raises: [], gcsafe.}
  dataChanged*: proc(vtbl, self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.cdecl, raises: [], gcsafe.}
  rowsInserted*: proc(vtbl, self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl, raises: [], gcsafe.}
  rowsAboutToBeRemoved*: proc(vtbl, self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  startDrag*: proc(vtbl, self: pointer, supportedActions: cint): void {.cdecl, raises: [], gcsafe.}
  viewOptions*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  horizontalOffset*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  verticalOffset*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  moveCursor*: proc(vtbl, self: pointer, cursorAction: cint, modifiers: cint): pointer {.cdecl, raises: [], gcsafe.}
  setSelection*: proc(vtbl, self: pointer, rect: pointer, command: cint): void {.cdecl, raises: [], gcsafe.}
  visualRegionForSelection*: proc(vtbl, self: pointer, selection: pointer): pointer {.cdecl, raises: [], gcsafe.}
  selectedIndexes*: proc(vtbl, self: pointer, ): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  updateGeometries*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  isIndexHidden*: proc(vtbl, self: pointer, index: pointer): bool {.cdecl, raises: [], gcsafe.}
  selectionChanged*: proc(vtbl, self: pointer, selected: pointer, deselected: pointer): void {.cdecl, raises: [], gcsafe.}
  currentChanged*: proc(vtbl, self: pointer, current: pointer, previous: pointer): void {.cdecl, raises: [], gcsafe.}
  viewportSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setModel*: proc(vtbl, self: pointer, model: pointer): void {.cdecl, raises: [], gcsafe.}
  setSelectionModel*: proc(vtbl, self: pointer, selectionModel: pointer): void {.cdecl, raises: [], gcsafe.}
  keyboardSearch*: proc(vtbl, self: pointer, search: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
  sizeHintForRow*: proc(vtbl, self: pointer, row: cint): cint {.cdecl, raises: [], gcsafe.}
  sizeHintForColumn*: proc(vtbl, self: pointer, column: cint): cint {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, query: cint): pointer {.cdecl, raises: [], gcsafe.}
  selectAll*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  updateEditorData*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  updateEditorGeometries*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  verticalScrollbarAction*: proc(vtbl, self: pointer, action: cint): void {.cdecl, raises: [], gcsafe.}
  horizontalScrollbarAction*: proc(vtbl, self: pointer, action: cint): void {.cdecl, raises: [], gcsafe.}
  verticalScrollbarValueChanged*: proc(vtbl, self: pointer, value: cint): void {.cdecl, raises: [], gcsafe.}
  horizontalScrollbarValueChanged*: proc(vtbl, self: pointer, value: cint): void {.cdecl, raises: [], gcsafe.}
  closeEditor*: proc(vtbl, self: pointer, editor: pointer, hint: cint): void {.cdecl, raises: [], gcsafe.}
  commitData*: proc(vtbl, self: pointer, editor: pointer): void {.cdecl, raises: [], gcsafe.}
  editorDestroyed*: proc(vtbl, self: pointer, editor: pointer): void {.cdecl, raises: [], gcsafe.}
  edit2*: proc(vtbl, self: pointer, index: pointer, trigger: cint, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  selectionCommand*: proc(vtbl, self: pointer, index: pointer, event: pointer): cint {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(vtbl, self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  viewportEvent*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, objectVal: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setupViewport*: proc(vtbl, self: pointer, viewport: pointer): void {.cdecl, raises: [], gcsafe.}
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
proc fcQListView_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QListView_virtualbase_metaObject".}
proc fcQListView_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QListView_virtualbase_metacast".}
proc fcQListView_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QListView_virtualbase_metacall".}
proc fcQListView_virtualbase_visualRect(self: pointer, index: pointer): pointer {.importc: "QListView_virtualbase_visualRect".}
proc fcQListView_virtualbase_scrollTo(self: pointer, index: pointer, hint: cint): void {.importc: "QListView_virtualbase_scrollTo".}
proc fcQListView_virtualbase_indexAt(self: pointer, p: pointer): pointer {.importc: "QListView_virtualbase_indexAt".}
proc fcQListView_virtualbase_doItemsLayout(self: pointer, ): void {.importc: "QListView_virtualbase_doItemsLayout".}
proc fcQListView_virtualbase_reset(self: pointer, ): void {.importc: "QListView_virtualbase_reset".}
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
proc fcQListView_virtualbase_viewOptions(self: pointer, ): pointer {.importc: "QListView_virtualbase_viewOptions".}
proc fcQListView_virtualbase_paintEvent(self: pointer, e: pointer): void {.importc: "QListView_virtualbase_paintEvent".}
proc fcQListView_virtualbase_horizontalOffset(self: pointer, ): cint {.importc: "QListView_virtualbase_horizontalOffset".}
proc fcQListView_virtualbase_verticalOffset(self: pointer, ): cint {.importc: "QListView_virtualbase_verticalOffset".}
proc fcQListView_virtualbase_moveCursor(self: pointer, cursorAction: cint, modifiers: cint): pointer {.importc: "QListView_virtualbase_moveCursor".}
proc fcQListView_virtualbase_setSelection(self: pointer, rect: pointer, command: cint): void {.importc: "QListView_virtualbase_setSelection".}
proc fcQListView_virtualbase_visualRegionForSelection(self: pointer, selection: pointer): pointer {.importc: "QListView_virtualbase_visualRegionForSelection".}
proc fcQListView_virtualbase_selectedIndexes(self: pointer, ): struct_miqt_array {.importc: "QListView_virtualbase_selectedIndexes".}
proc fcQListView_virtualbase_updateGeometries(self: pointer, ): void {.importc: "QListView_virtualbase_updateGeometries".}
proc fcQListView_virtualbase_isIndexHidden(self: pointer, index: pointer): bool {.importc: "QListView_virtualbase_isIndexHidden".}
proc fcQListView_virtualbase_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void {.importc: "QListView_virtualbase_selectionChanged".}
proc fcQListView_virtualbase_currentChanged(self: pointer, current: pointer, previous: pointer): void {.importc: "QListView_virtualbase_currentChanged".}
proc fcQListView_virtualbase_viewportSizeHint(self: pointer, ): pointer {.importc: "QListView_virtualbase_viewportSizeHint".}
proc fcQListView_virtualbase_setModel(self: pointer, model: pointer): void {.importc: "QListView_virtualbase_setModel".}
proc fcQListView_virtualbase_setSelectionModel(self: pointer, selectionModel: pointer): void {.importc: "QListView_virtualbase_setSelectionModel".}
proc fcQListView_virtualbase_keyboardSearch(self: pointer, search: struct_miqt_string): void {.importc: "QListView_virtualbase_keyboardSearch".}
proc fcQListView_virtualbase_sizeHintForRow(self: pointer, row: cint): cint {.importc: "QListView_virtualbase_sizeHintForRow".}
proc fcQListView_virtualbase_sizeHintForColumn(self: pointer, column: cint): cint {.importc: "QListView_virtualbase_sizeHintForColumn".}
proc fcQListView_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QListView_virtualbase_inputMethodQuery".}
proc fcQListView_virtualbase_selectAll(self: pointer, ): void {.importc: "QListView_virtualbase_selectAll".}
proc fcQListView_virtualbase_updateEditorData(self: pointer, ): void {.importc: "QListView_virtualbase_updateEditorData".}
proc fcQListView_virtualbase_updateEditorGeometries(self: pointer, ): void {.importc: "QListView_virtualbase_updateEditorGeometries".}
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
proc fcQListView_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QListView_virtualbase_minimumSizeHint".}
proc fcQListView_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QListView_virtualbase_sizeHint".}
proc fcQListView_virtualbase_setupViewport(self: pointer, viewport: pointer): void {.importc: "QListView_virtualbase_setupViewport".}
proc fcQListView_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void {.importc: "QListView_virtualbase_contextMenuEvent".}
proc fcQListView_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QListView_virtualbase_changeEvent".}
proc fcQListView_virtualbase_devType(self: pointer, ): cint {.importc: "QListView_virtualbase_devType".}
proc fcQListView_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QListView_virtualbase_setVisible".}
proc fcQListView_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QListView_virtualbase_heightForWidth".}
proc fcQListView_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QListView_virtualbase_hasHeightForWidth".}
proc fcQListView_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QListView_virtualbase_paintEngine".}
proc fcQListView_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QListView_virtualbase_keyReleaseEvent".}
proc fcQListView_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QListView_virtualbase_enterEvent".}
proc fcQListView_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QListView_virtualbase_leaveEvent".}
proc fcQListView_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QListView_virtualbase_moveEvent".}
proc fcQListView_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QListView_virtualbase_closeEvent".}
proc fcQListView_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QListView_virtualbase_tabletEvent".}
proc fcQListView_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QListView_virtualbase_actionEvent".}
proc fcQListView_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QListView_virtualbase_showEvent".}
proc fcQListView_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QListView_virtualbase_hideEvent".}
proc fcQListView_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QListView_virtualbase_nativeEvent".}
proc fcQListView_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QListView_virtualbase_metric".}
proc fcQListView_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QListView_virtualbase_initPainter".}
proc fcQListView_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QListView_virtualbase_redirected".}
proc fcQListView_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QListView_virtualbase_sharedPainter".}
proc fcQListView_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QListView_virtualbase_childEvent".}
proc fcQListView_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QListView_virtualbase_customEvent".}
proc fcQListView_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QListView_virtualbase_connectNotify".}
proc fcQListView_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QListView_virtualbase_disconnectNotify".}
proc fcQListView_new(vtbl: pointer, parent: pointer): ptr cQListView {.importc: "QListView_new".}
proc fcQListView_new2(vtbl: pointer, ): ptr cQListView {.importc: "QListView_new2".}
proc fcQListView_staticMetaObject(): pointer {.importc: "QListView_staticMetaObject".}
proc fcQListView_delete(self: pointer) {.importc: "QListView_delete".}

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
proc miqt_exec_callback_cQListView_indexesMoved(slot: int, indexes: struct_miqt_array) {.exportc: "miqt_exec_callback_QListView_indexesMoved".} =
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
type QListViewdataChangedProc* = proc(self: QListView, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: seq[cint]): void {.raises: [], gcsafe.}
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
type QListViewviewOptionsProc* = proc(self: QListView): gen_qstyleoption_types.QStyleOptionViewItem {.raises: [], gcsafe.}
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
type QListViewkeyboardSearchProc* = proc(self: QListView, search: string): void {.raises: [], gcsafe.}
type QListViewsizeHintForRowProc* = proc(self: QListView, row: cint): cint {.raises: [], gcsafe.}
type QListViewsizeHintForColumnProc* = proc(self: QListView, column: cint): cint {.raises: [], gcsafe.}
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
type QListViewdevTypeProc* = proc(self: QListView): cint {.raises: [], gcsafe.}
type QListViewsetVisibleProc* = proc(self: QListView, visible: bool): void {.raises: [], gcsafe.}
type QListViewheightForWidthProc* = proc(self: QListView, param1: cint): cint {.raises: [], gcsafe.}
type QListViewhasHeightForWidthProc* = proc(self: QListView): bool {.raises: [], gcsafe.}
type QListViewpaintEngineProc* = proc(self: QListView): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QListViewkeyReleaseEventProc* = proc(self: QListView, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QListViewenterEventProc* = proc(self: QListView, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QListViewleaveEventProc* = proc(self: QListView, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QListViewmoveEventProc* = proc(self: QListView, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QListViewcloseEventProc* = proc(self: QListView, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QListViewtabletEventProc* = proc(self: QListView, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QListViewactionEventProc* = proc(self: QListView, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QListViewshowEventProc* = proc(self: QListView, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QListViewhideEventProc* = proc(self: QListView, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QListViewnativeEventProc* = proc(self: QListView, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QListViewmetricProc* = proc(self: QListView, param1: cint): cint {.raises: [], gcsafe.}
type QListViewinitPainterProc* = proc(self: QListView, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QListViewredirectedProc* = proc(self: QListView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QListViewsharedPainterProc* = proc(self: QListView): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QListViewchildEventProc* = proc(self: QListView, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QListViewcustomEventProc* = proc(self: QListView, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QListViewconnectNotifyProc* = proc(self: QListView, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QListViewdisconnectNotifyProc* = proc(self: QListView, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QListViewVTable* = object
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
  viewOptions*: QListViewviewOptionsProc
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
proc QListViewmetaObject*(self: gen_qlistview_types.QListView, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQListView_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQListView_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QListViewmetacast*(self: gen_qlistview_types.QListView, param1: cstring): pointer =
  fcQListView_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQListView_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QListViewmetacall*(self: gen_qlistview_types.QListView, param1: cint, param2: cint, param3: pointer): cint =
  fcQListView_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQListView_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QListViewvisualRect*(self: gen_qlistview_types.QListView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQListView_virtualbase_visualRect(self.h, index.h))

proc miqt_exec_callback_cQListView_visualRect(vtbl: pointer, self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].visualRect(self, slotval1)
  virtualReturn.h

proc QListViewscrollTo*(self: gen_qlistview_types.QListView, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void =
  fcQListView_virtualbase_scrollTo(self.h, index.h, cint(hint))

proc miqt_exec_callback_cQListView_scrollTo(vtbl: pointer, self: pointer, index: pointer, hint: cint): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let slotval2 = cint(hint)
  vtbl[].scrollTo(self, slotval1, slotval2)

proc QListViewindexAt*(self: gen_qlistview_types.QListView, p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQListView_virtualbase_indexAt(self.h, p.h))

proc miqt_exec_callback_cQListView_indexAt(vtbl: pointer, self: pointer, p: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: p)
  var virtualReturn = vtbl[].indexAt(self, slotval1)
  virtualReturn.h

proc QListViewdoItemsLayout*(self: gen_qlistview_types.QListView, ): void =
  fcQListView_virtualbase_doItemsLayout(self.h)

proc miqt_exec_callback_cQListView_doItemsLayout(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  vtbl[].doItemsLayout(self)

proc QListViewreset*(self: gen_qlistview_types.QListView, ): void =
  fcQListView_virtualbase_reset(self.h)

proc miqt_exec_callback_cQListView_reset(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  vtbl[].reset(self)

proc QListViewsetRootIndex*(self: gen_qlistview_types.QListView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQListView_virtualbase_setRootIndex(self.h, index.h)

proc miqt_exec_callback_cQListView_setRootIndex(vtbl: pointer, self: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  vtbl[].setRootIndex(self, slotval1)

proc QListViewevent*(self: gen_qlistview_types.QListView, e: gen_qcoreevent_types.QEvent): bool =
  fcQListView_virtualbase_event(self.h, e.h)

proc miqt_exec_callback_cQListView_event(vtbl: pointer, self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QListViewscrollContentsBy*(self: gen_qlistview_types.QListView, dx: cint, dy: cint): void =
  fcQListView_virtualbase_scrollContentsBy(self.h, dx, dy)

proc miqt_exec_callback_cQListView_scrollContentsBy(vtbl: pointer, self: pointer, dx: cint, dy: cint): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = dx
  let slotval2 = dy
  vtbl[].scrollContentsBy(self, slotval1, slotval2)

proc QListViewdataChanged*(self: gen_qlistview_types.QListView, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: seq[cint]): void =
  var roles_CArray = newSeq[cint](len(roles))
  for i in 0..<len(roles):
    roles_CArray[i] = roles[i]

  fcQListView_virtualbase_dataChanged(self.h, topLeft.h, bottomRight.h, struct_miqt_array(len: csize_t(len(roles)), data: if len(roles) == 0: nil else: addr(roles_CArray[0])))

proc miqt_exec_callback_cQListView_dataChanged(vtbl: pointer, self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: topLeft)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: bottomRight)
  var vroles_ma = roles
  var vrolesx_ret = newSeq[cint](int(vroles_ma.len))
  let vroles_outCast = cast[ptr UncheckedArray[cint]](vroles_ma.data)
  for i in 0 ..< vroles_ma.len:
    vrolesx_ret[i] = vroles_outCast[i]
  let slotval3 = vrolesx_ret
  vtbl[].dataChanged(self, slotval1, slotval2, slotval3)

proc QListViewrowsInserted*(self: gen_qlistview_types.QListView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fcQListView_virtualbase_rowsInserted(self.h, parent.h, start, endVal)

proc miqt_exec_callback_cQListView_rowsInserted(vtbl: pointer, self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  let slotval2 = start
  let slotval3 = endVal
  vtbl[].rowsInserted(self, slotval1, slotval2, slotval3)

proc QListViewrowsAboutToBeRemoved*(self: gen_qlistview_types.QListView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fcQListView_virtualbase_rowsAboutToBeRemoved(self.h, parent.h, start, endVal)

proc miqt_exec_callback_cQListView_rowsAboutToBeRemoved(vtbl: pointer, self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  let slotval2 = start
  let slotval3 = endVal
  vtbl[].rowsAboutToBeRemoved(self, slotval1, slotval2, slotval3)

proc QListViewmouseMoveEvent*(self: gen_qlistview_types.QListView, e: gen_qevent_types.QMouseEvent): void =
  fcQListView_virtualbase_mouseMoveEvent(self.h, e.h)

proc miqt_exec_callback_cQListView_mouseMoveEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QListViewmouseReleaseEvent*(self: gen_qlistview_types.QListView, e: gen_qevent_types.QMouseEvent): void =
  fcQListView_virtualbase_mouseReleaseEvent(self.h, e.h)

proc miqt_exec_callback_cQListView_mouseReleaseEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QListViewwheelEvent*(self: gen_qlistview_types.QListView, e: gen_qevent_types.QWheelEvent): void =
  fcQListView_virtualbase_wheelEvent(self.h, e.h)

proc miqt_exec_callback_cQListView_wheelEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: e)
  vtbl[].wheelEvent(self, slotval1)

proc QListViewtimerEvent*(self: gen_qlistview_types.QListView, e: gen_qcoreevent_types.QTimerEvent): void =
  fcQListView_virtualbase_timerEvent(self.h, e.h)

proc miqt_exec_callback_cQListView_timerEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: e)
  vtbl[].timerEvent(self, slotval1)

proc QListViewresizeEvent*(self: gen_qlistview_types.QListView, e: gen_qevent_types.QResizeEvent): void =
  fcQListView_virtualbase_resizeEvent(self.h, e.h)

proc miqt_exec_callback_cQListView_resizeEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: e)
  vtbl[].resizeEvent(self, slotval1)

proc QListViewdragMoveEvent*(self: gen_qlistview_types.QListView, e: gen_qevent_types.QDragMoveEvent): void =
  fcQListView_virtualbase_dragMoveEvent(self.h, e.h)

proc miqt_exec_callback_cQListView_dragMoveEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: e)
  vtbl[].dragMoveEvent(self, slotval1)

proc QListViewdragLeaveEvent*(self: gen_qlistview_types.QListView, e: gen_qevent_types.QDragLeaveEvent): void =
  fcQListView_virtualbase_dragLeaveEvent(self.h, e.h)

proc miqt_exec_callback_cQListView_dragLeaveEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: e)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QListViewdropEvent*(self: gen_qlistview_types.QListView, e: gen_qevent_types.QDropEvent): void =
  fcQListView_virtualbase_dropEvent(self.h, e.h)

proc miqt_exec_callback_cQListView_dropEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: e)
  vtbl[].dropEvent(self, slotval1)

proc QListViewstartDrag*(self: gen_qlistview_types.QListView, supportedActions: cint): void =
  fcQListView_virtualbase_startDrag(self.h, cint(supportedActions))

proc miqt_exec_callback_cQListView_startDrag(vtbl: pointer, self: pointer, supportedActions: cint): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = cint(supportedActions)
  vtbl[].startDrag(self, slotval1)

proc QListViewviewOptions*(self: gen_qlistview_types.QListView, ): gen_qstyleoption_types.QStyleOptionViewItem =
  gen_qstyleoption_types.QStyleOptionViewItem(h: fcQListView_virtualbase_viewOptions(self.h))

proc miqt_exec_callback_cQListView_viewOptions(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  var virtualReturn = vtbl[].viewOptions(self)
  virtualReturn.h

proc QListViewpaintEvent*(self: gen_qlistview_types.QListView, e: gen_qevent_types.QPaintEvent): void =
  fcQListView_virtualbase_paintEvent(self.h, e.h)

proc miqt_exec_callback_cQListView_paintEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: e)
  vtbl[].paintEvent(self, slotval1)

proc QListViewhorizontalOffset*(self: gen_qlistview_types.QListView, ): cint =
  fcQListView_virtualbase_horizontalOffset(self.h)

proc miqt_exec_callback_cQListView_horizontalOffset(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  var virtualReturn = vtbl[].horizontalOffset(self)
  virtualReturn

proc QListViewverticalOffset*(self: gen_qlistview_types.QListView, ): cint =
  fcQListView_virtualbase_verticalOffset(self.h)

proc miqt_exec_callback_cQListView_verticalOffset(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  var virtualReturn = vtbl[].verticalOffset(self)
  virtualReturn

proc QListViewmoveCursor*(self: gen_qlistview_types.QListView, cursorAction: cint, modifiers: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQListView_virtualbase_moveCursor(self.h, cint(cursorAction), cint(modifiers)))

proc miqt_exec_callback_cQListView_moveCursor(vtbl: pointer, self: pointer, cursorAction: cint, modifiers: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = cint(cursorAction)
  let slotval2 = cint(modifiers)
  var virtualReturn = vtbl[].moveCursor(self, slotval1, slotval2)
  virtualReturn.h

proc QListViewsetSelection*(self: gen_qlistview_types.QListView, rect: gen_qrect_types.QRect, command: cint): void =
  fcQListView_virtualbase_setSelection(self.h, rect.h, cint(command))

proc miqt_exec_callback_cQListView_setSelection(vtbl: pointer, self: pointer, rect: pointer, command: cint): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qrect_types.QRect(h: rect)
  let slotval2 = cint(command)
  vtbl[].setSelection(self, slotval1, slotval2)

proc QListViewvisualRegionForSelection*(self: gen_qlistview_types.QListView, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQListView_virtualbase_visualRegionForSelection(self.h, selection.h))

proc miqt_exec_callback_cQListView_visualRegionForSelection(vtbl: pointer, self: pointer, selection: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection)
  var virtualReturn = vtbl[].visualRegionForSelection(self, slotval1)
  virtualReturn.h

proc QListViewselectedIndexes*(self: gen_qlistview_types.QListView, ): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQListView_virtualbase_selectedIndexes(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  vx_ret

proc miqt_exec_callback_cQListView_selectedIndexes(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  var virtualReturn = vtbl[].selectedIndexes(self)
  var virtualReturn_CArray = newSeq[pointer](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QListViewupdateGeometries*(self: gen_qlistview_types.QListView, ): void =
  fcQListView_virtualbase_updateGeometries(self.h)

proc miqt_exec_callback_cQListView_updateGeometries(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  vtbl[].updateGeometries(self)

proc QListViewisIndexHidden*(self: gen_qlistview_types.QListView, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQListView_virtualbase_isIndexHidden(self.h, index.h)

proc miqt_exec_callback_cQListView_isIndexHidden(vtbl: pointer, self: pointer, index: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var virtualReturn = vtbl[].isIndexHidden(self, slotval1)
  virtualReturn

proc QListViewselectionChanged*(self: gen_qlistview_types.QListView, selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void =
  fcQListView_virtualbase_selectionChanged(self.h, selected.h, deselected.h)

proc miqt_exec_callback_cQListView_selectionChanged(vtbl: pointer, self: pointer, selected: pointer, deselected: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selected)
  let slotval2 = gen_qitemselectionmodel_types.QItemSelection(h: deselected)
  vtbl[].selectionChanged(self, slotval1, slotval2)

proc QListViewcurrentChanged*(self: gen_qlistview_types.QListView, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQListView_virtualbase_currentChanged(self.h, current.h, previous.h)

proc miqt_exec_callback_cQListView_currentChanged(vtbl: pointer, self: pointer, current: pointer, previous: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: current)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: previous)
  vtbl[].currentChanged(self, slotval1, slotval2)

proc QListViewviewportSizeHint*(self: gen_qlistview_types.QListView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQListView_virtualbase_viewportSizeHint(self.h))

proc miqt_exec_callback_cQListView_viewportSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  var virtualReturn = vtbl[].viewportSizeHint(self)
  virtualReturn.h

proc QListViewsetModel*(self: gen_qlistview_types.QListView, model: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQListView_virtualbase_setModel(self.h, model.h)

proc miqt_exec_callback_cQListView_setModel(vtbl: pointer, self: pointer, model: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model)
  vtbl[].setModel(self, slotval1)

proc QListViewsetSelectionModel*(self: gen_qlistview_types.QListView, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void =
  fcQListView_virtualbase_setSelectionModel(self.h, selectionModel.h)

proc miqt_exec_callback_cQListView_setSelectionModel(vtbl: pointer, self: pointer, selectionModel: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelectionModel(h: selectionModel)
  vtbl[].setSelectionModel(self, slotval1)

proc QListViewkeyboardSearch*(self: gen_qlistview_types.QListView, search: string): void =
  fcQListView_virtualbase_keyboardSearch(self.h, struct_miqt_string(data: search, len: csize_t(len(search))))

proc miqt_exec_callback_cQListView_keyboardSearch(vtbl: pointer, self: pointer, search: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let vsearch_ms = search
  let vsearchx_ret = string.fromBytes(toOpenArrayByte(vsearch_ms.data, 0, int(vsearch_ms.len)-1))
  c_free(vsearch_ms.data)
  let slotval1 = vsearchx_ret
  vtbl[].keyboardSearch(self, slotval1)

proc QListViewsizeHintForRow*(self: gen_qlistview_types.QListView, row: cint): cint =
  fcQListView_virtualbase_sizeHintForRow(self.h, row)

proc miqt_exec_callback_cQListView_sizeHintForRow(vtbl: pointer, self: pointer, row: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = row
  var virtualReturn = vtbl[].sizeHintForRow(self, slotval1)
  virtualReturn

proc QListViewsizeHintForColumn*(self: gen_qlistview_types.QListView, column: cint): cint =
  fcQListView_virtualbase_sizeHintForColumn(self.h, column)

proc miqt_exec_callback_cQListView_sizeHintForColumn(vtbl: pointer, self: pointer, column: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = column
  var virtualReturn = vtbl[].sizeHintForColumn(self, slotval1)
  virtualReturn

proc QListViewinputMethodQuery*(self: gen_qlistview_types.QListView, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQListView_virtualbase_inputMethodQuery(self.h, cint(query)))

proc miqt_exec_callback_cQListView_inputMethodQuery(vtbl: pointer, self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = cint(query)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QListViewselectAll*(self: gen_qlistview_types.QListView, ): void =
  fcQListView_virtualbase_selectAll(self.h)

proc miqt_exec_callback_cQListView_selectAll(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  vtbl[].selectAll(self)

proc QListViewupdateEditorData*(self: gen_qlistview_types.QListView, ): void =
  fcQListView_virtualbase_updateEditorData(self.h)

proc miqt_exec_callback_cQListView_updateEditorData(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  vtbl[].updateEditorData(self)

proc QListViewupdateEditorGeometries*(self: gen_qlistview_types.QListView, ): void =
  fcQListView_virtualbase_updateEditorGeometries(self.h)

proc miqt_exec_callback_cQListView_updateEditorGeometries(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  vtbl[].updateEditorGeometries(self)

proc QListViewverticalScrollbarAction*(self: gen_qlistview_types.QListView, action: cint): void =
  fcQListView_virtualbase_verticalScrollbarAction(self.h, action)

proc miqt_exec_callback_cQListView_verticalScrollbarAction(vtbl: pointer, self: pointer, action: cint): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = action
  vtbl[].verticalScrollbarAction(self, slotval1)

proc QListViewhorizontalScrollbarAction*(self: gen_qlistview_types.QListView, action: cint): void =
  fcQListView_virtualbase_horizontalScrollbarAction(self.h, action)

proc miqt_exec_callback_cQListView_horizontalScrollbarAction(vtbl: pointer, self: pointer, action: cint): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = action
  vtbl[].horizontalScrollbarAction(self, slotval1)

proc QListViewverticalScrollbarValueChanged*(self: gen_qlistview_types.QListView, value: cint): void =
  fcQListView_virtualbase_verticalScrollbarValueChanged(self.h, value)

proc miqt_exec_callback_cQListView_verticalScrollbarValueChanged(vtbl: pointer, self: pointer, value: cint): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = value
  vtbl[].verticalScrollbarValueChanged(self, slotval1)

proc QListViewhorizontalScrollbarValueChanged*(self: gen_qlistview_types.QListView, value: cint): void =
  fcQListView_virtualbase_horizontalScrollbarValueChanged(self.h, value)

proc miqt_exec_callback_cQListView_horizontalScrollbarValueChanged(vtbl: pointer, self: pointer, value: cint): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = value
  vtbl[].horizontalScrollbarValueChanged(self, slotval1)

proc QListViewcloseEditor*(self: gen_qlistview_types.QListView, editor: gen_qwidget_types.QWidget, hint: cint): void =
  fcQListView_virtualbase_closeEditor(self.h, editor.h, cint(hint))

proc miqt_exec_callback_cQListView_closeEditor(vtbl: pointer, self: pointer, editor: pointer, hint: cint): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor)
  let slotval2 = cint(hint)
  vtbl[].closeEditor(self, slotval1, slotval2)

proc QListViewcommitData*(self: gen_qlistview_types.QListView, editor: gen_qwidget_types.QWidget): void =
  fcQListView_virtualbase_commitData(self.h, editor.h)

proc miqt_exec_callback_cQListView_commitData(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor)
  vtbl[].commitData(self, slotval1)

proc QListVieweditorDestroyed*(self: gen_qlistview_types.QListView, editor: gen_qobject_types.QObject): void =
  fcQListView_virtualbase_editorDestroyed(self.h, editor.h)

proc miqt_exec_callback_cQListView_editorDestroyed(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qobject_types.QObject(h: editor)
  vtbl[].editorDestroyed(self, slotval1)

proc QListViewedit*(self: gen_qlistview_types.QListView, index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool =
  fcQListView_virtualbase_edit2(self.h, index.h, cint(trigger), event.h)

proc miqt_exec_callback_cQListView_edit2(vtbl: pointer, self: pointer, index: pointer, trigger: cint, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let slotval2 = cint(trigger)
  let slotval3 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].edit2(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QListViewselectionCommand*(self: gen_qlistview_types.QListView, index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint =
  cint(fcQListView_virtualbase_selectionCommand(self.h, index.h, event.h))

proc miqt_exec_callback_cQListView_selectionCommand(vtbl: pointer, self: pointer, index: pointer, event: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].selectionCommand(self, slotval1, slotval2)
  cint(virtualReturn)

proc QListViewfocusNextPrevChild*(self: gen_qlistview_types.QListView, next: bool): bool =
  fcQListView_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQListView_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QListViewviewportEvent*(self: gen_qlistview_types.QListView, event: gen_qcoreevent_types.QEvent): bool =
  fcQListView_virtualbase_viewportEvent(self.h, event.h)

proc miqt_exec_callback_cQListView_viewportEvent(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].viewportEvent(self, slotval1)
  virtualReturn

proc QListViewmousePressEvent*(self: gen_qlistview_types.QListView, event: gen_qevent_types.QMouseEvent): void =
  fcQListView_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQListView_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QListViewmouseDoubleClickEvent*(self: gen_qlistview_types.QListView, event: gen_qevent_types.QMouseEvent): void =
  fcQListView_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQListView_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QListViewdragEnterEvent*(self: gen_qlistview_types.QListView, event: gen_qevent_types.QDragEnterEvent): void =
  fcQListView_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQListView_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QListViewfocusInEvent*(self: gen_qlistview_types.QListView, event: gen_qevent_types.QFocusEvent): void =
  fcQListView_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQListView_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QListViewfocusOutEvent*(self: gen_qlistview_types.QListView, event: gen_qevent_types.QFocusEvent): void =
  fcQListView_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQListView_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QListViewkeyPressEvent*(self: gen_qlistview_types.QListView, event: gen_qevent_types.QKeyEvent): void =
  fcQListView_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQListView_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyPressEvent(self, slotval1)

proc QListViewinputMethodEvent*(self: gen_qlistview_types.QListView, event: gen_qevent_types.QInputMethodEvent): void =
  fcQListView_virtualbase_inputMethodEvent(self.h, event.h)

proc miqt_exec_callback_cQListView_inputMethodEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)
  vtbl[].inputMethodEvent(self, slotval1)

proc QListVieweventFilter*(self: gen_qlistview_types.QListView, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQListView_virtualbase_eventFilter(self.h, objectVal.h, event.h)

proc miqt_exec_callback_cQListView_eventFilter(vtbl: pointer, self: pointer, objectVal: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qobject_types.QObject(h: objectVal)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QListViewminimumSizeHint*(self: gen_qlistview_types.QListView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQListView_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQListView_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QListViewsizeHint*(self: gen_qlistview_types.QListView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQListView_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQListView_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QListViewsetupViewport*(self: gen_qlistview_types.QListView, viewport: gen_qwidget_types.QWidget): void =
  fcQListView_virtualbase_setupViewport(self.h, viewport.h)

proc miqt_exec_callback_cQListView_setupViewport(vtbl: pointer, self: pointer, viewport: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: viewport)
  vtbl[].setupViewport(self, slotval1)

proc QListViewcontextMenuEvent*(self: gen_qlistview_types.QListView, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQListView_virtualbase_contextMenuEvent(self.h, param1.h)

proc miqt_exec_callback_cQListView_contextMenuEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)
  vtbl[].contextMenuEvent(self, slotval1)

proc QListViewchangeEvent*(self: gen_qlistview_types.QListView, param1: gen_qcoreevent_types.QEvent): void =
  fcQListView_virtualbase_changeEvent(self.h, param1.h)

proc miqt_exec_callback_cQListView_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  vtbl[].changeEvent(self, slotval1)

proc QListViewdevType*(self: gen_qlistview_types.QListView, ): cint =
  fcQListView_virtualbase_devType(self.h)

proc miqt_exec_callback_cQListView_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QListViewsetVisible*(self: gen_qlistview_types.QListView, visible: bool): void =
  fcQListView_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQListView_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QListViewheightForWidth*(self: gen_qlistview_types.QListView, param1: cint): cint =
  fcQListView_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQListView_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QListViewhasHeightForWidth*(self: gen_qlistview_types.QListView, ): bool =
  fcQListView_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQListView_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QListViewpaintEngine*(self: gen_qlistview_types.QListView, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQListView_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQListView_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QListViewkeyReleaseEvent*(self: gen_qlistview_types.QListView, event: gen_qevent_types.QKeyEvent): void =
  fcQListView_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQListView_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QListViewenterEvent*(self: gen_qlistview_types.QListView, event: gen_qcoreevent_types.QEvent): void =
  fcQListView_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQListView_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QListViewleaveEvent*(self: gen_qlistview_types.QListView, event: gen_qcoreevent_types.QEvent): void =
  fcQListView_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQListView_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QListViewmoveEvent*(self: gen_qlistview_types.QListView, event: gen_qevent_types.QMoveEvent): void =
  fcQListView_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQListView_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QListViewcloseEvent*(self: gen_qlistview_types.QListView, event: gen_qevent_types.QCloseEvent): void =
  fcQListView_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQListView_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QListViewtabletEvent*(self: gen_qlistview_types.QListView, event: gen_qevent_types.QTabletEvent): void =
  fcQListView_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQListView_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QListViewactionEvent*(self: gen_qlistview_types.QListView, event: gen_qevent_types.QActionEvent): void =
  fcQListView_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQListView_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QListViewshowEvent*(self: gen_qlistview_types.QListView, event: gen_qevent_types.QShowEvent): void =
  fcQListView_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQListView_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  vtbl[].showEvent(self, slotval1)

proc QListViewhideEvent*(self: gen_qlistview_types.QListView, event: gen_qevent_types.QHideEvent): void =
  fcQListView_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQListView_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QListViewnativeEvent*(self: gen_qlistview_types.QListView, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fcQListView_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQListView_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QListViewmetric*(self: gen_qlistview_types.QListView, param1: cint): cint =
  fcQListView_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQListView_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QListViewinitPainter*(self: gen_qlistview_types.QListView, painter: gen_qpainter_types.QPainter): void =
  fcQListView_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQListView_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QListViewredirected*(self: gen_qlistview_types.QListView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQListView_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQListView_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QListViewsharedPainter*(self: gen_qlistview_types.QListView, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQListView_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQListView_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QListViewchildEvent*(self: gen_qlistview_types.QListView, event: gen_qcoreevent_types.QChildEvent): void =
  fcQListView_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQListView_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QListViewcustomEvent*(self: gen_qlistview_types.QListView, event: gen_qcoreevent_types.QEvent): void =
  fcQListView_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQListView_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QListViewconnectNotify*(self: gen_qlistview_types.QListView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQListView_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQListView_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QListViewdisconnectNotify*(self: gen_qlistview_types.QListView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQListView_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQListView_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QListViewVTable](vtbl)
  let self = QListView(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qlistview_types.QListView,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QListViewVTable = nil): gen_qlistview_types.QListView =
  let vtbl = if vtbl == nil: new QListViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQListViewVTable, _: ptr cQListView) {.cdecl.} =
    let vtbl = cast[ref QListViewVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQListView_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQListView_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQListView_metacall
  if not isNil(vtbl.visualRect):
    vtbl[].vtbl.visualRect = miqt_exec_callback_cQListView_visualRect
  if not isNil(vtbl.scrollTo):
    vtbl[].vtbl.scrollTo = miqt_exec_callback_cQListView_scrollTo
  if not isNil(vtbl.indexAt):
    vtbl[].vtbl.indexAt = miqt_exec_callback_cQListView_indexAt
  if not isNil(vtbl.doItemsLayout):
    vtbl[].vtbl.doItemsLayout = miqt_exec_callback_cQListView_doItemsLayout
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQListView_reset
  if not isNil(vtbl.setRootIndex):
    vtbl[].vtbl.setRootIndex = miqt_exec_callback_cQListView_setRootIndex
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQListView_event
  if not isNil(vtbl.scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = miqt_exec_callback_cQListView_scrollContentsBy
  if not isNil(vtbl.dataChanged):
    vtbl[].vtbl.dataChanged = miqt_exec_callback_cQListView_dataChanged
  if not isNil(vtbl.rowsInserted):
    vtbl[].vtbl.rowsInserted = miqt_exec_callback_cQListView_rowsInserted
  if not isNil(vtbl.rowsAboutToBeRemoved):
    vtbl[].vtbl.rowsAboutToBeRemoved = miqt_exec_callback_cQListView_rowsAboutToBeRemoved
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQListView_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQListView_mouseReleaseEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQListView_wheelEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQListView_timerEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQListView_resizeEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQListView_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQListView_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQListView_dropEvent
  if not isNil(vtbl.startDrag):
    vtbl[].vtbl.startDrag = miqt_exec_callback_cQListView_startDrag
  if not isNil(vtbl.viewOptions):
    vtbl[].vtbl.viewOptions = miqt_exec_callback_cQListView_viewOptions
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQListView_paintEvent
  if not isNil(vtbl.horizontalOffset):
    vtbl[].vtbl.horizontalOffset = miqt_exec_callback_cQListView_horizontalOffset
  if not isNil(vtbl.verticalOffset):
    vtbl[].vtbl.verticalOffset = miqt_exec_callback_cQListView_verticalOffset
  if not isNil(vtbl.moveCursor):
    vtbl[].vtbl.moveCursor = miqt_exec_callback_cQListView_moveCursor
  if not isNil(vtbl.setSelection):
    vtbl[].vtbl.setSelection = miqt_exec_callback_cQListView_setSelection
  if not isNil(vtbl.visualRegionForSelection):
    vtbl[].vtbl.visualRegionForSelection = miqt_exec_callback_cQListView_visualRegionForSelection
  if not isNil(vtbl.selectedIndexes):
    vtbl[].vtbl.selectedIndexes = miqt_exec_callback_cQListView_selectedIndexes
  if not isNil(vtbl.updateGeometries):
    vtbl[].vtbl.updateGeometries = miqt_exec_callback_cQListView_updateGeometries
  if not isNil(vtbl.isIndexHidden):
    vtbl[].vtbl.isIndexHidden = miqt_exec_callback_cQListView_isIndexHidden
  if not isNil(vtbl.selectionChanged):
    vtbl[].vtbl.selectionChanged = miqt_exec_callback_cQListView_selectionChanged
  if not isNil(vtbl.currentChanged):
    vtbl[].vtbl.currentChanged = miqt_exec_callback_cQListView_currentChanged
  if not isNil(vtbl.viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = miqt_exec_callback_cQListView_viewportSizeHint
  if not isNil(vtbl.setModel):
    vtbl[].vtbl.setModel = miqt_exec_callback_cQListView_setModel
  if not isNil(vtbl.setSelectionModel):
    vtbl[].vtbl.setSelectionModel = miqt_exec_callback_cQListView_setSelectionModel
  if not isNil(vtbl.keyboardSearch):
    vtbl[].vtbl.keyboardSearch = miqt_exec_callback_cQListView_keyboardSearch
  if not isNil(vtbl.sizeHintForRow):
    vtbl[].vtbl.sizeHintForRow = miqt_exec_callback_cQListView_sizeHintForRow
  if not isNil(vtbl.sizeHintForColumn):
    vtbl[].vtbl.sizeHintForColumn = miqt_exec_callback_cQListView_sizeHintForColumn
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQListView_inputMethodQuery
  if not isNil(vtbl.selectAll):
    vtbl[].vtbl.selectAll = miqt_exec_callback_cQListView_selectAll
  if not isNil(vtbl.updateEditorData):
    vtbl[].vtbl.updateEditorData = miqt_exec_callback_cQListView_updateEditorData
  if not isNil(vtbl.updateEditorGeometries):
    vtbl[].vtbl.updateEditorGeometries = miqt_exec_callback_cQListView_updateEditorGeometries
  if not isNil(vtbl.verticalScrollbarAction):
    vtbl[].vtbl.verticalScrollbarAction = miqt_exec_callback_cQListView_verticalScrollbarAction
  if not isNil(vtbl.horizontalScrollbarAction):
    vtbl[].vtbl.horizontalScrollbarAction = miqt_exec_callback_cQListView_horizontalScrollbarAction
  if not isNil(vtbl.verticalScrollbarValueChanged):
    vtbl[].vtbl.verticalScrollbarValueChanged = miqt_exec_callback_cQListView_verticalScrollbarValueChanged
  if not isNil(vtbl.horizontalScrollbarValueChanged):
    vtbl[].vtbl.horizontalScrollbarValueChanged = miqt_exec_callback_cQListView_horizontalScrollbarValueChanged
  if not isNil(vtbl.closeEditor):
    vtbl[].vtbl.closeEditor = miqt_exec_callback_cQListView_closeEditor
  if not isNil(vtbl.commitData):
    vtbl[].vtbl.commitData = miqt_exec_callback_cQListView_commitData
  if not isNil(vtbl.editorDestroyed):
    vtbl[].vtbl.editorDestroyed = miqt_exec_callback_cQListView_editorDestroyed
  if not isNil(vtbl.edit2):
    vtbl[].vtbl.edit2 = miqt_exec_callback_cQListView_edit2
  if not isNil(vtbl.selectionCommand):
    vtbl[].vtbl.selectionCommand = miqt_exec_callback_cQListView_selectionCommand
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQListView_focusNextPrevChild
  if not isNil(vtbl.viewportEvent):
    vtbl[].vtbl.viewportEvent = miqt_exec_callback_cQListView_viewportEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQListView_mousePressEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQListView_mouseDoubleClickEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQListView_dragEnterEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQListView_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQListView_focusOutEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQListView_keyPressEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQListView_inputMethodEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQListView_eventFilter
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQListView_minimumSizeHint
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQListView_sizeHint
  if not isNil(vtbl.setupViewport):
    vtbl[].vtbl.setupViewport = miqt_exec_callback_cQListView_setupViewport
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQListView_contextMenuEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQListView_changeEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQListView_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQListView_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQListView_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQListView_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQListView_paintEngine
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQListView_keyReleaseEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQListView_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQListView_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQListView_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQListView_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQListView_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQListView_actionEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQListView_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQListView_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQListView_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQListView_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQListView_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQListView_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQListView_sharedPainter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQListView_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQListView_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQListView_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQListView_disconnectNotify
  gen_qlistview_types.QListView(h: fcQListView_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qlistview_types.QListView,
    vtbl: ref QListViewVTable = nil): gen_qlistview_types.QListView =
  let vtbl = if vtbl == nil: new QListViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQListViewVTable, _: ptr cQListView) {.cdecl.} =
    let vtbl = cast[ref QListViewVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQListView_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQListView_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQListView_metacall
  if not isNil(vtbl.visualRect):
    vtbl[].vtbl.visualRect = miqt_exec_callback_cQListView_visualRect
  if not isNil(vtbl.scrollTo):
    vtbl[].vtbl.scrollTo = miqt_exec_callback_cQListView_scrollTo
  if not isNil(vtbl.indexAt):
    vtbl[].vtbl.indexAt = miqt_exec_callback_cQListView_indexAt
  if not isNil(vtbl.doItemsLayout):
    vtbl[].vtbl.doItemsLayout = miqt_exec_callback_cQListView_doItemsLayout
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQListView_reset
  if not isNil(vtbl.setRootIndex):
    vtbl[].vtbl.setRootIndex = miqt_exec_callback_cQListView_setRootIndex
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQListView_event
  if not isNil(vtbl.scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = miqt_exec_callback_cQListView_scrollContentsBy
  if not isNil(vtbl.dataChanged):
    vtbl[].vtbl.dataChanged = miqt_exec_callback_cQListView_dataChanged
  if not isNil(vtbl.rowsInserted):
    vtbl[].vtbl.rowsInserted = miqt_exec_callback_cQListView_rowsInserted
  if not isNil(vtbl.rowsAboutToBeRemoved):
    vtbl[].vtbl.rowsAboutToBeRemoved = miqt_exec_callback_cQListView_rowsAboutToBeRemoved
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQListView_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQListView_mouseReleaseEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQListView_wheelEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQListView_timerEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQListView_resizeEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQListView_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQListView_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQListView_dropEvent
  if not isNil(vtbl.startDrag):
    vtbl[].vtbl.startDrag = miqt_exec_callback_cQListView_startDrag
  if not isNil(vtbl.viewOptions):
    vtbl[].vtbl.viewOptions = miqt_exec_callback_cQListView_viewOptions
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQListView_paintEvent
  if not isNil(vtbl.horizontalOffset):
    vtbl[].vtbl.horizontalOffset = miqt_exec_callback_cQListView_horizontalOffset
  if not isNil(vtbl.verticalOffset):
    vtbl[].vtbl.verticalOffset = miqt_exec_callback_cQListView_verticalOffset
  if not isNil(vtbl.moveCursor):
    vtbl[].vtbl.moveCursor = miqt_exec_callback_cQListView_moveCursor
  if not isNil(vtbl.setSelection):
    vtbl[].vtbl.setSelection = miqt_exec_callback_cQListView_setSelection
  if not isNil(vtbl.visualRegionForSelection):
    vtbl[].vtbl.visualRegionForSelection = miqt_exec_callback_cQListView_visualRegionForSelection
  if not isNil(vtbl.selectedIndexes):
    vtbl[].vtbl.selectedIndexes = miqt_exec_callback_cQListView_selectedIndexes
  if not isNil(vtbl.updateGeometries):
    vtbl[].vtbl.updateGeometries = miqt_exec_callback_cQListView_updateGeometries
  if not isNil(vtbl.isIndexHidden):
    vtbl[].vtbl.isIndexHidden = miqt_exec_callback_cQListView_isIndexHidden
  if not isNil(vtbl.selectionChanged):
    vtbl[].vtbl.selectionChanged = miqt_exec_callback_cQListView_selectionChanged
  if not isNil(vtbl.currentChanged):
    vtbl[].vtbl.currentChanged = miqt_exec_callback_cQListView_currentChanged
  if not isNil(vtbl.viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = miqt_exec_callback_cQListView_viewportSizeHint
  if not isNil(vtbl.setModel):
    vtbl[].vtbl.setModel = miqt_exec_callback_cQListView_setModel
  if not isNil(vtbl.setSelectionModel):
    vtbl[].vtbl.setSelectionModel = miqt_exec_callback_cQListView_setSelectionModel
  if not isNil(vtbl.keyboardSearch):
    vtbl[].vtbl.keyboardSearch = miqt_exec_callback_cQListView_keyboardSearch
  if not isNil(vtbl.sizeHintForRow):
    vtbl[].vtbl.sizeHintForRow = miqt_exec_callback_cQListView_sizeHintForRow
  if not isNil(vtbl.sizeHintForColumn):
    vtbl[].vtbl.sizeHintForColumn = miqt_exec_callback_cQListView_sizeHintForColumn
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQListView_inputMethodQuery
  if not isNil(vtbl.selectAll):
    vtbl[].vtbl.selectAll = miqt_exec_callback_cQListView_selectAll
  if not isNil(vtbl.updateEditorData):
    vtbl[].vtbl.updateEditorData = miqt_exec_callback_cQListView_updateEditorData
  if not isNil(vtbl.updateEditorGeometries):
    vtbl[].vtbl.updateEditorGeometries = miqt_exec_callback_cQListView_updateEditorGeometries
  if not isNil(vtbl.verticalScrollbarAction):
    vtbl[].vtbl.verticalScrollbarAction = miqt_exec_callback_cQListView_verticalScrollbarAction
  if not isNil(vtbl.horizontalScrollbarAction):
    vtbl[].vtbl.horizontalScrollbarAction = miqt_exec_callback_cQListView_horizontalScrollbarAction
  if not isNil(vtbl.verticalScrollbarValueChanged):
    vtbl[].vtbl.verticalScrollbarValueChanged = miqt_exec_callback_cQListView_verticalScrollbarValueChanged
  if not isNil(vtbl.horizontalScrollbarValueChanged):
    vtbl[].vtbl.horizontalScrollbarValueChanged = miqt_exec_callback_cQListView_horizontalScrollbarValueChanged
  if not isNil(vtbl.closeEditor):
    vtbl[].vtbl.closeEditor = miqt_exec_callback_cQListView_closeEditor
  if not isNil(vtbl.commitData):
    vtbl[].vtbl.commitData = miqt_exec_callback_cQListView_commitData
  if not isNil(vtbl.editorDestroyed):
    vtbl[].vtbl.editorDestroyed = miqt_exec_callback_cQListView_editorDestroyed
  if not isNil(vtbl.edit2):
    vtbl[].vtbl.edit2 = miqt_exec_callback_cQListView_edit2
  if not isNil(vtbl.selectionCommand):
    vtbl[].vtbl.selectionCommand = miqt_exec_callback_cQListView_selectionCommand
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQListView_focusNextPrevChild
  if not isNil(vtbl.viewportEvent):
    vtbl[].vtbl.viewportEvent = miqt_exec_callback_cQListView_viewportEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQListView_mousePressEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQListView_mouseDoubleClickEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQListView_dragEnterEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQListView_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQListView_focusOutEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQListView_keyPressEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQListView_inputMethodEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQListView_eventFilter
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQListView_minimumSizeHint
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQListView_sizeHint
  if not isNil(vtbl.setupViewport):
    vtbl[].vtbl.setupViewport = miqt_exec_callback_cQListView_setupViewport
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQListView_contextMenuEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQListView_changeEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQListView_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQListView_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQListView_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQListView_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQListView_paintEngine
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQListView_keyReleaseEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQListView_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQListView_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQListView_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQListView_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQListView_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQListView_actionEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQListView_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQListView_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQListView_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQListView_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQListView_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQListView_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQListView_sharedPainter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQListView_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQListView_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQListView_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQListView_disconnectNotify
  gen_qlistview_types.QListView(h: fcQListView_new2(addr(vtbl[]), ))

proc staticMetaObject*(_: type gen_qlistview_types.QListView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQListView_staticMetaObject())
proc delete*(self: gen_qlistview_types.QListView) =
  fcQListView_delete(self.h)
