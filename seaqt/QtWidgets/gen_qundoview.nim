import ./Qt6Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt6Widgets") & " -fPIC"
{.compile("gen_qundoview.cpp", cflags).}


import ./gen_qundoview_types
export gen_qundoview_types

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
  ../QtGui/gen_qicon_types,
  ../QtGui/gen_qpaintdevice_types,
  ../QtGui/gen_qpaintengine_types,
  ../QtGui/gen_qpainter_types,
  ../QtGui/gen_qregion_types,
  ../QtGui/gen_qundogroup_types,
  ../QtGui/gen_qundostack_types,
  ./gen_qabstractitemdelegate_types,
  ./gen_qlistview,
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
  gen_qicon_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qregion_types,
  gen_qundogroup_types,
  gen_qundostack_types,
  gen_qabstractitemdelegate_types,
  gen_qlistview,
  gen_qstyleoption_types,
  gen_qwidget_types

type cQUndoView*{.exportc: "QUndoView", incompleteStruct.} = object

proc fcQUndoView_metaObject(self: pointer): pointer {.importc: "QUndoView_metaObject".}
proc fcQUndoView_metacast(self: pointer, param1: cstring): pointer {.importc: "QUndoView_metacast".}
proc fcQUndoView_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QUndoView_metacall".}
proc fcQUndoView_tr(s: cstring): struct_miqt_string {.importc: "QUndoView_tr".}
proc fcQUndoView_stack(self: pointer): pointer {.importc: "QUndoView_stack".}
proc fcQUndoView_group(self: pointer): pointer {.importc: "QUndoView_group".}
proc fcQUndoView_setEmptyLabel(self: pointer, label: struct_miqt_string): void {.importc: "QUndoView_setEmptyLabel".}
proc fcQUndoView_emptyLabel(self: pointer): struct_miqt_string {.importc: "QUndoView_emptyLabel".}
proc fcQUndoView_setCleanIcon(self: pointer, icon: pointer): void {.importc: "QUndoView_setCleanIcon".}
proc fcQUndoView_cleanIcon(self: pointer): pointer {.importc: "QUndoView_cleanIcon".}
proc fcQUndoView_setStack(self: pointer, stack: pointer): void {.importc: "QUndoView_setStack".}
proc fcQUndoView_setGroup(self: pointer, group: pointer): void {.importc: "QUndoView_setGroup".}
proc fcQUndoView_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QUndoView_tr2".}
proc fcQUndoView_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QUndoView_tr3".}
proc fcQUndoView_vtbl(self: pointer): pointer {.importc: "QUndoView_vtbl".}
proc fcQUndoView_vdata(self: pointer): pointer {.importc: "QUndoView_vdata".}
type cQUndoViewVTable {.pure.} = object
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
proc fcQUndoView_virtualbase_metaObject(self: pointer): pointer {.importc: "QUndoView_virtualbase_metaObject".}
proc fcQUndoView_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QUndoView_virtualbase_metacast".}
proc fcQUndoView_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QUndoView_virtualbase_metacall".}
proc fcQUndoView_virtualbase_visualRect(self: pointer, index: pointer): pointer {.importc: "QUndoView_virtualbase_visualRect".}
proc fcQUndoView_virtualbase_scrollTo(self: pointer, index: pointer, hint: cint): void {.importc: "QUndoView_virtualbase_scrollTo".}
proc fcQUndoView_virtualbase_indexAt(self: pointer, p: pointer): pointer {.importc: "QUndoView_virtualbase_indexAt".}
proc fcQUndoView_virtualbase_doItemsLayout(self: pointer): void {.importc: "QUndoView_virtualbase_doItemsLayout".}
proc fcQUndoView_virtualbase_reset(self: pointer): void {.importc: "QUndoView_virtualbase_reset".}
proc fcQUndoView_virtualbase_setRootIndex(self: pointer, index: pointer): void {.importc: "QUndoView_virtualbase_setRootIndex".}
proc fcQUndoView_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QUndoView_virtualbase_event".}
proc fcQUndoView_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.importc: "QUndoView_virtualbase_scrollContentsBy".}
proc fcQUndoView_virtualbase_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.importc: "QUndoView_virtualbase_dataChanged".}
proc fcQUndoView_virtualbase_rowsInserted(self: pointer, parent: pointer, start: cint, endVal: cint): void {.importc: "QUndoView_virtualbase_rowsInserted".}
proc fcQUndoView_virtualbase_rowsAboutToBeRemoved(self: pointer, parent: pointer, start: cint, endVal: cint): void {.importc: "QUndoView_virtualbase_rowsAboutToBeRemoved".}
proc fcQUndoView_virtualbase_mouseMoveEvent(self: pointer, e: pointer): void {.importc: "QUndoView_virtualbase_mouseMoveEvent".}
proc fcQUndoView_virtualbase_mouseReleaseEvent(self: pointer, e: pointer): void {.importc: "QUndoView_virtualbase_mouseReleaseEvent".}
proc fcQUndoView_virtualbase_wheelEvent(self: pointer, e: pointer): void {.importc: "QUndoView_virtualbase_wheelEvent".}
proc fcQUndoView_virtualbase_timerEvent(self: pointer, e: pointer): void {.importc: "QUndoView_virtualbase_timerEvent".}
proc fcQUndoView_virtualbase_resizeEvent(self: pointer, e: pointer): void {.importc: "QUndoView_virtualbase_resizeEvent".}
proc fcQUndoView_virtualbase_dragMoveEvent(self: pointer, e: pointer): void {.importc: "QUndoView_virtualbase_dragMoveEvent".}
proc fcQUndoView_virtualbase_dragLeaveEvent(self: pointer, e: pointer): void {.importc: "QUndoView_virtualbase_dragLeaveEvent".}
proc fcQUndoView_virtualbase_dropEvent(self: pointer, e: pointer): void {.importc: "QUndoView_virtualbase_dropEvent".}
proc fcQUndoView_virtualbase_startDrag(self: pointer, supportedActions: cint): void {.importc: "QUndoView_virtualbase_startDrag".}
proc fcQUndoView_virtualbase_initViewItemOption(self: pointer, option: pointer): void {.importc: "QUndoView_virtualbase_initViewItemOption".}
proc fcQUndoView_virtualbase_paintEvent(self: pointer, e: pointer): void {.importc: "QUndoView_virtualbase_paintEvent".}
proc fcQUndoView_virtualbase_horizontalOffset(self: pointer): cint {.importc: "QUndoView_virtualbase_horizontalOffset".}
proc fcQUndoView_virtualbase_verticalOffset(self: pointer): cint {.importc: "QUndoView_virtualbase_verticalOffset".}
proc fcQUndoView_virtualbase_moveCursor(self: pointer, cursorAction: cint, modifiers: cint): pointer {.importc: "QUndoView_virtualbase_moveCursor".}
proc fcQUndoView_virtualbase_setSelection(self: pointer, rect: pointer, command: cint): void {.importc: "QUndoView_virtualbase_setSelection".}
proc fcQUndoView_virtualbase_visualRegionForSelection(self: pointer, selection: pointer): pointer {.importc: "QUndoView_virtualbase_visualRegionForSelection".}
proc fcQUndoView_virtualbase_selectedIndexes(self: pointer): struct_miqt_array {.importc: "QUndoView_virtualbase_selectedIndexes".}
proc fcQUndoView_virtualbase_updateGeometries(self: pointer): void {.importc: "QUndoView_virtualbase_updateGeometries".}
proc fcQUndoView_virtualbase_isIndexHidden(self: pointer, index: pointer): bool {.importc: "QUndoView_virtualbase_isIndexHidden".}
proc fcQUndoView_virtualbase_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void {.importc: "QUndoView_virtualbase_selectionChanged".}
proc fcQUndoView_virtualbase_currentChanged(self: pointer, current: pointer, previous: pointer): void {.importc: "QUndoView_virtualbase_currentChanged".}
proc fcQUndoView_virtualbase_viewportSizeHint(self: pointer): pointer {.importc: "QUndoView_virtualbase_viewportSizeHint".}
proc fcQUndoView_virtualbase_setModel(self: pointer, model: pointer): void {.importc: "QUndoView_virtualbase_setModel".}
proc fcQUndoView_virtualbase_setSelectionModel(self: pointer, selectionModel: pointer): void {.importc: "QUndoView_virtualbase_setSelectionModel".}
proc fcQUndoView_virtualbase_keyboardSearch(self: pointer, search: struct_miqt_string): void {.importc: "QUndoView_virtualbase_keyboardSearch".}
proc fcQUndoView_virtualbase_sizeHintForRow(self: pointer, row: cint): cint {.importc: "QUndoView_virtualbase_sizeHintForRow".}
proc fcQUndoView_virtualbase_sizeHintForColumn(self: pointer, column: cint): cint {.importc: "QUndoView_virtualbase_sizeHintForColumn".}
proc fcQUndoView_virtualbase_itemDelegateForIndex(self: pointer, index: pointer): pointer {.importc: "QUndoView_virtualbase_itemDelegateForIndex".}
proc fcQUndoView_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QUndoView_virtualbase_inputMethodQuery".}
proc fcQUndoView_virtualbase_selectAll(self: pointer): void {.importc: "QUndoView_virtualbase_selectAll".}
proc fcQUndoView_virtualbase_updateEditorData(self: pointer): void {.importc: "QUndoView_virtualbase_updateEditorData".}
proc fcQUndoView_virtualbase_updateEditorGeometries(self: pointer): void {.importc: "QUndoView_virtualbase_updateEditorGeometries".}
proc fcQUndoView_virtualbase_verticalScrollbarAction(self: pointer, action: cint): void {.importc: "QUndoView_virtualbase_verticalScrollbarAction".}
proc fcQUndoView_virtualbase_horizontalScrollbarAction(self: pointer, action: cint): void {.importc: "QUndoView_virtualbase_horizontalScrollbarAction".}
proc fcQUndoView_virtualbase_verticalScrollbarValueChanged(self: pointer, value: cint): void {.importc: "QUndoView_virtualbase_verticalScrollbarValueChanged".}
proc fcQUndoView_virtualbase_horizontalScrollbarValueChanged(self: pointer, value: cint): void {.importc: "QUndoView_virtualbase_horizontalScrollbarValueChanged".}
proc fcQUndoView_virtualbase_closeEditor(self: pointer, editor: pointer, hint: cint): void {.importc: "QUndoView_virtualbase_closeEditor".}
proc fcQUndoView_virtualbase_commitData(self: pointer, editor: pointer): void {.importc: "QUndoView_virtualbase_commitData".}
proc fcQUndoView_virtualbase_editorDestroyed(self: pointer, editor: pointer): void {.importc: "QUndoView_virtualbase_editorDestroyed".}
proc fcQUndoView_virtualbase_edit2(self: pointer, index: pointer, trigger: cint, event: pointer): bool {.importc: "QUndoView_virtualbase_edit2".}
proc fcQUndoView_virtualbase_selectionCommand(self: pointer, index: pointer, event: pointer): cint {.importc: "QUndoView_virtualbase_selectionCommand".}
proc fcQUndoView_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QUndoView_virtualbase_focusNextPrevChild".}
proc fcQUndoView_virtualbase_viewportEvent(self: pointer, event: pointer): bool {.importc: "QUndoView_virtualbase_viewportEvent".}
proc fcQUndoView_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QUndoView_virtualbase_mousePressEvent".}
proc fcQUndoView_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QUndoView_virtualbase_mouseDoubleClickEvent".}
proc fcQUndoView_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QUndoView_virtualbase_dragEnterEvent".}
proc fcQUndoView_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QUndoView_virtualbase_focusInEvent".}
proc fcQUndoView_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QUndoView_virtualbase_focusOutEvent".}
proc fcQUndoView_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QUndoView_virtualbase_keyPressEvent".}
proc fcQUndoView_virtualbase_inputMethodEvent(self: pointer, event: pointer): void {.importc: "QUndoView_virtualbase_inputMethodEvent".}
proc fcQUndoView_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool {.importc: "QUndoView_virtualbase_eventFilter".}
proc fcQUndoView_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QUndoView_virtualbase_minimumSizeHint".}
proc fcQUndoView_virtualbase_sizeHint(self: pointer): pointer {.importc: "QUndoView_virtualbase_sizeHint".}
proc fcQUndoView_virtualbase_setupViewport(self: pointer, viewport: pointer): void {.importc: "QUndoView_virtualbase_setupViewport".}
proc fcQUndoView_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void {.importc: "QUndoView_virtualbase_contextMenuEvent".}
proc fcQUndoView_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QUndoView_virtualbase_changeEvent".}
proc fcQUndoView_virtualbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QUndoView_virtualbase_initStyleOption".}
proc fcQUndoView_virtualbase_devType(self: pointer): cint {.importc: "QUndoView_virtualbase_devType".}
proc fcQUndoView_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QUndoView_virtualbase_setVisible".}
proc fcQUndoView_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QUndoView_virtualbase_heightForWidth".}
proc fcQUndoView_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QUndoView_virtualbase_hasHeightForWidth".}
proc fcQUndoView_virtualbase_paintEngine(self: pointer): pointer {.importc: "QUndoView_virtualbase_paintEngine".}
proc fcQUndoView_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QUndoView_virtualbase_keyReleaseEvent".}
proc fcQUndoView_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QUndoView_virtualbase_enterEvent".}
proc fcQUndoView_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QUndoView_virtualbase_leaveEvent".}
proc fcQUndoView_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QUndoView_virtualbase_moveEvent".}
proc fcQUndoView_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QUndoView_virtualbase_closeEvent".}
proc fcQUndoView_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QUndoView_virtualbase_tabletEvent".}
proc fcQUndoView_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QUndoView_virtualbase_actionEvent".}
proc fcQUndoView_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QUndoView_virtualbase_showEvent".}
proc fcQUndoView_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QUndoView_virtualbase_hideEvent".}
proc fcQUndoView_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QUndoView_virtualbase_nativeEvent".}
proc fcQUndoView_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QUndoView_virtualbase_metric".}
proc fcQUndoView_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QUndoView_virtualbase_initPainter".}
proc fcQUndoView_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QUndoView_virtualbase_redirected".}
proc fcQUndoView_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QUndoView_virtualbase_sharedPainter".}
proc fcQUndoView_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QUndoView_virtualbase_childEvent".}
proc fcQUndoView_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QUndoView_virtualbase_customEvent".}
proc fcQUndoView_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QUndoView_virtualbase_connectNotify".}
proc fcQUndoView_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QUndoView_virtualbase_disconnectNotify".}
proc fcQUndoView_protectedbase_resizeContents(self: pointer, width: cint, height: cint): void {.importc: "QUndoView_protectedbase_resizeContents".}
proc fcQUndoView_protectedbase_contentsSize(self: pointer): pointer {.importc: "QUndoView_protectedbase_contentsSize".}
proc fcQUndoView_protectedbase_rectForIndex(self: pointer, index: pointer): pointer {.importc: "QUndoView_protectedbase_rectForIndex".}
proc fcQUndoView_protectedbase_setPositionForIndex(self: pointer, position: pointer, index: pointer): void {.importc: "QUndoView_protectedbase_setPositionForIndex".}
proc fcQUndoView_protectedbase_state(self: pointer): cint {.importc: "QUndoView_protectedbase_state".}
proc fcQUndoView_protectedbase_setState(self: pointer, state: cint): void {.importc: "QUndoView_protectedbase_setState".}
proc fcQUndoView_protectedbase_scheduleDelayedItemsLayout(self: pointer): void {.importc: "QUndoView_protectedbase_scheduleDelayedItemsLayout".}
proc fcQUndoView_protectedbase_executeDelayedItemsLayout(self: pointer): void {.importc: "QUndoView_protectedbase_executeDelayedItemsLayout".}
proc fcQUndoView_protectedbase_setDirtyRegion(self: pointer, region: pointer): void {.importc: "QUndoView_protectedbase_setDirtyRegion".}
proc fcQUndoView_protectedbase_scrollDirtyRegion(self: pointer, dx: cint, dy: cint): void {.importc: "QUndoView_protectedbase_scrollDirtyRegion".}
proc fcQUndoView_protectedbase_dirtyRegionOffset(self: pointer): pointer {.importc: "QUndoView_protectedbase_dirtyRegionOffset".}
proc fcQUndoView_protectedbase_startAutoScroll(self: pointer): void {.importc: "QUndoView_protectedbase_startAutoScroll".}
proc fcQUndoView_protectedbase_stopAutoScroll(self: pointer): void {.importc: "QUndoView_protectedbase_stopAutoScroll".}
proc fcQUndoView_protectedbase_doAutoScroll(self: pointer): void {.importc: "QUndoView_protectedbase_doAutoScroll".}
proc fcQUndoView_protectedbase_dropIndicatorPosition(self: pointer): cint {.importc: "QUndoView_protectedbase_dropIndicatorPosition".}
proc fcQUndoView_protectedbase_setViewportMargins(self: pointer, left: cint, top: cint, right: cint, bottom: cint): void {.importc: "QUndoView_protectedbase_setViewportMargins".}
proc fcQUndoView_protectedbase_viewportMargins(self: pointer): pointer {.importc: "QUndoView_protectedbase_viewportMargins".}
proc fcQUndoView_protectedbase_drawFrame(self: pointer, param1: pointer): void {.importc: "QUndoView_protectedbase_drawFrame".}
proc fcQUndoView_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QUndoView_protectedbase_updateMicroFocus".}
proc fcQUndoView_protectedbase_create(self: pointer): void {.importc: "QUndoView_protectedbase_create".}
proc fcQUndoView_protectedbase_destroy(self: pointer): void {.importc: "QUndoView_protectedbase_destroy".}
proc fcQUndoView_protectedbase_focusNextChild(self: pointer): bool {.importc: "QUndoView_protectedbase_focusNextChild".}
proc fcQUndoView_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QUndoView_protectedbase_focusPreviousChild".}
proc fcQUndoView_protectedbase_sender(self: pointer): pointer {.importc: "QUndoView_protectedbase_sender".}
proc fcQUndoView_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QUndoView_protectedbase_senderSignalIndex".}
proc fcQUndoView_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QUndoView_protectedbase_receivers".}
proc fcQUndoView_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QUndoView_protectedbase_isSignalConnected".}
proc fcQUndoView_new(vtbl, vdata: pointer, parent: pointer): ptr cQUndoView {.importc: "QUndoView_new".}
proc fcQUndoView_new2(vtbl, vdata: pointer): ptr cQUndoView {.importc: "QUndoView_new2".}
proc fcQUndoView_new3(vtbl, vdata: pointer, stack: pointer): ptr cQUndoView {.importc: "QUndoView_new3".}
proc fcQUndoView_new4(vtbl, vdata: pointer, group: pointer): ptr cQUndoView {.importc: "QUndoView_new4".}
proc fcQUndoView_new5(vtbl, vdata: pointer, stack: pointer, parent: pointer): ptr cQUndoView {.importc: "QUndoView_new5".}
proc fcQUndoView_new6(vtbl, vdata: pointer, group: pointer, parent: pointer): ptr cQUndoView {.importc: "QUndoView_new6".}
proc fcQUndoView_staticMetaObject(): pointer {.importc: "QUndoView_staticMetaObject".}

