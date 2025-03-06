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
{.compile("gen_qcolumnview.cpp", cflags).}


import ./gen_qcolumnview_types
export gen_qcolumnview_types

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
  gen_qstyleoption_types,
  gen_qwidget_types

type cQColumnView*{.exportc: "QColumnView", incompleteStruct.} = object

proc fcQColumnView_new(parent: pointer): ptr cQColumnView {.importc: "QColumnView_new".}
proc fcQColumnView_new2(): ptr cQColumnView {.importc: "QColumnView_new2".}
proc fcQColumnView_metaObject(self: pointer, ): pointer {.importc: "QColumnView_metaObject".}
proc fcQColumnView_metacast(self: pointer, param1: cstring): pointer {.importc: "QColumnView_metacast".}
proc fcQColumnView_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QColumnView_metacall".}
proc fcQColumnView_tr(s: cstring): struct_miqt_string {.importc: "QColumnView_tr".}
proc fcQColumnView_updatePreviewWidget(self: pointer, index: pointer): void {.importc: "QColumnView_updatePreviewWidget".}
proc fcQColumnView_connect_updatePreviewWidget(self: pointer, slot: int) {.importc: "QColumnView_connect_updatePreviewWidget".}
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
proc fQColumnView_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QColumnView_virtualbase_metaObject".}
proc fcQColumnView_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_metaObject".}
proc fQColumnView_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QColumnView_virtualbase_metacast".}
proc fcQColumnView_override_virtual_metacast(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_metacast".}
proc fQColumnView_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QColumnView_virtualbase_metacall".}
proc fcQColumnView_override_virtual_metacall(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_metacall".}
proc fQColumnView_virtualbase_indexAt(self: pointer, point: pointer): pointer{.importc: "QColumnView_virtualbase_indexAt".}
proc fcQColumnView_override_virtual_indexAt(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_indexAt".}
proc fQColumnView_virtualbase_scrollTo(self: pointer, index: pointer, hint: cint): void{.importc: "QColumnView_virtualbase_scrollTo".}
proc fcQColumnView_override_virtual_scrollTo(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_scrollTo".}
proc fQColumnView_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QColumnView_virtualbase_sizeHint".}
proc fcQColumnView_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_sizeHint".}
proc fQColumnView_virtualbase_visualRect(self: pointer, index: pointer): pointer{.importc: "QColumnView_virtualbase_visualRect".}
proc fcQColumnView_override_virtual_visualRect(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_visualRect".}
proc fQColumnView_virtualbase_setModel(self: pointer, model: pointer): void{.importc: "QColumnView_virtualbase_setModel".}
proc fcQColumnView_override_virtual_setModel(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_setModel".}
proc fQColumnView_virtualbase_setSelectionModel(self: pointer, selectionModel: pointer): void{.importc: "QColumnView_virtualbase_setSelectionModel".}
proc fcQColumnView_override_virtual_setSelectionModel(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_setSelectionModel".}
proc fQColumnView_virtualbase_setRootIndex(self: pointer, index: pointer): void{.importc: "QColumnView_virtualbase_setRootIndex".}
proc fcQColumnView_override_virtual_setRootIndex(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_setRootIndex".}
proc fQColumnView_virtualbase_selectAll(self: pointer, ): void{.importc: "QColumnView_virtualbase_selectAll".}
proc fcQColumnView_override_virtual_selectAll(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_selectAll".}
proc fQColumnView_virtualbase_isIndexHidden(self: pointer, index: pointer): bool{.importc: "QColumnView_virtualbase_isIndexHidden".}
proc fcQColumnView_override_virtual_isIndexHidden(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_isIndexHidden".}
proc fQColumnView_virtualbase_moveCursor(self: pointer, cursorAction: cint, modifiers: cint): pointer{.importc: "QColumnView_virtualbase_moveCursor".}
proc fcQColumnView_override_virtual_moveCursor(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_moveCursor".}
proc fQColumnView_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_resizeEvent".}
proc fcQColumnView_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_resizeEvent".}
proc fQColumnView_virtualbase_setSelection(self: pointer, rect: pointer, command: cint): void{.importc: "QColumnView_virtualbase_setSelection".}
proc fcQColumnView_override_virtual_setSelection(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_setSelection".}
proc fQColumnView_virtualbase_visualRegionForSelection(self: pointer, selection: pointer): pointer{.importc: "QColumnView_virtualbase_visualRegionForSelection".}
proc fcQColumnView_override_virtual_visualRegionForSelection(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_visualRegionForSelection".}
proc fQColumnView_virtualbase_horizontalOffset(self: pointer, ): cint{.importc: "QColumnView_virtualbase_horizontalOffset".}
proc fcQColumnView_override_virtual_horizontalOffset(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_horizontalOffset".}
proc fQColumnView_virtualbase_verticalOffset(self: pointer, ): cint{.importc: "QColumnView_virtualbase_verticalOffset".}
proc fcQColumnView_override_virtual_verticalOffset(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_verticalOffset".}
proc fQColumnView_virtualbase_rowsInserted(self: pointer, parent: pointer, start: cint, endVal: cint): void{.importc: "QColumnView_virtualbase_rowsInserted".}
proc fcQColumnView_override_virtual_rowsInserted(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_rowsInserted".}
proc fQColumnView_virtualbase_currentChanged(self: pointer, current: pointer, previous: pointer): void{.importc: "QColumnView_virtualbase_currentChanged".}
proc fcQColumnView_override_virtual_currentChanged(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_currentChanged".}
proc fQColumnView_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void{.importc: "QColumnView_virtualbase_scrollContentsBy".}
proc fcQColumnView_override_virtual_scrollContentsBy(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_scrollContentsBy".}
proc fQColumnView_virtualbase_createColumn(self: pointer, rootIndex: pointer): pointer{.importc: "QColumnView_virtualbase_createColumn".}
proc fcQColumnView_override_virtual_createColumn(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_createColumn".}
proc fQColumnView_virtualbase_keyboardSearch(self: pointer, search: struct_miqt_string): void{.importc: "QColumnView_virtualbase_keyboardSearch".}
proc fcQColumnView_override_virtual_keyboardSearch(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_keyboardSearch".}
proc fQColumnView_virtualbase_sizeHintForRow(self: pointer, row: cint): cint{.importc: "QColumnView_virtualbase_sizeHintForRow".}
proc fcQColumnView_override_virtual_sizeHintForRow(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_sizeHintForRow".}
proc fQColumnView_virtualbase_sizeHintForColumn(self: pointer, column: cint): cint{.importc: "QColumnView_virtualbase_sizeHintForColumn".}
proc fcQColumnView_override_virtual_sizeHintForColumn(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_sizeHintForColumn".}
proc fQColumnView_virtualbase_itemDelegateForIndex(self: pointer, index: pointer): pointer{.importc: "QColumnView_virtualbase_itemDelegateForIndex".}
proc fcQColumnView_override_virtual_itemDelegateForIndex(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_itemDelegateForIndex".}
proc fQColumnView_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QColumnView_virtualbase_inputMethodQuery".}
proc fcQColumnView_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_inputMethodQuery".}
proc fQColumnView_virtualbase_reset(self: pointer, ): void{.importc: "QColumnView_virtualbase_reset".}
proc fcQColumnView_override_virtual_reset(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_reset".}
proc fQColumnView_virtualbase_doItemsLayout(self: pointer, ): void{.importc: "QColumnView_virtualbase_doItemsLayout".}
proc fcQColumnView_override_virtual_doItemsLayout(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_doItemsLayout".}
proc fQColumnView_virtualbase_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void{.importc: "QColumnView_virtualbase_dataChanged".}
proc fcQColumnView_override_virtual_dataChanged(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_dataChanged".}
proc fQColumnView_virtualbase_rowsAboutToBeRemoved(self: pointer, parent: pointer, start: cint, endVal: cint): void{.importc: "QColumnView_virtualbase_rowsAboutToBeRemoved".}
proc fcQColumnView_override_virtual_rowsAboutToBeRemoved(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_rowsAboutToBeRemoved".}
proc fQColumnView_virtualbase_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void{.importc: "QColumnView_virtualbase_selectionChanged".}
proc fcQColumnView_override_virtual_selectionChanged(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_selectionChanged".}
proc fQColumnView_virtualbase_updateEditorData(self: pointer, ): void{.importc: "QColumnView_virtualbase_updateEditorData".}
proc fcQColumnView_override_virtual_updateEditorData(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_updateEditorData".}
proc fQColumnView_virtualbase_updateEditorGeometries(self: pointer, ): void{.importc: "QColumnView_virtualbase_updateEditorGeometries".}
proc fcQColumnView_override_virtual_updateEditorGeometries(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_updateEditorGeometries".}
proc fQColumnView_virtualbase_updateGeometries(self: pointer, ): void{.importc: "QColumnView_virtualbase_updateGeometries".}
proc fcQColumnView_override_virtual_updateGeometries(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_updateGeometries".}
proc fQColumnView_virtualbase_verticalScrollbarAction(self: pointer, action: cint): void{.importc: "QColumnView_virtualbase_verticalScrollbarAction".}
proc fcQColumnView_override_virtual_verticalScrollbarAction(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_verticalScrollbarAction".}
proc fQColumnView_virtualbase_horizontalScrollbarAction(self: pointer, action: cint): void{.importc: "QColumnView_virtualbase_horizontalScrollbarAction".}
proc fcQColumnView_override_virtual_horizontalScrollbarAction(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_horizontalScrollbarAction".}
proc fQColumnView_virtualbase_verticalScrollbarValueChanged(self: pointer, value: cint): void{.importc: "QColumnView_virtualbase_verticalScrollbarValueChanged".}
proc fcQColumnView_override_virtual_verticalScrollbarValueChanged(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_verticalScrollbarValueChanged".}
proc fQColumnView_virtualbase_horizontalScrollbarValueChanged(self: pointer, value: cint): void{.importc: "QColumnView_virtualbase_horizontalScrollbarValueChanged".}
proc fcQColumnView_override_virtual_horizontalScrollbarValueChanged(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_horizontalScrollbarValueChanged".}
proc fQColumnView_virtualbase_closeEditor(self: pointer, editor: pointer, hint: cint): void{.importc: "QColumnView_virtualbase_closeEditor".}
proc fcQColumnView_override_virtual_closeEditor(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_closeEditor".}
proc fQColumnView_virtualbase_commitData(self: pointer, editor: pointer): void{.importc: "QColumnView_virtualbase_commitData".}
proc fcQColumnView_override_virtual_commitData(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_commitData".}
proc fQColumnView_virtualbase_editorDestroyed(self: pointer, editor: pointer): void{.importc: "QColumnView_virtualbase_editorDestroyed".}
proc fcQColumnView_override_virtual_editorDestroyed(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_editorDestroyed".}
proc fQColumnView_virtualbase_selectedIndexes(self: pointer, ): struct_miqt_array{.importc: "QColumnView_virtualbase_selectedIndexes".}
proc fcQColumnView_override_virtual_selectedIndexes(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_selectedIndexes".}
proc fQColumnView_virtualbase_edit2(self: pointer, index: pointer, trigger: cint, event: pointer): bool{.importc: "QColumnView_virtualbase_edit2".}
proc fcQColumnView_override_virtual_edit2(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_edit2".}
proc fQColumnView_virtualbase_selectionCommand(self: pointer, index: pointer, event: pointer): cint{.importc: "QColumnView_virtualbase_selectionCommand".}
proc fcQColumnView_override_virtual_selectionCommand(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_selectionCommand".}
proc fQColumnView_virtualbase_startDrag(self: pointer, supportedActions: cint): void{.importc: "QColumnView_virtualbase_startDrag".}
proc fcQColumnView_override_virtual_startDrag(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_startDrag".}
proc fQColumnView_virtualbase_initViewItemOption(self: pointer, option: pointer): void{.importc: "QColumnView_virtualbase_initViewItemOption".}
proc fcQColumnView_override_virtual_initViewItemOption(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_initViewItemOption".}
proc fQColumnView_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QColumnView_virtualbase_focusNextPrevChild".}
proc fcQColumnView_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_focusNextPrevChild".}
proc fQColumnView_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QColumnView_virtualbase_event".}
proc fcQColumnView_override_virtual_event(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_event".}
proc fQColumnView_virtualbase_viewportEvent(self: pointer, event: pointer): bool{.importc: "QColumnView_virtualbase_viewportEvent".}
proc fcQColumnView_override_virtual_viewportEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_viewportEvent".}
proc fQColumnView_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_mousePressEvent".}
proc fcQColumnView_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_mousePressEvent".}
proc fQColumnView_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_mouseMoveEvent".}
proc fcQColumnView_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_mouseMoveEvent".}
proc fQColumnView_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_mouseReleaseEvent".}
proc fcQColumnView_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_mouseReleaseEvent".}
proc fQColumnView_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_mouseDoubleClickEvent".}
proc fcQColumnView_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_mouseDoubleClickEvent".}
proc fQColumnView_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_dragEnterEvent".}
proc fcQColumnView_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_dragEnterEvent".}
proc fQColumnView_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_dragMoveEvent".}
proc fcQColumnView_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_dragMoveEvent".}
proc fQColumnView_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_dragLeaveEvent".}
proc fcQColumnView_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_dragLeaveEvent".}
proc fQColumnView_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_dropEvent".}
proc fcQColumnView_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_dropEvent".}
proc fQColumnView_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_focusInEvent".}
proc fcQColumnView_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_focusInEvent".}
proc fQColumnView_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_focusOutEvent".}
proc fcQColumnView_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_focusOutEvent".}
proc fQColumnView_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_keyPressEvent".}
proc fcQColumnView_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_keyPressEvent".}
proc fQColumnView_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_timerEvent".}
proc fcQColumnView_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_timerEvent".}
proc fQColumnView_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_inputMethodEvent".}
proc fcQColumnView_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_inputMethodEvent".}
proc fQColumnView_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool{.importc: "QColumnView_virtualbase_eventFilter".}
proc fcQColumnView_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_eventFilter".}
proc fQColumnView_virtualbase_viewportSizeHint(self: pointer, ): pointer{.importc: "QColumnView_virtualbase_viewportSizeHint".}
proc fcQColumnView_override_virtual_viewportSizeHint(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_viewportSizeHint".}
proc fQColumnView_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QColumnView_virtualbase_minimumSizeHint".}
proc fcQColumnView_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_minimumSizeHint".}
proc fQColumnView_virtualbase_setupViewport(self: pointer, viewport: pointer): void{.importc: "QColumnView_virtualbase_setupViewport".}
proc fcQColumnView_override_virtual_setupViewport(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_setupViewport".}
proc fQColumnView_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QColumnView_virtualbase_paintEvent".}
proc fcQColumnView_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_paintEvent".}
proc fQColumnView_virtualbase_wheelEvent(self: pointer, param1: pointer): void{.importc: "QColumnView_virtualbase_wheelEvent".}
proc fcQColumnView_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_wheelEvent".}
proc fQColumnView_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QColumnView_virtualbase_contextMenuEvent".}
proc fcQColumnView_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_contextMenuEvent".}
proc fQColumnView_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QColumnView_virtualbase_changeEvent".}
proc fcQColumnView_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_changeEvent".}
proc fQColumnView_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QColumnView_virtualbase_initStyleOption".}
proc fcQColumnView_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_initStyleOption".}
proc fQColumnView_virtualbase_devType(self: pointer, ): cint{.importc: "QColumnView_virtualbase_devType".}
proc fcQColumnView_override_virtual_devType(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_devType".}
proc fQColumnView_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QColumnView_virtualbase_setVisible".}
proc fcQColumnView_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_setVisible".}
proc fQColumnView_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QColumnView_virtualbase_heightForWidth".}
proc fcQColumnView_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_heightForWidth".}
proc fQColumnView_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QColumnView_virtualbase_hasHeightForWidth".}
proc fcQColumnView_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_hasHeightForWidth".}
proc fQColumnView_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QColumnView_virtualbase_paintEngine".}
proc fcQColumnView_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_paintEngine".}
proc fQColumnView_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_keyReleaseEvent".}
proc fcQColumnView_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_keyReleaseEvent".}
proc fQColumnView_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_enterEvent".}
proc fcQColumnView_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_enterEvent".}
proc fQColumnView_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_leaveEvent".}
proc fcQColumnView_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_leaveEvent".}
proc fQColumnView_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_moveEvent".}
proc fcQColumnView_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_moveEvent".}
proc fQColumnView_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_closeEvent".}
proc fcQColumnView_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_closeEvent".}
proc fQColumnView_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_tabletEvent".}
proc fcQColumnView_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_tabletEvent".}
proc fQColumnView_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_actionEvent".}
proc fcQColumnView_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_actionEvent".}
proc fQColumnView_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_showEvent".}
proc fcQColumnView_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_showEvent".}
proc fQColumnView_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_hideEvent".}
proc fcQColumnView_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_hideEvent".}
proc fQColumnView_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QColumnView_virtualbase_nativeEvent".}
proc fcQColumnView_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_nativeEvent".}
proc fQColumnView_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QColumnView_virtualbase_metric".}
proc fcQColumnView_override_virtual_metric(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_metric".}
proc fQColumnView_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QColumnView_virtualbase_initPainter".}
proc fcQColumnView_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_initPainter".}
proc fQColumnView_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QColumnView_virtualbase_redirected".}
proc fcQColumnView_override_virtual_redirected(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_redirected".}
proc fQColumnView_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QColumnView_virtualbase_sharedPainter".}
proc fcQColumnView_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_sharedPainter".}
proc fQColumnView_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_childEvent".}
proc fcQColumnView_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_childEvent".}
proc fQColumnView_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_customEvent".}
proc fcQColumnView_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_customEvent".}
proc fQColumnView_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QColumnView_virtualbase_connectNotify".}
proc fcQColumnView_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_connectNotify".}
proc fQColumnView_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QColumnView_virtualbase_disconnectNotify".}
proc fcQColumnView_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_disconnectNotify".}
proc fcQColumnView_staticMetaObject(): pointer {.importc: "QColumnView_staticMetaObject".}
proc fcQColumnView_delete(self: pointer) {.importc: "QColumnView_delete".}


func init*(T: type gen_qcolumnview_types.QColumnView, h: ptr cQColumnView): gen_qcolumnview_types.QColumnView =
  T(h: h)
proc create*(T: type gen_qcolumnview_types.QColumnView, parent: gen_qwidget_types.QWidget): gen_qcolumnview_types.QColumnView =
  gen_qcolumnview_types.QColumnView.init(fcQColumnView_new(parent.h))

proc create*(T: type gen_qcolumnview_types.QColumnView, ): gen_qcolumnview_types.QColumnView =
  gen_qcolumnview_types.QColumnView.init(fcQColumnView_new2())

proc metaObject*(self: gen_qcolumnview_types.QColumnView, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQColumnView_metaObject(self.h))

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
proc miqt_exec_callback_QColumnView_updatePreviewWidget(slot: int, index: pointer) {.exportc.} =
  let nimfunc = cast[ptr QColumnViewupdatePreviewWidgetSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  nimfunc[](slotval1)

proc onupdatePreviewWidget*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewupdatePreviewWidgetSlot) =
  var tmp = new QColumnViewupdatePreviewWidgetSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_connect_updatePreviewWidget(self.h, cast[int](addr tmp[]))

proc indexAt*(self: gen_qcolumnview_types.QColumnView, point: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQColumnView_indexAt(self.h, point.h))

proc scrollTo*(self: gen_qcolumnview_types.QColumnView, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void =
  fcQColumnView_scrollTo(self.h, index.h, cint(hint))

proc sizeHint*(self: gen_qcolumnview_types.QColumnView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQColumnView_sizeHint(self.h))

proc visualRect*(self: gen_qcolumnview_types.QColumnView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQColumnView_visualRect(self.h, index.h))

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
  gen_qwidget_types.QWidget(h: fcQColumnView_previewWidget(self.h))

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

proc QColumnViewmetaObject*(self: gen_qcolumnview_types.QColumnView, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQColumnView_virtualbase_metaObject(self.h))

type QColumnViewmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewmetaObjectProc) =
  # TODO check subclass
  var tmp = new QColumnViewmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_metaObject(self: ptr cQColumnView, slot: int): pointer {.exportc: "miqt_exec_callback_QColumnView_metaObject ".} =
  var nimfunc = cast[ptr QColumnViewmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QColumnViewmetacast*(self: gen_qcolumnview_types.QColumnView, param1: cstring): pointer =
  fQColumnView_virtualbase_metacast(self.h, param1)

type QColumnViewmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewmetacastProc) =
  # TODO check subclass
  var tmp = new QColumnViewmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_metacast(self: ptr cQColumnView, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QColumnView_metacast ".} =
  var nimfunc = cast[ptr QColumnViewmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QColumnViewmetacall*(self: gen_qcolumnview_types.QColumnView, param1: cint, param2: cint, param3: pointer): cint =
  fQColumnView_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QColumnViewmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewmetacallProc) =
  # TODO check subclass
  var tmp = new QColumnViewmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_metacall(self: ptr cQColumnView, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QColumnView_metacall ".} =
  var nimfunc = cast[ptr QColumnViewmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QColumnViewindexAt*(self: gen_qcolumnview_types.QColumnView, point: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQColumnView_virtualbase_indexAt(self.h, point.h))

type QColumnViewindexAtProc* = proc(point: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex
proc onindexAt*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewindexAtProc) =
  # TODO check subclass
  var tmp = new QColumnViewindexAtProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_indexAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_indexAt(self: ptr cQColumnView, slot: int, point: pointer): pointer {.exportc: "miqt_exec_callback_QColumnView_indexAt ".} =
  var nimfunc = cast[ptr QColumnViewindexAtProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: point)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QColumnViewscrollTo*(self: gen_qcolumnview_types.QColumnView, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void =
  fQColumnView_virtualbase_scrollTo(self.h, index.h, cint(hint))

type QColumnViewscrollToProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void
proc onscrollTo*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewscrollToProc) =
  # TODO check subclass
  var tmp = new QColumnViewscrollToProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_scrollTo(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_scrollTo(self: ptr cQColumnView, slot: int, index: pointer, hint: cint): void {.exportc: "miqt_exec_callback_QColumnView_scrollTo ".} =
  var nimfunc = cast[ptr QColumnViewscrollToProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = cint(hint)


  nimfunc[](slotval1, slotval2)
proc QColumnViewsizeHint*(self: gen_qcolumnview_types.QColumnView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQColumnView_virtualbase_sizeHint(self.h))

type QColumnViewsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewsizeHintProc) =
  # TODO check subclass
  var tmp = new QColumnViewsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_sizeHint(self: ptr cQColumnView, slot: int): pointer {.exportc: "miqt_exec_callback_QColumnView_sizeHint ".} =
  var nimfunc = cast[ptr QColumnViewsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QColumnViewvisualRect*(self: gen_qcolumnview_types.QColumnView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fQColumnView_virtualbase_visualRect(self.h, index.h))

type QColumnViewvisualRectProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect
proc onvisualRect*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewvisualRectProc) =
  # TODO check subclass
  var tmp = new QColumnViewvisualRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_visualRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_visualRect(self: ptr cQColumnView, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QColumnView_visualRect ".} =
  var nimfunc = cast[ptr QColumnViewvisualRectProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QColumnViewsetModel*(self: gen_qcolumnview_types.QColumnView, model: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fQColumnView_virtualbase_setModel(self.h, model.h)

type QColumnViewsetModelProc* = proc(model: gen_qabstractitemmodel_types.QAbstractItemModel): void
proc onsetModel*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewsetModelProc) =
  # TODO check subclass
  var tmp = new QColumnViewsetModelProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_setModel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_setModel(self: ptr cQColumnView, slot: int, model: pointer): void {.exportc: "miqt_exec_callback_QColumnView_setModel ".} =
  var nimfunc = cast[ptr QColumnViewsetModelProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model)


  nimfunc[](slotval1)
proc QColumnViewsetSelectionModel*(self: gen_qcolumnview_types.QColumnView, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void =
  fQColumnView_virtualbase_setSelectionModel(self.h, selectionModel.h)

type QColumnViewsetSelectionModelProc* = proc(selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void
proc onsetSelectionModel*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewsetSelectionModelProc) =
  # TODO check subclass
  var tmp = new QColumnViewsetSelectionModelProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_setSelectionModel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_setSelectionModel(self: ptr cQColumnView, slot: int, selectionModel: pointer): void {.exportc: "miqt_exec_callback_QColumnView_setSelectionModel ".} =
  var nimfunc = cast[ptr QColumnViewsetSelectionModelProc](cast[pointer](slot))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelectionModel(h: selectionModel)


  nimfunc[](slotval1)
proc QColumnViewsetRootIndex*(self: gen_qcolumnview_types.QColumnView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fQColumnView_virtualbase_setRootIndex(self.h, index.h)

type QColumnViewsetRootIndexProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): void
proc onsetRootIndex*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewsetRootIndexProc) =
  # TODO check subclass
  var tmp = new QColumnViewsetRootIndexProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_setRootIndex(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_setRootIndex(self: ptr cQColumnView, slot: int, index: pointer): void {.exportc: "miqt_exec_callback_QColumnView_setRootIndex ".} =
  var nimfunc = cast[ptr QColumnViewsetRootIndexProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  nimfunc[](slotval1)
proc QColumnViewselectAll*(self: gen_qcolumnview_types.QColumnView, ): void =
  fQColumnView_virtualbase_selectAll(self.h)

type QColumnViewselectAllProc* = proc(): void
proc onselectAll*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewselectAllProc) =
  # TODO check subclass
  var tmp = new QColumnViewselectAllProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_selectAll(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_selectAll(self: ptr cQColumnView, slot: int): void {.exportc: "miqt_exec_callback_QColumnView_selectAll ".} =
  var nimfunc = cast[ptr QColumnViewselectAllProc](cast[pointer](slot))

  nimfunc[]()
proc QColumnViewisIndexHidden*(self: gen_qcolumnview_types.QColumnView, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQColumnView_virtualbase_isIndexHidden(self.h, index.h)

type QColumnViewisIndexHiddenProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): bool
proc onisIndexHidden*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewisIndexHiddenProc) =
  # TODO check subclass
  var tmp = new QColumnViewisIndexHiddenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_isIndexHidden(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_isIndexHidden(self: ptr cQColumnView, slot: int, index: pointer): bool {.exportc: "miqt_exec_callback_QColumnView_isIndexHidden ".} =
  var nimfunc = cast[ptr QColumnViewisIndexHiddenProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QColumnViewmoveCursor*(self: gen_qcolumnview_types.QColumnView, cursorAction: cint, modifiers: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQColumnView_virtualbase_moveCursor(self.h, cint(cursorAction), cint(modifiers)))

type QColumnViewmoveCursorProc* = proc(cursorAction: cint, modifiers: cint): gen_qabstractitemmodel_types.QModelIndex
proc onmoveCursor*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewmoveCursorProc) =
  # TODO check subclass
  var tmp = new QColumnViewmoveCursorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_moveCursor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_moveCursor(self: ptr cQColumnView, slot: int, cursorAction: cint, modifiers: cint): pointer {.exportc: "miqt_exec_callback_QColumnView_moveCursor ".} =
  var nimfunc = cast[ptr QColumnViewmoveCursorProc](cast[pointer](slot))
  let slotval1 = cint(cursorAction)

  let slotval2 = cint(modifiers)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QColumnViewresizeEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qevent_types.QResizeEvent): void =
  fQColumnView_virtualbase_resizeEvent(self.h, event.h)

type QColumnViewresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewresizeEventProc) =
  # TODO check subclass
  var tmp = new QColumnViewresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_resizeEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_resizeEvent ".} =
  var nimfunc = cast[ptr QColumnViewresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QColumnViewsetSelection*(self: gen_qcolumnview_types.QColumnView, rect: gen_qrect_types.QRect, command: cint): void =
  fQColumnView_virtualbase_setSelection(self.h, rect.h, cint(command))

type QColumnViewsetSelectionProc* = proc(rect: gen_qrect_types.QRect, command: cint): void
proc onsetSelection*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewsetSelectionProc) =
  # TODO check subclass
  var tmp = new QColumnViewsetSelectionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_setSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_setSelection(self: ptr cQColumnView, slot: int, rect: pointer, command: cint): void {.exportc: "miqt_exec_callback_QColumnView_setSelection ".} =
  var nimfunc = cast[ptr QColumnViewsetSelectionProc](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRect(h: rect)

  let slotval2 = cint(command)


  nimfunc[](slotval1, slotval2)
proc QColumnViewvisualRegionForSelection*(self: gen_qcolumnview_types.QColumnView, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fQColumnView_virtualbase_visualRegionForSelection(self.h, selection.h))

type QColumnViewvisualRegionForSelectionProc* = proc(selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion
proc onvisualRegionForSelection*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewvisualRegionForSelectionProc) =
  # TODO check subclass
  var tmp = new QColumnViewvisualRegionForSelectionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_visualRegionForSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_visualRegionForSelection(self: ptr cQColumnView, slot: int, selection: pointer): pointer {.exportc: "miqt_exec_callback_QColumnView_visualRegionForSelection ".} =
  var nimfunc = cast[ptr QColumnViewvisualRegionForSelectionProc](cast[pointer](slot))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QColumnViewhorizontalOffset*(self: gen_qcolumnview_types.QColumnView, ): cint =
  fQColumnView_virtualbase_horizontalOffset(self.h)

type QColumnViewhorizontalOffsetProc* = proc(): cint
proc onhorizontalOffset*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewhorizontalOffsetProc) =
  # TODO check subclass
  var tmp = new QColumnViewhorizontalOffsetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_horizontalOffset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_horizontalOffset(self: ptr cQColumnView, slot: int): cint {.exportc: "miqt_exec_callback_QColumnView_horizontalOffset ".} =
  var nimfunc = cast[ptr QColumnViewhorizontalOffsetProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QColumnViewverticalOffset*(self: gen_qcolumnview_types.QColumnView, ): cint =
  fQColumnView_virtualbase_verticalOffset(self.h)

type QColumnViewverticalOffsetProc* = proc(): cint
proc onverticalOffset*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewverticalOffsetProc) =
  # TODO check subclass
  var tmp = new QColumnViewverticalOffsetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_verticalOffset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_verticalOffset(self: ptr cQColumnView, slot: int): cint {.exportc: "miqt_exec_callback_QColumnView_verticalOffset ".} =
  var nimfunc = cast[ptr QColumnViewverticalOffsetProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QColumnViewrowsInserted*(self: gen_qcolumnview_types.QColumnView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fQColumnView_virtualbase_rowsInserted(self.h, parent.h, start, endVal)

type QColumnViewrowsInsertedProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void
proc onrowsInserted*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewrowsInsertedProc) =
  # TODO check subclass
  var tmp = new QColumnViewrowsInsertedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_rowsInserted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_rowsInserted(self: ptr cQColumnView, slot: int, parent: pointer, start: cint, endVal: cint): void {.exportc: "miqt_exec_callback_QColumnView_rowsInserted ".} =
  var nimfunc = cast[ptr QColumnViewrowsInsertedProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)

  let slotval2 = start

  let slotval3 = endVal


  nimfunc[](slotval1, slotval2, slotval3)
proc QColumnViewcurrentChanged*(self: gen_qcolumnview_types.QColumnView, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void =
  fQColumnView_virtualbase_currentChanged(self.h, current.h, previous.h)

type QColumnViewcurrentChangedProc* = proc(current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void
proc oncurrentChanged*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewcurrentChangedProc) =
  # TODO check subclass
  var tmp = new QColumnViewcurrentChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_currentChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_currentChanged(self: ptr cQColumnView, slot: int, current: pointer, previous: pointer): void {.exportc: "miqt_exec_callback_QColumnView_currentChanged ".} =
  var nimfunc = cast[ptr QColumnViewcurrentChangedProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: current)

  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: previous)


  nimfunc[](slotval1, slotval2)
proc QColumnViewscrollContentsBy*(self: gen_qcolumnview_types.QColumnView, dx: cint, dy: cint): void =
  fQColumnView_virtualbase_scrollContentsBy(self.h, dx, dy)

type QColumnViewscrollContentsByProc* = proc(dx: cint, dy: cint): void
proc onscrollContentsBy*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewscrollContentsByProc) =
  # TODO check subclass
  var tmp = new QColumnViewscrollContentsByProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_scrollContentsBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_scrollContentsBy(self: ptr cQColumnView, slot: int, dx: cint, dy: cint): void {.exportc: "miqt_exec_callback_QColumnView_scrollContentsBy ".} =
  var nimfunc = cast[ptr QColumnViewscrollContentsByProc](cast[pointer](slot))
  let slotval1 = dx

  let slotval2 = dy


  nimfunc[](slotval1, slotval2)
proc QColumnViewcreateColumn*(self: gen_qcolumnview_types.QColumnView, rootIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemview_types.QAbstractItemView =
  gen_qabstractitemview_types.QAbstractItemView(h: fQColumnView_virtualbase_createColumn(self.h, rootIndex.h))

type QColumnViewcreateColumnProc* = proc(rootIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemview_types.QAbstractItemView
proc oncreateColumn*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewcreateColumnProc) =
  # TODO check subclass
  var tmp = new QColumnViewcreateColumnProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_createColumn(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_createColumn(self: ptr cQColumnView, slot: int, rootIndex: pointer): pointer {.exportc: "miqt_exec_callback_QColumnView_createColumn ".} =
  var nimfunc = cast[ptr QColumnViewcreateColumnProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: rootIndex)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QColumnViewkeyboardSearch*(self: gen_qcolumnview_types.QColumnView, search: string): void =
  fQColumnView_virtualbase_keyboardSearch(self.h, struct_miqt_string(data: search, len: csize_t(len(search))))

type QColumnViewkeyboardSearchProc* = proc(search: string): void
proc onkeyboardSearch*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewkeyboardSearchProc) =
  # TODO check subclass
  var tmp = new QColumnViewkeyboardSearchProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_keyboardSearch(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_keyboardSearch(self: ptr cQColumnView, slot: int, search: struct_miqt_string): void {.exportc: "miqt_exec_callback_QColumnView_keyboardSearch ".} =
  var nimfunc = cast[ptr QColumnViewkeyboardSearchProc](cast[pointer](slot))
  let vsearch_ms = search
  let vsearchx_ret = string.fromBytes(toOpenArrayByte(vsearch_ms.data, 0, int(vsearch_ms.len)-1))
  c_free(vsearch_ms.data)
  let slotval1 = vsearchx_ret


  nimfunc[](slotval1)
proc QColumnViewsizeHintForRow*(self: gen_qcolumnview_types.QColumnView, row: cint): cint =
  fQColumnView_virtualbase_sizeHintForRow(self.h, row)

type QColumnViewsizeHintForRowProc* = proc(row: cint): cint
proc onsizeHintForRow*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewsizeHintForRowProc) =
  # TODO check subclass
  var tmp = new QColumnViewsizeHintForRowProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_sizeHintForRow(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_sizeHintForRow(self: ptr cQColumnView, slot: int, row: cint): cint {.exportc: "miqt_exec_callback_QColumnView_sizeHintForRow ".} =
  var nimfunc = cast[ptr QColumnViewsizeHintForRowProc](cast[pointer](slot))
  let slotval1 = row


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QColumnViewsizeHintForColumn*(self: gen_qcolumnview_types.QColumnView, column: cint): cint =
  fQColumnView_virtualbase_sizeHintForColumn(self.h, column)

type QColumnViewsizeHintForColumnProc* = proc(column: cint): cint
proc onsizeHintForColumn*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewsizeHintForColumnProc) =
  # TODO check subclass
  var tmp = new QColumnViewsizeHintForColumnProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_sizeHintForColumn(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_sizeHintForColumn(self: ptr cQColumnView, slot: int, column: cint): cint {.exportc: "miqt_exec_callback_QColumnView_sizeHintForColumn ".} =
  var nimfunc = cast[ptr QColumnViewsizeHintForColumnProc](cast[pointer](slot))
  let slotval1 = column


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QColumnViewitemDelegateForIndex*(self: gen_qcolumnview_types.QColumnView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemdelegate_types.QAbstractItemDelegate =
  gen_qabstractitemdelegate_types.QAbstractItemDelegate(h: fQColumnView_virtualbase_itemDelegateForIndex(self.h, index.h))

type QColumnViewitemDelegateForIndexProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemdelegate_types.QAbstractItemDelegate
proc onitemDelegateForIndex*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewitemDelegateForIndexProc) =
  # TODO check subclass
  var tmp = new QColumnViewitemDelegateForIndexProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_itemDelegateForIndex(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_itemDelegateForIndex(self: ptr cQColumnView, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QColumnView_itemDelegateForIndex ".} =
  var nimfunc = cast[ptr QColumnViewitemDelegateForIndexProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QColumnViewinputMethodQuery*(self: gen_qcolumnview_types.QColumnView, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQColumnView_virtualbase_inputMethodQuery(self.h, cint(query)))

type QColumnViewinputMethodQueryProc* = proc(query: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QColumnViewinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_inputMethodQuery(self: ptr cQColumnView, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QColumnView_inputMethodQuery ".} =
  var nimfunc = cast[ptr QColumnViewinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(query)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QColumnViewreset*(self: gen_qcolumnview_types.QColumnView, ): void =
  fQColumnView_virtualbase_reset(self.h)

type QColumnViewresetProc* = proc(): void
proc onreset*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewresetProc) =
  # TODO check subclass
  var tmp = new QColumnViewresetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_reset(self: ptr cQColumnView, slot: int): void {.exportc: "miqt_exec_callback_QColumnView_reset ".} =
  var nimfunc = cast[ptr QColumnViewresetProc](cast[pointer](slot))

  nimfunc[]()
proc QColumnViewdoItemsLayout*(self: gen_qcolumnview_types.QColumnView, ): void =
  fQColumnView_virtualbase_doItemsLayout(self.h)

type QColumnViewdoItemsLayoutProc* = proc(): void
proc ondoItemsLayout*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewdoItemsLayoutProc) =
  # TODO check subclass
  var tmp = new QColumnViewdoItemsLayoutProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_doItemsLayout(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_doItemsLayout(self: ptr cQColumnView, slot: int): void {.exportc: "miqt_exec_callback_QColumnView_doItemsLayout ".} =
  var nimfunc = cast[ptr QColumnViewdoItemsLayoutProc](cast[pointer](slot))

  nimfunc[]()
proc QColumnViewdataChanged*(self: gen_qcolumnview_types.QColumnView, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: seq[cint]): void =
  var roles_CArray = newSeq[cint](len(roles))
  for i in 0..<len(roles):
    roles_CArray[i] = roles[i]

  fQColumnView_virtualbase_dataChanged(self.h, topLeft.h, bottomRight.h, struct_miqt_array(len: csize_t(len(roles)), data: if len(roles) == 0: nil else: addr(roles_CArray[0])))

type QColumnViewdataChangedProc* = proc(topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: seq[cint]): void
proc ondataChanged*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewdataChangedProc) =
  # TODO check subclass
  var tmp = new QColumnViewdataChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_dataChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_dataChanged(self: ptr cQColumnView, slot: int, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.exportc: "miqt_exec_callback_QColumnView_dataChanged ".} =
  var nimfunc = cast[ptr QColumnViewdataChangedProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: topLeft)

  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: bottomRight)

  var vroles_ma = roles
  var vrolesx_ret = newSeq[cint](int(vroles_ma.len))
  let vroles_outCast = cast[ptr UncheckedArray[cint]](vroles_ma.data)
  for i in 0 ..< vroles_ma.len:
    vrolesx_ret[i] = vroles_outCast[i]
  let slotval3 = vrolesx_ret


  nimfunc[](slotval1, slotval2, slotval3)
proc QColumnViewrowsAboutToBeRemoved*(self: gen_qcolumnview_types.QColumnView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fQColumnView_virtualbase_rowsAboutToBeRemoved(self.h, parent.h, start, endVal)

type QColumnViewrowsAboutToBeRemovedProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void
proc onrowsAboutToBeRemoved*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewrowsAboutToBeRemovedProc) =
  # TODO check subclass
  var tmp = new QColumnViewrowsAboutToBeRemovedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_rowsAboutToBeRemoved(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_rowsAboutToBeRemoved(self: ptr cQColumnView, slot: int, parent: pointer, start: cint, endVal: cint): void {.exportc: "miqt_exec_callback_QColumnView_rowsAboutToBeRemoved ".} =
  var nimfunc = cast[ptr QColumnViewrowsAboutToBeRemovedProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)

  let slotval2 = start

  let slotval3 = endVal


  nimfunc[](slotval1, slotval2, slotval3)
proc QColumnViewselectionChanged*(self: gen_qcolumnview_types.QColumnView, selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void =
  fQColumnView_virtualbase_selectionChanged(self.h, selected.h, deselected.h)

type QColumnViewselectionChangedProc* = proc(selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void
proc onselectionChanged*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewselectionChangedProc) =
  # TODO check subclass
  var tmp = new QColumnViewselectionChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_selectionChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_selectionChanged(self: ptr cQColumnView, slot: int, selected: pointer, deselected: pointer): void {.exportc: "miqt_exec_callback_QColumnView_selectionChanged ".} =
  var nimfunc = cast[ptr QColumnViewselectionChangedProc](cast[pointer](slot))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selected)

  let slotval2 = gen_qitemselectionmodel_types.QItemSelection(h: deselected)


  nimfunc[](slotval1, slotval2)
proc QColumnViewupdateEditorData*(self: gen_qcolumnview_types.QColumnView, ): void =
  fQColumnView_virtualbase_updateEditorData(self.h)

type QColumnViewupdateEditorDataProc* = proc(): void
proc onupdateEditorData*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewupdateEditorDataProc) =
  # TODO check subclass
  var tmp = new QColumnViewupdateEditorDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_updateEditorData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_updateEditorData(self: ptr cQColumnView, slot: int): void {.exportc: "miqt_exec_callback_QColumnView_updateEditorData ".} =
  var nimfunc = cast[ptr QColumnViewupdateEditorDataProc](cast[pointer](slot))

  nimfunc[]()
proc QColumnViewupdateEditorGeometries*(self: gen_qcolumnview_types.QColumnView, ): void =
  fQColumnView_virtualbase_updateEditorGeometries(self.h)

type QColumnViewupdateEditorGeometriesProc* = proc(): void
proc onupdateEditorGeometries*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewupdateEditorGeometriesProc) =
  # TODO check subclass
  var tmp = new QColumnViewupdateEditorGeometriesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_updateEditorGeometries(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_updateEditorGeometries(self: ptr cQColumnView, slot: int): void {.exportc: "miqt_exec_callback_QColumnView_updateEditorGeometries ".} =
  var nimfunc = cast[ptr QColumnViewupdateEditorGeometriesProc](cast[pointer](slot))

  nimfunc[]()
proc QColumnViewupdateGeometries*(self: gen_qcolumnview_types.QColumnView, ): void =
  fQColumnView_virtualbase_updateGeometries(self.h)

type QColumnViewupdateGeometriesProc* = proc(): void
proc onupdateGeometries*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewupdateGeometriesProc) =
  # TODO check subclass
  var tmp = new QColumnViewupdateGeometriesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_updateGeometries(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_updateGeometries(self: ptr cQColumnView, slot: int): void {.exportc: "miqt_exec_callback_QColumnView_updateGeometries ".} =
  var nimfunc = cast[ptr QColumnViewupdateGeometriesProc](cast[pointer](slot))

  nimfunc[]()
proc QColumnViewverticalScrollbarAction*(self: gen_qcolumnview_types.QColumnView, action: cint): void =
  fQColumnView_virtualbase_verticalScrollbarAction(self.h, action)

type QColumnViewverticalScrollbarActionProc* = proc(action: cint): void
proc onverticalScrollbarAction*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewverticalScrollbarActionProc) =
  # TODO check subclass
  var tmp = new QColumnViewverticalScrollbarActionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_verticalScrollbarAction(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_verticalScrollbarAction(self: ptr cQColumnView, slot: int, action: cint): void {.exportc: "miqt_exec_callback_QColumnView_verticalScrollbarAction ".} =
  var nimfunc = cast[ptr QColumnViewverticalScrollbarActionProc](cast[pointer](slot))
  let slotval1 = action


  nimfunc[](slotval1)
proc QColumnViewhorizontalScrollbarAction*(self: gen_qcolumnview_types.QColumnView, action: cint): void =
  fQColumnView_virtualbase_horizontalScrollbarAction(self.h, action)

type QColumnViewhorizontalScrollbarActionProc* = proc(action: cint): void
proc onhorizontalScrollbarAction*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewhorizontalScrollbarActionProc) =
  # TODO check subclass
  var tmp = new QColumnViewhorizontalScrollbarActionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_horizontalScrollbarAction(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_horizontalScrollbarAction(self: ptr cQColumnView, slot: int, action: cint): void {.exportc: "miqt_exec_callback_QColumnView_horizontalScrollbarAction ".} =
  var nimfunc = cast[ptr QColumnViewhorizontalScrollbarActionProc](cast[pointer](slot))
  let slotval1 = action


  nimfunc[](slotval1)
proc QColumnViewverticalScrollbarValueChanged*(self: gen_qcolumnview_types.QColumnView, value: cint): void =
  fQColumnView_virtualbase_verticalScrollbarValueChanged(self.h, value)

type QColumnViewverticalScrollbarValueChangedProc* = proc(value: cint): void
proc onverticalScrollbarValueChanged*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewverticalScrollbarValueChangedProc) =
  # TODO check subclass
  var tmp = new QColumnViewverticalScrollbarValueChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_verticalScrollbarValueChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_verticalScrollbarValueChanged(self: ptr cQColumnView, slot: int, value: cint): void {.exportc: "miqt_exec_callback_QColumnView_verticalScrollbarValueChanged ".} =
  var nimfunc = cast[ptr QColumnViewverticalScrollbarValueChangedProc](cast[pointer](slot))
  let slotval1 = value


  nimfunc[](slotval1)
proc QColumnViewhorizontalScrollbarValueChanged*(self: gen_qcolumnview_types.QColumnView, value: cint): void =
  fQColumnView_virtualbase_horizontalScrollbarValueChanged(self.h, value)

type QColumnViewhorizontalScrollbarValueChangedProc* = proc(value: cint): void
proc onhorizontalScrollbarValueChanged*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewhorizontalScrollbarValueChangedProc) =
  # TODO check subclass
  var tmp = new QColumnViewhorizontalScrollbarValueChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_horizontalScrollbarValueChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_horizontalScrollbarValueChanged(self: ptr cQColumnView, slot: int, value: cint): void {.exportc: "miqt_exec_callback_QColumnView_horizontalScrollbarValueChanged ".} =
  var nimfunc = cast[ptr QColumnViewhorizontalScrollbarValueChangedProc](cast[pointer](slot))
  let slotval1 = value


  nimfunc[](slotval1)
proc QColumnViewcloseEditor*(self: gen_qcolumnview_types.QColumnView, editor: gen_qwidget_types.QWidget, hint: cint): void =
  fQColumnView_virtualbase_closeEditor(self.h, editor.h, cint(hint))

type QColumnViewcloseEditorProc* = proc(editor: gen_qwidget_types.QWidget, hint: cint): void
proc oncloseEditor*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewcloseEditorProc) =
  # TODO check subclass
  var tmp = new QColumnViewcloseEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_closeEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_closeEditor(self: ptr cQColumnView, slot: int, editor: pointer, hint: cint): void {.exportc: "miqt_exec_callback_QColumnView_closeEditor ".} =
  var nimfunc = cast[ptr QColumnViewcloseEditorProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: editor)

  let slotval2 = cint(hint)


  nimfunc[](slotval1, slotval2)
proc QColumnViewcommitData*(self: gen_qcolumnview_types.QColumnView, editor: gen_qwidget_types.QWidget): void =
  fQColumnView_virtualbase_commitData(self.h, editor.h)

type QColumnViewcommitDataProc* = proc(editor: gen_qwidget_types.QWidget): void
proc oncommitData*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewcommitDataProc) =
  # TODO check subclass
  var tmp = new QColumnViewcommitDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_commitData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_commitData(self: ptr cQColumnView, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QColumnView_commitData ".} =
  var nimfunc = cast[ptr QColumnViewcommitDataProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: editor)


  nimfunc[](slotval1)
proc QColumnVieweditorDestroyed*(self: gen_qcolumnview_types.QColumnView, editor: gen_qobject_types.QObject): void =
  fQColumnView_virtualbase_editorDestroyed(self.h, editor.h)

type QColumnVieweditorDestroyedProc* = proc(editor: gen_qobject_types.QObject): void
proc oneditorDestroyed*(self: gen_qcolumnview_types.QColumnView, slot: QColumnVieweditorDestroyedProc) =
  # TODO check subclass
  var tmp = new QColumnVieweditorDestroyedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_editorDestroyed(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_editorDestroyed(self: ptr cQColumnView, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QColumnView_editorDestroyed ".} =
  var nimfunc = cast[ptr QColumnVieweditorDestroyedProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: editor)


  nimfunc[](slotval1)
proc QColumnViewselectedIndexes*(self: gen_qcolumnview_types.QColumnView, ): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fQColumnView_virtualbase_selectedIndexes(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  vx_ret

type QColumnViewselectedIndexesProc* = proc(): seq[gen_qabstractitemmodel_types.QModelIndex]
proc onselectedIndexes*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewselectedIndexesProc) =
  # TODO check subclass
  var tmp = new QColumnViewselectedIndexesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_selectedIndexes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_selectedIndexes(self: ptr cQColumnView, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QColumnView_selectedIndexes ".} =
  var nimfunc = cast[ptr QColumnViewselectedIndexesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[pointer](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QColumnViewedit*(self: gen_qcolumnview_types.QColumnView, index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool =
  fQColumnView_virtualbase_edit2(self.h, index.h, cint(trigger), event.h)

type QColumnViewedit2Proc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool
proc onedit*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewedit2Proc) =
  # TODO check subclass
  var tmp = new QColumnViewedit2Proc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_edit2(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_edit2(self: ptr cQColumnView, slot: int, index: pointer, trigger: cint, event: pointer): bool {.exportc: "miqt_exec_callback_QColumnView_edit2 ".} =
  var nimfunc = cast[ptr QColumnViewedit2Proc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = cint(trigger)

  let slotval3 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QColumnViewselectionCommand*(self: gen_qcolumnview_types.QColumnView, index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint =
  cint(fQColumnView_virtualbase_selectionCommand(self.h, index.h, event.h))

type QColumnViewselectionCommandProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint
proc onselectionCommand*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewselectionCommandProc) =
  # TODO check subclass
  var tmp = new QColumnViewselectionCommandProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_selectionCommand(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_selectionCommand(self: ptr cQColumnView, slot: int, index: pointer, event: pointer): cint {.exportc: "miqt_exec_callback_QColumnView_selectionCommand ".} =
  var nimfunc = cast[ptr QColumnViewselectionCommandProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  cint(virtualReturn)
proc QColumnViewstartDrag*(self: gen_qcolumnview_types.QColumnView, supportedActions: cint): void =
  fQColumnView_virtualbase_startDrag(self.h, cint(supportedActions))

type QColumnViewstartDragProc* = proc(supportedActions: cint): void
proc onstartDrag*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewstartDragProc) =
  # TODO check subclass
  var tmp = new QColumnViewstartDragProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_startDrag(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_startDrag(self: ptr cQColumnView, slot: int, supportedActions: cint): void {.exportc: "miqt_exec_callback_QColumnView_startDrag ".} =
  var nimfunc = cast[ptr QColumnViewstartDragProc](cast[pointer](slot))
  let slotval1 = cint(supportedActions)


  nimfunc[](slotval1)
proc QColumnViewinitViewItemOption*(self: gen_qcolumnview_types.QColumnView, option: gen_qstyleoption_types.QStyleOptionViewItem): void =
  fQColumnView_virtualbase_initViewItemOption(self.h, option.h)

type QColumnViewinitViewItemOptionProc* = proc(option: gen_qstyleoption_types.QStyleOptionViewItem): void
proc oninitViewItemOption*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewinitViewItemOptionProc) =
  # TODO check subclass
  var tmp = new QColumnViewinitViewItemOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_initViewItemOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_initViewItemOption(self: ptr cQColumnView, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QColumnView_initViewItemOption ".} =
  var nimfunc = cast[ptr QColumnViewinitViewItemOptionProc](cast[pointer](slot))
  let slotval1 = gen_qstyleoption_types.QStyleOptionViewItem(h: option)


  nimfunc[](slotval1)
proc QColumnViewfocusNextPrevChild*(self: gen_qcolumnview_types.QColumnView, next: bool): bool =
  fQColumnView_virtualbase_focusNextPrevChild(self.h, next)

type QColumnViewfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QColumnViewfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_focusNextPrevChild(self: ptr cQColumnView, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QColumnView_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QColumnViewfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QColumnViewevent*(self: gen_qcolumnview_types.QColumnView, event: gen_qcoreevent_types.QEvent): bool =
  fQColumnView_virtualbase_event(self.h, event.h)

type QColumnVieweventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qcolumnview_types.QColumnView, slot: QColumnVieweventProc) =
  # TODO check subclass
  var tmp = new QColumnVieweventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_event(self: ptr cQColumnView, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QColumnView_event ".} =
  var nimfunc = cast[ptr QColumnVieweventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QColumnViewviewportEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qcoreevent_types.QEvent): bool =
  fQColumnView_virtualbase_viewportEvent(self.h, event.h)

type QColumnViewviewportEventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onviewportEvent*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewviewportEventProc) =
  # TODO check subclass
  var tmp = new QColumnViewviewportEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_viewportEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_viewportEvent(self: ptr cQColumnView, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QColumnView_viewportEvent ".} =
  var nimfunc = cast[ptr QColumnViewviewportEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QColumnViewmousePressEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qevent_types.QMouseEvent): void =
  fQColumnView_virtualbase_mousePressEvent(self.h, event.h)

type QColumnViewmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewmousePressEventProc) =
  # TODO check subclass
  var tmp = new QColumnViewmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_mousePressEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_mousePressEvent ".} =
  var nimfunc = cast[ptr QColumnViewmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QColumnViewmouseMoveEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qevent_types.QMouseEvent): void =
  fQColumnView_virtualbase_mouseMoveEvent(self.h, event.h)

type QColumnViewmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QColumnViewmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_mouseMoveEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QColumnViewmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QColumnViewmouseReleaseEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qevent_types.QMouseEvent): void =
  fQColumnView_virtualbase_mouseReleaseEvent(self.h, event.h)

type QColumnViewmouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QColumnViewmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_mouseReleaseEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QColumnViewmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QColumnViewmouseDoubleClickEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qevent_types.QMouseEvent): void =
  fQColumnView_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QColumnViewmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QColumnViewmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_mouseDoubleClickEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QColumnViewmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QColumnViewdragEnterEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qevent_types.QDragEnterEvent): void =
  fQColumnView_virtualbase_dragEnterEvent(self.h, event.h)

type QColumnViewdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QColumnViewdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_dragEnterEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_dragEnterEvent ".} =
  var nimfunc = cast[ptr QColumnViewdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QColumnViewdragMoveEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qevent_types.QDragMoveEvent): void =
  fQColumnView_virtualbase_dragMoveEvent(self.h, event.h)

type QColumnViewdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QColumnViewdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_dragMoveEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_dragMoveEvent ".} =
  var nimfunc = cast[ptr QColumnViewdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QColumnViewdragLeaveEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qevent_types.QDragLeaveEvent): void =
  fQColumnView_virtualbase_dragLeaveEvent(self.h, event.h)

type QColumnViewdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QColumnViewdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_dragLeaveEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QColumnViewdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QColumnViewdropEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qevent_types.QDropEvent): void =
  fQColumnView_virtualbase_dropEvent(self.h, event.h)

type QColumnViewdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewdropEventProc) =
  # TODO check subclass
  var tmp = new QColumnViewdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_dropEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_dropEvent ".} =
  var nimfunc = cast[ptr QColumnViewdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QColumnViewfocusInEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qevent_types.QFocusEvent): void =
  fQColumnView_virtualbase_focusInEvent(self.h, event.h)

type QColumnViewfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewfocusInEventProc) =
  # TODO check subclass
  var tmp = new QColumnViewfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_focusInEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_focusInEvent ".} =
  var nimfunc = cast[ptr QColumnViewfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QColumnViewfocusOutEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qevent_types.QFocusEvent): void =
  fQColumnView_virtualbase_focusOutEvent(self.h, event.h)

type QColumnViewfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QColumnViewfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_focusOutEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_focusOutEvent ".} =
  var nimfunc = cast[ptr QColumnViewfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QColumnViewkeyPressEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qevent_types.QKeyEvent): void =
  fQColumnView_virtualbase_keyPressEvent(self.h, event.h)

type QColumnViewkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QColumnViewkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_keyPressEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_keyPressEvent ".} =
  var nimfunc = cast[ptr QColumnViewkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QColumnViewtimerEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qcoreevent_types.QTimerEvent): void =
  fQColumnView_virtualbase_timerEvent(self.h, event.h)

type QColumnViewtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewtimerEventProc) =
  # TODO check subclass
  var tmp = new QColumnViewtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_timerEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_timerEvent ".} =
  var nimfunc = cast[ptr QColumnViewtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QColumnViewinputMethodEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qevent_types.QInputMethodEvent): void =
  fQColumnView_virtualbase_inputMethodEvent(self.h, event.h)

type QColumnViewinputMethodEventProc* = proc(event: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QColumnViewinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_inputMethodEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_inputMethodEvent ".} =
  var nimfunc = cast[ptr QColumnViewinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)


  nimfunc[](slotval1)
proc QColumnVieweventFilter*(self: gen_qcolumnview_types.QColumnView, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQColumnView_virtualbase_eventFilter(self.h, objectVal.h, event.h)

type QColumnVieweventFilterProc* = proc(objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qcolumnview_types.QColumnView, slot: QColumnVieweventFilterProc) =
  # TODO check subclass
  var tmp = new QColumnVieweventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_eventFilter(self: ptr cQColumnView, slot: int, objectVal: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QColumnView_eventFilter ".} =
  var nimfunc = cast[ptr QColumnVieweventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: objectVal)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QColumnViewviewportSizeHint*(self: gen_qcolumnview_types.QColumnView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQColumnView_virtualbase_viewportSizeHint(self.h))

type QColumnViewviewportSizeHintProc* = proc(): gen_qsize_types.QSize
proc onviewportSizeHint*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewviewportSizeHintProc) =
  # TODO check subclass
  var tmp = new QColumnViewviewportSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_viewportSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_viewportSizeHint(self: ptr cQColumnView, slot: int): pointer {.exportc: "miqt_exec_callback_QColumnView_viewportSizeHint ".} =
  var nimfunc = cast[ptr QColumnViewviewportSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QColumnViewminimumSizeHint*(self: gen_qcolumnview_types.QColumnView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQColumnView_virtualbase_minimumSizeHint(self.h))

type QColumnViewminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QColumnViewminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_minimumSizeHint(self: ptr cQColumnView, slot: int): pointer {.exportc: "miqt_exec_callback_QColumnView_minimumSizeHint ".} =
  var nimfunc = cast[ptr QColumnViewminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QColumnViewsetupViewport*(self: gen_qcolumnview_types.QColumnView, viewport: gen_qwidget_types.QWidget): void =
  fQColumnView_virtualbase_setupViewport(self.h, viewport.h)

type QColumnViewsetupViewportProc* = proc(viewport: gen_qwidget_types.QWidget): void
proc onsetupViewport*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewsetupViewportProc) =
  # TODO check subclass
  var tmp = new QColumnViewsetupViewportProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_setupViewport(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_setupViewport(self: ptr cQColumnView, slot: int, viewport: pointer): void {.exportc: "miqt_exec_callback_QColumnView_setupViewport ".} =
  var nimfunc = cast[ptr QColumnViewsetupViewportProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: viewport)


  nimfunc[](slotval1)
proc QColumnViewpaintEvent*(self: gen_qcolumnview_types.QColumnView, param1: gen_qevent_types.QPaintEvent): void =
  fQColumnView_virtualbase_paintEvent(self.h, param1.h)

type QColumnViewpaintEventProc* = proc(param1: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewpaintEventProc) =
  # TODO check subclass
  var tmp = new QColumnViewpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_paintEvent(self: ptr cQColumnView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QColumnView_paintEvent ".} =
  var nimfunc = cast[ptr QColumnViewpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1)


  nimfunc[](slotval1)
proc QColumnViewwheelEvent*(self: gen_qcolumnview_types.QColumnView, param1: gen_qevent_types.QWheelEvent): void =
  fQColumnView_virtualbase_wheelEvent(self.h, param1.h)

type QColumnViewwheelEventProc* = proc(param1: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewwheelEventProc) =
  # TODO check subclass
  var tmp = new QColumnViewwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_wheelEvent(self: ptr cQColumnView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QColumnView_wheelEvent ".} =
  var nimfunc = cast[ptr QColumnViewwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1)


  nimfunc[](slotval1)
proc QColumnViewcontextMenuEvent*(self: gen_qcolumnview_types.QColumnView, param1: gen_qevent_types.QContextMenuEvent): void =
  fQColumnView_virtualbase_contextMenuEvent(self.h, param1.h)

type QColumnViewcontextMenuEventProc* = proc(param1: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QColumnViewcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_contextMenuEvent(self: ptr cQColumnView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QColumnView_contextMenuEvent ".} =
  var nimfunc = cast[ptr QColumnViewcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)


  nimfunc[](slotval1)
proc QColumnViewchangeEvent*(self: gen_qcolumnview_types.QColumnView, param1: gen_qcoreevent_types.QEvent): void =
  fQColumnView_virtualbase_changeEvent(self.h, param1.h)

type QColumnViewchangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewchangeEventProc) =
  # TODO check subclass
  var tmp = new QColumnViewchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_changeEvent(self: ptr cQColumnView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QColumnView_changeEvent ".} =
  var nimfunc = cast[ptr QColumnViewchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QColumnViewinitStyleOption*(self: gen_qcolumnview_types.QColumnView, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fQColumnView_virtualbase_initStyleOption(self.h, option.h)

type QColumnViewinitStyleOptionProc* = proc(option: gen_qstyleoption_types.QStyleOptionFrame): void
proc oninitStyleOption*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewinitStyleOptionProc) =
  # TODO check subclass
  var tmp = new QColumnViewinitStyleOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_initStyleOption(self: ptr cQColumnView, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QColumnView_initStyleOption ".} =
  var nimfunc = cast[ptr QColumnViewinitStyleOptionProc](cast[pointer](slot))
  let slotval1 = gen_qstyleoption_types.QStyleOptionFrame(h: option)


  nimfunc[](slotval1)
proc QColumnViewdevType*(self: gen_qcolumnview_types.QColumnView, ): cint =
  fQColumnView_virtualbase_devType(self.h)

type QColumnViewdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewdevTypeProc) =
  # TODO check subclass
  var tmp = new QColumnViewdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_devType(self: ptr cQColumnView, slot: int): cint {.exportc: "miqt_exec_callback_QColumnView_devType ".} =
  var nimfunc = cast[ptr QColumnViewdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QColumnViewsetVisible*(self: gen_qcolumnview_types.QColumnView, visible: bool): void =
  fQColumnView_virtualbase_setVisible(self.h, visible)

type QColumnViewsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewsetVisibleProc) =
  # TODO check subclass
  var tmp = new QColumnViewsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_setVisible(self: ptr cQColumnView, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QColumnView_setVisible ".} =
  var nimfunc = cast[ptr QColumnViewsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QColumnViewheightForWidth*(self: gen_qcolumnview_types.QColumnView, param1: cint): cint =
  fQColumnView_virtualbase_heightForWidth(self.h, param1)

type QColumnViewheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewheightForWidthProc) =
  # TODO check subclass
  var tmp = new QColumnViewheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_heightForWidth(self: ptr cQColumnView, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QColumnView_heightForWidth ".} =
  var nimfunc = cast[ptr QColumnViewheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QColumnViewhasHeightForWidth*(self: gen_qcolumnview_types.QColumnView, ): bool =
  fQColumnView_virtualbase_hasHeightForWidth(self.h)

type QColumnViewhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QColumnViewhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_hasHeightForWidth(self: ptr cQColumnView, slot: int): bool {.exportc: "miqt_exec_callback_QColumnView_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QColumnViewhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QColumnViewpaintEngine*(self: gen_qcolumnview_types.QColumnView, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQColumnView_virtualbase_paintEngine(self.h))

type QColumnViewpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewpaintEngineProc) =
  # TODO check subclass
  var tmp = new QColumnViewpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_paintEngine(self: ptr cQColumnView, slot: int): pointer {.exportc: "miqt_exec_callback_QColumnView_paintEngine ".} =
  var nimfunc = cast[ptr QColumnViewpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QColumnViewkeyReleaseEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qevent_types.QKeyEvent): void =
  fQColumnView_virtualbase_keyReleaseEvent(self.h, event.h)

type QColumnViewkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QColumnViewkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_keyReleaseEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QColumnViewkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QColumnViewenterEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qevent_types.QEnterEvent): void =
  fQColumnView_virtualbase_enterEvent(self.h, event.h)

type QColumnViewenterEventProc* = proc(event: gen_qevent_types.QEnterEvent): void
proc onenterEvent*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewenterEventProc) =
  # TODO check subclass
  var tmp = new QColumnViewenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_enterEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_enterEvent ".} =
  var nimfunc = cast[ptr QColumnViewenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)


  nimfunc[](slotval1)
proc QColumnViewleaveEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qcoreevent_types.QEvent): void =
  fQColumnView_virtualbase_leaveEvent(self.h, event.h)

type QColumnViewleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewleaveEventProc) =
  # TODO check subclass
  var tmp = new QColumnViewleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_leaveEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_leaveEvent ".} =
  var nimfunc = cast[ptr QColumnViewleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QColumnViewmoveEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qevent_types.QMoveEvent): void =
  fQColumnView_virtualbase_moveEvent(self.h, event.h)

type QColumnViewmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewmoveEventProc) =
  # TODO check subclass
  var tmp = new QColumnViewmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_moveEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_moveEvent ".} =
  var nimfunc = cast[ptr QColumnViewmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QColumnViewcloseEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qevent_types.QCloseEvent): void =
  fQColumnView_virtualbase_closeEvent(self.h, event.h)

type QColumnViewcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewcloseEventProc) =
  # TODO check subclass
  var tmp = new QColumnViewcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_closeEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_closeEvent ".} =
  var nimfunc = cast[ptr QColumnViewcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QColumnViewtabletEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qevent_types.QTabletEvent): void =
  fQColumnView_virtualbase_tabletEvent(self.h, event.h)

type QColumnViewtabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewtabletEventProc) =
  # TODO check subclass
  var tmp = new QColumnViewtabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_tabletEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_tabletEvent ".} =
  var nimfunc = cast[ptr QColumnViewtabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QColumnViewactionEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qevent_types.QActionEvent): void =
  fQColumnView_virtualbase_actionEvent(self.h, event.h)

type QColumnViewactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewactionEventProc) =
  # TODO check subclass
  var tmp = new QColumnViewactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_actionEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_actionEvent ".} =
  var nimfunc = cast[ptr QColumnViewactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QColumnViewshowEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qevent_types.QShowEvent): void =
  fQColumnView_virtualbase_showEvent(self.h, event.h)

type QColumnViewshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewshowEventProc) =
  # TODO check subclass
  var tmp = new QColumnViewshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_showEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_showEvent ".} =
  var nimfunc = cast[ptr QColumnViewshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QColumnViewhideEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qevent_types.QHideEvent): void =
  fQColumnView_virtualbase_hideEvent(self.h, event.h)

type QColumnViewhideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewhideEventProc) =
  # TODO check subclass
  var tmp = new QColumnViewhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_hideEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_hideEvent ".} =
  var nimfunc = cast[ptr QColumnViewhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QColumnViewnativeEvent*(self: gen_qcolumnview_types.QColumnView, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQColumnView_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QColumnViewnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewnativeEventProc) =
  # TODO check subclass
  var tmp = new QColumnViewnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_nativeEvent(self: ptr cQColumnView, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QColumnView_nativeEvent ".} =
  var nimfunc = cast[ptr QColumnViewnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QColumnViewmetric*(self: gen_qcolumnview_types.QColumnView, param1: cint): cint =
  fQColumnView_virtualbase_metric(self.h, cint(param1))

type QColumnViewmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewmetricProc) =
  # TODO check subclass
  var tmp = new QColumnViewmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_metric(self: ptr cQColumnView, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QColumnView_metric ".} =
  var nimfunc = cast[ptr QColumnViewmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QColumnViewinitPainter*(self: gen_qcolumnview_types.QColumnView, painter: gen_qpainter_types.QPainter): void =
  fQColumnView_virtualbase_initPainter(self.h, painter.h)

type QColumnViewinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewinitPainterProc) =
  # TODO check subclass
  var tmp = new QColumnViewinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_initPainter(self: ptr cQColumnView, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QColumnView_initPainter ".} =
  var nimfunc = cast[ptr QColumnViewinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QColumnViewredirected*(self: gen_qcolumnview_types.QColumnView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQColumnView_virtualbase_redirected(self.h, offset.h))

type QColumnViewredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewredirectedProc) =
  # TODO check subclass
  var tmp = new QColumnViewredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_redirected(self: ptr cQColumnView, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QColumnView_redirected ".} =
  var nimfunc = cast[ptr QColumnViewredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QColumnViewsharedPainter*(self: gen_qcolumnview_types.QColumnView, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQColumnView_virtualbase_sharedPainter(self.h))

type QColumnViewsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewsharedPainterProc) =
  # TODO check subclass
  var tmp = new QColumnViewsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_sharedPainter(self: ptr cQColumnView, slot: int): pointer {.exportc: "miqt_exec_callback_QColumnView_sharedPainter ".} =
  var nimfunc = cast[ptr QColumnViewsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QColumnViewchildEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qcoreevent_types.QChildEvent): void =
  fQColumnView_virtualbase_childEvent(self.h, event.h)

type QColumnViewchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewchildEventProc) =
  # TODO check subclass
  var tmp = new QColumnViewchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_childEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_childEvent ".} =
  var nimfunc = cast[ptr QColumnViewchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QColumnViewcustomEvent*(self: gen_qcolumnview_types.QColumnView, event: gen_qcoreevent_types.QEvent): void =
  fQColumnView_virtualbase_customEvent(self.h, event.h)

type QColumnViewcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewcustomEventProc) =
  # TODO check subclass
  var tmp = new QColumnViewcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_customEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_customEvent ".} =
  var nimfunc = cast[ptr QColumnViewcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QColumnViewconnectNotify*(self: gen_qcolumnview_types.QColumnView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQColumnView_virtualbase_connectNotify(self.h, signal.h)

type QColumnViewconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QColumnViewconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_connectNotify(self: ptr cQColumnView, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QColumnView_connectNotify ".} =
  var nimfunc = cast[ptr QColumnViewconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QColumnViewdisconnectNotify*(self: gen_qcolumnview_types.QColumnView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQColumnView_virtualbase_disconnectNotify(self.h, signal.h)

type QColumnViewdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qcolumnview_types.QColumnView, slot: QColumnViewdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QColumnViewdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_disconnectNotify(self: ptr cQColumnView, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QColumnView_disconnectNotify ".} =
  var nimfunc = cast[ptr QColumnViewdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qcolumnview_types.QColumnView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQColumnView_staticMetaObject())
proc delete*(self: gen_qcolumnview_types.QColumnView) =
  fcQColumnView_delete(self.h)
