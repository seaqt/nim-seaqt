import ./Qt6Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt6Widgets") & " -fPIC"
{.compile("gen_qcolumnview.cpp", cflags).}


import ./gen_qcolumnview_types
export gen_qcolumnview_types

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

type cQColumnView*{.exportc: "QColumnView", incompleteStruct.} = object

proc fcQColumnView_metaObject(self: pointer, ): pointer {.importc: "QColumnView_metaObject".}
proc fcQColumnView_metacast(self: pointer, param1: cstring): pointer {.importc: "QColumnView_metacast".}
proc fcQColumnView_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QColumnView_metacall".}
proc fcQColumnView_tr(s: cstring): struct_miqt_string {.importc: "QColumnView_tr".}
proc fcQColumnView_updatePreviewWidget(self: pointer, index: pointer): void {.importc: "QColumnView_updatePreviewWidget".}
proc fcQColumnView_connect_updatePreviewWidget(self: pointer, slot: int, callback: proc (slot: int, index: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QColumnView_connect_updatePreviewWidget".}
proc fcQColumnView_indexAt(self: pointer, point: pointer): pointer {.importc: "QColumnView_indexAt".}
proc fcQColumnView_scrollTo(self: pointer, index: pointer, hint: cint): void {.importc: "QColumnView_scrollTo".}
proc fcQColumnView_sizeHint(self: pointer, ): pointer {.importc: "QColumnView_sizeHint".}
proc fcQColumnView_visualRect(self: pointer, index: pointer): pointer {.importc: "QColumnView_visualRect".}
proc fcQColumnView_setModel(self: pointer, model: pointer): void {.importc: "QColumnView_setModel".}
proc fcQColumnView_setSelectionModel(self: pointer, selectionModel: pointer): void {.importc: "QColumnView_setSelectionModel".}
proc fcQColumnView_setRootIndex(self: pointer, index: pointer): void {.importc: "QColumnView_setRootIndex".}
proc fcQColumnView_selectAll(self: pointer, ): void {.importc: "QColumnView_selectAll".}
proc fcQColumnView_setResizeGripsVisible(self: pointer, visible: bool): void {.importc: "QColumnView_setResizeGripsVisible".}
proc fcQColumnView_resizeGripsVisible(self: pointer, ): bool {.importc: "QColumnView_resizeGripsVisible".}
proc fcQColumnView_previewWidget(self: pointer, ): pointer {.importc: "QColumnView_previewWidget".}
proc fcQColumnView_setPreviewWidget(self: pointer, widget: pointer): void {.importc: "QColumnView_setPreviewWidget".}
proc fcQColumnView_setColumnWidths(self: pointer, list: struct_miqt_array): void {.importc: "QColumnView_setColumnWidths".}
proc fcQColumnView_columnWidths(self: pointer, ): struct_miqt_array {.importc: "QColumnView_columnWidths".}
proc fcQColumnView_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QColumnView_tr2".}
proc fcQColumnView_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QColumnView_tr3".}
type cQColumnViewVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQColumnViewVTable, self: ptr cQColumnView) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  indexAt*: proc(vtbl, self: pointer, point: pointer): pointer {.cdecl, raises: [], gcsafe.}
  scrollTo*: proc(vtbl, self: pointer, index: pointer, hint: cint): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  visualRect*: proc(vtbl, self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setModel*: proc(vtbl, self: pointer, model: pointer): void {.cdecl, raises: [], gcsafe.}
  setSelectionModel*: proc(vtbl, self: pointer, selectionModel: pointer): void {.cdecl, raises: [], gcsafe.}
  setRootIndex*: proc(vtbl, self: pointer, index: pointer): void {.cdecl, raises: [], gcsafe.}
  selectAll*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  isIndexHidden*: proc(vtbl, self: pointer, index: pointer): bool {.cdecl, raises: [], gcsafe.}
  moveCursor*: proc(vtbl, self: pointer, cursorAction: cint, modifiers: cint): pointer {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  setSelection*: proc(vtbl, self: pointer, rect: pointer, command: cint): void {.cdecl, raises: [], gcsafe.}
  visualRegionForSelection*: proc(vtbl, self: pointer, selection: pointer): pointer {.cdecl, raises: [], gcsafe.}
  horizontalOffset*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  verticalOffset*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  rowsInserted*: proc(vtbl, self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl, raises: [], gcsafe.}
  currentChanged*: proc(vtbl, self: pointer, current: pointer, previous: pointer): void {.cdecl, raises: [], gcsafe.}
  scrollContentsBy*: proc(vtbl, self: pointer, dx: cint, dy: cint): void {.cdecl, raises: [], gcsafe.}
  createColumn*: proc(vtbl, self: pointer, rootIndex: pointer): pointer {.cdecl, raises: [], gcsafe.}
  keyboardSearch*: proc(vtbl, self: pointer, search: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
  sizeHintForRow*: proc(vtbl, self: pointer, row: cint): cint {.cdecl, raises: [], gcsafe.}
  sizeHintForColumn*: proc(vtbl, self: pointer, column: cint): cint {.cdecl, raises: [], gcsafe.}
  itemDelegateForIndex*: proc(vtbl, self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, query: cint): pointer {.cdecl, raises: [], gcsafe.}
  reset*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  doItemsLayout*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  dataChanged*: proc(vtbl, self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.cdecl, raises: [], gcsafe.}
  rowsAboutToBeRemoved*: proc(vtbl, self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl, raises: [], gcsafe.}
  selectionChanged*: proc(vtbl, self: pointer, selected: pointer, deselected: pointer): void {.cdecl, raises: [], gcsafe.}
  updateEditorData*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  updateEditorGeometries*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  updateGeometries*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  verticalScrollbarAction*: proc(vtbl, self: pointer, action: cint): void {.cdecl, raises: [], gcsafe.}
  horizontalScrollbarAction*: proc(vtbl, self: pointer, action: cint): void {.cdecl, raises: [], gcsafe.}
  verticalScrollbarValueChanged*: proc(vtbl, self: pointer, value: cint): void {.cdecl, raises: [], gcsafe.}
  horizontalScrollbarValueChanged*: proc(vtbl, self: pointer, value: cint): void {.cdecl, raises: [], gcsafe.}
  closeEditor*: proc(vtbl, self: pointer, editor: pointer, hint: cint): void {.cdecl, raises: [], gcsafe.}
  commitData*: proc(vtbl, self: pointer, editor: pointer): void {.cdecl, raises: [], gcsafe.}
  editorDestroyed*: proc(vtbl, self: pointer, editor: pointer): void {.cdecl, raises: [], gcsafe.}
  selectedIndexes*: proc(vtbl, self: pointer, ): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  edit2*: proc(vtbl, self: pointer, index: pointer, trigger: cint, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  selectionCommand*: proc(vtbl, self: pointer, index: pointer, event: pointer): cint {.cdecl, raises: [], gcsafe.}
  startDrag*: proc(vtbl, self: pointer, supportedActions: cint): void {.cdecl, raises: [], gcsafe.}
  initViewItemOption*: proc(vtbl, self: pointer, option: pointer): void {.cdecl, raises: [], gcsafe.}
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
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, objectVal: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  viewportSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setupViewport*: proc(vtbl, self: pointer, viewport: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
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
proc fcQColumnView_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QColumnView_virtualbase_metaObject".}
proc fcQColumnView_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QColumnView_virtualbase_metacast".}
proc fcQColumnView_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QColumnView_virtualbase_metacall".}
proc fcQColumnView_virtualbase_indexAt(self: pointer, point: pointer): pointer {.importc: "QColumnView_virtualbase_indexAt".}
proc fcQColumnView_virtualbase_scrollTo(self: pointer, index: pointer, hint: cint): void {.importc: "QColumnView_virtualbase_scrollTo".}
proc fcQColumnView_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QColumnView_virtualbase_sizeHint".}
proc fcQColumnView_virtualbase_visualRect(self: pointer, index: pointer): pointer {.importc: "QColumnView_virtualbase_visualRect".}
proc fcQColumnView_virtualbase_setModel(self: pointer, model: pointer): void {.importc: "QColumnView_virtualbase_setModel".}
proc fcQColumnView_virtualbase_setSelectionModel(self: pointer, selectionModel: pointer): void {.importc: "QColumnView_virtualbase_setSelectionModel".}
proc fcQColumnView_virtualbase_setRootIndex(self: pointer, index: pointer): void {.importc: "QColumnView_virtualbase_setRootIndex".}
proc fcQColumnView_virtualbase_selectAll(self: pointer, ): void {.importc: "QColumnView_virtualbase_selectAll".}
proc fcQColumnView_virtualbase_isIndexHidden(self: pointer, index: pointer): bool {.importc: "QColumnView_virtualbase_isIndexHidden".}
proc fcQColumnView_virtualbase_moveCursor(self: pointer, cursorAction: cint, modifiers: cint): pointer {.importc: "QColumnView_virtualbase_moveCursor".}
proc fcQColumnView_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QColumnView_virtualbase_resizeEvent".}
proc fcQColumnView_virtualbase_setSelection(self: pointer, rect: pointer, command: cint): void {.importc: "QColumnView_virtualbase_setSelection".}
proc fcQColumnView_virtualbase_visualRegionForSelection(self: pointer, selection: pointer): pointer {.importc: "QColumnView_virtualbase_visualRegionForSelection".}
proc fcQColumnView_virtualbase_horizontalOffset(self: pointer, ): cint {.importc: "QColumnView_virtualbase_horizontalOffset".}
proc fcQColumnView_virtualbase_verticalOffset(self: pointer, ): cint {.importc: "QColumnView_virtualbase_verticalOffset".}
proc fcQColumnView_virtualbase_rowsInserted(self: pointer, parent: pointer, start: cint, endVal: cint): void {.importc: "QColumnView_virtualbase_rowsInserted".}
proc fcQColumnView_virtualbase_currentChanged(self: pointer, current: pointer, previous: pointer): void {.importc: "QColumnView_virtualbase_currentChanged".}
proc fcQColumnView_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.importc: "QColumnView_virtualbase_scrollContentsBy".}
proc fcQColumnView_virtualbase_createColumn(self: pointer, rootIndex: pointer): pointer {.importc: "QColumnView_virtualbase_createColumn".}
proc fcQColumnView_virtualbase_keyboardSearch(self: pointer, search: struct_miqt_string): void {.importc: "QColumnView_virtualbase_keyboardSearch".}
proc fcQColumnView_virtualbase_sizeHintForRow(self: pointer, row: cint): cint {.importc: "QColumnView_virtualbase_sizeHintForRow".}
proc fcQColumnView_virtualbase_sizeHintForColumn(self: pointer, column: cint): cint {.importc: "QColumnView_virtualbase_sizeHintForColumn".}
proc fcQColumnView_virtualbase_itemDelegateForIndex(self: pointer, index: pointer): pointer {.importc: "QColumnView_virtualbase_itemDelegateForIndex".}
proc fcQColumnView_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QColumnView_virtualbase_inputMethodQuery".}
proc fcQColumnView_virtualbase_reset(self: pointer, ): void {.importc: "QColumnView_virtualbase_reset".}
proc fcQColumnView_virtualbase_doItemsLayout(self: pointer, ): void {.importc: "QColumnView_virtualbase_doItemsLayout".}
proc fcQColumnView_virtualbase_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.importc: "QColumnView_virtualbase_dataChanged".}
proc fcQColumnView_virtualbase_rowsAboutToBeRemoved(self: pointer, parent: pointer, start: cint, endVal: cint): void {.importc: "QColumnView_virtualbase_rowsAboutToBeRemoved".}
proc fcQColumnView_virtualbase_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void {.importc: "QColumnView_virtualbase_selectionChanged".}
proc fcQColumnView_virtualbase_updateEditorData(self: pointer, ): void {.importc: "QColumnView_virtualbase_updateEditorData".}
proc fcQColumnView_virtualbase_updateEditorGeometries(self: pointer, ): void {.importc: "QColumnView_virtualbase_updateEditorGeometries".}
proc fcQColumnView_virtualbase_updateGeometries(self: pointer, ): void {.importc: "QColumnView_virtualbase_updateGeometries".}
proc fcQColumnView_virtualbase_verticalScrollbarAction(self: pointer, action: cint): void {.importc: "QColumnView_virtualbase_verticalScrollbarAction".}
proc fcQColumnView_virtualbase_horizontalScrollbarAction(self: pointer, action: cint): void {.importc: "QColumnView_virtualbase_horizontalScrollbarAction".}
proc fcQColumnView_virtualbase_verticalScrollbarValueChanged(self: pointer, value: cint): void {.importc: "QColumnView_virtualbase_verticalScrollbarValueChanged".}
proc fcQColumnView_virtualbase_horizontalScrollbarValueChanged(self: pointer, value: cint): void {.importc: "QColumnView_virtualbase_horizontalScrollbarValueChanged".}
proc fcQColumnView_virtualbase_closeEditor(self: pointer, editor: pointer, hint: cint): void {.importc: "QColumnView_virtualbase_closeEditor".}
proc fcQColumnView_virtualbase_commitData(self: pointer, editor: pointer): void {.importc: "QColumnView_virtualbase_commitData".}
proc fcQColumnView_virtualbase_editorDestroyed(self: pointer, editor: pointer): void {.importc: "QColumnView_virtualbase_editorDestroyed".}
proc fcQColumnView_virtualbase_selectedIndexes(self: pointer, ): struct_miqt_array {.importc: "QColumnView_virtualbase_selectedIndexes".}
proc fcQColumnView_virtualbase_edit2(self: pointer, index: pointer, trigger: cint, event: pointer): bool {.importc: "QColumnView_virtualbase_edit2".}
proc fcQColumnView_virtualbase_selectionCommand(self: pointer, index: pointer, event: pointer): cint {.importc: "QColumnView_virtualbase_selectionCommand".}
proc fcQColumnView_virtualbase_startDrag(self: pointer, supportedActions: cint): void {.importc: "QColumnView_virtualbase_startDrag".}
proc fcQColumnView_virtualbase_initViewItemOption(self: pointer, option: pointer): void {.importc: "QColumnView_virtualbase_initViewItemOption".}
proc fcQColumnView_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QColumnView_virtualbase_focusNextPrevChild".}
proc fcQColumnView_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QColumnView_virtualbase_event".}
proc fcQColumnView_virtualbase_viewportEvent(self: pointer, event: pointer): bool {.importc: "QColumnView_virtualbase_viewportEvent".}
proc fcQColumnView_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QColumnView_virtualbase_mousePressEvent".}
proc fcQColumnView_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QColumnView_virtualbase_mouseMoveEvent".}
proc fcQColumnView_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QColumnView_virtualbase_mouseReleaseEvent".}
proc fcQColumnView_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QColumnView_virtualbase_mouseDoubleClickEvent".}
proc fcQColumnView_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QColumnView_virtualbase_dragEnterEvent".}
proc fcQColumnView_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QColumnView_virtualbase_dragMoveEvent".}
proc fcQColumnView_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QColumnView_virtualbase_dragLeaveEvent".}
proc fcQColumnView_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QColumnView_virtualbase_dropEvent".}
proc fcQColumnView_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QColumnView_virtualbase_focusInEvent".}
proc fcQColumnView_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QColumnView_virtualbase_focusOutEvent".}
proc fcQColumnView_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QColumnView_virtualbase_keyPressEvent".}
proc fcQColumnView_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QColumnView_virtualbase_timerEvent".}
proc fcQColumnView_virtualbase_inputMethodEvent(self: pointer, event: pointer): void {.importc: "QColumnView_virtualbase_inputMethodEvent".}
proc fcQColumnView_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool {.importc: "QColumnView_virtualbase_eventFilter".}
proc fcQColumnView_virtualbase_viewportSizeHint(self: pointer, ): pointer {.importc: "QColumnView_virtualbase_viewportSizeHint".}
proc fcQColumnView_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QColumnView_virtualbase_minimumSizeHint".}
proc fcQColumnView_virtualbase_setupViewport(self: pointer, viewport: pointer): void {.importc: "QColumnView_virtualbase_setupViewport".}
proc fcQColumnView_virtualbase_paintEvent(self: pointer, param1: pointer): void {.importc: "QColumnView_virtualbase_paintEvent".}
proc fcQColumnView_virtualbase_wheelEvent(self: pointer, param1: pointer): void {.importc: "QColumnView_virtualbase_wheelEvent".}
proc fcQColumnView_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void {.importc: "QColumnView_virtualbase_contextMenuEvent".}
proc fcQColumnView_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QColumnView_virtualbase_changeEvent".}
proc fcQColumnView_virtualbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QColumnView_virtualbase_initStyleOption".}
proc fcQColumnView_virtualbase_devType(self: pointer, ): cint {.importc: "QColumnView_virtualbase_devType".}
proc fcQColumnView_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QColumnView_virtualbase_setVisible".}
proc fcQColumnView_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QColumnView_virtualbase_heightForWidth".}
proc fcQColumnView_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QColumnView_virtualbase_hasHeightForWidth".}
proc fcQColumnView_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QColumnView_virtualbase_paintEngine".}
proc fcQColumnView_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QColumnView_virtualbase_keyReleaseEvent".}
proc fcQColumnView_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QColumnView_virtualbase_enterEvent".}
proc fcQColumnView_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QColumnView_virtualbase_leaveEvent".}
proc fcQColumnView_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QColumnView_virtualbase_moveEvent".}
proc fcQColumnView_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QColumnView_virtualbase_closeEvent".}
proc fcQColumnView_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QColumnView_virtualbase_tabletEvent".}
proc fcQColumnView_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QColumnView_virtualbase_actionEvent".}
proc fcQColumnView_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QColumnView_virtualbase_showEvent".}
proc fcQColumnView_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QColumnView_virtualbase_hideEvent".}
proc fcQColumnView_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QColumnView_virtualbase_nativeEvent".}
proc fcQColumnView_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QColumnView_virtualbase_metric".}
proc fcQColumnView_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QColumnView_virtualbase_initPainter".}
proc fcQColumnView_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QColumnView_virtualbase_redirected".}
proc fcQColumnView_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QColumnView_virtualbase_sharedPainter".}
proc fcQColumnView_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QColumnView_virtualbase_childEvent".}
proc fcQColumnView_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QColumnView_virtualbase_customEvent".}
proc fcQColumnView_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QColumnView_virtualbase_connectNotify".}
proc fcQColumnView_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QColumnView_virtualbase_disconnectNotify".}
proc fcQColumnView_protectedbase_initializeColumn(self: pointer, column: pointer): void {.importc: "QColumnView_protectedbase_initializeColumn".}
proc fcQColumnView_protectedbase_state(self: pointer, ): cint {.importc: "QColumnView_protectedbase_state".}
proc fcQColumnView_protectedbase_setState(self: pointer, state: cint): void {.importc: "QColumnView_protectedbase_setState".}
proc fcQColumnView_protectedbase_scheduleDelayedItemsLayout(self: pointer, ): void {.importc: "QColumnView_protectedbase_scheduleDelayedItemsLayout".}
proc fcQColumnView_protectedbase_executeDelayedItemsLayout(self: pointer, ): void {.importc: "QColumnView_protectedbase_executeDelayedItemsLayout".}
proc fcQColumnView_protectedbase_setDirtyRegion(self: pointer, region: pointer): void {.importc: "QColumnView_protectedbase_setDirtyRegion".}
proc fcQColumnView_protectedbase_scrollDirtyRegion(self: pointer, dx: cint, dy: cint): void {.importc: "QColumnView_protectedbase_scrollDirtyRegion".}
proc fcQColumnView_protectedbase_dirtyRegionOffset(self: pointer, ): pointer {.importc: "QColumnView_protectedbase_dirtyRegionOffset".}
proc fcQColumnView_protectedbase_startAutoScroll(self: pointer, ): void {.importc: "QColumnView_protectedbase_startAutoScroll".}
proc fcQColumnView_protectedbase_stopAutoScroll(self: pointer, ): void {.importc: "QColumnView_protectedbase_stopAutoScroll".}
proc fcQColumnView_protectedbase_doAutoScroll(self: pointer, ): void {.importc: "QColumnView_protectedbase_doAutoScroll".}
proc fcQColumnView_protectedbase_dropIndicatorPosition(self: pointer, ): cint {.importc: "QColumnView_protectedbase_dropIndicatorPosition".}
proc fcQColumnView_protectedbase_setViewportMargins(self: pointer, left: cint, top: cint, right: cint, bottom: cint): void {.importc: "QColumnView_protectedbase_setViewportMargins".}
proc fcQColumnView_protectedbase_viewportMargins(self: pointer, ): pointer {.importc: "QColumnView_protectedbase_viewportMargins".}
proc fcQColumnView_protectedbase_drawFrame(self: pointer, param1: pointer): void {.importc: "QColumnView_protectedbase_drawFrame".}
proc fcQColumnView_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QColumnView_protectedbase_updateMicroFocus".}
proc fcQColumnView_protectedbase_create(self: pointer, ): void {.importc: "QColumnView_protectedbase_create".}
proc fcQColumnView_protectedbase_destroy(self: pointer, ): void {.importc: "QColumnView_protectedbase_destroy".}
proc fcQColumnView_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QColumnView_protectedbase_focusNextChild".}
proc fcQColumnView_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QColumnView_protectedbase_focusPreviousChild".}
proc fcQColumnView_protectedbase_sender(self: pointer, ): pointer {.importc: "QColumnView_protectedbase_sender".}
proc fcQColumnView_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QColumnView_protectedbase_senderSignalIndex".}
proc fcQColumnView_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QColumnView_protectedbase_receivers".}
proc fcQColumnView_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QColumnView_protectedbase_isSignalConnected".}
proc fcQColumnView_new(vtbl: pointer, parent: pointer): ptr cQColumnView {.importc: "QColumnView_new".}
proc fcQColumnView_new2(vtbl: pointer, ): ptr cQColumnView {.importc: "QColumnView_new2".}
proc fcQColumnView_staticMetaObject(): pointer {.importc: "QColumnView_staticMetaObject".}

proc metaObject*(self: gen_qcolumnview_types.QColumnView, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQColumnView_metaObject(self.h), owned: false)

proc metacast*(self: gen_qcolumnview_types.QColumnView, param1: cstring): pointer =
  fcQColumnView_metacast(self.h, param1)

proc metacall*(self: gen_qcolumnview_types.QColumnView, param1: cint, param2: cint, param3: pointer): cint =
  fcQColumnView_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qcolumnview_types.QColumnView, s: cstring): string =
  let v_ms = fcQColumnView_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc updatePreviewWidget*(self: gen_qcolumnview_types.QColumnView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQColumnView_updatePreviewWidget(self.h, index.h)

type QColumnViewupdatePreviewWidgetSlot* = proc(index: gen_qabstractitemmodel_types.QModelIndex)
proc miqt_exec_callback_cQColumnView_updatePreviewWidget(slot: int, index: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QColumnViewupdatePreviewWidgetSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQColumnView_updatePreviewWidget_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QColumnViewupdatePreviewWidgetSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onupdatePreviewWidget*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewupdatePreviewWidgetSlot) =
  var tmp = new QColumnViewupdatePreviewWidgetSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_connect_updatePreviewWidget(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQColumnView_updatePreviewWidget, miqt_exec_callback_cQColumnView_updatePreviewWidget_release)

proc indexAt*(self: gen_qcolumnview_types.QColumnView, point: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQColumnView_indexAt(self.h, point.h), owned: true)

proc scrollTo*(self: gen_qcolumnview_types.QColumnView, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void =
  fcQColumnView_scrollTo(self.h, index.h, cint(hint))

proc sizeHint*(self: gen_qcolumnview_types.QColumnView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQColumnView_sizeHint(self.h), owned: true)

proc visualRect*(self: gen_qcolumnview_types.QColumnView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQColumnView_visualRect(self.h, index.h), owned: true)

proc setModel*(self: gen_qcolumnview_types.QColumnView, model: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQColumnView_setModel(self.h, model.h)

proc setSelectionModel*(self: gen_qcolumnview_types.QColumnView, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void =
  fcQColumnView_setSelectionModel(self.h, selectionModel.h)

proc setRootIndex*(self: gen_qcolumnview_types.QColumnView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQColumnView_setRootIndex(self.h, index.h)

proc selectAll*(self: gen_qcolumnview_types.QColumnView, ): void =
  fcQColumnView_selectAll(self.h)

proc setResizeGripsVisible*(self: gen_qcolumnview_types.QColumnView, visible: bool): void =
  fcQColumnView_setResizeGripsVisible(self.h, visible)

proc resizeGripsVisible*(self: gen_qcolumnview_types.QColumnView, ): bool =
  fcQColumnView_resizeGripsVisible(self.h)

proc previewWidget*(self: gen_qcolumnview_types.QColumnView, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQColumnView_previewWidget(self.h), owned: false)

proc setPreviewWidget*(self: gen_qcolumnview_types.QColumnView, widget: gen_qwidget_types.QWidget): void =
  fcQColumnView_setPreviewWidget(self.h, widget.h)

proc setColumnWidths*(self: gen_qcolumnview_types.QColumnView, list: seq[cint]): void =
  var list_CArray = newSeq[cint](len(list))
  for i in 0..<len(list):
    list_CArray[i] = list[i]

  fcQColumnView_setColumnWidths(self.h, struct_miqt_array(len: csize_t(len(list)), data: if len(list) == 0: nil else: addr(list_CArray[0])))

proc columnWidths*(self: gen_qcolumnview_types.QColumnView, ): seq[cint] =
  var v_ma = fcQColumnView_columnWidths(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  c_free(v_ma.data)
  vx_ret

proc tr*(_: type gen_qcolumnview_types.QColumnView, s: cstring, c: cstring): string =
  let v_ms = fcQColumnView_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qcolumnview_types.QColumnView, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQColumnView_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QColumnViewmetaObjectProc* = proc(self: QColumnView): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QColumnViewmetacastProc* = proc(self: QColumnView, param1: cstring): pointer {.raises: [], gcsafe.}
type QColumnViewmetacallProc* = proc(self: QColumnView, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QColumnViewindexAtProc* = proc(self: QColumnView, point: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QColumnViewscrollToProc* = proc(self: QColumnView, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void {.raises: [], gcsafe.}
type QColumnViewsizeHintProc* = proc(self: QColumnView): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QColumnViewvisualRectProc* = proc(self: QColumnView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect {.raises: [], gcsafe.}
type QColumnViewsetModelProc* = proc(self: QColumnView, model: gen_qabstractitemmodel_types.QAbstractItemModel): void {.raises: [], gcsafe.}
type QColumnViewsetSelectionModelProc* = proc(self: QColumnView, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void {.raises: [], gcsafe.}
type QColumnViewsetRootIndexProc* = proc(self: QColumnView, index: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QColumnViewselectAllProc* = proc(self: QColumnView): void {.raises: [], gcsafe.}
type QColumnViewisIndexHiddenProc* = proc(self: QColumnView, index: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QColumnViewmoveCursorProc* = proc(self: QColumnView, cursorAction: cint, modifiers: cint): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QColumnViewresizeEventProc* = proc(self: QColumnView, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QColumnViewsetSelectionProc* = proc(self: QColumnView, rect: gen_qrect_types.QRect, command: cint): void {.raises: [], gcsafe.}
type QColumnViewvisualRegionForSelectionProc* = proc(self: QColumnView, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion {.raises: [], gcsafe.}
type QColumnViewhorizontalOffsetProc* = proc(self: QColumnView): cint {.raises: [], gcsafe.}
type QColumnViewverticalOffsetProc* = proc(self: QColumnView): cint {.raises: [], gcsafe.}
type QColumnViewrowsInsertedProc* = proc(self: QColumnView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void {.raises: [], gcsafe.}
type QColumnViewcurrentChangedProc* = proc(self: QColumnView, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QColumnViewscrollContentsByProc* = proc(self: QColumnView, dx: cint, dy: cint): void {.raises: [], gcsafe.}
type QColumnViewcreateColumnProc* = proc(self: QColumnView, rootIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemview_types.QAbstractItemView {.raises: [], gcsafe.}
type QColumnViewkeyboardSearchProc* = proc(self: QColumnView, search: string): void {.raises: [], gcsafe.}
type QColumnViewsizeHintForRowProc* = proc(self: QColumnView, row: cint): cint {.raises: [], gcsafe.}
type QColumnViewsizeHintForColumnProc* = proc(self: QColumnView, column: cint): cint {.raises: [], gcsafe.}
type QColumnViewitemDelegateForIndexProc* = proc(self: QColumnView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemdelegate_types.QAbstractItemDelegate {.raises: [], gcsafe.}
type QColumnViewinputMethodQueryProc* = proc(self: QColumnView, query: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QColumnViewresetProc* = proc(self: QColumnView): void {.raises: [], gcsafe.}
type QColumnViewdoItemsLayoutProc* = proc(self: QColumnView): void {.raises: [], gcsafe.}
type QColumnViewdataChangedProc* = proc(self: QColumnView, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: seq[cint]): void {.raises: [], gcsafe.}
type QColumnViewrowsAboutToBeRemovedProc* = proc(self: QColumnView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void {.raises: [], gcsafe.}
type QColumnViewselectionChangedProc* = proc(self: QColumnView, selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void {.raises: [], gcsafe.}
type QColumnViewupdateEditorDataProc* = proc(self: QColumnView): void {.raises: [], gcsafe.}
type QColumnViewupdateEditorGeometriesProc* = proc(self: QColumnView): void {.raises: [], gcsafe.}
type QColumnViewupdateGeometriesProc* = proc(self: QColumnView): void {.raises: [], gcsafe.}
type QColumnViewverticalScrollbarActionProc* = proc(self: QColumnView, action: cint): void {.raises: [], gcsafe.}
type QColumnViewhorizontalScrollbarActionProc* = proc(self: QColumnView, action: cint): void {.raises: [], gcsafe.}
type QColumnViewverticalScrollbarValueChangedProc* = proc(self: QColumnView, value: cint): void {.raises: [], gcsafe.}
type QColumnViewhorizontalScrollbarValueChangedProc* = proc(self: QColumnView, value: cint): void {.raises: [], gcsafe.}
type QColumnViewcloseEditorProc* = proc(self: QColumnView, editor: gen_qwidget_types.QWidget, hint: cint): void {.raises: [], gcsafe.}
type QColumnViewcommitDataProc* = proc(self: QColumnView, editor: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QColumnVieweditorDestroyedProc* = proc(self: QColumnView, editor: gen_qobject_types.QObject): void {.raises: [], gcsafe.}
type QColumnViewselectedIndexesProc* = proc(self: QColumnView): seq[gen_qabstractitemmodel_types.QModelIndex] {.raises: [], gcsafe.}
type QColumnViewedit2Proc* = proc(self: QColumnView, index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QColumnViewselectionCommandProc* = proc(self: QColumnView, index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint {.raises: [], gcsafe.}
type QColumnViewstartDragProc* = proc(self: QColumnView, supportedActions: cint): void {.raises: [], gcsafe.}
type QColumnViewinitViewItemOptionProc* = proc(self: QColumnView, option: gen_qstyleoption_types.QStyleOptionViewItem): void {.raises: [], gcsafe.}
type QColumnViewfocusNextPrevChildProc* = proc(self: QColumnView, next: bool): bool {.raises: [], gcsafe.}
type QColumnVieweventProc* = proc(self: QColumnView, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QColumnViewviewportEventProc* = proc(self: QColumnView, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QColumnViewmousePressEventProc* = proc(self: QColumnView, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QColumnViewmouseMoveEventProc* = proc(self: QColumnView, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QColumnViewmouseReleaseEventProc* = proc(self: QColumnView, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QColumnViewmouseDoubleClickEventProc* = proc(self: QColumnView, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QColumnViewdragEnterEventProc* = proc(self: QColumnView, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QColumnViewdragMoveEventProc* = proc(self: QColumnView, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QColumnViewdragLeaveEventProc* = proc(self: QColumnView, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QColumnViewdropEventProc* = proc(self: QColumnView, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QColumnViewfocusInEventProc* = proc(self: QColumnView, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QColumnViewfocusOutEventProc* = proc(self: QColumnView, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QColumnViewkeyPressEventProc* = proc(self: QColumnView, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QColumnViewtimerEventProc* = proc(self: QColumnView, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QColumnViewinputMethodEventProc* = proc(self: QColumnView, event: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QColumnVieweventFilterProc* = proc(self: QColumnView, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QColumnViewviewportSizeHintProc* = proc(self: QColumnView): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QColumnViewminimumSizeHintProc* = proc(self: QColumnView): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QColumnViewsetupViewportProc* = proc(self: QColumnView, viewport: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QColumnViewpaintEventProc* = proc(self: QColumnView, param1: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QColumnViewwheelEventProc* = proc(self: QColumnView, param1: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QColumnViewcontextMenuEventProc* = proc(self: QColumnView, param1: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QColumnViewchangeEventProc* = proc(self: QColumnView, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QColumnViewinitStyleOptionProc* = proc(self: QColumnView, option: gen_qstyleoption_types.QStyleOptionFrame): void {.raises: [], gcsafe.}
type QColumnViewdevTypeProc* = proc(self: QColumnView): cint {.raises: [], gcsafe.}
type QColumnViewsetVisibleProc* = proc(self: QColumnView, visible: bool): void {.raises: [], gcsafe.}
type QColumnViewheightForWidthProc* = proc(self: QColumnView, param1: cint): cint {.raises: [], gcsafe.}
type QColumnViewhasHeightForWidthProc* = proc(self: QColumnView): bool {.raises: [], gcsafe.}
type QColumnViewpaintEngineProc* = proc(self: QColumnView): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QColumnViewkeyReleaseEventProc* = proc(self: QColumnView, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QColumnViewenterEventProc* = proc(self: QColumnView, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QColumnViewleaveEventProc* = proc(self: QColumnView, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QColumnViewmoveEventProc* = proc(self: QColumnView, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QColumnViewcloseEventProc* = proc(self: QColumnView, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QColumnViewtabletEventProc* = proc(self: QColumnView, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QColumnViewactionEventProc* = proc(self: QColumnView, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QColumnViewshowEventProc* = proc(self: QColumnView, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QColumnViewhideEventProc* = proc(self: QColumnView, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QColumnViewnativeEventProc* = proc(self: QColumnView, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QColumnViewmetricProc* = proc(self: QColumnView, param1: cint): cint {.raises: [], gcsafe.}
type QColumnViewinitPainterProc* = proc(self: QColumnView, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QColumnViewredirectedProc* = proc(self: QColumnView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QColumnViewsharedPainterProc* = proc(self: QColumnView): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QColumnViewchildEventProc* = proc(self: QColumnView, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QColumnViewcustomEventProc* = proc(self: QColumnView, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QColumnViewconnectNotifyProc* = proc(self: QColumnView, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QColumnViewdisconnectNotifyProc* = proc(self: QColumnView, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QColumnViewVTable* {.inheritable, pure.} = object
  vtbl: cQColumnViewVTable
  metaObject*: QColumnViewmetaObjectProc
  metacast*: QColumnViewmetacastProc
  metacall*: QColumnViewmetacallProc
  indexAt*: QColumnViewindexAtProc
  scrollTo*: QColumnViewscrollToProc
  sizeHint*: QColumnViewsizeHintProc
  visualRect*: QColumnViewvisualRectProc
  setModel*: QColumnViewsetModelProc
  setSelectionModel*: QColumnViewsetSelectionModelProc
  setRootIndex*: QColumnViewsetRootIndexProc
  selectAll*: QColumnViewselectAllProc
  isIndexHidden*: QColumnViewisIndexHiddenProc
  moveCursor*: QColumnViewmoveCursorProc
  resizeEvent*: QColumnViewresizeEventProc
  setSelection*: QColumnViewsetSelectionProc
  visualRegionForSelection*: QColumnViewvisualRegionForSelectionProc
  horizontalOffset*: QColumnViewhorizontalOffsetProc
  verticalOffset*: QColumnViewverticalOffsetProc
  rowsInserted*: QColumnViewrowsInsertedProc
  currentChanged*: QColumnViewcurrentChangedProc
  scrollContentsBy*: QColumnViewscrollContentsByProc
  createColumn*: QColumnViewcreateColumnProc
  keyboardSearch*: QColumnViewkeyboardSearchProc
  sizeHintForRow*: QColumnViewsizeHintForRowProc
  sizeHintForColumn*: QColumnViewsizeHintForColumnProc
  itemDelegateForIndex*: QColumnViewitemDelegateForIndexProc
  inputMethodQuery*: QColumnViewinputMethodQueryProc
  reset*: QColumnViewresetProc
  doItemsLayout*: QColumnViewdoItemsLayoutProc
  dataChanged*: QColumnViewdataChangedProc
  rowsAboutToBeRemoved*: QColumnViewrowsAboutToBeRemovedProc
  selectionChanged*: QColumnViewselectionChangedProc
  updateEditorData*: QColumnViewupdateEditorDataProc
  updateEditorGeometries*: QColumnViewupdateEditorGeometriesProc
  updateGeometries*: QColumnViewupdateGeometriesProc
  verticalScrollbarAction*: QColumnViewverticalScrollbarActionProc
  horizontalScrollbarAction*: QColumnViewhorizontalScrollbarActionProc
  verticalScrollbarValueChanged*: QColumnViewverticalScrollbarValueChangedProc
  horizontalScrollbarValueChanged*: QColumnViewhorizontalScrollbarValueChangedProc
  closeEditor*: QColumnViewcloseEditorProc
  commitData*: QColumnViewcommitDataProc
  editorDestroyed*: QColumnVieweditorDestroyedProc
  selectedIndexes*: QColumnViewselectedIndexesProc
  edit2*: QColumnViewedit2Proc
  selectionCommand*: QColumnViewselectionCommandProc
  startDrag*: QColumnViewstartDragProc
  initViewItemOption*: QColumnViewinitViewItemOptionProc
  focusNextPrevChild*: QColumnViewfocusNextPrevChildProc
  event*: QColumnVieweventProc
  viewportEvent*: QColumnViewviewportEventProc
  mousePressEvent*: QColumnViewmousePressEventProc
  mouseMoveEvent*: QColumnViewmouseMoveEventProc
  mouseReleaseEvent*: QColumnViewmouseReleaseEventProc
  mouseDoubleClickEvent*: QColumnViewmouseDoubleClickEventProc
  dragEnterEvent*: QColumnViewdragEnterEventProc
  dragMoveEvent*: QColumnViewdragMoveEventProc
  dragLeaveEvent*: QColumnViewdragLeaveEventProc
  dropEvent*: QColumnViewdropEventProc
  focusInEvent*: QColumnViewfocusInEventProc
  focusOutEvent*: QColumnViewfocusOutEventProc
  keyPressEvent*: QColumnViewkeyPressEventProc
  timerEvent*: QColumnViewtimerEventProc
  inputMethodEvent*: QColumnViewinputMethodEventProc
  eventFilter*: QColumnVieweventFilterProc
  viewportSizeHint*: QColumnViewviewportSizeHintProc
  minimumSizeHint*: QColumnViewminimumSizeHintProc
  setupViewport*: QColumnViewsetupViewportProc
  paintEvent*: QColumnViewpaintEventProc
  wheelEvent*: QColumnViewwheelEventProc
  contextMenuEvent*: QColumnViewcontextMenuEventProc
  changeEvent*: QColumnViewchangeEventProc
  initStyleOption*: QColumnViewinitStyleOptionProc
  devType*: QColumnViewdevTypeProc
  setVisible*: QColumnViewsetVisibleProc
  heightForWidth*: QColumnViewheightForWidthProc
  hasHeightForWidth*: QColumnViewhasHeightForWidthProc
  paintEngine*: QColumnViewpaintEngineProc
  keyReleaseEvent*: QColumnViewkeyReleaseEventProc
  enterEvent*: QColumnViewenterEventProc
  leaveEvent*: QColumnViewleaveEventProc
  moveEvent*: QColumnViewmoveEventProc
  closeEvent*: QColumnViewcloseEventProc
  tabletEvent*: QColumnViewtabletEventProc
  actionEvent*: QColumnViewactionEventProc
  showEvent*: QColumnViewshowEventProc
  hideEvent*: QColumnViewhideEventProc
  nativeEvent*: QColumnViewnativeEventProc
  metric*: QColumnViewmetricProc
  initPainter*: QColumnViewinitPainterProc
  redirected*: QColumnViewredirectedProc
  sharedPainter*: QColumnViewsharedPainterProc
  childEvent*: QColumnViewchildEventProc
  customEvent*: QColumnViewcustomEventProc
  connectNotify*: QColumnViewconnectNotifyProc
  disconnectNotify*: QColumnViewdisconnectNotifyProc
proc QColumnViewmetaObject*(self: gen_qcolumnview_types.QColumnView, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQColumnView_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQColumnView_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QColumnViewmetacast*(self: gen_qcolumnview_types.QColumnView, param1: cstring): pointer =
  fcQColumnView_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQColumnView_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QColumnViewmetacall*(self: gen_qcolumnview_types.QColumnView, param1: cint, param2: cint, param3: pointer): cint =
  fcQColumnView_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQColumnView_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QColumnViewindexAt*(self: gen_qcolumnview_types.QColumnView, point: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQColumnView_virtualbase_indexAt(self.h, point.h), owned: true)

proc miqt_exec_callback_cQColumnView_indexAt(vtbl: pointer, self: pointer, point: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: point, owned: false)
  var virtualReturn = vtbl[].indexAt(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QColumnViewscrollTo*(self: gen_qcolumnview_types.QColumnView, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void =
  fcQColumnView_virtualbase_scrollTo(self.h, index.h, cint(hint))

proc miqt_exec_callback_cQColumnView_scrollTo(vtbl: pointer, self: pointer, index: pointer, hint: cint): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = cint(hint)
  vtbl[].scrollTo(self, slotval1, slotval2)

proc QColumnViewsizeHint*(self: gen_qcolumnview_types.QColumnView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQColumnView_virtualbase_sizeHint(self.h), owned: true)

proc miqt_exec_callback_cQColumnView_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QColumnViewvisualRect*(self: gen_qcolumnview_types.QColumnView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQColumnView_virtualbase_visualRect(self.h, index.h), owned: true)

proc miqt_exec_callback_cQColumnView_visualRect(vtbl: pointer, self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].visualRect(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QColumnViewsetModel*(self: gen_qcolumnview_types.QColumnView, model: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQColumnView_virtualbase_setModel(self.h, model.h)

proc miqt_exec_callback_cQColumnView_setModel(vtbl: pointer, self: pointer, model: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model, owned: false)
  vtbl[].setModel(self, slotval1)

proc QColumnViewsetSelectionModel*(self: gen_qcolumnview_types.QColumnView, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void =
  fcQColumnView_virtualbase_setSelectionModel(self.h, selectionModel.h)

proc miqt_exec_callback_cQColumnView_setSelectionModel(vtbl: pointer, self: pointer, selectionModel: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelectionModel(h: selectionModel, owned: false)
  vtbl[].setSelectionModel(self, slotval1)

proc QColumnViewsetRootIndex*(self: gen_qcolumnview_types.QColumnView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQColumnView_virtualbase_setRootIndex(self.h, index.h)

proc miqt_exec_callback_cQColumnView_setRootIndex(vtbl: pointer, self: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  vtbl[].setRootIndex(self, slotval1)

proc QColumnViewselectAll*(self: gen_qcolumnview_types.QColumnView, ): void =
  fcQColumnView_virtualbase_selectAll(self.h)

proc miqt_exec_callback_cQColumnView_selectAll(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  vtbl[].selectAll(self)

proc QColumnViewisIndexHidden*(self: gen_qcolumnview_types.QColumnView, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQColumnView_virtualbase_isIndexHidden(self.h, index.h)

proc miqt_exec_callback_cQColumnView_isIndexHidden(vtbl: pointer, self: pointer, index: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].isIndexHidden(self, slotval1)
  virtualReturn

proc QColumnViewmoveCursor*(self: gen_qcolumnview_types.QColumnView, cursorAction: cint, modifiers: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQColumnView_virtualbase_moveCursor(self.h, cint(cursorAction), cint(modifiers)), owned: true)

proc miqt_exec_callback_cQColumnView_moveCursor(vtbl: pointer, self: pointer, cursorAction: cint, modifiers: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = cint(cursorAction)
  let slotval2 = cint(modifiers)
  var virtualReturn = vtbl[].moveCursor(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QColumnViewresizeEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qevent_types.QResizeEvent): void =
  fcQColumnView_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQColumnView_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QColumnViewsetSelection*(self: gen_qcolumnview_types.QColumnView, rect: gen_qrect_types.QRect, command: cint): void =
  fcQColumnView_virtualbase_setSelection(self.h, rect.h, cint(command))

proc miqt_exec_callback_cQColumnView_setSelection(vtbl: pointer, self: pointer, rect: pointer, command: cint): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qrect_types.QRect(h: rect, owned: false)
  let slotval2 = cint(command)
  vtbl[].setSelection(self, slotval1, slotval2)

proc QColumnViewvisualRegionForSelection*(self: gen_qcolumnview_types.QColumnView, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQColumnView_virtualbase_visualRegionForSelection(self.h, selection.h), owned: true)

proc miqt_exec_callback_cQColumnView_visualRegionForSelection(vtbl: pointer, self: pointer, selection: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection, owned: false)
  var virtualReturn = vtbl[].visualRegionForSelection(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QColumnViewhorizontalOffset*(self: gen_qcolumnview_types.QColumnView, ): cint =
  fcQColumnView_virtualbase_horizontalOffset(self.h)

proc miqt_exec_callback_cQColumnView_horizontalOffset(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  var virtualReturn = vtbl[].horizontalOffset(self)
  virtualReturn

proc QColumnViewverticalOffset*(self: gen_qcolumnview_types.QColumnView, ): cint =
  fcQColumnView_virtualbase_verticalOffset(self.h)

proc miqt_exec_callback_cQColumnView_verticalOffset(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  var virtualReturn = vtbl[].verticalOffset(self)
  virtualReturn

proc QColumnViewrowsInserted*(self: gen_qcolumnview_types.QColumnView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fcQColumnView_virtualbase_rowsInserted(self.h, parent.h, start, endVal)

proc miqt_exec_callback_cQColumnView_rowsInserted(vtbl: pointer, self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  let slotval2 = start
  let slotval3 = endVal
  vtbl[].rowsInserted(self, slotval1, slotval2, slotval3)

proc QColumnViewcurrentChanged*(self: gen_qcolumnview_types.QColumnView, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQColumnView_virtualbase_currentChanged(self.h, current.h, previous.h)

proc miqt_exec_callback_cQColumnView_currentChanged(vtbl: pointer, self: pointer, current: pointer, previous: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: current, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: previous, owned: false)
  vtbl[].currentChanged(self, slotval1, slotval2)

proc QColumnViewscrollContentsBy*(self: gen_qcolumnview_types.QColumnView, dx: cint, dy: cint): void =
  fcQColumnView_virtualbase_scrollContentsBy(self.h, dx, dy)

proc miqt_exec_callback_cQColumnView_scrollContentsBy(vtbl: pointer, self: pointer, dx: cint, dy: cint): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = dx
  let slotval2 = dy
  vtbl[].scrollContentsBy(self, slotval1, slotval2)

proc QColumnViewcreateColumn*(self: gen_qcolumnview_types.QColumnView, rootIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemview_types.QAbstractItemView =
  gen_qabstractitemview_types.QAbstractItemView(h: fcQColumnView_virtualbase_createColumn(self.h, rootIndex.h), owned: false)

proc miqt_exec_callback_cQColumnView_createColumn(vtbl: pointer, self: pointer, rootIndex: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: rootIndex, owned: false)
  var virtualReturn = vtbl[].createColumn(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QColumnViewkeyboardSearch*(self: gen_qcolumnview_types.QColumnView, search: string): void =
  fcQColumnView_virtualbase_keyboardSearch(self.h, struct_miqt_string(data: search, len: csize_t(len(search))))

proc miqt_exec_callback_cQColumnView_keyboardSearch(vtbl: pointer, self: pointer, search: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let vsearch_ms = search
  let vsearchx_ret = string.fromBytes(toOpenArrayByte(vsearch_ms.data, 0, int(vsearch_ms.len)-1))
  c_free(vsearch_ms.data)
  let slotval1 = vsearchx_ret
  vtbl[].keyboardSearch(self, slotval1)

proc QColumnViewsizeHintForRow*(self: gen_qcolumnview_types.QColumnView, row: cint): cint =
  fcQColumnView_virtualbase_sizeHintForRow(self.h, row)

proc miqt_exec_callback_cQColumnView_sizeHintForRow(vtbl: pointer, self: pointer, row: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = row
  var virtualReturn = vtbl[].sizeHintForRow(self, slotval1)
  virtualReturn

proc QColumnViewsizeHintForColumn*(self: gen_qcolumnview_types.QColumnView, column: cint): cint =
  fcQColumnView_virtualbase_sizeHintForColumn(self.h, column)

proc miqt_exec_callback_cQColumnView_sizeHintForColumn(vtbl: pointer, self: pointer, column: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = column
  var virtualReturn = vtbl[].sizeHintForColumn(self, slotval1)
  virtualReturn

proc QColumnViewitemDelegateForIndex*(self: gen_qcolumnview_types.QColumnView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemdelegate_types.QAbstractItemDelegate =
  gen_qabstractitemdelegate_types.QAbstractItemDelegate(h: fcQColumnView_virtualbase_itemDelegateForIndex(self.h, index.h), owned: false)

proc miqt_exec_callback_cQColumnView_itemDelegateForIndex(vtbl: pointer, self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].itemDelegateForIndex(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QColumnViewinputMethodQuery*(self: gen_qcolumnview_types.QColumnView, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQColumnView_virtualbase_inputMethodQuery(self.h, cint(query)), owned: true)

proc miqt_exec_callback_cQColumnView_inputMethodQuery(vtbl: pointer, self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = cint(query)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QColumnViewreset*(self: gen_qcolumnview_types.QColumnView, ): void =
  fcQColumnView_virtualbase_reset(self.h)

proc miqt_exec_callback_cQColumnView_reset(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  vtbl[].reset(self)

proc QColumnViewdoItemsLayout*(self: gen_qcolumnview_types.QColumnView, ): void =
  fcQColumnView_virtualbase_doItemsLayout(self.h)

proc miqt_exec_callback_cQColumnView_doItemsLayout(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  vtbl[].doItemsLayout(self)

proc QColumnViewdataChanged*(self: gen_qcolumnview_types.QColumnView, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: seq[cint]): void =
  var roles_CArray = newSeq[cint](len(roles))
  for i in 0..<len(roles):
    roles_CArray[i] = roles[i]

  fcQColumnView_virtualbase_dataChanged(self.h, topLeft.h, bottomRight.h, struct_miqt_array(len: csize_t(len(roles)), data: if len(roles) == 0: nil else: addr(roles_CArray[0])))

proc miqt_exec_callback_cQColumnView_dataChanged(vtbl: pointer, self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
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

proc QColumnViewrowsAboutToBeRemoved*(self: gen_qcolumnview_types.QColumnView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fcQColumnView_virtualbase_rowsAboutToBeRemoved(self.h, parent.h, start, endVal)

proc miqt_exec_callback_cQColumnView_rowsAboutToBeRemoved(vtbl: pointer, self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  let slotval2 = start
  let slotval3 = endVal
  vtbl[].rowsAboutToBeRemoved(self, slotval1, slotval2, slotval3)

proc QColumnViewselectionChanged*(self: gen_qcolumnview_types.QColumnView, selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void =
  fcQColumnView_virtualbase_selectionChanged(self.h, selected.h, deselected.h)

proc miqt_exec_callback_cQColumnView_selectionChanged(vtbl: pointer, self: pointer, selected: pointer, deselected: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selected, owned: false)
  let slotval2 = gen_qitemselectionmodel_types.QItemSelection(h: deselected, owned: false)
  vtbl[].selectionChanged(self, slotval1, slotval2)

proc QColumnViewupdateEditorData*(self: gen_qcolumnview_types.QColumnView, ): void =
  fcQColumnView_virtualbase_updateEditorData(self.h)

proc miqt_exec_callback_cQColumnView_updateEditorData(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  vtbl[].updateEditorData(self)

proc QColumnViewupdateEditorGeometries*(self: gen_qcolumnview_types.QColumnView, ): void =
  fcQColumnView_virtualbase_updateEditorGeometries(self.h)

proc miqt_exec_callback_cQColumnView_updateEditorGeometries(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  vtbl[].updateEditorGeometries(self)

proc QColumnViewupdateGeometries*(self: gen_qcolumnview_types.QColumnView, ): void =
  fcQColumnView_virtualbase_updateGeometries(self.h)

proc miqt_exec_callback_cQColumnView_updateGeometries(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  vtbl[].updateGeometries(self)

proc QColumnViewverticalScrollbarAction*(self: gen_qcolumnview_types.QColumnView, action: cint): void =
  fcQColumnView_virtualbase_verticalScrollbarAction(self.h, action)

proc miqt_exec_callback_cQColumnView_verticalScrollbarAction(vtbl: pointer, self: pointer, action: cint): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = action
  vtbl[].verticalScrollbarAction(self, slotval1)

proc QColumnViewhorizontalScrollbarAction*(self: gen_qcolumnview_types.QColumnView, action: cint): void =
  fcQColumnView_virtualbase_horizontalScrollbarAction(self.h, action)

proc miqt_exec_callback_cQColumnView_horizontalScrollbarAction(vtbl: pointer, self: pointer, action: cint): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = action
  vtbl[].horizontalScrollbarAction(self, slotval1)

proc QColumnViewverticalScrollbarValueChanged*(self: gen_qcolumnview_types.QColumnView, value: cint): void =
  fcQColumnView_virtualbase_verticalScrollbarValueChanged(self.h, value)

proc miqt_exec_callback_cQColumnView_verticalScrollbarValueChanged(vtbl: pointer, self: pointer, value: cint): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = value
  vtbl[].verticalScrollbarValueChanged(self, slotval1)

proc QColumnViewhorizontalScrollbarValueChanged*(self: gen_qcolumnview_types.QColumnView, value: cint): void =
  fcQColumnView_virtualbase_horizontalScrollbarValueChanged(self.h, value)

proc miqt_exec_callback_cQColumnView_horizontalScrollbarValueChanged(vtbl: pointer, self: pointer, value: cint): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = value
  vtbl[].horizontalScrollbarValueChanged(self, slotval1)

proc QColumnViewcloseEditor*(self: gen_qcolumnview_types.QColumnView, editor: gen_qwidget_types.QWidget, hint: cint): void =
  fcQColumnView_virtualbase_closeEditor(self.h, editor.h, cint(hint))

proc miqt_exec_callback_cQColumnView_closeEditor(vtbl: pointer, self: pointer, editor: pointer, hint: cint): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  let slotval2 = cint(hint)
  vtbl[].closeEditor(self, slotval1, slotval2)

proc QColumnViewcommitData*(self: gen_qcolumnview_types.QColumnView, editor: gen_qwidget_types.QWidget): void =
  fcQColumnView_virtualbase_commitData(self.h, editor.h)

proc miqt_exec_callback_cQColumnView_commitData(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  vtbl[].commitData(self, slotval1)

proc QColumnVieweditorDestroyed*(self: gen_qcolumnview_types.QColumnView, editor: gen_qobject_types.QObject): void =
  fcQColumnView_virtualbase_editorDestroyed(self.h, editor.h)

proc miqt_exec_callback_cQColumnView_editorDestroyed(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qobject_types.QObject(h: editor, owned: false)
  vtbl[].editorDestroyed(self, slotval1)

proc QColumnViewselectedIndexes*(self: gen_qcolumnview_types.QColumnView, ): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQColumnView_virtualbase_selectedIndexes(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc miqt_exec_callback_cQColumnView_selectedIndexes(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  var virtualReturn = vtbl[].selectedIndexes(self)
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn[i].owned = false # TODO move?
    let virtualReturn_i_h = virtualReturn[i].h
    virtualReturn[i].h = nil
    virtualReturn_CArray[i] = virtualReturn_i_h

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QColumnViewedit*(self: gen_qcolumnview_types.QColumnView, index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool =
  fcQColumnView_virtualbase_edit2(self.h, index.h, cint(trigger), event.h)

proc miqt_exec_callback_cQColumnView_edit2(vtbl: pointer, self: pointer, index: pointer, trigger: cint, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = cint(trigger)
  let slotval3 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].edit2(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QColumnViewselectionCommand*(self: gen_qcolumnview_types.QColumnView, index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint =
  cint(fcQColumnView_virtualbase_selectionCommand(self.h, index.h, event.h))

proc miqt_exec_callback_cQColumnView_selectionCommand(vtbl: pointer, self: pointer, index: pointer, event: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].selectionCommand(self, slotval1, slotval2)
  cint(virtualReturn)

proc QColumnViewstartDrag*(self: gen_qcolumnview_types.QColumnView, supportedActions: cint): void =
  fcQColumnView_virtualbase_startDrag(self.h, cint(supportedActions))

proc miqt_exec_callback_cQColumnView_startDrag(vtbl: pointer, self: pointer, supportedActions: cint): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = cint(supportedActions)
  vtbl[].startDrag(self, slotval1)

proc QColumnViewinitViewItemOption*(self: gen_qcolumnview_types.QColumnView, option: gen_qstyleoption_types.QStyleOptionViewItem): void =
  fcQColumnView_virtualbase_initViewItemOption(self.h, option.h)

proc miqt_exec_callback_cQColumnView_initViewItemOption(vtbl: pointer, self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  vtbl[].initViewItemOption(self, slotval1)

proc QColumnViewfocusNextPrevChild*(self: gen_qcolumnview_types.QColumnView, next: bool): bool =
  fcQColumnView_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQColumnView_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QColumnViewevent*(self: gen_qcolumnview_types.QColumnView, event: gen_qcoreevent_types.QEvent): bool =
  fcQColumnView_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQColumnView_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QColumnViewviewportEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qcoreevent_types.QEvent): bool =
  fcQColumnView_virtualbase_viewportEvent(self.h, event.h)

proc miqt_exec_callback_cQColumnView_viewportEvent(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].viewportEvent(self, slotval1)
  virtualReturn

proc QColumnViewmousePressEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qevent_types.QMouseEvent): void =
  fcQColumnView_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQColumnView_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QColumnViewmouseMoveEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qevent_types.QMouseEvent): void =
  fcQColumnView_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQColumnView_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QColumnViewmouseReleaseEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qevent_types.QMouseEvent): void =
  fcQColumnView_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQColumnView_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QColumnViewmouseDoubleClickEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qevent_types.QMouseEvent): void =
  fcQColumnView_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQColumnView_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QColumnViewdragEnterEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qevent_types.QDragEnterEvent): void =
  fcQColumnView_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQColumnView_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QColumnViewdragMoveEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qevent_types.QDragMoveEvent): void =
  fcQColumnView_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQColumnView_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QColumnViewdragLeaveEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQColumnView_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQColumnView_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QColumnViewdropEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qevent_types.QDropEvent): void =
  fcQColumnView_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQColumnView_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QColumnViewfocusInEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qevent_types.QFocusEvent): void =
  fcQColumnView_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQColumnView_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QColumnViewfocusOutEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qevent_types.QFocusEvent): void =
  fcQColumnView_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQColumnView_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QColumnViewkeyPressEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qevent_types.QKeyEvent): void =
  fcQColumnView_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQColumnView_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QColumnViewtimerEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQColumnView_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQColumnView_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QColumnViewinputMethodEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qevent_types.QInputMethodEvent): void =
  fcQColumnView_virtualbase_inputMethodEvent(self.h, event.h)

proc miqt_exec_callback_cQColumnView_inputMethodEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QColumnVieweventFilter*(self: gen_qcolumnview_types.QColumnView, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQColumnView_virtualbase_eventFilter(self.h, objectVal.h, event.h)

proc miqt_exec_callback_cQColumnView_eventFilter(vtbl: pointer, self: pointer, objectVal: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qobject_types.QObject(h: objectVal, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QColumnViewviewportSizeHint*(self: gen_qcolumnview_types.QColumnView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQColumnView_virtualbase_viewportSizeHint(self.h), owned: true)

proc miqt_exec_callback_cQColumnView_viewportSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  var virtualReturn = vtbl[].viewportSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QColumnViewminimumSizeHint*(self: gen_qcolumnview_types.QColumnView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQColumnView_virtualbase_minimumSizeHint(self.h), owned: true)

proc miqt_exec_callback_cQColumnView_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QColumnViewsetupViewport*(self: gen_qcolumnview_types.QColumnView, viewport: gen_qwidget_types.QWidget): void =
  fcQColumnView_virtualbase_setupViewport(self.h, viewport.h)

proc miqt_exec_callback_cQColumnView_setupViewport(vtbl: pointer, self: pointer, viewport: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: viewport, owned: false)
  vtbl[].setupViewport(self, slotval1)

proc QColumnViewpaintEvent*(self: gen_qcolumnview_types.QColumnView, param1: gen_qevent_types.QPaintEvent): void =
  fcQColumnView_virtualbase_paintEvent(self.h, param1.h)

proc miqt_exec_callback_cQColumnView_paintEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QColumnViewwheelEvent*(self: gen_qcolumnview_types.QColumnView, param1: gen_qevent_types.QWheelEvent): void =
  fcQColumnView_virtualbase_wheelEvent(self.h, param1.h)

proc miqt_exec_callback_cQColumnView_wheelEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QColumnViewcontextMenuEvent*(self: gen_qcolumnview_types.QColumnView, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQColumnView_virtualbase_contextMenuEvent(self.h, param1.h)

proc miqt_exec_callback_cQColumnView_contextMenuEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QColumnViewchangeEvent*(self: gen_qcolumnview_types.QColumnView, param1: gen_qcoreevent_types.QEvent): void =
  fcQColumnView_virtualbase_changeEvent(self.h, param1.h)

proc miqt_exec_callback_cQColumnView_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QColumnViewinitStyleOption*(self: gen_qcolumnview_types.QColumnView, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fcQColumnView_virtualbase_initStyleOption(self.h, option.h)

proc miqt_exec_callback_cQColumnView_initStyleOption(vtbl: pointer, self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionFrame(h: option, owned: false)
  vtbl[].initStyleOption(self, slotval1)

proc QColumnViewdevType*(self: gen_qcolumnview_types.QColumnView, ): cint =
  fcQColumnView_virtualbase_devType(self.h)

proc miqt_exec_callback_cQColumnView_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QColumnViewsetVisible*(self: gen_qcolumnview_types.QColumnView, visible: bool): void =
  fcQColumnView_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQColumnView_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QColumnViewheightForWidth*(self: gen_qcolumnview_types.QColumnView, param1: cint): cint =
  fcQColumnView_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQColumnView_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QColumnViewhasHeightForWidth*(self: gen_qcolumnview_types.QColumnView, ): bool =
  fcQColumnView_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQColumnView_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QColumnViewpaintEngine*(self: gen_qcolumnview_types.QColumnView, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQColumnView_virtualbase_paintEngine(self.h), owned: false)

proc miqt_exec_callback_cQColumnView_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QColumnViewkeyReleaseEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qevent_types.QKeyEvent): void =
  fcQColumnView_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQColumnView_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QColumnViewenterEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qevent_types.QEnterEvent): void =
  fcQColumnView_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQColumnView_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QColumnViewleaveEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qcoreevent_types.QEvent): void =
  fcQColumnView_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQColumnView_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QColumnViewmoveEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qevent_types.QMoveEvent): void =
  fcQColumnView_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQColumnView_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QColumnViewcloseEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qevent_types.QCloseEvent): void =
  fcQColumnView_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQColumnView_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QColumnViewtabletEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qevent_types.QTabletEvent): void =
  fcQColumnView_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQColumnView_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QColumnViewactionEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qevent_types.QActionEvent): void =
  fcQColumnView_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQColumnView_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QColumnViewshowEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qevent_types.QShowEvent): void =
  fcQColumnView_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQColumnView_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QColumnViewhideEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qevent_types.QHideEvent): void =
  fcQColumnView_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQColumnView_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QColumnViewnativeEvent*(self: gen_qcolumnview_types.QColumnView, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fcQColumnView_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQColumnView_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QColumnViewmetric*(self: gen_qcolumnview_types.QColumnView, param1: cint): cint =
  fcQColumnView_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQColumnView_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QColumnViewinitPainter*(self: gen_qcolumnview_types.QColumnView, painter: gen_qpainter_types.QPainter): void =
  fcQColumnView_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQColumnView_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QColumnViewredirected*(self: gen_qcolumnview_types.QColumnView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQColumnView_virtualbase_redirected(self.h, offset.h), owned: false)

proc miqt_exec_callback_cQColumnView_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QColumnViewsharedPainter*(self: gen_qcolumnview_types.QColumnView, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQColumnView_virtualbase_sharedPainter(self.h), owned: false)

proc miqt_exec_callback_cQColumnView_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QColumnViewchildEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qcoreevent_types.QChildEvent): void =
  fcQColumnView_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQColumnView_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QColumnViewcustomEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qcoreevent_types.QEvent): void =
  fcQColumnView_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQColumnView_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QColumnViewconnectNotify*(self: gen_qcolumnview_types.QColumnView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQColumnView_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQColumnView_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QColumnViewdisconnectNotify*(self: gen_qcolumnview_types.QColumnView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQColumnView_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQColumnView_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColumnViewVTable](vtbl)
  let self = QColumnView(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQColumnView* {.inheritable.} = ref object of QColumnView
  vtbl*: cQColumnViewVTable
method metaObject*(self: VirtualQColumnView, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QColumnViewmetaObject(self[])
proc miqt_exec_method_cQColumnView_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQColumnView, param1: cstring): pointer {.base.} =
  QColumnViewmetacast(self[], param1)
proc miqt_exec_method_cQColumnView_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQColumnView, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QColumnViewmetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQColumnView_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method indexAt*(self: VirtualQColumnView, point: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QColumnViewindexAt(self[], point)
proc miqt_exec_method_cQColumnView_indexAt(vtbl: pointer, inst: pointer, point: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qpoint_types.QPoint(h: point, owned: false)
  var virtualReturn = vtbl.indexAt(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method scrollTo*(self: VirtualQColumnView, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void {.base.} =
  QColumnViewscrollTo(self[], index, hint)
proc miqt_exec_method_cQColumnView_scrollTo(vtbl: pointer, inst: pointer, index: pointer, hint: cint): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = cint(hint)
  vtbl.scrollTo(slotval1, slotval2)

method sizeHint*(self: VirtualQColumnView, ): gen_qsize_types.QSize {.base.} =
  QColumnViewsizeHint(self[])
proc miqt_exec_method_cQColumnView_sizeHint(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  var virtualReturn = vtbl.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method visualRect*(self: VirtualQColumnView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect {.base.} =
  QColumnViewvisualRect(self[], index)
proc miqt_exec_method_cQColumnView_visualRect(vtbl: pointer, inst: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl.visualRect(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method setModel*(self: VirtualQColumnView, model: gen_qabstractitemmodel_types.QAbstractItemModel): void {.base.} =
  QColumnViewsetModel(self[], model)
proc miqt_exec_method_cQColumnView_setModel(vtbl: pointer, inst: pointer, model: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model, owned: false)
  vtbl.setModel(slotval1)

method setSelectionModel*(self: VirtualQColumnView, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void {.base.} =
  QColumnViewsetSelectionModel(self[], selectionModel)
proc miqt_exec_method_cQColumnView_setSelectionModel(vtbl: pointer, inst: pointer, selectionModel: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelectionModel(h: selectionModel, owned: false)
  vtbl.setSelectionModel(slotval1)

method setRootIndex*(self: VirtualQColumnView, index: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QColumnViewsetRootIndex(self[], index)
proc miqt_exec_method_cQColumnView_setRootIndex(vtbl: pointer, inst: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  vtbl.setRootIndex(slotval1)

method selectAll*(self: VirtualQColumnView, ): void {.base.} =
  QColumnViewselectAll(self[])
proc miqt_exec_method_cQColumnView_selectAll(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  vtbl.selectAll()

method isIndexHidden*(self: VirtualQColumnView, index: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QColumnViewisIndexHidden(self[], index)
proc miqt_exec_method_cQColumnView_isIndexHidden(vtbl: pointer, inst: pointer, index: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl.isIndexHidden(slotval1)
  virtualReturn

method moveCursor*(self: VirtualQColumnView, cursorAction: cint, modifiers: cint): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QColumnViewmoveCursor(self[], cursorAction, modifiers)
proc miqt_exec_method_cQColumnView_moveCursor(vtbl: pointer, inst: pointer, cursorAction: cint, modifiers: cint): pointer {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = cint(cursorAction)
  let slotval2 = cint(modifiers)
  var virtualReturn = vtbl.moveCursor(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method resizeEvent*(self: VirtualQColumnView, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QColumnViewresizeEvent(self[], event)
proc miqt_exec_method_cQColumnView_resizeEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl.resizeEvent(slotval1)

method setSelection*(self: VirtualQColumnView, rect: gen_qrect_types.QRect, command: cint): void {.base.} =
  QColumnViewsetSelection(self[], rect, command)
proc miqt_exec_method_cQColumnView_setSelection(vtbl: pointer, inst: pointer, rect: pointer, command: cint): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qrect_types.QRect(h: rect, owned: false)
  let slotval2 = cint(command)
  vtbl.setSelection(slotval1, slotval2)

method visualRegionForSelection*(self: VirtualQColumnView, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion {.base.} =
  QColumnViewvisualRegionForSelection(self[], selection)
proc miqt_exec_method_cQColumnView_visualRegionForSelection(vtbl: pointer, inst: pointer, selection: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection, owned: false)
  var virtualReturn = vtbl.visualRegionForSelection(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method horizontalOffset*(self: VirtualQColumnView, ): cint {.base.} =
  QColumnViewhorizontalOffset(self[])
proc miqt_exec_method_cQColumnView_horizontalOffset(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  var virtualReturn = vtbl.horizontalOffset()
  virtualReturn

method verticalOffset*(self: VirtualQColumnView, ): cint {.base.} =
  QColumnViewverticalOffset(self[])
proc miqt_exec_method_cQColumnView_verticalOffset(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  var virtualReturn = vtbl.verticalOffset()
  virtualReturn

method rowsInserted*(self: VirtualQColumnView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void {.base.} =
  QColumnViewrowsInserted(self[], parent, start, endVal)
proc miqt_exec_method_cQColumnView_rowsInserted(vtbl: pointer, inst: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  let slotval2 = start
  let slotval3 = endVal
  vtbl.rowsInserted(slotval1, slotval2, slotval3)

method currentChanged*(self: VirtualQColumnView, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QColumnViewcurrentChanged(self[], current, previous)
proc miqt_exec_method_cQColumnView_currentChanged(vtbl: pointer, inst: pointer, current: pointer, previous: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: current, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: previous, owned: false)
  vtbl.currentChanged(slotval1, slotval2)

method scrollContentsBy*(self: VirtualQColumnView, dx: cint, dy: cint): void {.base.} =
  QColumnViewscrollContentsBy(self[], dx, dy)
proc miqt_exec_method_cQColumnView_scrollContentsBy(vtbl: pointer, inst: pointer, dx: cint, dy: cint): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = dx
  let slotval2 = dy
  vtbl.scrollContentsBy(slotval1, slotval2)

method createColumn*(self: VirtualQColumnView, rootIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemview_types.QAbstractItemView {.base.} =
  QColumnViewcreateColumn(self[], rootIndex)
proc miqt_exec_method_cQColumnView_createColumn(vtbl: pointer, inst: pointer, rootIndex: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: rootIndex, owned: false)
  var virtualReturn = vtbl.createColumn(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method keyboardSearch*(self: VirtualQColumnView, search: string): void {.base.} =
  QColumnViewkeyboardSearch(self[], search)
proc miqt_exec_method_cQColumnView_keyboardSearch(vtbl: pointer, inst: pointer, search: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let vsearch_ms = search
  let vsearchx_ret = string.fromBytes(toOpenArrayByte(vsearch_ms.data, 0, int(vsearch_ms.len)-1))
  c_free(vsearch_ms.data)
  let slotval1 = vsearchx_ret
  vtbl.keyboardSearch(slotval1)

method sizeHintForRow*(self: VirtualQColumnView, row: cint): cint {.base.} =
  QColumnViewsizeHintForRow(self[], row)
proc miqt_exec_method_cQColumnView_sizeHintForRow(vtbl: pointer, inst: pointer, row: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = row
  var virtualReturn = vtbl.sizeHintForRow(slotval1)
  virtualReturn

method sizeHintForColumn*(self: VirtualQColumnView, column: cint): cint {.base.} =
  QColumnViewsizeHintForColumn(self[], column)
proc miqt_exec_method_cQColumnView_sizeHintForColumn(vtbl: pointer, inst: pointer, column: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = column
  var virtualReturn = vtbl.sizeHintForColumn(slotval1)
  virtualReturn

method itemDelegateForIndex*(self: VirtualQColumnView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemdelegate_types.QAbstractItemDelegate {.base.} =
  QColumnViewitemDelegateForIndex(self[], index)
proc miqt_exec_method_cQColumnView_itemDelegateForIndex(vtbl: pointer, inst: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl.itemDelegateForIndex(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodQuery*(self: VirtualQColumnView, query: cint): gen_qvariant_types.QVariant {.base.} =
  QColumnViewinputMethodQuery(self[], query)
proc miqt_exec_method_cQColumnView_inputMethodQuery(vtbl: pointer, inst: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = cint(query)
  var virtualReturn = vtbl.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method reset*(self: VirtualQColumnView, ): void {.base.} =
  QColumnViewreset(self[])
proc miqt_exec_method_cQColumnView_reset(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  vtbl.reset()

method doItemsLayout*(self: VirtualQColumnView, ): void {.base.} =
  QColumnViewdoItemsLayout(self[])
proc miqt_exec_method_cQColumnView_doItemsLayout(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  vtbl.doItemsLayout()

method dataChanged*(self: VirtualQColumnView, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: seq[cint]): void {.base.} =
  QColumnViewdataChanged(self[], topLeft, bottomRight, roles)
proc miqt_exec_method_cQColumnView_dataChanged(vtbl: pointer, inst: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
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

method rowsAboutToBeRemoved*(self: VirtualQColumnView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void {.base.} =
  QColumnViewrowsAboutToBeRemoved(self[], parent, start, endVal)
proc miqt_exec_method_cQColumnView_rowsAboutToBeRemoved(vtbl: pointer, inst: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  let slotval2 = start
  let slotval3 = endVal
  vtbl.rowsAboutToBeRemoved(slotval1, slotval2, slotval3)

method selectionChanged*(self: VirtualQColumnView, selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void {.base.} =
  QColumnViewselectionChanged(self[], selected, deselected)
proc miqt_exec_method_cQColumnView_selectionChanged(vtbl: pointer, inst: pointer, selected: pointer, deselected: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selected, owned: false)
  let slotval2 = gen_qitemselectionmodel_types.QItemSelection(h: deselected, owned: false)
  vtbl.selectionChanged(slotval1, slotval2)

method updateEditorData*(self: VirtualQColumnView, ): void {.base.} =
  QColumnViewupdateEditorData(self[])
proc miqt_exec_method_cQColumnView_updateEditorData(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  vtbl.updateEditorData()

method updateEditorGeometries*(self: VirtualQColumnView, ): void {.base.} =
  QColumnViewupdateEditorGeometries(self[])
proc miqt_exec_method_cQColumnView_updateEditorGeometries(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  vtbl.updateEditorGeometries()

method updateGeometries*(self: VirtualQColumnView, ): void {.base.} =
  QColumnViewupdateGeometries(self[])
proc miqt_exec_method_cQColumnView_updateGeometries(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  vtbl.updateGeometries()

method verticalScrollbarAction*(self: VirtualQColumnView, action: cint): void {.base.} =
  QColumnViewverticalScrollbarAction(self[], action)
proc miqt_exec_method_cQColumnView_verticalScrollbarAction(vtbl: pointer, inst: pointer, action: cint): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = action
  vtbl.verticalScrollbarAction(slotval1)

method horizontalScrollbarAction*(self: VirtualQColumnView, action: cint): void {.base.} =
  QColumnViewhorizontalScrollbarAction(self[], action)
proc miqt_exec_method_cQColumnView_horizontalScrollbarAction(vtbl: pointer, inst: pointer, action: cint): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = action
  vtbl.horizontalScrollbarAction(slotval1)

method verticalScrollbarValueChanged*(self: VirtualQColumnView, value: cint): void {.base.} =
  QColumnViewverticalScrollbarValueChanged(self[], value)
proc miqt_exec_method_cQColumnView_verticalScrollbarValueChanged(vtbl: pointer, inst: pointer, value: cint): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = value
  vtbl.verticalScrollbarValueChanged(slotval1)

method horizontalScrollbarValueChanged*(self: VirtualQColumnView, value: cint): void {.base.} =
  QColumnViewhorizontalScrollbarValueChanged(self[], value)
proc miqt_exec_method_cQColumnView_horizontalScrollbarValueChanged(vtbl: pointer, inst: pointer, value: cint): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = value
  vtbl.horizontalScrollbarValueChanged(slotval1)

method closeEditor*(self: VirtualQColumnView, editor: gen_qwidget_types.QWidget, hint: cint): void {.base.} =
  QColumnViewcloseEditor(self[], editor, hint)
proc miqt_exec_method_cQColumnView_closeEditor(vtbl: pointer, inst: pointer, editor: pointer, hint: cint): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  let slotval2 = cint(hint)
  vtbl.closeEditor(slotval1, slotval2)

method commitData*(self: VirtualQColumnView, editor: gen_qwidget_types.QWidget): void {.base.} =
  QColumnViewcommitData(self[], editor)
proc miqt_exec_method_cQColumnView_commitData(vtbl: pointer, inst: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  vtbl.commitData(slotval1)

method editorDestroyed*(self: VirtualQColumnView, editor: gen_qobject_types.QObject): void {.base.} =
  QColumnVieweditorDestroyed(self[], editor)
proc miqt_exec_method_cQColumnView_editorDestroyed(vtbl: pointer, inst: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: editor, owned: false)
  vtbl.editorDestroyed(slotval1)

method selectedIndexes*(self: VirtualQColumnView, ): seq[gen_qabstractitemmodel_types.QModelIndex] {.base.} =
  QColumnViewselectedIndexes(self[])
proc miqt_exec_method_cQColumnView_selectedIndexes(vtbl: pointer, inst: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  var virtualReturn = vtbl.selectedIndexes()
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn[i].owned = false # TODO move?
    let virtualReturn_i_h = virtualReturn[i].h
    virtualReturn[i].h = nil
    virtualReturn_CArray[i] = virtualReturn_i_h

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

method edit*(self: VirtualQColumnView, index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QColumnViewedit(self[], index, trigger, event)
proc miqt_exec_method_cQColumnView_edit2(vtbl: pointer, inst: pointer, index: pointer, trigger: cint, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = cint(trigger)
  let slotval3 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.edit(slotval1, slotval2, slotval3)
  virtualReturn

method selectionCommand*(self: VirtualQColumnView, index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint {.base.} =
  QColumnViewselectionCommand(self[], index, event)
proc miqt_exec_method_cQColumnView_selectionCommand(vtbl: pointer, inst: pointer, index: pointer, event: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.selectionCommand(slotval1, slotval2)
  cint(virtualReturn)

method startDrag*(self: VirtualQColumnView, supportedActions: cint): void {.base.} =
  QColumnViewstartDrag(self[], supportedActions)
proc miqt_exec_method_cQColumnView_startDrag(vtbl: pointer, inst: pointer, supportedActions: cint): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = cint(supportedActions)
  vtbl.startDrag(slotval1)

method initViewItemOption*(self: VirtualQColumnView, option: gen_qstyleoption_types.QStyleOptionViewItem): void {.base.} =
  QColumnViewinitViewItemOption(self[], option)
proc miqt_exec_method_cQColumnView_initViewItemOption(vtbl: pointer, inst: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  vtbl.initViewItemOption(slotval1)

method focusNextPrevChild*(self: VirtualQColumnView, next: bool): bool {.base.} =
  QColumnViewfocusNextPrevChild(self[], next)
proc miqt_exec_method_cQColumnView_focusNextPrevChild(vtbl: pointer, inst: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = next
  var virtualReturn = vtbl.focusNextPrevChild(slotval1)
  virtualReturn

method event*(self: VirtualQColumnView, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QColumnViewevent(self[], event)
proc miqt_exec_method_cQColumnView_event(vtbl: pointer, inst: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method viewportEvent*(self: VirtualQColumnView, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QColumnViewviewportEvent(self[], event)
proc miqt_exec_method_cQColumnView_viewportEvent(vtbl: pointer, inst: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.viewportEvent(slotval1)
  virtualReturn

method mousePressEvent*(self: VirtualQColumnView, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QColumnViewmousePressEvent(self[], event)
proc miqt_exec_method_cQColumnView_mousePressEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mousePressEvent(slotval1)

method mouseMoveEvent*(self: VirtualQColumnView, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QColumnViewmouseMoveEvent(self[], event)
proc miqt_exec_method_cQColumnView_mouseMoveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mouseMoveEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQColumnView, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QColumnViewmouseReleaseEvent(self[], event)
proc miqt_exec_method_cQColumnView_mouseReleaseEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mouseReleaseEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQColumnView, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QColumnViewmouseDoubleClickEvent(self[], event)
proc miqt_exec_method_cQColumnView_mouseDoubleClickEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mouseDoubleClickEvent(slotval1)

method dragEnterEvent*(self: VirtualQColumnView, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QColumnViewdragEnterEvent(self[], event)
proc miqt_exec_method_cQColumnView_dragEnterEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQColumnView, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QColumnViewdragMoveEvent(self[], event)
proc miqt_exec_method_cQColumnView_dragMoveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQColumnView, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QColumnViewdragLeaveEvent(self[], event)
proc miqt_exec_method_cQColumnView_dragLeaveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQColumnView, event: gen_qevent_types.QDropEvent): void {.base.} =
  QColumnViewdropEvent(self[], event)
proc miqt_exec_method_cQColumnView_dropEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl.dropEvent(slotval1)

method focusInEvent*(self: VirtualQColumnView, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QColumnViewfocusInEvent(self[], event)
proc miqt_exec_method_cQColumnView_focusInEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQColumnView, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QColumnViewfocusOutEvent(self[], event)
proc miqt_exec_method_cQColumnView_focusOutEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl.focusOutEvent(slotval1)

method keyPressEvent*(self: VirtualQColumnView, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QColumnViewkeyPressEvent(self[], event)
proc miqt_exec_method_cQColumnView_keyPressEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl.keyPressEvent(slotval1)

method timerEvent*(self: VirtualQColumnView, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QColumnViewtimerEvent(self[], event)
proc miqt_exec_method_cQColumnView_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method inputMethodEvent*(self: VirtualQColumnView, event: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QColumnViewinputMethodEvent(self[], event)
proc miqt_exec_method_cQColumnView_inputMethodEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event, owned: false)
  vtbl.inputMethodEvent(slotval1)

method eventFilter*(self: VirtualQColumnView, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QColumnVieweventFilter(self[], objectVal, event)
proc miqt_exec_method_cQColumnView_eventFilter(vtbl: pointer, inst: pointer, objectVal: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: objectVal, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method viewportSizeHint*(self: VirtualQColumnView, ): gen_qsize_types.QSize {.base.} =
  QColumnViewviewportSizeHint(self[])
proc miqt_exec_method_cQColumnView_viewportSizeHint(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  var virtualReturn = vtbl.viewportSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method minimumSizeHint*(self: VirtualQColumnView, ): gen_qsize_types.QSize {.base.} =
  QColumnViewminimumSizeHint(self[])
proc miqt_exec_method_cQColumnView_minimumSizeHint(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  var virtualReturn = vtbl.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method setupViewport*(self: VirtualQColumnView, viewport: gen_qwidget_types.QWidget): void {.base.} =
  QColumnViewsetupViewport(self[], viewport)
proc miqt_exec_method_cQColumnView_setupViewport(vtbl: pointer, inst: pointer, viewport: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qwidget_types.QWidget(h: viewport, owned: false)
  vtbl.setupViewport(slotval1)

method paintEvent*(self: VirtualQColumnView, param1: gen_qevent_types.QPaintEvent): void {.base.} =
  QColumnViewpaintEvent(self[], param1)
proc miqt_exec_method_cQColumnView_paintEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  vtbl.paintEvent(slotval1)

method wheelEvent*(self: VirtualQColumnView, param1: gen_qevent_types.QWheelEvent): void {.base.} =
  QColumnViewwheelEvent(self[], param1)
proc miqt_exec_method_cQColumnView_wheelEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1, owned: false)
  vtbl.wheelEvent(slotval1)

method contextMenuEvent*(self: VirtualQColumnView, param1: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QColumnViewcontextMenuEvent(self[], param1)
proc miqt_exec_method_cQColumnView_contextMenuEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  vtbl.contextMenuEvent(slotval1)

method changeEvent*(self: VirtualQColumnView, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QColumnViewchangeEvent(self[], param1)
proc miqt_exec_method_cQColumnView_changeEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl.changeEvent(slotval1)

method initStyleOption*(self: VirtualQColumnView, option: gen_qstyleoption_types.QStyleOptionFrame): void {.base.} =
  QColumnViewinitStyleOption(self[], option)
proc miqt_exec_method_cQColumnView_initStyleOption(vtbl: pointer, inst: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qstyleoption_types.QStyleOptionFrame(h: option, owned: false)
  vtbl.initStyleOption(slotval1)

method devType*(self: VirtualQColumnView, ): cint {.base.} =
  QColumnViewdevType(self[])
proc miqt_exec_method_cQColumnView_devType(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  var virtualReturn = vtbl.devType()
  virtualReturn

method setVisible*(self: VirtualQColumnView, visible: bool): void {.base.} =
  QColumnViewsetVisible(self[], visible)
proc miqt_exec_method_cQColumnView_setVisible(vtbl: pointer, inst: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = visible
  vtbl.setVisible(slotval1)

method heightForWidth*(self: VirtualQColumnView, param1: cint): cint {.base.} =
  QColumnViewheightForWidth(self[], param1)
proc miqt_exec_method_cQColumnView_heightForWidth(vtbl: pointer, inst: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = param1
  var virtualReturn = vtbl.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQColumnView, ): bool {.base.} =
  QColumnViewhasHeightForWidth(self[])
proc miqt_exec_method_cQColumnView_hasHeightForWidth(vtbl: pointer, inst: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  var virtualReturn = vtbl.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQColumnView, ): gen_qpaintengine_types.QPaintEngine {.base.} =
  QColumnViewpaintEngine(self[])
proc miqt_exec_method_cQColumnView_paintEngine(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  var virtualReturn = vtbl.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method keyReleaseEvent*(self: VirtualQColumnView, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QColumnViewkeyReleaseEvent(self[], event)
proc miqt_exec_method_cQColumnView_keyReleaseEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl.keyReleaseEvent(slotval1)

method enterEvent*(self: VirtualQColumnView, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QColumnViewenterEvent(self[], event)
proc miqt_exec_method_cQColumnView_enterEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl.enterEvent(slotval1)

method leaveEvent*(self: VirtualQColumnView, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QColumnViewleaveEvent(self[], event)
proc miqt_exec_method_cQColumnView_leaveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.leaveEvent(slotval1)

method moveEvent*(self: VirtualQColumnView, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QColumnViewmoveEvent(self[], event)
proc miqt_exec_method_cQColumnView_moveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl.moveEvent(slotval1)

method closeEvent*(self: VirtualQColumnView, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QColumnViewcloseEvent(self[], event)
proc miqt_exec_method_cQColumnView_closeEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl.closeEvent(slotval1)

method tabletEvent*(self: VirtualQColumnView, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QColumnViewtabletEvent(self[], event)
proc miqt_exec_method_cQColumnView_tabletEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl.tabletEvent(slotval1)

method actionEvent*(self: VirtualQColumnView, event: gen_qevent_types.QActionEvent): void {.base.} =
  QColumnViewactionEvent(self[], event)
proc miqt_exec_method_cQColumnView_actionEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl.actionEvent(slotval1)

method showEvent*(self: VirtualQColumnView, event: gen_qevent_types.QShowEvent): void {.base.} =
  QColumnViewshowEvent(self[], event)
proc miqt_exec_method_cQColumnView_showEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl.showEvent(slotval1)

method hideEvent*(self: VirtualQColumnView, event: gen_qevent_types.QHideEvent): void {.base.} =
  QColumnViewhideEvent(self[], event)
proc miqt_exec_method_cQColumnView_hideEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl.hideEvent(slotval1)

method nativeEvent*(self: VirtualQColumnView, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QColumnViewnativeEvent(self[], eventType, message, resultVal)
proc miqt_exec_method_cQColumnView_nativeEvent(vtbl: pointer, inst: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method metric*(self: VirtualQColumnView, param1: cint): cint {.base.} =
  QColumnViewmetric(self[], param1)
proc miqt_exec_method_cQColumnView_metric(vtbl: pointer, inst: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = cint(param1)
  var virtualReturn = vtbl.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQColumnView, painter: gen_qpainter_types.QPainter): void {.base.} =
  QColumnViewinitPainter(self[], painter)
proc miqt_exec_method_cQColumnView_initPainter(vtbl: pointer, inst: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl.initPainter(slotval1)

method redirected*(self: VirtualQColumnView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QColumnViewredirected(self[], offset)
proc miqt_exec_method_cQColumnView_redirected(vtbl: pointer, inst: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQColumnView, ): gen_qpainter_types.QPainter {.base.} =
  QColumnViewsharedPainter(self[])
proc miqt_exec_method_cQColumnView_sharedPainter(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  var virtualReturn = vtbl.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method childEvent*(self: VirtualQColumnView, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QColumnViewchildEvent(self[], event)
proc miqt_exec_method_cQColumnView_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQColumnView, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QColumnViewcustomEvent(self[], event)
proc miqt_exec_method_cQColumnView_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQColumnView, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QColumnViewconnectNotify(self[], signal)
proc miqt_exec_method_cQColumnView_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQColumnView, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QColumnViewdisconnectNotify(self[], signal)
proc miqt_exec_method_cQColumnView_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQColumnView](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc initializeColumn*(self: gen_qcolumnview_types.QColumnView, column: gen_qabstractitemview_types.QAbstractItemView): void =
  fcQColumnView_protectedbase_initializeColumn(self.h, column.h)

proc state*(self: gen_qcolumnview_types.QColumnView, ): cint =
  cint(fcQColumnView_protectedbase_state(self.h))

proc setState*(self: gen_qcolumnview_types.QColumnView, state: cint): void =
  fcQColumnView_protectedbase_setState(self.h, cint(state))

proc scheduleDelayedItemsLayout*(self: gen_qcolumnview_types.QColumnView, ): void =
  fcQColumnView_protectedbase_scheduleDelayedItemsLayout(self.h)

proc executeDelayedItemsLayout*(self: gen_qcolumnview_types.QColumnView, ): void =
  fcQColumnView_protectedbase_executeDelayedItemsLayout(self.h)

proc setDirtyRegion*(self: gen_qcolumnview_types.QColumnView, region: gen_qregion_types.QRegion): void =
  fcQColumnView_protectedbase_setDirtyRegion(self.h, region.h)

proc scrollDirtyRegion*(self: gen_qcolumnview_types.QColumnView, dx: cint, dy: cint): void =
  fcQColumnView_protectedbase_scrollDirtyRegion(self.h, dx, dy)

proc dirtyRegionOffset*(self: gen_qcolumnview_types.QColumnView, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQColumnView_protectedbase_dirtyRegionOffset(self.h), owned: true)

proc startAutoScroll*(self: gen_qcolumnview_types.QColumnView, ): void =
  fcQColumnView_protectedbase_startAutoScroll(self.h)

proc stopAutoScroll*(self: gen_qcolumnview_types.QColumnView, ): void =
  fcQColumnView_protectedbase_stopAutoScroll(self.h)

proc doAutoScroll*(self: gen_qcolumnview_types.QColumnView, ): void =
  fcQColumnView_protectedbase_doAutoScroll(self.h)

proc dropIndicatorPosition*(self: gen_qcolumnview_types.QColumnView, ): cint =
  cint(fcQColumnView_protectedbase_dropIndicatorPosition(self.h))

proc setViewportMargins*(self: gen_qcolumnview_types.QColumnView, left: cint, top: cint, right: cint, bottom: cint): void =
  fcQColumnView_protectedbase_setViewportMargins(self.h, left, top, right, bottom)

proc viewportMargins*(self: gen_qcolumnview_types.QColumnView, ): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQColumnView_protectedbase_viewportMargins(self.h), owned: true)

proc drawFrame*(self: gen_qcolumnview_types.QColumnView, param1: gen_qpainter_types.QPainter): void =
  fcQColumnView_protectedbase_drawFrame(self.h, param1.h)

proc updateMicroFocus*(self: gen_qcolumnview_types.QColumnView, ): void =
  fcQColumnView_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qcolumnview_types.QColumnView, ): void =
  fcQColumnView_protectedbase_create(self.h)

proc destroy*(self: gen_qcolumnview_types.QColumnView, ): void =
  fcQColumnView_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qcolumnview_types.QColumnView, ): bool =
  fcQColumnView_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qcolumnview_types.QColumnView, ): bool =
  fcQColumnView_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qcolumnview_types.QColumnView, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQColumnView_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qcolumnview_types.QColumnView, ): cint =
  fcQColumnView_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qcolumnview_types.QColumnView, signal: cstring): cint =
  fcQColumnView_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qcolumnview_types.QColumnView, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQColumnView_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qcolumnview_types.QColumnView,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QColumnViewVTable = nil): gen_qcolumnview_types.QColumnView =
  let vtbl = if vtbl == nil: new QColumnViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQColumnViewVTable, _: ptr cQColumnView) {.cdecl.} =
    let vtbl = cast[ref QColumnViewVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQColumnView_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQColumnView_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQColumnView_metacall
  if not isNil(vtbl[].indexAt):
    vtbl[].vtbl.indexAt = miqt_exec_callback_cQColumnView_indexAt
  if not isNil(vtbl[].scrollTo):
    vtbl[].vtbl.scrollTo = miqt_exec_callback_cQColumnView_scrollTo
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQColumnView_sizeHint
  if not isNil(vtbl[].visualRect):
    vtbl[].vtbl.visualRect = miqt_exec_callback_cQColumnView_visualRect
  if not isNil(vtbl[].setModel):
    vtbl[].vtbl.setModel = miqt_exec_callback_cQColumnView_setModel
  if not isNil(vtbl[].setSelectionModel):
    vtbl[].vtbl.setSelectionModel = miqt_exec_callback_cQColumnView_setSelectionModel
  if not isNil(vtbl[].setRootIndex):
    vtbl[].vtbl.setRootIndex = miqt_exec_callback_cQColumnView_setRootIndex
  if not isNil(vtbl[].selectAll):
    vtbl[].vtbl.selectAll = miqt_exec_callback_cQColumnView_selectAll
  if not isNil(vtbl[].isIndexHidden):
    vtbl[].vtbl.isIndexHidden = miqt_exec_callback_cQColumnView_isIndexHidden
  if not isNil(vtbl[].moveCursor):
    vtbl[].vtbl.moveCursor = miqt_exec_callback_cQColumnView_moveCursor
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQColumnView_resizeEvent
  if not isNil(vtbl[].setSelection):
    vtbl[].vtbl.setSelection = miqt_exec_callback_cQColumnView_setSelection
  if not isNil(vtbl[].visualRegionForSelection):
    vtbl[].vtbl.visualRegionForSelection = miqt_exec_callback_cQColumnView_visualRegionForSelection
  if not isNil(vtbl[].horizontalOffset):
    vtbl[].vtbl.horizontalOffset = miqt_exec_callback_cQColumnView_horizontalOffset
  if not isNil(vtbl[].verticalOffset):
    vtbl[].vtbl.verticalOffset = miqt_exec_callback_cQColumnView_verticalOffset
  if not isNil(vtbl[].rowsInserted):
    vtbl[].vtbl.rowsInserted = miqt_exec_callback_cQColumnView_rowsInserted
  if not isNil(vtbl[].currentChanged):
    vtbl[].vtbl.currentChanged = miqt_exec_callback_cQColumnView_currentChanged
  if not isNil(vtbl[].scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = miqt_exec_callback_cQColumnView_scrollContentsBy
  if not isNil(vtbl[].createColumn):
    vtbl[].vtbl.createColumn = miqt_exec_callback_cQColumnView_createColumn
  if not isNil(vtbl[].keyboardSearch):
    vtbl[].vtbl.keyboardSearch = miqt_exec_callback_cQColumnView_keyboardSearch
  if not isNil(vtbl[].sizeHintForRow):
    vtbl[].vtbl.sizeHintForRow = miqt_exec_callback_cQColumnView_sizeHintForRow
  if not isNil(vtbl[].sizeHintForColumn):
    vtbl[].vtbl.sizeHintForColumn = miqt_exec_callback_cQColumnView_sizeHintForColumn
  if not isNil(vtbl[].itemDelegateForIndex):
    vtbl[].vtbl.itemDelegateForIndex = miqt_exec_callback_cQColumnView_itemDelegateForIndex
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQColumnView_inputMethodQuery
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQColumnView_reset
  if not isNil(vtbl[].doItemsLayout):
    vtbl[].vtbl.doItemsLayout = miqt_exec_callback_cQColumnView_doItemsLayout
  if not isNil(vtbl[].dataChanged):
    vtbl[].vtbl.dataChanged = miqt_exec_callback_cQColumnView_dataChanged
  if not isNil(vtbl[].rowsAboutToBeRemoved):
    vtbl[].vtbl.rowsAboutToBeRemoved = miqt_exec_callback_cQColumnView_rowsAboutToBeRemoved
  if not isNil(vtbl[].selectionChanged):
    vtbl[].vtbl.selectionChanged = miqt_exec_callback_cQColumnView_selectionChanged
  if not isNil(vtbl[].updateEditorData):
    vtbl[].vtbl.updateEditorData = miqt_exec_callback_cQColumnView_updateEditorData
  if not isNil(vtbl[].updateEditorGeometries):
    vtbl[].vtbl.updateEditorGeometries = miqt_exec_callback_cQColumnView_updateEditorGeometries
  if not isNil(vtbl[].updateGeometries):
    vtbl[].vtbl.updateGeometries = miqt_exec_callback_cQColumnView_updateGeometries
  if not isNil(vtbl[].verticalScrollbarAction):
    vtbl[].vtbl.verticalScrollbarAction = miqt_exec_callback_cQColumnView_verticalScrollbarAction
  if not isNil(vtbl[].horizontalScrollbarAction):
    vtbl[].vtbl.horizontalScrollbarAction = miqt_exec_callback_cQColumnView_horizontalScrollbarAction
  if not isNil(vtbl[].verticalScrollbarValueChanged):
    vtbl[].vtbl.verticalScrollbarValueChanged = miqt_exec_callback_cQColumnView_verticalScrollbarValueChanged
  if not isNil(vtbl[].horizontalScrollbarValueChanged):
    vtbl[].vtbl.horizontalScrollbarValueChanged = miqt_exec_callback_cQColumnView_horizontalScrollbarValueChanged
  if not isNil(vtbl[].closeEditor):
    vtbl[].vtbl.closeEditor = miqt_exec_callback_cQColumnView_closeEditor
  if not isNil(vtbl[].commitData):
    vtbl[].vtbl.commitData = miqt_exec_callback_cQColumnView_commitData
  if not isNil(vtbl[].editorDestroyed):
    vtbl[].vtbl.editorDestroyed = miqt_exec_callback_cQColumnView_editorDestroyed
  if not isNil(vtbl[].selectedIndexes):
    vtbl[].vtbl.selectedIndexes = miqt_exec_callback_cQColumnView_selectedIndexes
  if not isNil(vtbl[].edit2):
    vtbl[].vtbl.edit2 = miqt_exec_callback_cQColumnView_edit2
  if not isNil(vtbl[].selectionCommand):
    vtbl[].vtbl.selectionCommand = miqt_exec_callback_cQColumnView_selectionCommand
  if not isNil(vtbl[].startDrag):
    vtbl[].vtbl.startDrag = miqt_exec_callback_cQColumnView_startDrag
  if not isNil(vtbl[].initViewItemOption):
    vtbl[].vtbl.initViewItemOption = miqt_exec_callback_cQColumnView_initViewItemOption
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQColumnView_focusNextPrevChild
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQColumnView_event
  if not isNil(vtbl[].viewportEvent):
    vtbl[].vtbl.viewportEvent = miqt_exec_callback_cQColumnView_viewportEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQColumnView_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQColumnView_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQColumnView_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQColumnView_mouseDoubleClickEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQColumnView_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQColumnView_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQColumnView_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQColumnView_dropEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQColumnView_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQColumnView_focusOutEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQColumnView_keyPressEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQColumnView_timerEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQColumnView_inputMethodEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQColumnView_eventFilter
  if not isNil(vtbl[].viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = miqt_exec_callback_cQColumnView_viewportSizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQColumnView_minimumSizeHint
  if not isNil(vtbl[].setupViewport):
    vtbl[].vtbl.setupViewport = miqt_exec_callback_cQColumnView_setupViewport
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQColumnView_paintEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQColumnView_wheelEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQColumnView_contextMenuEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQColumnView_changeEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQColumnView_initStyleOption
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQColumnView_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQColumnView_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQColumnView_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQColumnView_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQColumnView_paintEngine
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQColumnView_keyReleaseEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQColumnView_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQColumnView_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQColumnView_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQColumnView_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQColumnView_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQColumnView_actionEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQColumnView_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQColumnView_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQColumnView_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQColumnView_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQColumnView_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQColumnView_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQColumnView_sharedPainter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQColumnView_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQColumnView_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQColumnView_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQColumnView_disconnectNotify
  gen_qcolumnview_types.QColumnView(h: fcQColumnView_new(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qcolumnview_types.QColumnView,
    vtbl: ref QColumnViewVTable = nil): gen_qcolumnview_types.QColumnView =
  let vtbl = if vtbl == nil: new QColumnViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQColumnViewVTable, _: ptr cQColumnView) {.cdecl.} =
    let vtbl = cast[ref QColumnViewVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQColumnView_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQColumnView_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQColumnView_metacall
  if not isNil(vtbl[].indexAt):
    vtbl[].vtbl.indexAt = miqt_exec_callback_cQColumnView_indexAt
  if not isNil(vtbl[].scrollTo):
    vtbl[].vtbl.scrollTo = miqt_exec_callback_cQColumnView_scrollTo
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQColumnView_sizeHint
  if not isNil(vtbl[].visualRect):
    vtbl[].vtbl.visualRect = miqt_exec_callback_cQColumnView_visualRect
  if not isNil(vtbl[].setModel):
    vtbl[].vtbl.setModel = miqt_exec_callback_cQColumnView_setModel
  if not isNil(vtbl[].setSelectionModel):
    vtbl[].vtbl.setSelectionModel = miqt_exec_callback_cQColumnView_setSelectionModel
  if not isNil(vtbl[].setRootIndex):
    vtbl[].vtbl.setRootIndex = miqt_exec_callback_cQColumnView_setRootIndex
  if not isNil(vtbl[].selectAll):
    vtbl[].vtbl.selectAll = miqt_exec_callback_cQColumnView_selectAll
  if not isNil(vtbl[].isIndexHidden):
    vtbl[].vtbl.isIndexHidden = miqt_exec_callback_cQColumnView_isIndexHidden
  if not isNil(vtbl[].moveCursor):
    vtbl[].vtbl.moveCursor = miqt_exec_callback_cQColumnView_moveCursor
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQColumnView_resizeEvent
  if not isNil(vtbl[].setSelection):
    vtbl[].vtbl.setSelection = miqt_exec_callback_cQColumnView_setSelection
  if not isNil(vtbl[].visualRegionForSelection):
    vtbl[].vtbl.visualRegionForSelection = miqt_exec_callback_cQColumnView_visualRegionForSelection
  if not isNil(vtbl[].horizontalOffset):
    vtbl[].vtbl.horizontalOffset = miqt_exec_callback_cQColumnView_horizontalOffset
  if not isNil(vtbl[].verticalOffset):
    vtbl[].vtbl.verticalOffset = miqt_exec_callback_cQColumnView_verticalOffset
  if not isNil(vtbl[].rowsInserted):
    vtbl[].vtbl.rowsInserted = miqt_exec_callback_cQColumnView_rowsInserted
  if not isNil(vtbl[].currentChanged):
    vtbl[].vtbl.currentChanged = miqt_exec_callback_cQColumnView_currentChanged
  if not isNil(vtbl[].scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = miqt_exec_callback_cQColumnView_scrollContentsBy
  if not isNil(vtbl[].createColumn):
    vtbl[].vtbl.createColumn = miqt_exec_callback_cQColumnView_createColumn
  if not isNil(vtbl[].keyboardSearch):
    vtbl[].vtbl.keyboardSearch = miqt_exec_callback_cQColumnView_keyboardSearch
  if not isNil(vtbl[].sizeHintForRow):
    vtbl[].vtbl.sizeHintForRow = miqt_exec_callback_cQColumnView_sizeHintForRow
  if not isNil(vtbl[].sizeHintForColumn):
    vtbl[].vtbl.sizeHintForColumn = miqt_exec_callback_cQColumnView_sizeHintForColumn
  if not isNil(vtbl[].itemDelegateForIndex):
    vtbl[].vtbl.itemDelegateForIndex = miqt_exec_callback_cQColumnView_itemDelegateForIndex
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQColumnView_inputMethodQuery
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQColumnView_reset
  if not isNil(vtbl[].doItemsLayout):
    vtbl[].vtbl.doItemsLayout = miqt_exec_callback_cQColumnView_doItemsLayout
  if not isNil(vtbl[].dataChanged):
    vtbl[].vtbl.dataChanged = miqt_exec_callback_cQColumnView_dataChanged
  if not isNil(vtbl[].rowsAboutToBeRemoved):
    vtbl[].vtbl.rowsAboutToBeRemoved = miqt_exec_callback_cQColumnView_rowsAboutToBeRemoved
  if not isNil(vtbl[].selectionChanged):
    vtbl[].vtbl.selectionChanged = miqt_exec_callback_cQColumnView_selectionChanged
  if not isNil(vtbl[].updateEditorData):
    vtbl[].vtbl.updateEditorData = miqt_exec_callback_cQColumnView_updateEditorData
  if not isNil(vtbl[].updateEditorGeometries):
    vtbl[].vtbl.updateEditorGeometries = miqt_exec_callback_cQColumnView_updateEditorGeometries
  if not isNil(vtbl[].updateGeometries):
    vtbl[].vtbl.updateGeometries = miqt_exec_callback_cQColumnView_updateGeometries
  if not isNil(vtbl[].verticalScrollbarAction):
    vtbl[].vtbl.verticalScrollbarAction = miqt_exec_callback_cQColumnView_verticalScrollbarAction
  if not isNil(vtbl[].horizontalScrollbarAction):
    vtbl[].vtbl.horizontalScrollbarAction = miqt_exec_callback_cQColumnView_horizontalScrollbarAction
  if not isNil(vtbl[].verticalScrollbarValueChanged):
    vtbl[].vtbl.verticalScrollbarValueChanged = miqt_exec_callback_cQColumnView_verticalScrollbarValueChanged
  if not isNil(vtbl[].horizontalScrollbarValueChanged):
    vtbl[].vtbl.horizontalScrollbarValueChanged = miqt_exec_callback_cQColumnView_horizontalScrollbarValueChanged
  if not isNil(vtbl[].closeEditor):
    vtbl[].vtbl.closeEditor = miqt_exec_callback_cQColumnView_closeEditor
  if not isNil(vtbl[].commitData):
    vtbl[].vtbl.commitData = miqt_exec_callback_cQColumnView_commitData
  if not isNil(vtbl[].editorDestroyed):
    vtbl[].vtbl.editorDestroyed = miqt_exec_callback_cQColumnView_editorDestroyed
  if not isNil(vtbl[].selectedIndexes):
    vtbl[].vtbl.selectedIndexes = miqt_exec_callback_cQColumnView_selectedIndexes
  if not isNil(vtbl[].edit2):
    vtbl[].vtbl.edit2 = miqt_exec_callback_cQColumnView_edit2
  if not isNil(vtbl[].selectionCommand):
    vtbl[].vtbl.selectionCommand = miqt_exec_callback_cQColumnView_selectionCommand
  if not isNil(vtbl[].startDrag):
    vtbl[].vtbl.startDrag = miqt_exec_callback_cQColumnView_startDrag
  if not isNil(vtbl[].initViewItemOption):
    vtbl[].vtbl.initViewItemOption = miqt_exec_callback_cQColumnView_initViewItemOption
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQColumnView_focusNextPrevChild
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQColumnView_event
  if not isNil(vtbl[].viewportEvent):
    vtbl[].vtbl.viewportEvent = miqt_exec_callback_cQColumnView_viewportEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQColumnView_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQColumnView_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQColumnView_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQColumnView_mouseDoubleClickEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQColumnView_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQColumnView_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQColumnView_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQColumnView_dropEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQColumnView_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQColumnView_focusOutEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQColumnView_keyPressEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQColumnView_timerEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQColumnView_inputMethodEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQColumnView_eventFilter
  if not isNil(vtbl[].viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = miqt_exec_callback_cQColumnView_viewportSizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQColumnView_minimumSizeHint
  if not isNil(vtbl[].setupViewport):
    vtbl[].vtbl.setupViewport = miqt_exec_callback_cQColumnView_setupViewport
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQColumnView_paintEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQColumnView_wheelEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQColumnView_contextMenuEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQColumnView_changeEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQColumnView_initStyleOption
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQColumnView_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQColumnView_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQColumnView_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQColumnView_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQColumnView_paintEngine
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQColumnView_keyReleaseEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQColumnView_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQColumnView_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQColumnView_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQColumnView_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQColumnView_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQColumnView_actionEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQColumnView_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQColumnView_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQColumnView_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQColumnView_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQColumnView_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQColumnView_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQColumnView_sharedPainter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQColumnView_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQColumnView_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQColumnView_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQColumnView_disconnectNotify
  gen_qcolumnview_types.QColumnView(h: fcQColumnView_new2(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qcolumnview_types.QColumnView,
    parent: gen_qwidget_types.QWidget,
    vtbl: VirtualQColumnView) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQColumnViewVTable, _: ptr cQColumnView) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQColumnView()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQColumnView_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQColumnView_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQColumnView_metacall
  vtbl[].vtbl.indexAt = miqt_exec_method_cQColumnView_indexAt
  vtbl[].vtbl.scrollTo = miqt_exec_method_cQColumnView_scrollTo
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQColumnView_sizeHint
  vtbl[].vtbl.visualRect = miqt_exec_method_cQColumnView_visualRect
  vtbl[].vtbl.setModel = miqt_exec_method_cQColumnView_setModel
  vtbl[].vtbl.setSelectionModel = miqt_exec_method_cQColumnView_setSelectionModel
  vtbl[].vtbl.setRootIndex = miqt_exec_method_cQColumnView_setRootIndex
  vtbl[].vtbl.selectAll = miqt_exec_method_cQColumnView_selectAll
  vtbl[].vtbl.isIndexHidden = miqt_exec_method_cQColumnView_isIndexHidden
  vtbl[].vtbl.moveCursor = miqt_exec_method_cQColumnView_moveCursor
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQColumnView_resizeEvent
  vtbl[].vtbl.setSelection = miqt_exec_method_cQColumnView_setSelection
  vtbl[].vtbl.visualRegionForSelection = miqt_exec_method_cQColumnView_visualRegionForSelection
  vtbl[].vtbl.horizontalOffset = miqt_exec_method_cQColumnView_horizontalOffset
  vtbl[].vtbl.verticalOffset = miqt_exec_method_cQColumnView_verticalOffset
  vtbl[].vtbl.rowsInserted = miqt_exec_method_cQColumnView_rowsInserted
  vtbl[].vtbl.currentChanged = miqt_exec_method_cQColumnView_currentChanged
  vtbl[].vtbl.scrollContentsBy = miqt_exec_method_cQColumnView_scrollContentsBy
  vtbl[].vtbl.createColumn = miqt_exec_method_cQColumnView_createColumn
  vtbl[].vtbl.keyboardSearch = miqt_exec_method_cQColumnView_keyboardSearch
  vtbl[].vtbl.sizeHintForRow = miqt_exec_method_cQColumnView_sizeHintForRow
  vtbl[].vtbl.sizeHintForColumn = miqt_exec_method_cQColumnView_sizeHintForColumn
  vtbl[].vtbl.itemDelegateForIndex = miqt_exec_method_cQColumnView_itemDelegateForIndex
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQColumnView_inputMethodQuery
  vtbl[].vtbl.reset = miqt_exec_method_cQColumnView_reset
  vtbl[].vtbl.doItemsLayout = miqt_exec_method_cQColumnView_doItemsLayout
  vtbl[].vtbl.dataChanged = miqt_exec_method_cQColumnView_dataChanged
  vtbl[].vtbl.rowsAboutToBeRemoved = miqt_exec_method_cQColumnView_rowsAboutToBeRemoved
  vtbl[].vtbl.selectionChanged = miqt_exec_method_cQColumnView_selectionChanged
  vtbl[].vtbl.updateEditorData = miqt_exec_method_cQColumnView_updateEditorData
  vtbl[].vtbl.updateEditorGeometries = miqt_exec_method_cQColumnView_updateEditorGeometries
  vtbl[].vtbl.updateGeometries = miqt_exec_method_cQColumnView_updateGeometries
  vtbl[].vtbl.verticalScrollbarAction = miqt_exec_method_cQColumnView_verticalScrollbarAction
  vtbl[].vtbl.horizontalScrollbarAction = miqt_exec_method_cQColumnView_horizontalScrollbarAction
  vtbl[].vtbl.verticalScrollbarValueChanged = miqt_exec_method_cQColumnView_verticalScrollbarValueChanged
  vtbl[].vtbl.horizontalScrollbarValueChanged = miqt_exec_method_cQColumnView_horizontalScrollbarValueChanged
  vtbl[].vtbl.closeEditor = miqt_exec_method_cQColumnView_closeEditor
  vtbl[].vtbl.commitData = miqt_exec_method_cQColumnView_commitData
  vtbl[].vtbl.editorDestroyed = miqt_exec_method_cQColumnView_editorDestroyed
  vtbl[].vtbl.selectedIndexes = miqt_exec_method_cQColumnView_selectedIndexes
  vtbl[].vtbl.edit = miqt_exec_method_cQColumnView_edit2
  vtbl[].vtbl.selectionCommand = miqt_exec_method_cQColumnView_selectionCommand
  vtbl[].vtbl.startDrag = miqt_exec_method_cQColumnView_startDrag
  vtbl[].vtbl.initViewItemOption = miqt_exec_method_cQColumnView_initViewItemOption
  vtbl[].vtbl.focusNextPrevChild = miqt_exec_method_cQColumnView_focusNextPrevChild
  vtbl[].vtbl.event = miqt_exec_method_cQColumnView_event
  vtbl[].vtbl.viewportEvent = miqt_exec_method_cQColumnView_viewportEvent
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQColumnView_mousePressEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQColumnView_mouseMoveEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQColumnView_mouseReleaseEvent
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQColumnView_mouseDoubleClickEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQColumnView_dragEnterEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQColumnView_dragMoveEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQColumnView_dragLeaveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQColumnView_dropEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQColumnView_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQColumnView_focusOutEvent
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQColumnView_keyPressEvent
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQColumnView_timerEvent
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQColumnView_inputMethodEvent
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQColumnView_eventFilter
  vtbl[].vtbl.viewportSizeHint = miqt_exec_method_cQColumnView_viewportSizeHint
  vtbl[].vtbl.minimumSizeHint = miqt_exec_method_cQColumnView_minimumSizeHint
  vtbl[].vtbl.setupViewport = miqt_exec_method_cQColumnView_setupViewport
  vtbl[].vtbl.paintEvent = miqt_exec_method_cQColumnView_paintEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQColumnView_wheelEvent
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQColumnView_contextMenuEvent
  vtbl[].vtbl.changeEvent = miqt_exec_method_cQColumnView_changeEvent
  vtbl[].vtbl.initStyleOption = miqt_exec_method_cQColumnView_initStyleOption
  vtbl[].vtbl.devType = miqt_exec_method_cQColumnView_devType
  vtbl[].vtbl.setVisible = miqt_exec_method_cQColumnView_setVisible
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQColumnView_heightForWidth
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQColumnView_hasHeightForWidth
  vtbl[].vtbl.paintEngine = miqt_exec_method_cQColumnView_paintEngine
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQColumnView_keyReleaseEvent
  vtbl[].vtbl.enterEvent = miqt_exec_method_cQColumnView_enterEvent
  vtbl[].vtbl.leaveEvent = miqt_exec_method_cQColumnView_leaveEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQColumnView_moveEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQColumnView_closeEvent
  vtbl[].vtbl.tabletEvent = miqt_exec_method_cQColumnView_tabletEvent
  vtbl[].vtbl.actionEvent = miqt_exec_method_cQColumnView_actionEvent
  vtbl[].vtbl.showEvent = miqt_exec_method_cQColumnView_showEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQColumnView_hideEvent
  vtbl[].vtbl.nativeEvent = miqt_exec_method_cQColumnView_nativeEvent
  vtbl[].vtbl.metric = miqt_exec_method_cQColumnView_metric
  vtbl[].vtbl.initPainter = miqt_exec_method_cQColumnView_initPainter
  vtbl[].vtbl.redirected = miqt_exec_method_cQColumnView_redirected
  vtbl[].vtbl.sharedPainter = miqt_exec_method_cQColumnView_sharedPainter
  vtbl[].vtbl.childEvent = miqt_exec_method_cQColumnView_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQColumnView_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQColumnView_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQColumnView_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQColumnView_new(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

proc create*(T: type gen_qcolumnview_types.QColumnView,
    vtbl: VirtualQColumnView) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQColumnViewVTable, _: ptr cQColumnView) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQColumnView()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQColumnView, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQColumnView_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQColumnView_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQColumnView_metacall
  vtbl[].vtbl.indexAt = miqt_exec_method_cQColumnView_indexAt
  vtbl[].vtbl.scrollTo = miqt_exec_method_cQColumnView_scrollTo
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQColumnView_sizeHint
  vtbl[].vtbl.visualRect = miqt_exec_method_cQColumnView_visualRect
  vtbl[].vtbl.setModel = miqt_exec_method_cQColumnView_setModel
  vtbl[].vtbl.setSelectionModel = miqt_exec_method_cQColumnView_setSelectionModel
  vtbl[].vtbl.setRootIndex = miqt_exec_method_cQColumnView_setRootIndex
  vtbl[].vtbl.selectAll = miqt_exec_method_cQColumnView_selectAll
  vtbl[].vtbl.isIndexHidden = miqt_exec_method_cQColumnView_isIndexHidden
  vtbl[].vtbl.moveCursor = miqt_exec_method_cQColumnView_moveCursor
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQColumnView_resizeEvent
  vtbl[].vtbl.setSelection = miqt_exec_method_cQColumnView_setSelection
  vtbl[].vtbl.visualRegionForSelection = miqt_exec_method_cQColumnView_visualRegionForSelection
  vtbl[].vtbl.horizontalOffset = miqt_exec_method_cQColumnView_horizontalOffset
  vtbl[].vtbl.verticalOffset = miqt_exec_method_cQColumnView_verticalOffset
  vtbl[].vtbl.rowsInserted = miqt_exec_method_cQColumnView_rowsInserted
  vtbl[].vtbl.currentChanged = miqt_exec_method_cQColumnView_currentChanged
  vtbl[].vtbl.scrollContentsBy = miqt_exec_method_cQColumnView_scrollContentsBy
  vtbl[].vtbl.createColumn = miqt_exec_method_cQColumnView_createColumn
  vtbl[].vtbl.keyboardSearch = miqt_exec_method_cQColumnView_keyboardSearch
  vtbl[].vtbl.sizeHintForRow = miqt_exec_method_cQColumnView_sizeHintForRow
  vtbl[].vtbl.sizeHintForColumn = miqt_exec_method_cQColumnView_sizeHintForColumn
  vtbl[].vtbl.itemDelegateForIndex = miqt_exec_method_cQColumnView_itemDelegateForIndex
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQColumnView_inputMethodQuery
  vtbl[].vtbl.reset = miqt_exec_method_cQColumnView_reset
  vtbl[].vtbl.doItemsLayout = miqt_exec_method_cQColumnView_doItemsLayout
  vtbl[].vtbl.dataChanged = miqt_exec_method_cQColumnView_dataChanged
  vtbl[].vtbl.rowsAboutToBeRemoved = miqt_exec_method_cQColumnView_rowsAboutToBeRemoved
  vtbl[].vtbl.selectionChanged = miqt_exec_method_cQColumnView_selectionChanged
  vtbl[].vtbl.updateEditorData = miqt_exec_method_cQColumnView_updateEditorData
  vtbl[].vtbl.updateEditorGeometries = miqt_exec_method_cQColumnView_updateEditorGeometries
  vtbl[].vtbl.updateGeometries = miqt_exec_method_cQColumnView_updateGeometries
  vtbl[].vtbl.verticalScrollbarAction = miqt_exec_method_cQColumnView_verticalScrollbarAction
  vtbl[].vtbl.horizontalScrollbarAction = miqt_exec_method_cQColumnView_horizontalScrollbarAction
  vtbl[].vtbl.verticalScrollbarValueChanged = miqt_exec_method_cQColumnView_verticalScrollbarValueChanged
  vtbl[].vtbl.horizontalScrollbarValueChanged = miqt_exec_method_cQColumnView_horizontalScrollbarValueChanged
  vtbl[].vtbl.closeEditor = miqt_exec_method_cQColumnView_closeEditor
  vtbl[].vtbl.commitData = miqt_exec_method_cQColumnView_commitData
  vtbl[].vtbl.editorDestroyed = miqt_exec_method_cQColumnView_editorDestroyed
  vtbl[].vtbl.selectedIndexes = miqt_exec_method_cQColumnView_selectedIndexes
  vtbl[].vtbl.edit = miqt_exec_method_cQColumnView_edit2
  vtbl[].vtbl.selectionCommand = miqt_exec_method_cQColumnView_selectionCommand
  vtbl[].vtbl.startDrag = miqt_exec_method_cQColumnView_startDrag
  vtbl[].vtbl.initViewItemOption = miqt_exec_method_cQColumnView_initViewItemOption
  vtbl[].vtbl.focusNextPrevChild = miqt_exec_method_cQColumnView_focusNextPrevChild
  vtbl[].vtbl.event = miqt_exec_method_cQColumnView_event
  vtbl[].vtbl.viewportEvent = miqt_exec_method_cQColumnView_viewportEvent
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQColumnView_mousePressEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQColumnView_mouseMoveEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQColumnView_mouseReleaseEvent
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQColumnView_mouseDoubleClickEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQColumnView_dragEnterEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQColumnView_dragMoveEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQColumnView_dragLeaveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQColumnView_dropEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQColumnView_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQColumnView_focusOutEvent
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQColumnView_keyPressEvent
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQColumnView_timerEvent
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQColumnView_inputMethodEvent
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQColumnView_eventFilter
  vtbl[].vtbl.viewportSizeHint = miqt_exec_method_cQColumnView_viewportSizeHint
  vtbl[].vtbl.minimumSizeHint = miqt_exec_method_cQColumnView_minimumSizeHint
  vtbl[].vtbl.setupViewport = miqt_exec_method_cQColumnView_setupViewport
  vtbl[].vtbl.paintEvent = miqt_exec_method_cQColumnView_paintEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQColumnView_wheelEvent
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQColumnView_contextMenuEvent
  vtbl[].vtbl.changeEvent = miqt_exec_method_cQColumnView_changeEvent
  vtbl[].vtbl.initStyleOption = miqt_exec_method_cQColumnView_initStyleOption
  vtbl[].vtbl.devType = miqt_exec_method_cQColumnView_devType
  vtbl[].vtbl.setVisible = miqt_exec_method_cQColumnView_setVisible
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQColumnView_heightForWidth
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQColumnView_hasHeightForWidth
  vtbl[].vtbl.paintEngine = miqt_exec_method_cQColumnView_paintEngine
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQColumnView_keyReleaseEvent
  vtbl[].vtbl.enterEvent = miqt_exec_method_cQColumnView_enterEvent
  vtbl[].vtbl.leaveEvent = miqt_exec_method_cQColumnView_leaveEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQColumnView_moveEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQColumnView_closeEvent
  vtbl[].vtbl.tabletEvent = miqt_exec_method_cQColumnView_tabletEvent
  vtbl[].vtbl.actionEvent = miqt_exec_method_cQColumnView_actionEvent
  vtbl[].vtbl.showEvent = miqt_exec_method_cQColumnView_showEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQColumnView_hideEvent
  vtbl[].vtbl.nativeEvent = miqt_exec_method_cQColumnView_nativeEvent
  vtbl[].vtbl.metric = miqt_exec_method_cQColumnView_metric
  vtbl[].vtbl.initPainter = miqt_exec_method_cQColumnView_initPainter
  vtbl[].vtbl.redirected = miqt_exec_method_cQColumnView_redirected
  vtbl[].vtbl.sharedPainter = miqt_exec_method_cQColumnView_sharedPainter
  vtbl[].vtbl.childEvent = miqt_exec_method_cQColumnView_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQColumnView_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQColumnView_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQColumnView_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQColumnView_new2(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qcolumnview_types.QColumnView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQColumnView_staticMetaObject())