proc metaObject*(self: gen_qundoview_types.QUndoView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQUndoView_metaObject(self.h), owned: false)

proc metacast*(self: gen_qundoview_types.QUndoView, param1: cstring): pointer =
  fcQUndoView_metacast(self.h, param1)

proc metacall*(self: gen_qundoview_types.QUndoView, param1: cint, param2: cint, param3: pointer): cint =
  fcQUndoView_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qundoview_types.QUndoView, s: cstring): string =
  let v_ms = fcQUndoView_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc stack*(self: gen_qundoview_types.QUndoView): gen_qundostack_types.QUndoStack =
  gen_qundostack_types.QUndoStack(h: fcQUndoView_stack(self.h), owned: false)

proc group*(self: gen_qundoview_types.QUndoView): gen_qundogroup_types.QUndoGroup =
  gen_qundogroup_types.QUndoGroup(h: fcQUndoView_group(self.h), owned: false)

proc setEmptyLabel*(self: gen_qundoview_types.QUndoView, label: openArray[char]): void =
  fcQUndoView_setEmptyLabel(self.h, struct_miqt_string(data: if len(label) > 0: addr label[0] else: nil, len: csize_t(len(label))))

proc emptyLabel*(self: gen_qundoview_types.QUndoView): string =
  let v_ms = fcQUndoView_emptyLabel(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setCleanIcon*(self: gen_qundoview_types.QUndoView, icon: gen_qicon_types.QIcon): void =
  fcQUndoView_setCleanIcon(self.h, icon.h)

proc cleanIcon*(self: gen_qundoview_types.QUndoView): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQUndoView_cleanIcon(self.h), owned: true)

proc setStack*(self: gen_qundoview_types.QUndoView, stack: gen_qundostack_types.QUndoStack): void =
  fcQUndoView_setStack(self.h, stack.h)

proc setGroup*(self: gen_qundoview_types.QUndoView, group: gen_qundogroup_types.QUndoGroup): void =
  fcQUndoView_setGroup(self.h, group.h)

proc tr*(_: type gen_qundoview_types.QUndoView, s: cstring, c: cstring): string =
  let v_ms = fcQUndoView_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qundoview_types.QUndoView, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQUndoView_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QUndoViewmetaObjectProc* = proc(self: QUndoView): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QUndoViewmetacastProc* = proc(self: QUndoView, param1: cstring): pointer {.raises: [], gcsafe.}
type QUndoViewmetacallProc* = proc(self: QUndoView, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QUndoViewvisualRectProc* = proc(self: QUndoView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect {.raises: [], gcsafe.}
type QUndoViewscrollToProc* = proc(self: QUndoView, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void {.raises: [], gcsafe.}
type QUndoViewindexAtProc* = proc(self: QUndoView, p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QUndoViewdoItemsLayoutProc* = proc(self: QUndoView): void {.raises: [], gcsafe.}
type QUndoViewresetProc* = proc(self: QUndoView): void {.raises: [], gcsafe.}
type QUndoViewsetRootIndexProc* = proc(self: QUndoView, index: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QUndoVieweventProc* = proc(self: QUndoView, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QUndoViewscrollContentsByProc* = proc(self: QUndoView, dx: cint, dy: cint): void {.raises: [], gcsafe.}
type QUndoViewdataChangedProc* = proc(self: QUndoView, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: openArray[cint]): void {.raises: [], gcsafe.}
type QUndoViewrowsInsertedProc* = proc(self: QUndoView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void {.raises: [], gcsafe.}
type QUndoViewrowsAboutToBeRemovedProc* = proc(self: QUndoView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void {.raises: [], gcsafe.}
type QUndoViewmouseMoveEventProc* = proc(self: QUndoView, e: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QUndoViewmouseReleaseEventProc* = proc(self: QUndoView, e: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QUndoViewwheelEventProc* = proc(self: QUndoView, e: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QUndoViewtimerEventProc* = proc(self: QUndoView, e: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QUndoViewresizeEventProc* = proc(self: QUndoView, e: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QUndoViewdragMoveEventProc* = proc(self: QUndoView, e: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QUndoViewdragLeaveEventProc* = proc(self: QUndoView, e: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QUndoViewdropEventProc* = proc(self: QUndoView, e: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QUndoViewstartDragProc* = proc(self: QUndoView, supportedActions: cint): void {.raises: [], gcsafe.}
type QUndoViewinitViewItemOptionProc* = proc(self: QUndoView, option: gen_qstyleoption_types.QStyleOptionViewItem): void {.raises: [], gcsafe.}
type QUndoViewpaintEventProc* = proc(self: QUndoView, e: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QUndoViewhorizontalOffsetProc* = proc(self: QUndoView): cint {.raises: [], gcsafe.}
type QUndoViewverticalOffsetProc* = proc(self: QUndoView): cint {.raises: [], gcsafe.}
type QUndoViewmoveCursorProc* = proc(self: QUndoView, cursorAction: cint, modifiers: cint): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QUndoViewsetSelectionProc* = proc(self: QUndoView, rect: gen_qrect_types.QRect, command: cint): void {.raises: [], gcsafe.}
type QUndoViewvisualRegionForSelectionProc* = proc(self: QUndoView, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion {.raises: [], gcsafe.}
type QUndoViewselectedIndexesProc* = proc(self: QUndoView): seq[gen_qabstractitemmodel_types.QModelIndex] {.raises: [], gcsafe.}
type QUndoViewupdateGeometriesProc* = proc(self: QUndoView): void {.raises: [], gcsafe.}
type QUndoViewisIndexHiddenProc* = proc(self: QUndoView, index: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QUndoViewselectionChangedProc* = proc(self: QUndoView, selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void {.raises: [], gcsafe.}
type QUndoViewcurrentChangedProc* = proc(self: QUndoView, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QUndoViewviewportSizeHintProc* = proc(self: QUndoView): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QUndoViewsetModelProc* = proc(self: QUndoView, model: gen_qabstractitemmodel_types.QAbstractItemModel): void {.raises: [], gcsafe.}
type QUndoViewsetSelectionModelProc* = proc(self: QUndoView, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void {.raises: [], gcsafe.}
type QUndoViewkeyboardSearchProc* = proc(self: QUndoView, search: openArray[char]): void {.raises: [], gcsafe.}
type QUndoViewsizeHintForRowProc* = proc(self: QUndoView, row: cint): cint {.raises: [], gcsafe.}
type QUndoViewsizeHintForColumnProc* = proc(self: QUndoView, column: cint): cint {.raises: [], gcsafe.}
type QUndoViewitemDelegateForIndexProc* = proc(self: QUndoView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemdelegate_types.QAbstractItemDelegate {.raises: [], gcsafe.}
type QUndoViewinputMethodQueryProc* = proc(self: QUndoView, query: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QUndoViewselectAllProc* = proc(self: QUndoView): void {.raises: [], gcsafe.}
type QUndoViewupdateEditorDataProc* = proc(self: QUndoView): void {.raises: [], gcsafe.}
type QUndoViewupdateEditorGeometriesProc* = proc(self: QUndoView): void {.raises: [], gcsafe.}
type QUndoViewverticalScrollbarActionProc* = proc(self: QUndoView, action: cint): void {.raises: [], gcsafe.}
type QUndoViewhorizontalScrollbarActionProc* = proc(self: QUndoView, action: cint): void {.raises: [], gcsafe.}
type QUndoViewverticalScrollbarValueChangedProc* = proc(self: QUndoView, value: cint): void {.raises: [], gcsafe.}
type QUndoViewhorizontalScrollbarValueChangedProc* = proc(self: QUndoView, value: cint): void {.raises: [], gcsafe.}
type QUndoViewcloseEditorProc* = proc(self: QUndoView, editor: gen_qwidget_types.QWidget, hint: cint): void {.raises: [], gcsafe.}
type QUndoViewcommitDataProc* = proc(self: QUndoView, editor: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QUndoVieweditorDestroyedProc* = proc(self: QUndoView, editor: gen_qobject_types.QObject): void {.raises: [], gcsafe.}
type QUndoViewedit2Proc* = proc(self: QUndoView, index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QUndoViewselectionCommandProc* = proc(self: QUndoView, index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint {.raises: [], gcsafe.}
type QUndoViewfocusNextPrevChildProc* = proc(self: QUndoView, next: bool): bool {.raises: [], gcsafe.}
type QUndoViewviewportEventProc* = proc(self: QUndoView, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QUndoViewmousePressEventProc* = proc(self: QUndoView, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QUndoViewmouseDoubleClickEventProc* = proc(self: QUndoView, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QUndoViewdragEnterEventProc* = proc(self: QUndoView, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QUndoViewfocusInEventProc* = proc(self: QUndoView, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QUndoViewfocusOutEventProc* = proc(self: QUndoView, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QUndoViewkeyPressEventProc* = proc(self: QUndoView, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QUndoViewinputMethodEventProc* = proc(self: QUndoView, event: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QUndoVieweventFilterProc* = proc(self: QUndoView, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QUndoViewminimumSizeHintProc* = proc(self: QUndoView): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QUndoViewsizeHintProc* = proc(self: QUndoView): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QUndoViewsetupViewportProc* = proc(self: QUndoView, viewport: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QUndoViewcontextMenuEventProc* = proc(self: QUndoView, param1: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QUndoViewchangeEventProc* = proc(self: QUndoView, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QUndoViewinitStyleOptionProc* = proc(self: QUndoView, option: gen_qstyleoption_types.QStyleOptionFrame): void {.raises: [], gcsafe.}
type QUndoViewdevTypeProc* = proc(self: QUndoView): cint {.raises: [], gcsafe.}
type QUndoViewsetVisibleProc* = proc(self: QUndoView, visible: bool): void {.raises: [], gcsafe.}
type QUndoViewheightForWidthProc* = proc(self: QUndoView, param1: cint): cint {.raises: [], gcsafe.}
type QUndoViewhasHeightForWidthProc* = proc(self: QUndoView): bool {.raises: [], gcsafe.}
type QUndoViewpaintEngineProc* = proc(self: QUndoView): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QUndoViewkeyReleaseEventProc* = proc(self: QUndoView, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QUndoViewenterEventProc* = proc(self: QUndoView, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QUndoViewleaveEventProc* = proc(self: QUndoView, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QUndoViewmoveEventProc* = proc(self: QUndoView, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QUndoViewcloseEventProc* = proc(self: QUndoView, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QUndoViewtabletEventProc* = proc(self: QUndoView, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QUndoViewactionEventProc* = proc(self: QUndoView, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QUndoViewshowEventProc* = proc(self: QUndoView, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QUndoViewhideEventProc* = proc(self: QUndoView, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QUndoViewnativeEventProc* = proc(self: QUndoView, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QUndoViewmetricProc* = proc(self: QUndoView, param1: cint): cint {.raises: [], gcsafe.}
type QUndoViewinitPainterProc* = proc(self: QUndoView, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QUndoViewredirectedProc* = proc(self: QUndoView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QUndoViewsharedPainterProc* = proc(self: QUndoView): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QUndoViewchildEventProc* = proc(self: QUndoView, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QUndoViewcustomEventProc* = proc(self: QUndoView, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QUndoViewconnectNotifyProc* = proc(self: QUndoView, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QUndoViewdisconnectNotifyProc* = proc(self: QUndoView, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QUndoViewVTable* {.inheritable, pure.} = object
  vtbl: cQUndoViewVTable
  metaObject*: QUndoViewmetaObjectProc
  metacast*: QUndoViewmetacastProc
  metacall*: QUndoViewmetacallProc
  visualRect*: QUndoViewvisualRectProc
  scrollTo*: QUndoViewscrollToProc
  indexAt*: QUndoViewindexAtProc
  doItemsLayout*: QUndoViewdoItemsLayoutProc
  reset*: QUndoViewresetProc
  setRootIndex*: QUndoViewsetRootIndexProc
  event*: QUndoVieweventProc
  scrollContentsBy*: QUndoViewscrollContentsByProc
  dataChanged*: QUndoViewdataChangedProc
  rowsInserted*: QUndoViewrowsInsertedProc
  rowsAboutToBeRemoved*: QUndoViewrowsAboutToBeRemovedProc
  mouseMoveEvent*: QUndoViewmouseMoveEventProc
  mouseReleaseEvent*: QUndoViewmouseReleaseEventProc
  wheelEvent*: QUndoViewwheelEventProc
  timerEvent*: QUndoViewtimerEventProc
  resizeEvent*: QUndoViewresizeEventProc
  dragMoveEvent*: QUndoViewdragMoveEventProc
  dragLeaveEvent*: QUndoViewdragLeaveEventProc
  dropEvent*: QUndoViewdropEventProc
  startDrag*: QUndoViewstartDragProc
  initViewItemOption*: QUndoViewinitViewItemOptionProc
  paintEvent*: QUndoViewpaintEventProc
  horizontalOffset*: QUndoViewhorizontalOffsetProc
  verticalOffset*: QUndoViewverticalOffsetProc
  moveCursor*: QUndoViewmoveCursorProc
  setSelection*: QUndoViewsetSelectionProc
  visualRegionForSelection*: QUndoViewvisualRegionForSelectionProc
  selectedIndexes*: QUndoViewselectedIndexesProc
  updateGeometries*: QUndoViewupdateGeometriesProc
  isIndexHidden*: QUndoViewisIndexHiddenProc
  selectionChanged*: QUndoViewselectionChangedProc
  currentChanged*: QUndoViewcurrentChangedProc
  viewportSizeHint*: QUndoViewviewportSizeHintProc
  setModel*: QUndoViewsetModelProc
  setSelectionModel*: QUndoViewsetSelectionModelProc
  keyboardSearch*: QUndoViewkeyboardSearchProc
  sizeHintForRow*: QUndoViewsizeHintForRowProc
  sizeHintForColumn*: QUndoViewsizeHintForColumnProc
  itemDelegateForIndex*: QUndoViewitemDelegateForIndexProc
  inputMethodQuery*: QUndoViewinputMethodQueryProc
  selectAll*: QUndoViewselectAllProc
  updateEditorData*: QUndoViewupdateEditorDataProc
  updateEditorGeometries*: QUndoViewupdateEditorGeometriesProc
  verticalScrollbarAction*: QUndoViewverticalScrollbarActionProc
  horizontalScrollbarAction*: QUndoViewhorizontalScrollbarActionProc
  verticalScrollbarValueChanged*: QUndoViewverticalScrollbarValueChangedProc
  horizontalScrollbarValueChanged*: QUndoViewhorizontalScrollbarValueChangedProc
  closeEditor*: QUndoViewcloseEditorProc
  commitData*: QUndoViewcommitDataProc
  editorDestroyed*: QUndoVieweditorDestroyedProc
  edit2*: QUndoViewedit2Proc
  selectionCommand*: QUndoViewselectionCommandProc
  focusNextPrevChild*: QUndoViewfocusNextPrevChildProc
  viewportEvent*: QUndoViewviewportEventProc
  mousePressEvent*: QUndoViewmousePressEventProc
  mouseDoubleClickEvent*: QUndoViewmouseDoubleClickEventProc
  dragEnterEvent*: QUndoViewdragEnterEventProc
  focusInEvent*: QUndoViewfocusInEventProc
  focusOutEvent*: QUndoViewfocusOutEventProc
  keyPressEvent*: QUndoViewkeyPressEventProc
  inputMethodEvent*: QUndoViewinputMethodEventProc
  eventFilter*: QUndoVieweventFilterProc
  minimumSizeHint*: QUndoViewminimumSizeHintProc
  sizeHint*: QUndoViewsizeHintProc
  setupViewport*: QUndoViewsetupViewportProc
  contextMenuEvent*: QUndoViewcontextMenuEventProc
  changeEvent*: QUndoViewchangeEventProc
  initStyleOption*: QUndoViewinitStyleOptionProc
  devType*: QUndoViewdevTypeProc
  setVisible*: QUndoViewsetVisibleProc
  heightForWidth*: QUndoViewheightForWidthProc
  hasHeightForWidth*: QUndoViewhasHeightForWidthProc
  paintEngine*: QUndoViewpaintEngineProc
  keyReleaseEvent*: QUndoViewkeyReleaseEventProc
  enterEvent*: QUndoViewenterEventProc
  leaveEvent*: QUndoViewleaveEventProc
  moveEvent*: QUndoViewmoveEventProc
  closeEvent*: QUndoViewcloseEventProc
  tabletEvent*: QUndoViewtabletEventProc
  actionEvent*: QUndoViewactionEventProc
  showEvent*: QUndoViewshowEventProc
  hideEvent*: QUndoViewhideEventProc
  nativeEvent*: QUndoViewnativeEventProc
  metric*: QUndoViewmetricProc
  initPainter*: QUndoViewinitPainterProc
  redirected*: QUndoViewredirectedProc
  sharedPainter*: QUndoViewsharedPainterProc
  childEvent*: QUndoViewchildEventProc
  customEvent*: QUndoViewcustomEventProc
  connectNotify*: QUndoViewconnectNotifyProc
  disconnectNotify*: QUndoViewdisconnectNotifyProc
proc QUndoViewmetaObject*(self: gen_qundoview_types.QUndoView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQUndoView_virtualbase_metaObject(self.h), owned: false)

proc cQUndoView_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QUndoViewmetacast*(self: gen_qundoview_types.QUndoView, param1: cstring): pointer =
  fcQUndoView_virtualbase_metacast(self.h, param1)

proc cQUndoView_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QUndoViewmetacall*(self: gen_qundoview_types.QUndoView, param1: cint, param2: cint, param3: pointer): cint =
  fcQUndoView_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQUndoView_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QUndoViewvisualRect*(self: gen_qundoview_types.QUndoView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQUndoView_virtualbase_visualRect(self.h, index.h), owned: true)

proc cQUndoView_vtable_callback_visualRect(self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].visualRect(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QUndoViewscrollTo*(self: gen_qundoview_types.QUndoView, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void =
  fcQUndoView_virtualbase_scrollTo(self.h, index.h, cint(hint))

proc cQUndoView_vtable_callback_scrollTo(self: pointer, index: pointer, hint: cint): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = cint(hint)
  vtbl[].scrollTo(self, slotval1, slotval2)

proc QUndoViewindexAt*(self: gen_qundoview_types.QUndoView, p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQUndoView_virtualbase_indexAt(self.h, p.h), owned: true)

proc cQUndoView_vtable_callback_indexAt(self: pointer, p: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: p, owned: false)
  var virtualReturn = vtbl[].indexAt(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QUndoViewdoItemsLayout*(self: gen_qundoview_types.QUndoView): void =
  fcQUndoView_virtualbase_doItemsLayout(self.h)

proc cQUndoView_vtable_callback_doItemsLayout(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  vtbl[].doItemsLayout(self)

proc QUndoViewreset*(self: gen_qundoview_types.QUndoView): void =
  fcQUndoView_virtualbase_reset(self.h)

proc cQUndoView_vtable_callback_reset(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  vtbl[].reset(self)

proc QUndoViewsetRootIndex*(self: gen_qundoview_types.QUndoView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQUndoView_virtualbase_setRootIndex(self.h, index.h)

proc cQUndoView_vtable_callback_setRootIndex(self: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  vtbl[].setRootIndex(self, slotval1)

proc QUndoViewevent*(self: gen_qundoview_types.QUndoView, e: gen_qcoreevent_types.QEvent): bool =
  fcQUndoView_virtualbase_event(self.h, e.h)

proc cQUndoView_vtable_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QUndoViewscrollContentsBy*(self: gen_qundoview_types.QUndoView, dx: cint, dy: cint): void =
  fcQUndoView_virtualbase_scrollContentsBy(self.h, dx, dy)

proc cQUndoView_vtable_callback_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = dx
  let slotval2 = dy
  vtbl[].scrollContentsBy(self, slotval1, slotval2)

proc QUndoViewdataChanged*(self: gen_qundoview_types.QUndoView, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: openArray[cint]): void =
  var roles_CArray = newSeq[cint](len(roles))
  for i in 0..<len(roles):
    roles_CArray[i] = roles[i]

  fcQUndoView_virtualbase_dataChanged(self.h, topLeft.h, bottomRight.h, struct_miqt_array(len: csize_t(len(roles)), data: if len(roles) == 0: nil else: addr(roles_CArray[0])))

proc cQUndoView_vtable_callback_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
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

proc QUndoViewrowsInserted*(self: gen_qundoview_types.QUndoView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fcQUndoView_virtualbase_rowsInserted(self.h, parent.h, start, endVal)

proc cQUndoView_vtable_callback_rowsInserted(self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  let slotval2 = start
  let slotval3 = endVal
  vtbl[].rowsInserted(self, slotval1, slotval2, slotval3)

proc QUndoViewrowsAboutToBeRemoved*(self: gen_qundoview_types.QUndoView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fcQUndoView_virtualbase_rowsAboutToBeRemoved(self.h, parent.h, start, endVal)

proc cQUndoView_vtable_callback_rowsAboutToBeRemoved(self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  let slotval2 = start
  let slotval3 = endVal
  vtbl[].rowsAboutToBeRemoved(self, slotval1, slotval2, slotval3)

proc QUndoViewmouseMoveEvent*(self: gen_qundoview_types.QUndoView, e: gen_qevent_types.QMouseEvent): void =
  fcQUndoView_virtualbase_mouseMoveEvent(self.h, e.h)

proc cQUndoView_vtable_callback_mouseMoveEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QUndoViewmouseReleaseEvent*(self: gen_qundoview_types.QUndoView, e: gen_qevent_types.QMouseEvent): void =
  fcQUndoView_virtualbase_mouseReleaseEvent(self.h, e.h)

proc cQUndoView_vtable_callback_mouseReleaseEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QUndoViewwheelEvent*(self: gen_qundoview_types.QUndoView, e: gen_qevent_types.QWheelEvent): void =
  fcQUndoView_virtualbase_wheelEvent(self.h, e.h)

proc cQUndoView_vtable_callback_wheelEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: e, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QUndoViewtimerEvent*(self: gen_qundoview_types.QUndoView, e: gen_qcoreevent_types.QTimerEvent): void =
  fcQUndoView_virtualbase_timerEvent(self.h, e.h)

proc cQUndoView_vtable_callback_timerEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: e, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QUndoViewresizeEvent*(self: gen_qundoview_types.QUndoView, e: gen_qevent_types.QResizeEvent): void =
  fcQUndoView_virtualbase_resizeEvent(self.h, e.h)

proc cQUndoView_vtable_callback_resizeEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: e, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QUndoViewdragMoveEvent*(self: gen_qundoview_types.QUndoView, e: gen_qevent_types.QDragMoveEvent): void =
  fcQUndoView_virtualbase_dragMoveEvent(self.h, e.h)

proc cQUndoView_vtable_callback_dragMoveEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: e, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QUndoViewdragLeaveEvent*(self: gen_qundoview_types.QUndoView, e: gen_qevent_types.QDragLeaveEvent): void =
  fcQUndoView_virtualbase_dragLeaveEvent(self.h, e.h)

proc cQUndoView_vtable_callback_dragLeaveEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: e, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QUndoViewdropEvent*(self: gen_qundoview_types.QUndoView, e: gen_qevent_types.QDropEvent): void =
  fcQUndoView_virtualbase_dropEvent(self.h, e.h)

proc cQUndoView_vtable_callback_dropEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: e, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QUndoViewstartDrag*(self: gen_qundoview_types.QUndoView, supportedActions: cint): void =
  fcQUndoView_virtualbase_startDrag(self.h, cint(supportedActions))

proc cQUndoView_vtable_callback_startDrag(self: pointer, supportedActions: cint): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = cint(supportedActions)
  vtbl[].startDrag(self, slotval1)

proc QUndoViewinitViewItemOption*(self: gen_qundoview_types.QUndoView, option: gen_qstyleoption_types.QStyleOptionViewItem): void =
  fcQUndoView_virtualbase_initViewItemOption(self.h, option.h)

proc cQUndoView_vtable_callback_initViewItemOption(self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  vtbl[].initViewItemOption(self, slotval1)

proc QUndoViewpaintEvent*(self: gen_qundoview_types.QUndoView, e: gen_qevent_types.QPaintEvent): void =
  fcQUndoView_virtualbase_paintEvent(self.h, e.h)

proc cQUndoView_vtable_callback_paintEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: e, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QUndoViewhorizontalOffset*(self: gen_qundoview_types.QUndoView): cint =
  fcQUndoView_virtualbase_horizontalOffset(self.h)

proc cQUndoView_vtable_callback_horizontalOffset(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  var virtualReturn = vtbl[].horizontalOffset(self)
  virtualReturn

proc QUndoViewverticalOffset*(self: gen_qundoview_types.QUndoView): cint =
  fcQUndoView_virtualbase_verticalOffset(self.h)

proc cQUndoView_vtable_callback_verticalOffset(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  var virtualReturn = vtbl[].verticalOffset(self)
  virtualReturn

proc QUndoViewmoveCursor*(self: gen_qundoview_types.QUndoView, cursorAction: cint, modifiers: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQUndoView_virtualbase_moveCursor(self.h, cint(cursorAction), cint(modifiers)), owned: true)

proc cQUndoView_vtable_callback_moveCursor(self: pointer, cursorAction: cint, modifiers: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = cint(cursorAction)
  let slotval2 = cint(modifiers)
  var virtualReturn = vtbl[].moveCursor(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QUndoViewsetSelection*(self: gen_qundoview_types.QUndoView, rect: gen_qrect_types.QRect, command: cint): void =
  fcQUndoView_virtualbase_setSelection(self.h, rect.h, cint(command))

proc cQUndoView_vtable_callback_setSelection(self: pointer, rect: pointer, command: cint): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qrect_types.QRect(h: rect, owned: false)
  let slotval2 = cint(command)
  vtbl[].setSelection(self, slotval1, slotval2)

proc QUndoViewvisualRegionForSelection*(self: gen_qundoview_types.QUndoView, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQUndoView_virtualbase_visualRegionForSelection(self.h, selection.h), owned: true)

proc cQUndoView_vtable_callback_visualRegionForSelection(self: pointer, selection: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection, owned: false)
  var virtualReturn = vtbl[].visualRegionForSelection(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QUndoViewselectedIndexes*(self: gen_qundoview_types.QUndoView): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQUndoView_virtualbase_selectedIndexes(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc cQUndoView_vtable_callback_selectedIndexes(self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  var virtualReturn = vtbl[].selectedIndexes(self)
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn[i].owned = false # TODO move?
    let virtualReturn_i_h = virtualReturn[i].h
    virtualReturn[i].h = nil
    virtualReturn_CArray[i] = virtualReturn_i_h

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QUndoViewupdateGeometries*(self: gen_qundoview_types.QUndoView): void =
  fcQUndoView_virtualbase_updateGeometries(self.h)

proc cQUndoView_vtable_callback_updateGeometries(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  vtbl[].updateGeometries(self)

proc QUndoViewisIndexHidden*(self: gen_qundoview_types.QUndoView, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQUndoView_virtualbase_isIndexHidden(self.h, index.h)

proc cQUndoView_vtable_callback_isIndexHidden(self: pointer, index: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].isIndexHidden(self, slotval1)
  virtualReturn

proc QUndoViewselectionChanged*(self: gen_qundoview_types.QUndoView, selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void =
  fcQUndoView_virtualbase_selectionChanged(self.h, selected.h, deselected.h)

proc cQUndoView_vtable_callback_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selected, owned: false)
  let slotval2 = gen_qitemselectionmodel_types.QItemSelection(h: deselected, owned: false)
  vtbl[].selectionChanged(self, slotval1, slotval2)

proc QUndoViewcurrentChanged*(self: gen_qundoview_types.QUndoView, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQUndoView_virtualbase_currentChanged(self.h, current.h, previous.h)

proc cQUndoView_vtable_callback_currentChanged(self: pointer, current: pointer, previous: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: current, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: previous, owned: false)
  vtbl[].currentChanged(self, slotval1, slotval2)

proc QUndoViewviewportSizeHint*(self: gen_qundoview_types.QUndoView): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQUndoView_virtualbase_viewportSizeHint(self.h), owned: true)

proc cQUndoView_vtable_callback_viewportSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  var virtualReturn = vtbl[].viewportSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QUndoViewsetModel*(self: gen_qundoview_types.QUndoView, model: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQUndoView_virtualbase_setModel(self.h, model.h)

proc cQUndoView_vtable_callback_setModel(self: pointer, model: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model, owned: false)
  vtbl[].setModel(self, slotval1)

proc QUndoViewsetSelectionModel*(self: gen_qundoview_types.QUndoView, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void =
  fcQUndoView_virtualbase_setSelectionModel(self.h, selectionModel.h)

proc cQUndoView_vtable_callback_setSelectionModel(self: pointer, selectionModel: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelectionModel(h: selectionModel, owned: false)
  vtbl[].setSelectionModel(self, slotval1)

proc QUndoViewkeyboardSearch*(self: gen_qundoview_types.QUndoView, search: openArray[char]): void =
  fcQUndoView_virtualbase_keyboardSearch(self.h, struct_miqt_string(data: if len(search) > 0: addr search[0] else: nil, len: csize_t(len(search))))

proc cQUndoView_vtable_callback_keyboardSearch(self: pointer, search: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let vsearch_ms = search
  let vsearchx_ret = string.fromBytes(vsearch_ms)
  c_free(vsearch_ms.data)
  let slotval1 = vsearchx_ret
  vtbl[].keyboardSearch(self, slotval1)

proc QUndoViewsizeHintForRow*(self: gen_qundoview_types.QUndoView, row: cint): cint =
  fcQUndoView_virtualbase_sizeHintForRow(self.h, row)

proc cQUndoView_vtable_callback_sizeHintForRow(self: pointer, row: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = row
  var virtualReturn = vtbl[].sizeHintForRow(self, slotval1)
  virtualReturn

proc QUndoViewsizeHintForColumn*(self: gen_qundoview_types.QUndoView, column: cint): cint =
  fcQUndoView_virtualbase_sizeHintForColumn(self.h, column)

proc cQUndoView_vtable_callback_sizeHintForColumn(self: pointer, column: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = column
  var virtualReturn = vtbl[].sizeHintForColumn(self, slotval1)
  virtualReturn

proc QUndoViewitemDelegateForIndex*(self: gen_qundoview_types.QUndoView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemdelegate_types.QAbstractItemDelegate =
  gen_qabstractitemdelegate_types.QAbstractItemDelegate(h: fcQUndoView_virtualbase_itemDelegateForIndex(self.h, index.h), owned: false)

proc cQUndoView_vtable_callback_itemDelegateForIndex(self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = vtbl[].itemDelegateForIndex(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QUndoViewinputMethodQuery*(self: gen_qundoview_types.QUndoView, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQUndoView_virtualbase_inputMethodQuery(self.h, cint(query)), owned: true)

proc cQUndoView_vtable_callback_inputMethodQuery(self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = cint(query)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QUndoViewselectAll*(self: gen_qundoview_types.QUndoView): void =
  fcQUndoView_virtualbase_selectAll(self.h)

proc cQUndoView_vtable_callback_selectAll(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  vtbl[].selectAll(self)

proc QUndoViewupdateEditorData*(self: gen_qundoview_types.QUndoView): void =
  fcQUndoView_virtualbase_updateEditorData(self.h)

proc cQUndoView_vtable_callback_updateEditorData(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  vtbl[].updateEditorData(self)

proc QUndoViewupdateEditorGeometries*(self: gen_qundoview_types.QUndoView): void =
  fcQUndoView_virtualbase_updateEditorGeometries(self.h)

proc cQUndoView_vtable_callback_updateEditorGeometries(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  vtbl[].updateEditorGeometries(self)

proc QUndoViewverticalScrollbarAction*(self: gen_qundoview_types.QUndoView, action: cint): void =
  fcQUndoView_virtualbase_verticalScrollbarAction(self.h, action)

proc cQUndoView_vtable_callback_verticalScrollbarAction(self: pointer, action: cint): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = action
  vtbl[].verticalScrollbarAction(self, slotval1)

proc QUndoViewhorizontalScrollbarAction*(self: gen_qundoview_types.QUndoView, action: cint): void =
  fcQUndoView_virtualbase_horizontalScrollbarAction(self.h, action)

proc cQUndoView_vtable_callback_horizontalScrollbarAction(self: pointer, action: cint): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = action
  vtbl[].horizontalScrollbarAction(self, slotval1)

proc QUndoViewverticalScrollbarValueChanged*(self: gen_qundoview_types.QUndoView, value: cint): void =
  fcQUndoView_virtualbase_verticalScrollbarValueChanged(self.h, value)

proc cQUndoView_vtable_callback_verticalScrollbarValueChanged(self: pointer, value: cint): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = value
  vtbl[].verticalScrollbarValueChanged(self, slotval1)

proc QUndoViewhorizontalScrollbarValueChanged*(self: gen_qundoview_types.QUndoView, value: cint): void =
  fcQUndoView_virtualbase_horizontalScrollbarValueChanged(self.h, value)

proc cQUndoView_vtable_callback_horizontalScrollbarValueChanged(self: pointer, value: cint): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = value
  vtbl[].horizontalScrollbarValueChanged(self, slotval1)

proc QUndoViewcloseEditor*(self: gen_qundoview_types.QUndoView, editor: gen_qwidget_types.QWidget, hint: cint): void =
  fcQUndoView_virtualbase_closeEditor(self.h, editor.h, cint(hint))

proc cQUndoView_vtable_callback_closeEditor(self: pointer, editor: pointer, hint: cint): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  let slotval2 = cint(hint)
  vtbl[].closeEditor(self, slotval1, slotval2)

proc QUndoViewcommitData*(self: gen_qundoview_types.QUndoView, editor: gen_qwidget_types.QWidget): void =
  fcQUndoView_virtualbase_commitData(self.h, editor.h)

proc cQUndoView_vtable_callback_commitData(self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  vtbl[].commitData(self, slotval1)

proc QUndoVieweditorDestroyed*(self: gen_qundoview_types.QUndoView, editor: gen_qobject_types.QObject): void =
  fcQUndoView_virtualbase_editorDestroyed(self.h, editor.h)

proc cQUndoView_vtable_callback_editorDestroyed(self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qobject_types.QObject(h: editor, owned: false)
  vtbl[].editorDestroyed(self, slotval1)

proc QUndoViewedit*(self: gen_qundoview_types.QUndoView, index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool =
  fcQUndoView_virtualbase_edit2(self.h, index.h, cint(trigger), event.h)

proc cQUndoView_vtable_callback_edit2(self: pointer, index: pointer, trigger: cint, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = cint(trigger)
  let slotval3 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].edit2(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QUndoViewselectionCommand*(self: gen_qundoview_types.QUndoView, index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint =
  cint(fcQUndoView_virtualbase_selectionCommand(self.h, index.h, event.h))

proc cQUndoView_vtable_callback_selectionCommand(self: pointer, index: pointer, event: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].selectionCommand(self, slotval1, slotval2)
  cint(virtualReturn)

proc QUndoViewfocusNextPrevChild*(self: gen_qundoview_types.QUndoView, next: bool): bool =
  fcQUndoView_virtualbase_focusNextPrevChild(self.h, next)

proc cQUndoView_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QUndoViewviewportEvent*(self: gen_qundoview_types.QUndoView, event: gen_qcoreevent_types.QEvent): bool =
  fcQUndoView_virtualbase_viewportEvent(self.h, event.h)

proc cQUndoView_vtable_callback_viewportEvent(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].viewportEvent(self, slotval1)
  virtualReturn

proc QUndoViewmousePressEvent*(self: gen_qundoview_types.QUndoView, event: gen_qevent_types.QMouseEvent): void =
  fcQUndoView_virtualbase_mousePressEvent(self.h, event.h)

proc cQUndoView_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QUndoViewmouseDoubleClickEvent*(self: gen_qundoview_types.QUndoView, event: gen_qevent_types.QMouseEvent): void =
  fcQUndoView_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc cQUndoView_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QUndoViewdragEnterEvent*(self: gen_qundoview_types.QUndoView, event: gen_qevent_types.QDragEnterEvent): void =
  fcQUndoView_virtualbase_dragEnterEvent(self.h, event.h)

proc cQUndoView_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QUndoViewfocusInEvent*(self: gen_qundoview_types.QUndoView, event: gen_qevent_types.QFocusEvent): void =
  fcQUndoView_virtualbase_focusInEvent(self.h, event.h)

proc cQUndoView_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QUndoViewfocusOutEvent*(self: gen_qundoview_types.QUndoView, event: gen_qevent_types.QFocusEvent): void =
  fcQUndoView_virtualbase_focusOutEvent(self.h, event.h)

proc cQUndoView_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QUndoViewkeyPressEvent*(self: gen_qundoview_types.QUndoView, event: gen_qevent_types.QKeyEvent): void =
  fcQUndoView_virtualbase_keyPressEvent(self.h, event.h)

proc cQUndoView_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QUndoViewinputMethodEvent*(self: gen_qundoview_types.QUndoView, event: gen_qevent_types.QInputMethodEvent): void =
  fcQUndoView_virtualbase_inputMethodEvent(self.h, event.h)

proc cQUndoView_vtable_callback_inputMethodEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QUndoVieweventFilter*(self: gen_qundoview_types.QUndoView, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQUndoView_virtualbase_eventFilter(self.h, objectVal.h, event.h)

proc cQUndoView_vtable_callback_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qobject_types.QObject(h: objectVal, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QUndoViewminimumSizeHint*(self: gen_qundoview_types.QUndoView): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQUndoView_virtualbase_minimumSizeHint(self.h), owned: true)

proc cQUndoView_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QUndoViewsizeHint*(self: gen_qundoview_types.QUndoView): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQUndoView_virtualbase_sizeHint(self.h), owned: true)

proc cQUndoView_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QUndoViewsetupViewport*(self: gen_qundoview_types.QUndoView, viewport: gen_qwidget_types.QWidget): void =
  fcQUndoView_virtualbase_setupViewport(self.h, viewport.h)

proc cQUndoView_vtable_callback_setupViewport(self: pointer, viewport: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: viewport, owned: false)
  vtbl[].setupViewport(self, slotval1)

proc QUndoViewcontextMenuEvent*(self: gen_qundoview_types.QUndoView, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQUndoView_virtualbase_contextMenuEvent(self.h, param1.h)

proc cQUndoView_vtable_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QUndoViewchangeEvent*(self: gen_qundoview_types.QUndoView, param1: gen_qcoreevent_types.QEvent): void =
  fcQUndoView_virtualbase_changeEvent(self.h, param1.h)

proc cQUndoView_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QUndoViewinitStyleOption*(self: gen_qundoview_types.QUndoView, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fcQUndoView_virtualbase_initStyleOption(self.h, option.h)

proc cQUndoView_vtable_callback_initStyleOption(self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionFrame(h: option, owned: false)
  vtbl[].initStyleOption(self, slotval1)

proc QUndoViewdevType*(self: gen_qundoview_types.QUndoView): cint =
  fcQUndoView_virtualbase_devType(self.h)

proc cQUndoView_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QUndoViewsetVisible*(self: gen_qundoview_types.QUndoView, visible: bool): void =
  fcQUndoView_virtualbase_setVisible(self.h, visible)

proc cQUndoView_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QUndoViewheightForWidth*(self: gen_qundoview_types.QUndoView, param1: cint): cint =
  fcQUndoView_virtualbase_heightForWidth(self.h, param1)

proc cQUndoView_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QUndoViewhasHeightForWidth*(self: gen_qundoview_types.QUndoView): bool =
  fcQUndoView_virtualbase_hasHeightForWidth(self.h)

proc cQUndoView_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QUndoViewpaintEngine*(self: gen_qundoview_types.QUndoView): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQUndoView_virtualbase_paintEngine(self.h), owned: false)

proc cQUndoView_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QUndoViewkeyReleaseEvent*(self: gen_qundoview_types.QUndoView, event: gen_qevent_types.QKeyEvent): void =
  fcQUndoView_virtualbase_keyReleaseEvent(self.h, event.h)

proc cQUndoView_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QUndoViewenterEvent*(self: gen_qundoview_types.QUndoView, event: gen_qevent_types.QEnterEvent): void =
  fcQUndoView_virtualbase_enterEvent(self.h, event.h)

proc cQUndoView_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QUndoViewleaveEvent*(self: gen_qundoview_types.QUndoView, event: gen_qcoreevent_types.QEvent): void =
  fcQUndoView_virtualbase_leaveEvent(self.h, event.h)

proc cQUndoView_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QUndoViewmoveEvent*(self: gen_qundoview_types.QUndoView, event: gen_qevent_types.QMoveEvent): void =
  fcQUndoView_virtualbase_moveEvent(self.h, event.h)

proc cQUndoView_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QUndoViewcloseEvent*(self: gen_qundoview_types.QUndoView, event: gen_qevent_types.QCloseEvent): void =
  fcQUndoView_virtualbase_closeEvent(self.h, event.h)

proc cQUndoView_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QUndoViewtabletEvent*(self: gen_qundoview_types.QUndoView, event: gen_qevent_types.QTabletEvent): void =
  fcQUndoView_virtualbase_tabletEvent(self.h, event.h)

proc cQUndoView_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QUndoViewactionEvent*(self: gen_qundoview_types.QUndoView, event: gen_qevent_types.QActionEvent): void =
  fcQUndoView_virtualbase_actionEvent(self.h, event.h)

proc cQUndoView_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QUndoViewshowEvent*(self: gen_qundoview_types.QUndoView, event: gen_qevent_types.QShowEvent): void =
  fcQUndoView_virtualbase_showEvent(self.h, event.h)

proc cQUndoView_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QUndoViewhideEvent*(self: gen_qundoview_types.QUndoView, event: gen_qevent_types.QHideEvent): void =
  fcQUndoView_virtualbase_hideEvent(self.h, event.h)

proc cQUndoView_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QUndoViewnativeEvent*(self: gen_qundoview_types.QUndoView, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool =
  fcQUndoView_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc cQUndoView_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QUndoViewmetric*(self: gen_qundoview_types.QUndoView, param1: cint): cint =
  fcQUndoView_virtualbase_metric(self.h, cint(param1))

proc cQUndoView_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QUndoViewinitPainter*(self: gen_qundoview_types.QUndoView, painter: gen_qpainter_types.QPainter): void =
  fcQUndoView_virtualbase_initPainter(self.h, painter.h)

proc cQUndoView_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QUndoViewredirected*(self: gen_qundoview_types.QUndoView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQUndoView_virtualbase_redirected(self.h, offset.h), owned: false)

proc cQUndoView_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QUndoViewsharedPainter*(self: gen_qundoview_types.QUndoView): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQUndoView_virtualbase_sharedPainter(self.h), owned: false)

proc cQUndoView_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QUndoViewchildEvent*(self: gen_qundoview_types.QUndoView, event: gen_qcoreevent_types.QChildEvent): void =
  fcQUndoView_virtualbase_childEvent(self.h, event.h)

proc cQUndoView_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QUndoViewcustomEvent*(self: gen_qundoview_types.QUndoView, event: gen_qcoreevent_types.QEvent): void =
  fcQUndoView_virtualbase_customEvent(self.h, event.h)

proc cQUndoView_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QUndoViewconnectNotify*(self: gen_qundoview_types.QUndoView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQUndoView_virtualbase_connectNotify(self.h, signal.h)

proc cQUndoView_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QUndoViewdisconnectNotify*(self: gen_qundoview_types.QUndoView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQUndoView_virtualbase_disconnectNotify(self.h, signal.h)

proc cQUndoView_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QUndoViewVTable](fcQUndoView_vdata(self))
  let self = QUndoView(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQUndoView* {.inheritable.} = ref object of QUndoView
  vtbl*: cQUndoViewVTable
method metaObject*(self: VirtualQUndoView): gen_qobjectdefs_types.QMetaObject {.base.} =
  QUndoViewmetaObject(self[])
proc cQUndoView_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQUndoView, param1: cstring): pointer {.base.} =
  QUndoViewmetacast(self[], param1)
proc cQUndoView_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQUndoView, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QUndoViewmetacall(self[], param1, param2, param3)
proc cQUndoView_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method visualRect*(self: VirtualQUndoView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect {.base.} =
  QUndoViewvisualRect(self[], index)
proc cQUndoView_method_callback_visualRect(self: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.visualRect(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method scrollTo*(self: VirtualQUndoView, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void {.base.} =
  QUndoViewscrollTo(self[], index, hint)
proc cQUndoView_method_callback_scrollTo(self: pointer, index: pointer, hint: cint): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = cint(hint)
  inst.scrollTo(slotval1, slotval2)

method indexAt*(self: VirtualQUndoView, p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QUndoViewindexAt(self[], p)
proc cQUndoView_method_callback_indexAt(self: pointer, p: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: p, owned: false)
  var virtualReturn = inst.indexAt(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method doItemsLayout*(self: VirtualQUndoView): void {.base.} =
  QUndoViewdoItemsLayout(self[])
proc cQUndoView_method_callback_doItemsLayout(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  inst.doItemsLayout()

method reset*(self: VirtualQUndoView): void {.base.} =
  QUndoViewreset(self[])
proc cQUndoView_method_callback_reset(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  inst.reset()

method setRootIndex*(self: VirtualQUndoView, index: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QUndoViewsetRootIndex(self[], index)
proc cQUndoView_method_callback_setRootIndex(self: pointer, index: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  inst.setRootIndex(slotval1)

method event*(self: VirtualQUndoView, e: gen_qcoreevent_types.QEvent): bool {.base.} =
  QUndoViewevent(self[], e)
proc cQUndoView_method_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method scrollContentsBy*(self: VirtualQUndoView, dx: cint, dy: cint): void {.base.} =
  QUndoViewscrollContentsBy(self[], dx, dy)
proc cQUndoView_method_callback_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = dx
  let slotval2 = dy
  inst.scrollContentsBy(slotval1, slotval2)

method dataChanged*(self: VirtualQUndoView, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: openArray[cint]): void {.base.} =
  QUndoViewdataChanged(self[], topLeft, bottomRight, roles)
proc cQUndoView_method_callback_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
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

method rowsInserted*(self: VirtualQUndoView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void {.base.} =
  QUndoViewrowsInserted(self[], parent, start, endVal)
proc cQUndoView_method_callback_rowsInserted(self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  let slotval2 = start
  let slotval3 = endVal
  inst.rowsInserted(slotval1, slotval2, slotval3)

method rowsAboutToBeRemoved*(self: VirtualQUndoView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void {.base.} =
  QUndoViewrowsAboutToBeRemoved(self[], parent, start, endVal)
proc cQUndoView_method_callback_rowsAboutToBeRemoved(self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent, owned: false)
  let slotval2 = start
  let slotval3 = endVal
  inst.rowsAboutToBeRemoved(slotval1, slotval2, slotval3)

method mouseMoveEvent*(self: VirtualQUndoView, e: gen_qevent_types.QMouseEvent): void {.base.} =
  QUndoViewmouseMoveEvent(self[], e)
proc cQUndoView_method_callback_mouseMoveEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  inst.mouseMoveEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQUndoView, e: gen_qevent_types.QMouseEvent): void {.base.} =
  QUndoViewmouseReleaseEvent(self[], e)
proc cQUndoView_method_callback_mouseReleaseEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  inst.mouseReleaseEvent(slotval1)

method wheelEvent*(self: VirtualQUndoView, e: gen_qevent_types.QWheelEvent): void {.base.} =
  QUndoViewwheelEvent(self[], e)
proc cQUndoView_method_callback_wheelEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: e, owned: false)
  inst.wheelEvent(slotval1)

method timerEvent*(self: VirtualQUndoView, e: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QUndoViewtimerEvent(self[], e)
proc cQUndoView_method_callback_timerEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: e, owned: false)
  inst.timerEvent(slotval1)

method resizeEvent*(self: VirtualQUndoView, e: gen_qevent_types.QResizeEvent): void {.base.} =
  QUndoViewresizeEvent(self[], e)
proc cQUndoView_method_callback_resizeEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: e, owned: false)
  inst.resizeEvent(slotval1)

method dragMoveEvent*(self: VirtualQUndoView, e: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QUndoViewdragMoveEvent(self[], e)
proc cQUndoView_method_callback_dragMoveEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: e, owned: false)
  inst.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQUndoView, e: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QUndoViewdragLeaveEvent(self[], e)
proc cQUndoView_method_callback_dragLeaveEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: e, owned: false)
  inst.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQUndoView, e: gen_qevent_types.QDropEvent): void {.base.} =
  QUndoViewdropEvent(self[], e)
proc cQUndoView_method_callback_dropEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: e, owned: false)
  inst.dropEvent(slotval1)

method startDrag*(self: VirtualQUndoView, supportedActions: cint): void {.base.} =
  QUndoViewstartDrag(self[], supportedActions)
proc cQUndoView_method_callback_startDrag(self: pointer, supportedActions: cint): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = cint(supportedActions)
  inst.startDrag(slotval1)

method initViewItemOption*(self: VirtualQUndoView, option: gen_qstyleoption_types.QStyleOptionViewItem): void {.base.} =
  QUndoViewinitViewItemOption(self[], option)
proc cQUndoView_method_callback_initViewItemOption(self: pointer, option: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qstyleoption_types.QStyleOptionViewItem(h: option, owned: false)
  inst.initViewItemOption(slotval1)

method paintEvent*(self: VirtualQUndoView, e: gen_qevent_types.QPaintEvent): void {.base.} =
  QUndoViewpaintEvent(self[], e)
proc cQUndoView_method_callback_paintEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: e, owned: false)
  inst.paintEvent(slotval1)

method horizontalOffset*(self: VirtualQUndoView): cint {.base.} =
  QUndoViewhorizontalOffset(self[])
proc cQUndoView_method_callback_horizontalOffset(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  var virtualReturn = inst.horizontalOffset()
  virtualReturn

method verticalOffset*(self: VirtualQUndoView): cint {.base.} =
  QUndoViewverticalOffset(self[])
proc cQUndoView_method_callback_verticalOffset(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  var virtualReturn = inst.verticalOffset()
  virtualReturn

method moveCursor*(self: VirtualQUndoView, cursorAction: cint, modifiers: cint): gen_qabstractitemmodel_types.QModelIndex {.base.} =
  QUndoViewmoveCursor(self[], cursorAction, modifiers)
proc cQUndoView_method_callback_moveCursor(self: pointer, cursorAction: cint, modifiers: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = cint(cursorAction)
  let slotval2 = cint(modifiers)
  var virtualReturn = inst.moveCursor(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method setSelection*(self: VirtualQUndoView, rect: gen_qrect_types.QRect, command: cint): void {.base.} =
  QUndoViewsetSelection(self[], rect, command)
proc cQUndoView_method_callback_setSelection(self: pointer, rect: pointer, command: cint): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qrect_types.QRect(h: rect, owned: false)
  let slotval2 = cint(command)
  inst.setSelection(slotval1, slotval2)

method visualRegionForSelection*(self: VirtualQUndoView, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion {.base.} =
  QUndoViewvisualRegionForSelection(self[], selection)
proc cQUndoView_method_callback_visualRegionForSelection(self: pointer, selection: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection, owned: false)
  var virtualReturn = inst.visualRegionForSelection(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method selectedIndexes*(self: VirtualQUndoView): seq[gen_qabstractitemmodel_types.QModelIndex] {.base.} =
  QUndoViewselectedIndexes(self[])
proc cQUndoView_method_callback_selectedIndexes(self: pointer): struct_miqt_array {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  var virtualReturn = inst.selectedIndexes()
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn[i].owned = false # TODO move?
    let virtualReturn_i_h = virtualReturn[i].h
    virtualReturn[i].h = nil
    virtualReturn_CArray[i] = virtualReturn_i_h

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

method updateGeometries*(self: VirtualQUndoView): void {.base.} =
  QUndoViewupdateGeometries(self[])
proc cQUndoView_method_callback_updateGeometries(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  inst.updateGeometries()

method isIndexHidden*(self: VirtualQUndoView, index: gen_qabstractitemmodel_types.QModelIndex): bool {.base.} =
  QUndoViewisIndexHidden(self[], index)
proc cQUndoView_method_callback_isIndexHidden(self: pointer, index: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.isIndexHidden(slotval1)
  virtualReturn

method selectionChanged*(self: VirtualQUndoView, selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void {.base.} =
  QUndoViewselectionChanged(self[], selected, deselected)
proc cQUndoView_method_callback_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selected, owned: false)
  let slotval2 = gen_qitemselectionmodel_types.QItemSelection(h: deselected, owned: false)
  inst.selectionChanged(slotval1, slotval2)

method currentChanged*(self: VirtualQUndoView, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void {.base.} =
  QUndoViewcurrentChanged(self[], current, previous)
proc cQUndoView_method_callback_currentChanged(self: pointer, current: pointer, previous: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: current, owned: false)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: previous, owned: false)
  inst.currentChanged(slotval1, slotval2)

method viewportSizeHint*(self: VirtualQUndoView): gen_qsize_types.QSize {.base.} =
  QUndoViewviewportSizeHint(self[])
proc cQUndoView_method_callback_viewportSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  var virtualReturn = inst.viewportSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method setModel*(self: VirtualQUndoView, model: gen_qabstractitemmodel_types.QAbstractItemModel): void {.base.} =
  QUndoViewsetModel(self[], model)
proc cQUndoView_method_callback_setModel(self: pointer, model: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model, owned: false)
  inst.setModel(slotval1)

method setSelectionModel*(self: VirtualQUndoView, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void {.base.} =
  QUndoViewsetSelectionModel(self[], selectionModel)
proc cQUndoView_method_callback_setSelectionModel(self: pointer, selectionModel: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelectionModel(h: selectionModel, owned: false)
  inst.setSelectionModel(slotval1)

method keyboardSearch*(self: VirtualQUndoView, search: openArray[char]): void {.base.} =
  QUndoViewkeyboardSearch(self[], search)
proc cQUndoView_method_callback_keyboardSearch(self: pointer, search: struct_miqt_string): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let vsearch_ms = search
  let vsearchx_ret = string.fromBytes(vsearch_ms)
  c_free(vsearch_ms.data)
  let slotval1 = vsearchx_ret
  inst.keyboardSearch(slotval1)

method sizeHintForRow*(self: VirtualQUndoView, row: cint): cint {.base.} =
  QUndoViewsizeHintForRow(self[], row)
proc cQUndoView_method_callback_sizeHintForRow(self: pointer, row: cint): cint {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = row
  var virtualReturn = inst.sizeHintForRow(slotval1)
  virtualReturn

method sizeHintForColumn*(self: VirtualQUndoView, column: cint): cint {.base.} =
  QUndoViewsizeHintForColumn(self[], column)
proc cQUndoView_method_callback_sizeHintForColumn(self: pointer, column: cint): cint {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = column
  var virtualReturn = inst.sizeHintForColumn(slotval1)
  virtualReturn

method itemDelegateForIndex*(self: VirtualQUndoView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemdelegate_types.QAbstractItemDelegate {.base.} =
  QUndoViewitemDelegateForIndex(self[], index)
proc cQUndoView_method_callback_itemDelegateForIndex(self: pointer, index: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  var virtualReturn = inst.itemDelegateForIndex(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodQuery*(self: VirtualQUndoView, query: cint): gen_qvariant_types.QVariant {.base.} =
  QUndoViewinputMethodQuery(self[], query)
proc cQUndoView_method_callback_inputMethodQuery(self: pointer, query: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = cint(query)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method selectAll*(self: VirtualQUndoView): void {.base.} =
  QUndoViewselectAll(self[])
proc cQUndoView_method_callback_selectAll(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  inst.selectAll()

method updateEditorData*(self: VirtualQUndoView): void {.base.} =
  QUndoViewupdateEditorData(self[])
proc cQUndoView_method_callback_updateEditorData(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  inst.updateEditorData()

method updateEditorGeometries*(self: VirtualQUndoView): void {.base.} =
  QUndoViewupdateEditorGeometries(self[])
proc cQUndoView_method_callback_updateEditorGeometries(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  inst.updateEditorGeometries()

method verticalScrollbarAction*(self: VirtualQUndoView, action: cint): void {.base.} =
  QUndoViewverticalScrollbarAction(self[], action)
proc cQUndoView_method_callback_verticalScrollbarAction(self: pointer, action: cint): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = action
  inst.verticalScrollbarAction(slotval1)

method horizontalScrollbarAction*(self: VirtualQUndoView, action: cint): void {.base.} =
  QUndoViewhorizontalScrollbarAction(self[], action)
proc cQUndoView_method_callback_horizontalScrollbarAction(self: pointer, action: cint): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = action
  inst.horizontalScrollbarAction(slotval1)

method verticalScrollbarValueChanged*(self: VirtualQUndoView, value: cint): void {.base.} =
  QUndoViewverticalScrollbarValueChanged(self[], value)
proc cQUndoView_method_callback_verticalScrollbarValueChanged(self: pointer, value: cint): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = value
  inst.verticalScrollbarValueChanged(slotval1)

method horizontalScrollbarValueChanged*(self: VirtualQUndoView, value: cint): void {.base.} =
  QUndoViewhorizontalScrollbarValueChanged(self[], value)
proc cQUndoView_method_callback_horizontalScrollbarValueChanged(self: pointer, value: cint): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = value
  inst.horizontalScrollbarValueChanged(slotval1)

method closeEditor*(self: VirtualQUndoView, editor: gen_qwidget_types.QWidget, hint: cint): void {.base.} =
  QUndoViewcloseEditor(self[], editor, hint)
proc cQUndoView_method_callback_closeEditor(self: pointer, editor: pointer, hint: cint): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  let slotval2 = cint(hint)
  inst.closeEditor(slotval1, slotval2)

method commitData*(self: VirtualQUndoView, editor: gen_qwidget_types.QWidget): void {.base.} =
  QUndoViewcommitData(self[], editor)
proc cQUndoView_method_callback_commitData(self: pointer, editor: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: editor, owned: false)
  inst.commitData(slotval1)

method editorDestroyed*(self: VirtualQUndoView, editor: gen_qobject_types.QObject): void {.base.} =
  QUndoVieweditorDestroyed(self[], editor)
proc cQUndoView_method_callback_editorDestroyed(self: pointer, editor: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: editor, owned: false)
  inst.editorDestroyed(slotval1)

method edit*(self: VirtualQUndoView, index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QUndoViewedit(self[], index, trigger, event)
proc cQUndoView_method_callback_edit2(self: pointer, index: pointer, trigger: cint, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = cint(trigger)
  let slotval3 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.edit(slotval1, slotval2, slotval3)
  virtualReturn

method selectionCommand*(self: VirtualQUndoView, index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint {.base.} =
  QUndoViewselectionCommand(self[], index, event)
proc cQUndoView_method_callback_selectionCommand(self: pointer, index: pointer, event: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.selectionCommand(slotval1, slotval2)
  cint(virtualReturn)

method focusNextPrevChild*(self: VirtualQUndoView, next: bool): bool {.base.} =
  QUndoViewfocusNextPrevChild(self[], next)
proc cQUndoView_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method viewportEvent*(self: VirtualQUndoView, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QUndoViewviewportEvent(self[], event)
proc cQUndoView_method_callback_viewportEvent(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.viewportEvent(slotval1)
  virtualReturn

method mousePressEvent*(self: VirtualQUndoView, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QUndoViewmousePressEvent(self[], event)
proc cQUndoView_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQUndoView, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QUndoViewmouseDoubleClickEvent(self[], event)
proc cQUndoView_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method dragEnterEvent*(self: VirtualQUndoView, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QUndoViewdragEnterEvent(self[], event)
proc cQUndoView_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

method focusInEvent*(self: VirtualQUndoView, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QUndoViewfocusInEvent(self[], event)
proc cQUndoView_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQUndoView, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QUndoViewfocusOutEvent(self[], event)
proc cQUndoView_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

method keyPressEvent*(self: VirtualQUndoView, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QUndoViewkeyPressEvent(self[], event)
proc cQUndoView_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyPressEvent(slotval1)

method inputMethodEvent*(self: VirtualQUndoView, event: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QUndoViewinputMethodEvent(self[], event)
proc cQUndoView_method_callback_inputMethodEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event, owned: false)
  inst.inputMethodEvent(slotval1)

method eventFilter*(self: VirtualQUndoView, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QUndoVieweventFilter(self[], objectVal, event)
proc cQUndoView_method_callback_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: objectVal, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method minimumSizeHint*(self: VirtualQUndoView): gen_qsize_types.QSize {.base.} =
  QUndoViewminimumSizeHint(self[])
proc cQUndoView_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sizeHint*(self: VirtualQUndoView): gen_qsize_types.QSize {.base.} =
  QUndoViewsizeHint(self[])
proc cQUndoView_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method setupViewport*(self: VirtualQUndoView, viewport: gen_qwidget_types.QWidget): void {.base.} =
  QUndoViewsetupViewport(self[], viewport)
proc cQUndoView_method_callback_setupViewport(self: pointer, viewport: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: viewport, owned: false)
  inst.setupViewport(slotval1)

method contextMenuEvent*(self: VirtualQUndoView, param1: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QUndoViewcontextMenuEvent(self[], param1)
proc cQUndoView_method_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  inst.contextMenuEvent(slotval1)

method changeEvent*(self: VirtualQUndoView, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QUndoViewchangeEvent(self[], param1)
proc cQUndoView_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.changeEvent(slotval1)

method initStyleOption*(self: VirtualQUndoView, option: gen_qstyleoption_types.QStyleOptionFrame): void {.base.} =
  QUndoViewinitStyleOption(self[], option)
proc cQUndoView_method_callback_initStyleOption(self: pointer, option: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qstyleoption_types.QStyleOptionFrame(h: option, owned: false)
  inst.initStyleOption(slotval1)

method devType*(self: VirtualQUndoView): cint {.base.} =
  QUndoViewdevType(self[])
proc cQUndoView_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

method setVisible*(self: VirtualQUndoView, visible: bool): void {.base.} =
  QUndoViewsetVisible(self[], visible)
proc cQUndoView_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

method heightForWidth*(self: VirtualQUndoView, param1: cint): cint {.base.} =
  QUndoViewheightForWidth(self[], param1)
proc cQUndoView_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQUndoView): bool {.base.} =
  QUndoViewhasHeightForWidth(self[])
proc cQUndoView_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQUndoView): gen_qpaintengine_types.QPaintEngine {.base.} =
  QUndoViewpaintEngine(self[])
proc cQUndoView_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method keyReleaseEvent*(self: VirtualQUndoView, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QUndoViewkeyReleaseEvent(self[], event)
proc cQUndoView_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

method enterEvent*(self: VirtualQUndoView, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QUndoViewenterEvent(self[], event)
proc cQUndoView_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

method leaveEvent*(self: VirtualQUndoView, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QUndoViewleaveEvent(self[], event)
proc cQUndoView_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

method moveEvent*(self: VirtualQUndoView, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QUndoViewmoveEvent(self[], event)
proc cQUndoView_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

method closeEvent*(self: VirtualQUndoView, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QUndoViewcloseEvent(self[], event)
proc cQUndoView_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

method tabletEvent*(self: VirtualQUndoView, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QUndoViewtabletEvent(self[], event)
proc cQUndoView_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

method actionEvent*(self: VirtualQUndoView, event: gen_qevent_types.QActionEvent): void {.base.} =
  QUndoViewactionEvent(self[], event)
proc cQUndoView_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

method showEvent*(self: VirtualQUndoView, event: gen_qevent_types.QShowEvent): void {.base.} =
  QUndoViewshowEvent(self[], event)
proc cQUndoView_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

method hideEvent*(self: VirtualQUndoView, event: gen_qevent_types.QHideEvent): void {.base.} =
  QUndoViewhideEvent(self[], event)
proc cQUndoView_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

method nativeEvent*(self: VirtualQUndoView, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QUndoViewnativeEvent(self[], eventType, message, resultVal)
proc cQUndoView_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method metric*(self: VirtualQUndoView, param1: cint): cint {.base.} =
  QUndoViewmetric(self[], param1)
proc cQUndoView_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQUndoView, painter: gen_qpainter_types.QPainter): void {.base.} =
  QUndoViewinitPainter(self[], painter)
proc cQUndoView_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

method redirected*(self: VirtualQUndoView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QUndoViewredirected(self[], offset)
proc cQUndoView_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQUndoView): gen_qpainter_types.QPainter {.base.} =
  QUndoViewsharedPainter(self[])
proc cQUndoView_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method childEvent*(self: VirtualQUndoView, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QUndoViewchildEvent(self[], event)
proc cQUndoView_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQUndoView, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QUndoViewcustomEvent(self[], event)
proc cQUndoView_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQUndoView, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QUndoViewconnectNotify(self[], signal)
proc cQUndoView_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQUndoView, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QUndoViewdisconnectNotify(self[], signal)
proc cQUndoView_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQUndoView](fcQUndoView_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc resizeContents*(self: gen_qundoview_types.QUndoView, width: cint, height: cint): void =
  fcQUndoView_protectedbase_resizeContents(self.h, width, height)

proc contentsSize*(self: gen_qundoview_types.QUndoView): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQUndoView_protectedbase_contentsSize(self.h), owned: true)

proc rectForIndex*(self: gen_qundoview_types.QUndoView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQUndoView_protectedbase_rectForIndex(self.h, index.h), owned: true)

proc setPositionForIndex*(self: gen_qundoview_types.QUndoView, position: gen_qpoint_types.QPoint, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQUndoView_protectedbase_setPositionForIndex(self.h, position.h, index.h)

proc state*(self: gen_qundoview_types.QUndoView): cint =
  cint(fcQUndoView_protectedbase_state(self.h))

proc setState*(self: gen_qundoview_types.QUndoView, state: cint): void =
  fcQUndoView_protectedbase_setState(self.h, cint(state))

proc scheduleDelayedItemsLayout*(self: gen_qundoview_types.QUndoView): void =
  fcQUndoView_protectedbase_scheduleDelayedItemsLayout(self.h)

proc executeDelayedItemsLayout*(self: gen_qundoview_types.QUndoView): void =
  fcQUndoView_protectedbase_executeDelayedItemsLayout(self.h)

proc setDirtyRegion*(self: gen_qundoview_types.QUndoView, region: gen_qregion_types.QRegion): void =
  fcQUndoView_protectedbase_setDirtyRegion(self.h, region.h)

proc scrollDirtyRegion*(self: gen_qundoview_types.QUndoView, dx: cint, dy: cint): void =
  fcQUndoView_protectedbase_scrollDirtyRegion(self.h, dx, dy)

proc dirtyRegionOffset*(self: gen_qundoview_types.QUndoView): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQUndoView_protectedbase_dirtyRegionOffset(self.h), owned: true)

proc startAutoScroll*(self: gen_qundoview_types.QUndoView): void =
  fcQUndoView_protectedbase_startAutoScroll(self.h)

proc stopAutoScroll*(self: gen_qundoview_types.QUndoView): void =
  fcQUndoView_protectedbase_stopAutoScroll(self.h)

proc doAutoScroll*(self: gen_qundoview_types.QUndoView): void =
  fcQUndoView_protectedbase_doAutoScroll(self.h)

proc dropIndicatorPosition*(self: gen_qundoview_types.QUndoView): cint =
  cint(fcQUndoView_protectedbase_dropIndicatorPosition(self.h))

proc setViewportMargins*(self: gen_qundoview_types.QUndoView, left: cint, top: cint, right: cint, bottom: cint): void =
  fcQUndoView_protectedbase_setViewportMargins(self.h, left, top, right, bottom)

proc viewportMargins*(self: gen_qundoview_types.QUndoView): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQUndoView_protectedbase_viewportMargins(self.h), owned: true)

proc drawFrame*(self: gen_qundoview_types.QUndoView, param1: gen_qpainter_types.QPainter): void =
  fcQUndoView_protectedbase_drawFrame(self.h, param1.h)

proc updateMicroFocus*(self: gen_qundoview_types.QUndoView): void =
  fcQUndoView_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qundoview_types.QUndoView): void =
  fcQUndoView_protectedbase_create(self.h)

proc destroy*(self: gen_qundoview_types.QUndoView): void =
  fcQUndoView_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qundoview_types.QUndoView): bool =
  fcQUndoView_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qundoview_types.QUndoView): bool =
  fcQUndoView_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qundoview_types.QUndoView): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQUndoView_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qundoview_types.QUndoView): cint =
  fcQUndoView_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qundoview_types.QUndoView, signal: cstring): cint =
  fcQUndoView_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qundoview_types.QUndoView, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQUndoView_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qundoview_types.QUndoView,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QUndoViewVTable = nil): gen_qundoview_types.QUndoView =
  let vtbl = if vtbl == nil: new QUndoViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QUndoViewVTable](fcQUndoView_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQUndoView_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQUndoView_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQUndoView_vtable_callback_metacall
  if not isNil(vtbl[].visualRect):
    vtbl[].vtbl.visualRect = cQUndoView_vtable_callback_visualRect
  if not isNil(vtbl[].scrollTo):
    vtbl[].vtbl.scrollTo = cQUndoView_vtable_callback_scrollTo
  if not isNil(vtbl[].indexAt):
    vtbl[].vtbl.indexAt = cQUndoView_vtable_callback_indexAt
  if not isNil(vtbl[].doItemsLayout):
    vtbl[].vtbl.doItemsLayout = cQUndoView_vtable_callback_doItemsLayout
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = cQUndoView_vtable_callback_reset
  if not isNil(vtbl[].setRootIndex):
    vtbl[].vtbl.setRootIndex = cQUndoView_vtable_callback_setRootIndex
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQUndoView_vtable_callback_event
  if not isNil(vtbl[].scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = cQUndoView_vtable_callback_scrollContentsBy
  if not isNil(vtbl[].dataChanged):
    vtbl[].vtbl.dataChanged = cQUndoView_vtable_callback_dataChanged
  if not isNil(vtbl[].rowsInserted):
    vtbl[].vtbl.rowsInserted = cQUndoView_vtable_callback_rowsInserted
  if not isNil(vtbl[].rowsAboutToBeRemoved):
    vtbl[].vtbl.rowsAboutToBeRemoved = cQUndoView_vtable_callback_rowsAboutToBeRemoved
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQUndoView_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQUndoView_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQUndoView_vtable_callback_wheelEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQUndoView_vtable_callback_timerEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQUndoView_vtable_callback_resizeEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQUndoView_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQUndoView_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQUndoView_vtable_callback_dropEvent
  if not isNil(vtbl[].startDrag):
    vtbl[].vtbl.startDrag = cQUndoView_vtable_callback_startDrag
  if not isNil(vtbl[].initViewItemOption):
    vtbl[].vtbl.initViewItemOption = cQUndoView_vtable_callback_initViewItemOption
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQUndoView_vtable_callback_paintEvent
  if not isNil(vtbl[].horizontalOffset):
    vtbl[].vtbl.horizontalOffset = cQUndoView_vtable_callback_horizontalOffset
  if not isNil(vtbl[].verticalOffset):
    vtbl[].vtbl.verticalOffset = cQUndoView_vtable_callback_verticalOffset
  if not isNil(vtbl[].moveCursor):
    vtbl[].vtbl.moveCursor = cQUndoView_vtable_callback_moveCursor
  if not isNil(vtbl[].setSelection):
    vtbl[].vtbl.setSelection = cQUndoView_vtable_callback_setSelection
  if not isNil(vtbl[].visualRegionForSelection):
    vtbl[].vtbl.visualRegionForSelection = cQUndoView_vtable_callback_visualRegionForSelection
  if not isNil(vtbl[].selectedIndexes):
    vtbl[].vtbl.selectedIndexes = cQUndoView_vtable_callback_selectedIndexes
  if not isNil(vtbl[].updateGeometries):
    vtbl[].vtbl.updateGeometries = cQUndoView_vtable_callback_updateGeometries
  if not isNil(vtbl[].isIndexHidden):
    vtbl[].vtbl.isIndexHidden = cQUndoView_vtable_callback_isIndexHidden
  if not isNil(vtbl[].selectionChanged):
    vtbl[].vtbl.selectionChanged = cQUndoView_vtable_callback_selectionChanged
  if not isNil(vtbl[].currentChanged):
    vtbl[].vtbl.currentChanged = cQUndoView_vtable_callback_currentChanged
  if not isNil(vtbl[].viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = cQUndoView_vtable_callback_viewportSizeHint
  if not isNil(vtbl[].setModel):
    vtbl[].vtbl.setModel = cQUndoView_vtable_callback_setModel
  if not isNil(vtbl[].setSelectionModel):
    vtbl[].vtbl.setSelectionModel = cQUndoView_vtable_callback_setSelectionModel
  if not isNil(vtbl[].keyboardSearch):
    vtbl[].vtbl.keyboardSearch = cQUndoView_vtable_callback_keyboardSearch
  if not isNil(vtbl[].sizeHintForRow):
    vtbl[].vtbl.sizeHintForRow = cQUndoView_vtable_callback_sizeHintForRow
  if not isNil(vtbl[].sizeHintForColumn):
    vtbl[].vtbl.sizeHintForColumn = cQUndoView_vtable_callback_sizeHintForColumn
  if not isNil(vtbl[].itemDelegateForIndex):
    vtbl[].vtbl.itemDelegateForIndex = cQUndoView_vtable_callback_itemDelegateForIndex
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQUndoView_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].selectAll):
    vtbl[].vtbl.selectAll = cQUndoView_vtable_callback_selectAll
  if not isNil(vtbl[].updateEditorData):
    vtbl[].vtbl.updateEditorData = cQUndoView_vtable_callback_updateEditorData
  if not isNil(vtbl[].updateEditorGeometries):
    vtbl[].vtbl.updateEditorGeometries = cQUndoView_vtable_callback_updateEditorGeometries
  if not isNil(vtbl[].verticalScrollbarAction):
    vtbl[].vtbl.verticalScrollbarAction = cQUndoView_vtable_callback_verticalScrollbarAction
  if not isNil(vtbl[].horizontalScrollbarAction):
    vtbl[].vtbl.horizontalScrollbarAction = cQUndoView_vtable_callback_horizontalScrollbarAction
  if not isNil(vtbl[].verticalScrollbarValueChanged):
    vtbl[].vtbl.verticalScrollbarValueChanged = cQUndoView_vtable_callback_verticalScrollbarValueChanged
  if not isNil(vtbl[].horizontalScrollbarValueChanged):
    vtbl[].vtbl.horizontalScrollbarValueChanged = cQUndoView_vtable_callback_horizontalScrollbarValueChanged
  if not isNil(vtbl[].closeEditor):
    vtbl[].vtbl.closeEditor = cQUndoView_vtable_callback_closeEditor
  if not isNil(vtbl[].commitData):
    vtbl[].vtbl.commitData = cQUndoView_vtable_callback_commitData
  if not isNil(vtbl[].editorDestroyed):
    vtbl[].vtbl.editorDestroyed = cQUndoView_vtable_callback_editorDestroyed
  if not isNil(vtbl[].edit2):
    vtbl[].vtbl.edit2 = cQUndoView_vtable_callback_edit2
  if not isNil(vtbl[].selectionCommand):
    vtbl[].vtbl.selectionCommand = cQUndoView_vtable_callback_selectionCommand
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQUndoView_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].viewportEvent):
    vtbl[].vtbl.viewportEvent = cQUndoView_vtable_callback_viewportEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQUndoView_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQUndoView_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQUndoView_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQUndoView_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQUndoView_vtable_callback_focusOutEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQUndoView_vtable_callback_keyPressEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQUndoView_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQUndoView_vtable_callback_eventFilter
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQUndoView_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQUndoView_vtable_callback_sizeHint
  if not isNil(vtbl[].setupViewport):
    vtbl[].vtbl.setupViewport = cQUndoView_vtable_callback_setupViewport
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQUndoView_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQUndoView_vtable_callback_changeEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQUndoView_vtable_callback_initStyleOption
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQUndoView_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQUndoView_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQUndoView_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQUndoView_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQUndoView_vtable_callback_paintEngine
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQUndoView_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQUndoView_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQUndoView_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQUndoView_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQUndoView_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQUndoView_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQUndoView_vtable_callback_actionEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQUndoView_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQUndoView_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQUndoView_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQUndoView_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQUndoView_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQUndoView_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQUndoView_vtable_callback_sharedPainter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQUndoView_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQUndoView_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQUndoView_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQUndoView_vtable_callback_disconnectNotify
  gen_qundoview_types.QUndoView(h: fcQUndoView_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qundoview_types.QUndoView,
    vtbl: ref QUndoViewVTable = nil): gen_qundoview_types.QUndoView =
  let vtbl = if vtbl == nil: new QUndoViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QUndoViewVTable](fcQUndoView_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQUndoView_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQUndoView_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQUndoView_vtable_callback_metacall
  if not isNil(vtbl[].visualRect):
    vtbl[].vtbl.visualRect = cQUndoView_vtable_callback_visualRect
  if not isNil(vtbl[].scrollTo):
    vtbl[].vtbl.scrollTo = cQUndoView_vtable_callback_scrollTo
  if not isNil(vtbl[].indexAt):
    vtbl[].vtbl.indexAt = cQUndoView_vtable_callback_indexAt
  if not isNil(vtbl[].doItemsLayout):
    vtbl[].vtbl.doItemsLayout = cQUndoView_vtable_callback_doItemsLayout
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = cQUndoView_vtable_callback_reset
  if not isNil(vtbl[].setRootIndex):
    vtbl[].vtbl.setRootIndex = cQUndoView_vtable_callback_setRootIndex
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQUndoView_vtable_callback_event
  if not isNil(vtbl[].scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = cQUndoView_vtable_callback_scrollContentsBy
  if not isNil(vtbl[].dataChanged):
    vtbl[].vtbl.dataChanged = cQUndoView_vtable_callback_dataChanged
  if not isNil(vtbl[].rowsInserted):
    vtbl[].vtbl.rowsInserted = cQUndoView_vtable_callback_rowsInserted
  if not isNil(vtbl[].rowsAboutToBeRemoved):
    vtbl[].vtbl.rowsAboutToBeRemoved = cQUndoView_vtable_callback_rowsAboutToBeRemoved
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQUndoView_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQUndoView_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQUndoView_vtable_callback_wheelEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQUndoView_vtable_callback_timerEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQUndoView_vtable_callback_resizeEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQUndoView_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQUndoView_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQUndoView_vtable_callback_dropEvent
  if not isNil(vtbl[].startDrag):
    vtbl[].vtbl.startDrag = cQUndoView_vtable_callback_startDrag
  if not isNil(vtbl[].initViewItemOption):
    vtbl[].vtbl.initViewItemOption = cQUndoView_vtable_callback_initViewItemOption
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQUndoView_vtable_callback_paintEvent
  if not isNil(vtbl[].horizontalOffset):
    vtbl[].vtbl.horizontalOffset = cQUndoView_vtable_callback_horizontalOffset
  if not isNil(vtbl[].verticalOffset):
    vtbl[].vtbl.verticalOffset = cQUndoView_vtable_callback_verticalOffset
  if not isNil(vtbl[].moveCursor):
    vtbl[].vtbl.moveCursor = cQUndoView_vtable_callback_moveCursor
  if not isNil(vtbl[].setSelection):
    vtbl[].vtbl.setSelection = cQUndoView_vtable_callback_setSelection
  if not isNil(vtbl[].visualRegionForSelection):
    vtbl[].vtbl.visualRegionForSelection = cQUndoView_vtable_callback_visualRegionForSelection
  if not isNil(vtbl[].selectedIndexes):
    vtbl[].vtbl.selectedIndexes = cQUndoView_vtable_callback_selectedIndexes
  if not isNil(vtbl[].updateGeometries):
    vtbl[].vtbl.updateGeometries = cQUndoView_vtable_callback_updateGeometries
  if not isNil(vtbl[].isIndexHidden):
    vtbl[].vtbl.isIndexHidden = cQUndoView_vtable_callback_isIndexHidden
  if not isNil(vtbl[].selectionChanged):
    vtbl[].vtbl.selectionChanged = cQUndoView_vtable_callback_selectionChanged
  if not isNil(vtbl[].currentChanged):
    vtbl[].vtbl.currentChanged = cQUndoView_vtable_callback_currentChanged
  if not isNil(vtbl[].viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = cQUndoView_vtable_callback_viewportSizeHint
  if not isNil(vtbl[].setModel):
    vtbl[].vtbl.setModel = cQUndoView_vtable_callback_setModel
  if not isNil(vtbl[].setSelectionModel):
    vtbl[].vtbl.setSelectionModel = cQUndoView_vtable_callback_setSelectionModel
  if not isNil(vtbl[].keyboardSearch):
    vtbl[].vtbl.keyboardSearch = cQUndoView_vtable_callback_keyboardSearch
  if not isNil(vtbl[].sizeHintForRow):
    vtbl[].vtbl.sizeHintForRow = cQUndoView_vtable_callback_sizeHintForRow
  if not isNil(vtbl[].sizeHintForColumn):
    vtbl[].vtbl.sizeHintForColumn = cQUndoView_vtable_callback_sizeHintForColumn
  if not isNil(vtbl[].itemDelegateForIndex):
    vtbl[].vtbl.itemDelegateForIndex = cQUndoView_vtable_callback_itemDelegateForIndex
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQUndoView_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].selectAll):
    vtbl[].vtbl.selectAll = cQUndoView_vtable_callback_selectAll
  if not isNil(vtbl[].updateEditorData):
    vtbl[].vtbl.updateEditorData = cQUndoView_vtable_callback_updateEditorData
  if not isNil(vtbl[].updateEditorGeometries):
    vtbl[].vtbl.updateEditorGeometries = cQUndoView_vtable_callback_updateEditorGeometries
  if not isNil(vtbl[].verticalScrollbarAction):
    vtbl[].vtbl.verticalScrollbarAction = cQUndoView_vtable_callback_verticalScrollbarAction
  if not isNil(vtbl[].horizontalScrollbarAction):
    vtbl[].vtbl.horizontalScrollbarAction = cQUndoView_vtable_callback_horizontalScrollbarAction
  if not isNil(vtbl[].verticalScrollbarValueChanged):
    vtbl[].vtbl.verticalScrollbarValueChanged = cQUndoView_vtable_callback_verticalScrollbarValueChanged
  if not isNil(vtbl[].horizontalScrollbarValueChanged):
    vtbl[].vtbl.horizontalScrollbarValueChanged = cQUndoView_vtable_callback_horizontalScrollbarValueChanged
  if not isNil(vtbl[].closeEditor):
    vtbl[].vtbl.closeEditor = cQUndoView_vtable_callback_closeEditor
  if not isNil(vtbl[].commitData):
    vtbl[].vtbl.commitData = cQUndoView_vtable_callback_commitData
  if not isNil(vtbl[].editorDestroyed):
    vtbl[].vtbl.editorDestroyed = cQUndoView_vtable_callback_editorDestroyed
  if not isNil(vtbl[].edit2):
    vtbl[].vtbl.edit2 = cQUndoView_vtable_callback_edit2
  if not isNil(vtbl[].selectionCommand):
    vtbl[].vtbl.selectionCommand = cQUndoView_vtable_callback_selectionCommand
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQUndoView_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].viewportEvent):
    vtbl[].vtbl.viewportEvent = cQUndoView_vtable_callback_viewportEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQUndoView_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQUndoView_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQUndoView_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQUndoView_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQUndoView_vtable_callback_focusOutEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQUndoView_vtable_callback_keyPressEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQUndoView_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQUndoView_vtable_callback_eventFilter
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQUndoView_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQUndoView_vtable_callback_sizeHint
  if not isNil(vtbl[].setupViewport):
    vtbl[].vtbl.setupViewport = cQUndoView_vtable_callback_setupViewport
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQUndoView_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQUndoView_vtable_callback_changeEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQUndoView_vtable_callback_initStyleOption
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQUndoView_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQUndoView_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQUndoView_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQUndoView_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQUndoView_vtable_callback_paintEngine
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQUndoView_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQUndoView_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQUndoView_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQUndoView_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQUndoView_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQUndoView_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQUndoView_vtable_callback_actionEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQUndoView_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQUndoView_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQUndoView_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQUndoView_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQUndoView_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQUndoView_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQUndoView_vtable_callback_sharedPainter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQUndoView_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQUndoView_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQUndoView_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQUndoView_vtable_callback_disconnectNotify
  gen_qundoview_types.QUndoView(h: fcQUndoView_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qundoview_types.QUndoView,
    stack: gen_qundostack_types.QUndoStack,
    vtbl: ref QUndoViewVTable = nil): gen_qundoview_types.QUndoView =
  let vtbl = if vtbl == nil: new QUndoViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QUndoViewVTable](fcQUndoView_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQUndoView_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQUndoView_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQUndoView_vtable_callback_metacall
  if not isNil(vtbl[].visualRect):
    vtbl[].vtbl.visualRect = cQUndoView_vtable_callback_visualRect
  if not isNil(vtbl[].scrollTo):
    vtbl[].vtbl.scrollTo = cQUndoView_vtable_callback_scrollTo
  if not isNil(vtbl[].indexAt):
    vtbl[].vtbl.indexAt = cQUndoView_vtable_callback_indexAt
  if not isNil(vtbl[].doItemsLayout):
    vtbl[].vtbl.doItemsLayout = cQUndoView_vtable_callback_doItemsLayout
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = cQUndoView_vtable_callback_reset
  if not isNil(vtbl[].setRootIndex):
    vtbl[].vtbl.setRootIndex = cQUndoView_vtable_callback_setRootIndex
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQUndoView_vtable_callback_event
  if not isNil(vtbl[].scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = cQUndoView_vtable_callback_scrollContentsBy
  if not isNil(vtbl[].dataChanged):
    vtbl[].vtbl.dataChanged = cQUndoView_vtable_callback_dataChanged
  if not isNil(vtbl[].rowsInserted):
    vtbl[].vtbl.rowsInserted = cQUndoView_vtable_callback_rowsInserted
  if not isNil(vtbl[].rowsAboutToBeRemoved):
    vtbl[].vtbl.rowsAboutToBeRemoved = cQUndoView_vtable_callback_rowsAboutToBeRemoved
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQUndoView_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQUndoView_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQUndoView_vtable_callback_wheelEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQUndoView_vtable_callback_timerEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQUndoView_vtable_callback_resizeEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQUndoView_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQUndoView_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQUndoView_vtable_callback_dropEvent
  if not isNil(vtbl[].startDrag):
    vtbl[].vtbl.startDrag = cQUndoView_vtable_callback_startDrag
  if not isNil(vtbl[].initViewItemOption):
    vtbl[].vtbl.initViewItemOption = cQUndoView_vtable_callback_initViewItemOption
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQUndoView_vtable_callback_paintEvent
  if not isNil(vtbl[].horizontalOffset):
    vtbl[].vtbl.horizontalOffset = cQUndoView_vtable_callback_horizontalOffset
  if not isNil(vtbl[].verticalOffset):
    vtbl[].vtbl.verticalOffset = cQUndoView_vtable_callback_verticalOffset
  if not isNil(vtbl[].moveCursor):
    vtbl[].vtbl.moveCursor = cQUndoView_vtable_callback_moveCursor
  if not isNil(vtbl[].setSelection):
    vtbl[].vtbl.setSelection = cQUndoView_vtable_callback_setSelection
  if not isNil(vtbl[].visualRegionForSelection):
    vtbl[].vtbl.visualRegionForSelection = cQUndoView_vtable_callback_visualRegionForSelection
  if not isNil(vtbl[].selectedIndexes):
    vtbl[].vtbl.selectedIndexes = cQUndoView_vtable_callback_selectedIndexes
  if not isNil(vtbl[].updateGeometries):
    vtbl[].vtbl.updateGeometries = cQUndoView_vtable_callback_updateGeometries
  if not isNil(vtbl[].isIndexHidden):
    vtbl[].vtbl.isIndexHidden = cQUndoView_vtable_callback_isIndexHidden
  if not isNil(vtbl[].selectionChanged):
    vtbl[].vtbl.selectionChanged = cQUndoView_vtable_callback_selectionChanged
  if not isNil(vtbl[].currentChanged):
    vtbl[].vtbl.currentChanged = cQUndoView_vtable_callback_currentChanged
  if not isNil(vtbl[].viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = cQUndoView_vtable_callback_viewportSizeHint
  if not isNil(vtbl[].setModel):
    vtbl[].vtbl.setModel = cQUndoView_vtable_callback_setModel
  if not isNil(vtbl[].setSelectionModel):
    vtbl[].vtbl.setSelectionModel = cQUndoView_vtable_callback_setSelectionModel
  if not isNil(vtbl[].keyboardSearch):
    vtbl[].vtbl.keyboardSearch = cQUndoView_vtable_callback_keyboardSearch
  if not isNil(vtbl[].sizeHintForRow):
    vtbl[].vtbl.sizeHintForRow = cQUndoView_vtable_callback_sizeHintForRow
  if not isNil(vtbl[].sizeHintForColumn):
    vtbl[].vtbl.sizeHintForColumn = cQUndoView_vtable_callback_sizeHintForColumn
  if not isNil(vtbl[].itemDelegateForIndex):
    vtbl[].vtbl.itemDelegateForIndex = cQUndoView_vtable_callback_itemDelegateForIndex
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQUndoView_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].selectAll):
    vtbl[].vtbl.selectAll = cQUndoView_vtable_callback_selectAll
  if not isNil(vtbl[].updateEditorData):
    vtbl[].vtbl.updateEditorData = cQUndoView_vtable_callback_updateEditorData
  if not isNil(vtbl[].updateEditorGeometries):
    vtbl[].vtbl.updateEditorGeometries = cQUndoView_vtable_callback_updateEditorGeometries
  if not isNil(vtbl[].verticalScrollbarAction):
    vtbl[].vtbl.verticalScrollbarAction = cQUndoView_vtable_callback_verticalScrollbarAction
  if not isNil(vtbl[].horizontalScrollbarAction):
    vtbl[].vtbl.horizontalScrollbarAction = cQUndoView_vtable_callback_horizontalScrollbarAction
  if not isNil(vtbl[].verticalScrollbarValueChanged):
    vtbl[].vtbl.verticalScrollbarValueChanged = cQUndoView_vtable_callback_verticalScrollbarValueChanged
  if not isNil(vtbl[].horizontalScrollbarValueChanged):
    vtbl[].vtbl.horizontalScrollbarValueChanged = cQUndoView_vtable_callback_horizontalScrollbarValueChanged
  if not isNil(vtbl[].closeEditor):
    vtbl[].vtbl.closeEditor = cQUndoView_vtable_callback_closeEditor
  if not isNil(vtbl[].commitData):
    vtbl[].vtbl.commitData = cQUndoView_vtable_callback_commitData
  if not isNil(vtbl[].editorDestroyed):
    vtbl[].vtbl.editorDestroyed = cQUndoView_vtable_callback_editorDestroyed
  if not isNil(vtbl[].edit2):
    vtbl[].vtbl.edit2 = cQUndoView_vtable_callback_edit2
  if not isNil(vtbl[].selectionCommand):
    vtbl[].vtbl.selectionCommand = cQUndoView_vtable_callback_selectionCommand
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQUndoView_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].viewportEvent):
    vtbl[].vtbl.viewportEvent = cQUndoView_vtable_callback_viewportEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQUndoView_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQUndoView_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQUndoView_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQUndoView_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQUndoView_vtable_callback_focusOutEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQUndoView_vtable_callback_keyPressEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQUndoView_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQUndoView_vtable_callback_eventFilter
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQUndoView_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQUndoView_vtable_callback_sizeHint
  if not isNil(vtbl[].setupViewport):
    vtbl[].vtbl.setupViewport = cQUndoView_vtable_callback_setupViewport
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQUndoView_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQUndoView_vtable_callback_changeEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQUndoView_vtable_callback_initStyleOption
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQUndoView_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQUndoView_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQUndoView_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQUndoView_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQUndoView_vtable_callback_paintEngine
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQUndoView_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQUndoView_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQUndoView_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQUndoView_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQUndoView_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQUndoView_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQUndoView_vtable_callback_actionEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQUndoView_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQUndoView_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQUndoView_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQUndoView_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQUndoView_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQUndoView_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQUndoView_vtable_callback_sharedPainter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQUndoView_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQUndoView_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQUndoView_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQUndoView_vtable_callback_disconnectNotify
  gen_qundoview_types.QUndoView(h: fcQUndoView_new3(addr(vtbl[].vtbl), addr(vtbl[]), stack.h), owned: true)

proc create*(T: type gen_qundoview_types.QUndoView,
    group: gen_qundogroup_types.QUndoGroup,
    vtbl: ref QUndoViewVTable = nil): gen_qundoview_types.QUndoView =
  let vtbl = if vtbl == nil: new QUndoViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QUndoViewVTable](fcQUndoView_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQUndoView_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQUndoView_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQUndoView_vtable_callback_metacall
  if not isNil(vtbl[].visualRect):
    vtbl[].vtbl.visualRect = cQUndoView_vtable_callback_visualRect
  if not isNil(vtbl[].scrollTo):
    vtbl[].vtbl.scrollTo = cQUndoView_vtable_callback_scrollTo
  if not isNil(vtbl[].indexAt):
    vtbl[].vtbl.indexAt = cQUndoView_vtable_callback_indexAt
  if not isNil(vtbl[].doItemsLayout):
    vtbl[].vtbl.doItemsLayout = cQUndoView_vtable_callback_doItemsLayout
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = cQUndoView_vtable_callback_reset
  if not isNil(vtbl[].setRootIndex):
    vtbl[].vtbl.setRootIndex = cQUndoView_vtable_callback_setRootIndex
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQUndoView_vtable_callback_event
  if not isNil(vtbl[].scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = cQUndoView_vtable_callback_scrollContentsBy
  if not isNil(vtbl[].dataChanged):
    vtbl[].vtbl.dataChanged = cQUndoView_vtable_callback_dataChanged
  if not isNil(vtbl[].rowsInserted):
    vtbl[].vtbl.rowsInserted = cQUndoView_vtable_callback_rowsInserted
  if not isNil(vtbl[].rowsAboutToBeRemoved):
    vtbl[].vtbl.rowsAboutToBeRemoved = cQUndoView_vtable_callback_rowsAboutToBeRemoved
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQUndoView_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQUndoView_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQUndoView_vtable_callback_wheelEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQUndoView_vtable_callback_timerEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQUndoView_vtable_callback_resizeEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQUndoView_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQUndoView_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQUndoView_vtable_callback_dropEvent
  if not isNil(vtbl[].startDrag):
    vtbl[].vtbl.startDrag = cQUndoView_vtable_callback_startDrag
  if not isNil(vtbl[].initViewItemOption):
    vtbl[].vtbl.initViewItemOption = cQUndoView_vtable_callback_initViewItemOption
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQUndoView_vtable_callback_paintEvent
  if not isNil(vtbl[].horizontalOffset):
    vtbl[].vtbl.horizontalOffset = cQUndoView_vtable_callback_horizontalOffset
  if not isNil(vtbl[].verticalOffset):
    vtbl[].vtbl.verticalOffset = cQUndoView_vtable_callback_verticalOffset
  if not isNil(vtbl[].moveCursor):
    vtbl[].vtbl.moveCursor = cQUndoView_vtable_callback_moveCursor
  if not isNil(vtbl[].setSelection):
    vtbl[].vtbl.setSelection = cQUndoView_vtable_callback_setSelection
  if not isNil(vtbl[].visualRegionForSelection):
    vtbl[].vtbl.visualRegionForSelection = cQUndoView_vtable_callback_visualRegionForSelection
  if not isNil(vtbl[].selectedIndexes):
    vtbl[].vtbl.selectedIndexes = cQUndoView_vtable_callback_selectedIndexes
  if not isNil(vtbl[].updateGeometries):
    vtbl[].vtbl.updateGeometries = cQUndoView_vtable_callback_updateGeometries
  if not isNil(vtbl[].isIndexHidden):
    vtbl[].vtbl.isIndexHidden = cQUndoView_vtable_callback_isIndexHidden
  if not isNil(vtbl[].selectionChanged):
    vtbl[].vtbl.selectionChanged = cQUndoView_vtable_callback_selectionChanged
  if not isNil(vtbl[].currentChanged):
    vtbl[].vtbl.currentChanged = cQUndoView_vtable_callback_currentChanged
  if not isNil(vtbl[].viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = cQUndoView_vtable_callback_viewportSizeHint
  if not isNil(vtbl[].setModel):
    vtbl[].vtbl.setModel = cQUndoView_vtable_callback_setModel
  if not isNil(vtbl[].setSelectionModel):
    vtbl[].vtbl.setSelectionModel = cQUndoView_vtable_callback_setSelectionModel
  if not isNil(vtbl[].keyboardSearch):
    vtbl[].vtbl.keyboardSearch = cQUndoView_vtable_callback_keyboardSearch
  if not isNil(vtbl[].sizeHintForRow):
    vtbl[].vtbl.sizeHintForRow = cQUndoView_vtable_callback_sizeHintForRow
  if not isNil(vtbl[].sizeHintForColumn):
    vtbl[].vtbl.sizeHintForColumn = cQUndoView_vtable_callback_sizeHintForColumn
  if not isNil(vtbl[].itemDelegateForIndex):
    vtbl[].vtbl.itemDelegateForIndex = cQUndoView_vtable_callback_itemDelegateForIndex
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQUndoView_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].selectAll):
    vtbl[].vtbl.selectAll = cQUndoView_vtable_callback_selectAll
  if not isNil(vtbl[].updateEditorData):
    vtbl[].vtbl.updateEditorData = cQUndoView_vtable_callback_updateEditorData
  if not isNil(vtbl[].updateEditorGeometries):
    vtbl[].vtbl.updateEditorGeometries = cQUndoView_vtable_callback_updateEditorGeometries
  if not isNil(vtbl[].verticalScrollbarAction):
    vtbl[].vtbl.verticalScrollbarAction = cQUndoView_vtable_callback_verticalScrollbarAction
  if not isNil(vtbl[].horizontalScrollbarAction):
    vtbl[].vtbl.horizontalScrollbarAction = cQUndoView_vtable_callback_horizontalScrollbarAction
  if not isNil(vtbl[].verticalScrollbarValueChanged):
    vtbl[].vtbl.verticalScrollbarValueChanged = cQUndoView_vtable_callback_verticalScrollbarValueChanged
  if not isNil(vtbl[].horizontalScrollbarValueChanged):
    vtbl[].vtbl.horizontalScrollbarValueChanged = cQUndoView_vtable_callback_horizontalScrollbarValueChanged
  if not isNil(vtbl[].closeEditor):
    vtbl[].vtbl.closeEditor = cQUndoView_vtable_callback_closeEditor
  if not isNil(vtbl[].commitData):
    vtbl[].vtbl.commitData = cQUndoView_vtable_callback_commitData
  if not isNil(vtbl[].editorDestroyed):
    vtbl[].vtbl.editorDestroyed = cQUndoView_vtable_callback_editorDestroyed
  if not isNil(vtbl[].edit2):
    vtbl[].vtbl.edit2 = cQUndoView_vtable_callback_edit2
  if not isNil(vtbl[].selectionCommand):
    vtbl[].vtbl.selectionCommand = cQUndoView_vtable_callback_selectionCommand
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQUndoView_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].viewportEvent):
    vtbl[].vtbl.viewportEvent = cQUndoView_vtable_callback_viewportEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQUndoView_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQUndoView_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQUndoView_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQUndoView_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQUndoView_vtable_callback_focusOutEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQUndoView_vtable_callback_keyPressEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQUndoView_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQUndoView_vtable_callback_eventFilter
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQUndoView_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQUndoView_vtable_callback_sizeHint
  if not isNil(vtbl[].setupViewport):
    vtbl[].vtbl.setupViewport = cQUndoView_vtable_callback_setupViewport
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQUndoView_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQUndoView_vtable_callback_changeEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQUndoView_vtable_callback_initStyleOption
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQUndoView_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQUndoView_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQUndoView_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQUndoView_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQUndoView_vtable_callback_paintEngine
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQUndoView_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQUndoView_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQUndoView_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQUndoView_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQUndoView_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQUndoView_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQUndoView_vtable_callback_actionEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQUndoView_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQUndoView_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQUndoView_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQUndoView_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQUndoView_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQUndoView_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQUndoView_vtable_callback_sharedPainter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQUndoView_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQUndoView_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQUndoView_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQUndoView_vtable_callback_disconnectNotify
  gen_qundoview_types.QUndoView(h: fcQUndoView_new4(addr(vtbl[].vtbl), addr(vtbl[]), group.h), owned: true)

proc create*(T: type gen_qundoview_types.QUndoView,
    stack: gen_qundostack_types.QUndoStack, parent: gen_qwidget_types.QWidget,
    vtbl: ref QUndoViewVTable = nil): gen_qundoview_types.QUndoView =
  let vtbl = if vtbl == nil: new QUndoViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QUndoViewVTable](fcQUndoView_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQUndoView_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQUndoView_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQUndoView_vtable_callback_metacall
  if not isNil(vtbl[].visualRect):
    vtbl[].vtbl.visualRect = cQUndoView_vtable_callback_visualRect
  if not isNil(vtbl[].scrollTo):
    vtbl[].vtbl.scrollTo = cQUndoView_vtable_callback_scrollTo
  if not isNil(vtbl[].indexAt):
    vtbl[].vtbl.indexAt = cQUndoView_vtable_callback_indexAt
  if not isNil(vtbl[].doItemsLayout):
    vtbl[].vtbl.doItemsLayout = cQUndoView_vtable_callback_doItemsLayout
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = cQUndoView_vtable_callback_reset
  if not isNil(vtbl[].setRootIndex):
    vtbl[].vtbl.setRootIndex = cQUndoView_vtable_callback_setRootIndex
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQUndoView_vtable_callback_event
  if not isNil(vtbl[].scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = cQUndoView_vtable_callback_scrollContentsBy
  if not isNil(vtbl[].dataChanged):
    vtbl[].vtbl.dataChanged = cQUndoView_vtable_callback_dataChanged
  if not isNil(vtbl[].rowsInserted):
    vtbl[].vtbl.rowsInserted = cQUndoView_vtable_callback_rowsInserted
  if not isNil(vtbl[].rowsAboutToBeRemoved):
    vtbl[].vtbl.rowsAboutToBeRemoved = cQUndoView_vtable_callback_rowsAboutToBeRemoved
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQUndoView_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQUndoView_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQUndoView_vtable_callback_wheelEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQUndoView_vtable_callback_timerEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQUndoView_vtable_callback_resizeEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQUndoView_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQUndoView_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQUndoView_vtable_callback_dropEvent
  if not isNil(vtbl[].startDrag):
    vtbl[].vtbl.startDrag = cQUndoView_vtable_callback_startDrag
  if not isNil(vtbl[].initViewItemOption):
    vtbl[].vtbl.initViewItemOption = cQUndoView_vtable_callback_initViewItemOption
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQUndoView_vtable_callback_paintEvent
  if not isNil(vtbl[].horizontalOffset):
    vtbl[].vtbl.horizontalOffset = cQUndoView_vtable_callback_horizontalOffset
  if not isNil(vtbl[].verticalOffset):
    vtbl[].vtbl.verticalOffset = cQUndoView_vtable_callback_verticalOffset
  if not isNil(vtbl[].moveCursor):
    vtbl[].vtbl.moveCursor = cQUndoView_vtable_callback_moveCursor
  if not isNil(vtbl[].setSelection):
    vtbl[].vtbl.setSelection = cQUndoView_vtable_callback_setSelection
  if not isNil(vtbl[].visualRegionForSelection):
    vtbl[].vtbl.visualRegionForSelection = cQUndoView_vtable_callback_visualRegionForSelection
  if not isNil(vtbl[].selectedIndexes):
    vtbl[].vtbl.selectedIndexes = cQUndoView_vtable_callback_selectedIndexes
  if not isNil(vtbl[].updateGeometries):
    vtbl[].vtbl.updateGeometries = cQUndoView_vtable_callback_updateGeometries
  if not isNil(vtbl[].isIndexHidden):
    vtbl[].vtbl.isIndexHidden = cQUndoView_vtable_callback_isIndexHidden
  if not isNil(vtbl[].selectionChanged):
    vtbl[].vtbl.selectionChanged = cQUndoView_vtable_callback_selectionChanged
  if not isNil(vtbl[].currentChanged):
    vtbl[].vtbl.currentChanged = cQUndoView_vtable_callback_currentChanged
  if not isNil(vtbl[].viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = cQUndoView_vtable_callback_viewportSizeHint
  if not isNil(vtbl[].setModel):
    vtbl[].vtbl.setModel = cQUndoView_vtable_callback_setModel
  if not isNil(vtbl[].setSelectionModel):
    vtbl[].vtbl.setSelectionModel = cQUndoView_vtable_callback_setSelectionModel
  if not isNil(vtbl[].keyboardSearch):
    vtbl[].vtbl.keyboardSearch = cQUndoView_vtable_callback_keyboardSearch
  if not isNil(vtbl[].sizeHintForRow):
    vtbl[].vtbl.sizeHintForRow = cQUndoView_vtable_callback_sizeHintForRow
  if not isNil(vtbl[].sizeHintForColumn):
    vtbl[].vtbl.sizeHintForColumn = cQUndoView_vtable_callback_sizeHintForColumn
  if not isNil(vtbl[].itemDelegateForIndex):
    vtbl[].vtbl.itemDelegateForIndex = cQUndoView_vtable_callback_itemDelegateForIndex
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQUndoView_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].selectAll):
    vtbl[].vtbl.selectAll = cQUndoView_vtable_callback_selectAll
  if not isNil(vtbl[].updateEditorData):
    vtbl[].vtbl.updateEditorData = cQUndoView_vtable_callback_updateEditorData
  if not isNil(vtbl[].updateEditorGeometries):
    vtbl[].vtbl.updateEditorGeometries = cQUndoView_vtable_callback_updateEditorGeometries
  if not isNil(vtbl[].verticalScrollbarAction):
    vtbl[].vtbl.verticalScrollbarAction = cQUndoView_vtable_callback_verticalScrollbarAction
  if not isNil(vtbl[].horizontalScrollbarAction):
    vtbl[].vtbl.horizontalScrollbarAction = cQUndoView_vtable_callback_horizontalScrollbarAction
  if not isNil(vtbl[].verticalScrollbarValueChanged):
    vtbl[].vtbl.verticalScrollbarValueChanged = cQUndoView_vtable_callback_verticalScrollbarValueChanged
  if not isNil(vtbl[].horizontalScrollbarValueChanged):
    vtbl[].vtbl.horizontalScrollbarValueChanged = cQUndoView_vtable_callback_horizontalScrollbarValueChanged
  if not isNil(vtbl[].closeEditor):
    vtbl[].vtbl.closeEditor = cQUndoView_vtable_callback_closeEditor
  if not isNil(vtbl[].commitData):
    vtbl[].vtbl.commitData = cQUndoView_vtable_callback_commitData
  if not isNil(vtbl[].editorDestroyed):
    vtbl[].vtbl.editorDestroyed = cQUndoView_vtable_callback_editorDestroyed
  if not isNil(vtbl[].edit2):
    vtbl[].vtbl.edit2 = cQUndoView_vtable_callback_edit2
  if not isNil(vtbl[].selectionCommand):
    vtbl[].vtbl.selectionCommand = cQUndoView_vtable_callback_selectionCommand
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQUndoView_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].viewportEvent):
    vtbl[].vtbl.viewportEvent = cQUndoView_vtable_callback_viewportEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQUndoView_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQUndoView_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQUndoView_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQUndoView_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQUndoView_vtable_callback_focusOutEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQUndoView_vtable_callback_keyPressEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQUndoView_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQUndoView_vtable_callback_eventFilter
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQUndoView_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQUndoView_vtable_callback_sizeHint
  if not isNil(vtbl[].setupViewport):
    vtbl[].vtbl.setupViewport = cQUndoView_vtable_callback_setupViewport
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQUndoView_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQUndoView_vtable_callback_changeEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQUndoView_vtable_callback_initStyleOption
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQUndoView_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQUndoView_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQUndoView_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQUndoView_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQUndoView_vtable_callback_paintEngine
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQUndoView_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQUndoView_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQUndoView_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQUndoView_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQUndoView_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQUndoView_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQUndoView_vtable_callback_actionEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQUndoView_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQUndoView_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQUndoView_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQUndoView_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQUndoView_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQUndoView_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQUndoView_vtable_callback_sharedPainter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQUndoView_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQUndoView_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQUndoView_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQUndoView_vtable_callback_disconnectNotify
  gen_qundoview_types.QUndoView(h: fcQUndoView_new5(addr(vtbl[].vtbl), addr(vtbl[]), stack.h, parent.h), owned: true)

proc create*(T: type gen_qundoview_types.QUndoView,
    group: gen_qundogroup_types.QUndoGroup, parent: gen_qwidget_types.QWidget,
    vtbl: ref QUndoViewVTable = nil): gen_qundoview_types.QUndoView =
  let vtbl = if vtbl == nil: new QUndoViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QUndoViewVTable](fcQUndoView_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQUndoView_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQUndoView_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQUndoView_vtable_callback_metacall
  if not isNil(vtbl[].visualRect):
    vtbl[].vtbl.visualRect = cQUndoView_vtable_callback_visualRect
  if not isNil(vtbl[].scrollTo):
    vtbl[].vtbl.scrollTo = cQUndoView_vtable_callback_scrollTo
  if not isNil(vtbl[].indexAt):
    vtbl[].vtbl.indexAt = cQUndoView_vtable_callback_indexAt
  if not isNil(vtbl[].doItemsLayout):
    vtbl[].vtbl.doItemsLayout = cQUndoView_vtable_callback_doItemsLayout
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = cQUndoView_vtable_callback_reset
  if not isNil(vtbl[].setRootIndex):
    vtbl[].vtbl.setRootIndex = cQUndoView_vtable_callback_setRootIndex
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQUndoView_vtable_callback_event
  if not isNil(vtbl[].scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = cQUndoView_vtable_callback_scrollContentsBy
  if not isNil(vtbl[].dataChanged):
    vtbl[].vtbl.dataChanged = cQUndoView_vtable_callback_dataChanged
  if not isNil(vtbl[].rowsInserted):
    vtbl[].vtbl.rowsInserted = cQUndoView_vtable_callback_rowsInserted
  if not isNil(vtbl[].rowsAboutToBeRemoved):
    vtbl[].vtbl.rowsAboutToBeRemoved = cQUndoView_vtable_callback_rowsAboutToBeRemoved
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQUndoView_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQUndoView_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQUndoView_vtable_callback_wheelEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQUndoView_vtable_callback_timerEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQUndoView_vtable_callback_resizeEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQUndoView_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQUndoView_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQUndoView_vtable_callback_dropEvent
  if not isNil(vtbl[].startDrag):
    vtbl[].vtbl.startDrag = cQUndoView_vtable_callback_startDrag
  if not isNil(vtbl[].initViewItemOption):
    vtbl[].vtbl.initViewItemOption = cQUndoView_vtable_callback_initViewItemOption
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQUndoView_vtable_callback_paintEvent
  if not isNil(vtbl[].horizontalOffset):
    vtbl[].vtbl.horizontalOffset = cQUndoView_vtable_callback_horizontalOffset
  if not isNil(vtbl[].verticalOffset):
    vtbl[].vtbl.verticalOffset = cQUndoView_vtable_callback_verticalOffset
  if not isNil(vtbl[].moveCursor):
    vtbl[].vtbl.moveCursor = cQUndoView_vtable_callback_moveCursor
  if not isNil(vtbl[].setSelection):
    vtbl[].vtbl.setSelection = cQUndoView_vtable_callback_setSelection
  if not isNil(vtbl[].visualRegionForSelection):
    vtbl[].vtbl.visualRegionForSelection = cQUndoView_vtable_callback_visualRegionForSelection
  if not isNil(vtbl[].selectedIndexes):
    vtbl[].vtbl.selectedIndexes = cQUndoView_vtable_callback_selectedIndexes
  if not isNil(vtbl[].updateGeometries):
    vtbl[].vtbl.updateGeometries = cQUndoView_vtable_callback_updateGeometries
  if not isNil(vtbl[].isIndexHidden):
    vtbl[].vtbl.isIndexHidden = cQUndoView_vtable_callback_isIndexHidden
  if not isNil(vtbl[].selectionChanged):
    vtbl[].vtbl.selectionChanged = cQUndoView_vtable_callback_selectionChanged
  if not isNil(vtbl[].currentChanged):
    vtbl[].vtbl.currentChanged = cQUndoView_vtable_callback_currentChanged
  if not isNil(vtbl[].viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = cQUndoView_vtable_callback_viewportSizeHint
  if not isNil(vtbl[].setModel):
    vtbl[].vtbl.setModel = cQUndoView_vtable_callback_setModel
  if not isNil(vtbl[].setSelectionModel):
    vtbl[].vtbl.setSelectionModel = cQUndoView_vtable_callback_setSelectionModel
  if not isNil(vtbl[].keyboardSearch):
    vtbl[].vtbl.keyboardSearch = cQUndoView_vtable_callback_keyboardSearch
  if not isNil(vtbl[].sizeHintForRow):
    vtbl[].vtbl.sizeHintForRow = cQUndoView_vtable_callback_sizeHintForRow
  if not isNil(vtbl[].sizeHintForColumn):
    vtbl[].vtbl.sizeHintForColumn = cQUndoView_vtable_callback_sizeHintForColumn
  if not isNil(vtbl[].itemDelegateForIndex):
    vtbl[].vtbl.itemDelegateForIndex = cQUndoView_vtable_callback_itemDelegateForIndex
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQUndoView_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].selectAll):
    vtbl[].vtbl.selectAll = cQUndoView_vtable_callback_selectAll
  if not isNil(vtbl[].updateEditorData):
    vtbl[].vtbl.updateEditorData = cQUndoView_vtable_callback_updateEditorData
  if not isNil(vtbl[].updateEditorGeometries):
    vtbl[].vtbl.updateEditorGeometries = cQUndoView_vtable_callback_updateEditorGeometries
  if not isNil(vtbl[].verticalScrollbarAction):
    vtbl[].vtbl.verticalScrollbarAction = cQUndoView_vtable_callback_verticalScrollbarAction
  if not isNil(vtbl[].horizontalScrollbarAction):
    vtbl[].vtbl.horizontalScrollbarAction = cQUndoView_vtable_callback_horizontalScrollbarAction
  if not isNil(vtbl[].verticalScrollbarValueChanged):
    vtbl[].vtbl.verticalScrollbarValueChanged = cQUndoView_vtable_callback_verticalScrollbarValueChanged
  if not isNil(vtbl[].horizontalScrollbarValueChanged):
    vtbl[].vtbl.horizontalScrollbarValueChanged = cQUndoView_vtable_callback_horizontalScrollbarValueChanged
  if not isNil(vtbl[].closeEditor):
    vtbl[].vtbl.closeEditor = cQUndoView_vtable_callback_closeEditor
  if not isNil(vtbl[].commitData):
    vtbl[].vtbl.commitData = cQUndoView_vtable_callback_commitData
  if not isNil(vtbl[].editorDestroyed):
    vtbl[].vtbl.editorDestroyed = cQUndoView_vtable_callback_editorDestroyed
  if not isNil(vtbl[].edit2):
    vtbl[].vtbl.edit2 = cQUndoView_vtable_callback_edit2
  if not isNil(vtbl[].selectionCommand):
    vtbl[].vtbl.selectionCommand = cQUndoView_vtable_callback_selectionCommand
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQUndoView_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].viewportEvent):
    vtbl[].vtbl.viewportEvent = cQUndoView_vtable_callback_viewportEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQUndoView_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQUndoView_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQUndoView_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQUndoView_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQUndoView_vtable_callback_focusOutEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQUndoView_vtable_callback_keyPressEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQUndoView_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQUndoView_vtable_callback_eventFilter
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQUndoView_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQUndoView_vtable_callback_sizeHint
  if not isNil(vtbl[].setupViewport):
    vtbl[].vtbl.setupViewport = cQUndoView_vtable_callback_setupViewport
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQUndoView_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQUndoView_vtable_callback_changeEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQUndoView_vtable_callback_initStyleOption
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQUndoView_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQUndoView_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQUndoView_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQUndoView_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQUndoView_vtable_callback_paintEngine
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQUndoView_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQUndoView_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQUndoView_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQUndoView_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQUndoView_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQUndoView_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQUndoView_vtable_callback_actionEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQUndoView_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQUndoView_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQUndoView_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQUndoView_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQUndoView_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQUndoView_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQUndoView_vtable_callback_sharedPainter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQUndoView_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQUndoView_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQUndoView_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQUndoView_vtable_callback_disconnectNotify
  gen_qundoview_types.QUndoView(h: fcQUndoView_new6(addr(vtbl[].vtbl), addr(vtbl[]), group.h, parent.h), owned: true)

const cQUndoView_mvtbl = cQUndoViewVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQUndoView()[])](self.fcQUndoView_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQUndoView_method_callback_metaObject,
  metacast: cQUndoView_method_callback_metacast,
  metacall: cQUndoView_method_callback_metacall,
  visualRect: cQUndoView_method_callback_visualRect,
  scrollTo: cQUndoView_method_callback_scrollTo,
  indexAt: cQUndoView_method_callback_indexAt,
  doItemsLayout: cQUndoView_method_callback_doItemsLayout,
  reset: cQUndoView_method_callback_reset,
  setRootIndex: cQUndoView_method_callback_setRootIndex,
  event: cQUndoView_method_callback_event,
  scrollContentsBy: cQUndoView_method_callback_scrollContentsBy,
  dataChanged: cQUndoView_method_callback_dataChanged,
  rowsInserted: cQUndoView_method_callback_rowsInserted,
  rowsAboutToBeRemoved: cQUndoView_method_callback_rowsAboutToBeRemoved,
  mouseMoveEvent: cQUndoView_method_callback_mouseMoveEvent,
  mouseReleaseEvent: cQUndoView_method_callback_mouseReleaseEvent,
  wheelEvent: cQUndoView_method_callback_wheelEvent,
  timerEvent: cQUndoView_method_callback_timerEvent,
  resizeEvent: cQUndoView_method_callback_resizeEvent,
  dragMoveEvent: cQUndoView_method_callback_dragMoveEvent,
  dragLeaveEvent: cQUndoView_method_callback_dragLeaveEvent,
  dropEvent: cQUndoView_method_callback_dropEvent,
  startDrag: cQUndoView_method_callback_startDrag,
  initViewItemOption: cQUndoView_method_callback_initViewItemOption,
  paintEvent: cQUndoView_method_callback_paintEvent,
  horizontalOffset: cQUndoView_method_callback_horizontalOffset,
  verticalOffset: cQUndoView_method_callback_verticalOffset,
  moveCursor: cQUndoView_method_callback_moveCursor,
  setSelection: cQUndoView_method_callback_setSelection,
  visualRegionForSelection: cQUndoView_method_callback_visualRegionForSelection,
  selectedIndexes: cQUndoView_method_callback_selectedIndexes,
  updateGeometries: cQUndoView_method_callback_updateGeometries,
  isIndexHidden: cQUndoView_method_callback_isIndexHidden,
  selectionChanged: cQUndoView_method_callback_selectionChanged,
  currentChanged: cQUndoView_method_callback_currentChanged,
  viewportSizeHint: cQUndoView_method_callback_viewportSizeHint,
  setModel: cQUndoView_method_callback_setModel,
  setSelectionModel: cQUndoView_method_callback_setSelectionModel,
  keyboardSearch: cQUndoView_method_callback_keyboardSearch,
  sizeHintForRow: cQUndoView_method_callback_sizeHintForRow,
  sizeHintForColumn: cQUndoView_method_callback_sizeHintForColumn,
  itemDelegateForIndex: cQUndoView_method_callback_itemDelegateForIndex,
  inputMethodQuery: cQUndoView_method_callback_inputMethodQuery,
  selectAll: cQUndoView_method_callback_selectAll,
  updateEditorData: cQUndoView_method_callback_updateEditorData,
  updateEditorGeometries: cQUndoView_method_callback_updateEditorGeometries,
  verticalScrollbarAction: cQUndoView_method_callback_verticalScrollbarAction,
  horizontalScrollbarAction: cQUndoView_method_callback_horizontalScrollbarAction,
  verticalScrollbarValueChanged: cQUndoView_method_callback_verticalScrollbarValueChanged,
  horizontalScrollbarValueChanged: cQUndoView_method_callback_horizontalScrollbarValueChanged,
  closeEditor: cQUndoView_method_callback_closeEditor,
  commitData: cQUndoView_method_callback_commitData,
  editorDestroyed: cQUndoView_method_callback_editorDestroyed,
  edit2: cQUndoView_method_callback_edit2,
  selectionCommand: cQUndoView_method_callback_selectionCommand,
  focusNextPrevChild: cQUndoView_method_callback_focusNextPrevChild,
  viewportEvent: cQUndoView_method_callback_viewportEvent,
  mousePressEvent: cQUndoView_method_callback_mousePressEvent,
  mouseDoubleClickEvent: cQUndoView_method_callback_mouseDoubleClickEvent,
  dragEnterEvent: cQUndoView_method_callback_dragEnterEvent,
  focusInEvent: cQUndoView_method_callback_focusInEvent,
  focusOutEvent: cQUndoView_method_callback_focusOutEvent,
  keyPressEvent: cQUndoView_method_callback_keyPressEvent,
  inputMethodEvent: cQUndoView_method_callback_inputMethodEvent,
  eventFilter: cQUndoView_method_callback_eventFilter,
  minimumSizeHint: cQUndoView_method_callback_minimumSizeHint,
  sizeHint: cQUndoView_method_callback_sizeHint,
  setupViewport: cQUndoView_method_callback_setupViewport,
  contextMenuEvent: cQUndoView_method_callback_contextMenuEvent,
  changeEvent: cQUndoView_method_callback_changeEvent,
  initStyleOption: cQUndoView_method_callback_initStyleOption,
  devType: cQUndoView_method_callback_devType,
  setVisible: cQUndoView_method_callback_setVisible,
  heightForWidth: cQUndoView_method_callback_heightForWidth,
  hasHeightForWidth: cQUndoView_method_callback_hasHeightForWidth,
  paintEngine: cQUndoView_method_callback_paintEngine,
  keyReleaseEvent: cQUndoView_method_callback_keyReleaseEvent,
  enterEvent: cQUndoView_method_callback_enterEvent,
  leaveEvent: cQUndoView_method_callback_leaveEvent,
  moveEvent: cQUndoView_method_callback_moveEvent,
  closeEvent: cQUndoView_method_callback_closeEvent,
  tabletEvent: cQUndoView_method_callback_tabletEvent,
  actionEvent: cQUndoView_method_callback_actionEvent,
  showEvent: cQUndoView_method_callback_showEvent,
  hideEvent: cQUndoView_method_callback_hideEvent,
  nativeEvent: cQUndoView_method_callback_nativeEvent,
  metric: cQUndoView_method_callback_metric,
  initPainter: cQUndoView_method_callback_initPainter,
  redirected: cQUndoView_method_callback_redirected,
  sharedPainter: cQUndoView_method_callback_sharedPainter,
  childEvent: cQUndoView_method_callback_childEvent,
  customEvent: cQUndoView_method_callback_customEvent,
  connectNotify: cQUndoView_method_callback_connectNotify,
  disconnectNotify: cQUndoView_method_callback_disconnectNotify,
)
proc create*(T: type gen_qundoview_types.QUndoView,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQUndoView) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQUndoView_new(addr(cQUndoView_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qundoview_types.QUndoView,
    inst: VirtualQUndoView) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQUndoView_new2(addr(cQUndoView_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qundoview_types.QUndoView,
    stack: gen_qundostack_types.QUndoStack,
    inst: VirtualQUndoView) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQUndoView_new3(addr(cQUndoView_mvtbl), addr(inst[]), stack.h)
  inst[].owned = true

proc create*(T: type gen_qundoview_types.QUndoView,
    group: gen_qundogroup_types.QUndoGroup,
    inst: VirtualQUndoView) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQUndoView_new4(addr(cQUndoView_mvtbl), addr(inst[]), group.h)
  inst[].owned = true

proc create*(T: type gen_qundoview_types.QUndoView,
    stack: gen_qundostack_types.QUndoStack, parent: gen_qwidget_types.QWidget,
    inst: VirtualQUndoView) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQUndoView_new5(addr(cQUndoView_mvtbl), addr(inst[]), stack.h, parent.h)
  inst[].owned = true

proc create*(T: type gen_qundoview_types.QUndoView,
    group: gen_qundogroup_types.QUndoGroup, parent: gen_qwidget_types.QWidget,
    inst: VirtualQUndoView) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQUndoView_new6(addr(cQUndoView_mvtbl), addr(inst[]), group.h, parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qundoview_types.QUndoView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQUndoView_staticMetaObject())
