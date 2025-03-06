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
{.compile("gen_qundoview.cpp", cflags).}


import ./gen_qundoview_types
export gen_qundoview_types

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
  ../QtGui/gen_qicon_types,
  ../QtGui/gen_qpaintdevice_types,
  ../QtGui/gen_qpaintengine_types,
  ../QtGui/gen_qpainter_types,
  ../QtGui/gen_qregion_types,
  ./gen_qlistview,
  ./gen_qstyleoption_types,
  ./gen_qundogroup_types,
  ./gen_qundostack_types,
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
  gen_qicon_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qregion_types,
  gen_qlistview,
  gen_qstyleoption_types,
  gen_qundogroup_types,
  gen_qundostack_types,
  gen_qwidget_types

type cQUndoView*{.exportc: "QUndoView", incompleteStruct.} = object

proc fcQUndoView_new(parent: pointer): ptr cQUndoView {.importc: "QUndoView_new".}
proc fcQUndoView_new2(): ptr cQUndoView {.importc: "QUndoView_new2".}
proc fcQUndoView_new3(stack: pointer): ptr cQUndoView {.importc: "QUndoView_new3".}
proc fcQUndoView_new4(group: pointer): ptr cQUndoView {.importc: "QUndoView_new4".}
proc fcQUndoView_new5(stack: pointer, parent: pointer): ptr cQUndoView {.importc: "QUndoView_new5".}
proc fcQUndoView_new6(group: pointer, parent: pointer): ptr cQUndoView {.importc: "QUndoView_new6".}
proc fcQUndoView_metaObject(self: pointer, ): pointer {.importc: "QUndoView_metaObject".}
proc fcQUndoView_metacast(self: pointer, param1: cstring): pointer {.importc: "QUndoView_metacast".}
proc fcQUndoView_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QUndoView_metacall".}
proc fcQUndoView_tr(s: cstring): struct_miqt_string {.importc: "QUndoView_tr".}
proc fcQUndoView_trUtf8(s: cstring): struct_miqt_string {.importc: "QUndoView_trUtf8".}
proc fcQUndoView_stack(self: pointer, ): pointer {.importc: "QUndoView_stack".}
proc fcQUndoView_group(self: pointer, ): pointer {.importc: "QUndoView_group".}
proc fcQUndoView_setEmptyLabel(self: pointer, label: struct_miqt_string): void {.importc: "QUndoView_setEmptyLabel".}
proc fcQUndoView_emptyLabel(self: pointer, ): struct_miqt_string {.importc: "QUndoView_emptyLabel".}
proc fcQUndoView_setCleanIcon(self: pointer, icon: pointer): void {.importc: "QUndoView_setCleanIcon".}
proc fcQUndoView_cleanIcon(self: pointer, ): pointer {.importc: "QUndoView_cleanIcon".}
proc fcQUndoView_setStack(self: pointer, stack: pointer): void {.importc: "QUndoView_setStack".}
proc fcQUndoView_setGroup(self: pointer, group: pointer): void {.importc: "QUndoView_setGroup".}
proc fcQUndoView_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QUndoView_tr2".}
proc fcQUndoView_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QUndoView_tr3".}
proc fcQUndoView_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QUndoView_trUtf82".}
proc fcQUndoView_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QUndoView_trUtf83".}
proc fQUndoView_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QUndoView_virtualbase_metaObject".}
proc fcQUndoView_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_metaObject".}
proc fQUndoView_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QUndoView_virtualbase_metacast".}
proc fcQUndoView_override_virtual_metacast(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_metacast".}
proc fQUndoView_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QUndoView_virtualbase_metacall".}
proc fcQUndoView_override_virtual_metacall(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_metacall".}
proc fQUndoView_virtualbase_visualRect(self: pointer, index: pointer): pointer{.importc: "QUndoView_virtualbase_visualRect".}
proc fcQUndoView_override_virtual_visualRect(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_visualRect".}
proc fQUndoView_virtualbase_scrollTo(self: pointer, index: pointer, hint: cint): void{.importc: "QUndoView_virtualbase_scrollTo".}
proc fcQUndoView_override_virtual_scrollTo(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_scrollTo".}
proc fQUndoView_virtualbase_indexAt(self: pointer, p: pointer): pointer{.importc: "QUndoView_virtualbase_indexAt".}
proc fcQUndoView_override_virtual_indexAt(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_indexAt".}
proc fQUndoView_virtualbase_doItemsLayout(self: pointer, ): void{.importc: "QUndoView_virtualbase_doItemsLayout".}
proc fcQUndoView_override_virtual_doItemsLayout(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_doItemsLayout".}
proc fQUndoView_virtualbase_reset(self: pointer, ): void{.importc: "QUndoView_virtualbase_reset".}
proc fcQUndoView_override_virtual_reset(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_reset".}
proc fQUndoView_virtualbase_setRootIndex(self: pointer, index: pointer): void{.importc: "QUndoView_virtualbase_setRootIndex".}
proc fcQUndoView_override_virtual_setRootIndex(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_setRootIndex".}
proc fQUndoView_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QUndoView_virtualbase_event".}
proc fcQUndoView_override_virtual_event(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_event".}
proc fQUndoView_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void{.importc: "QUndoView_virtualbase_scrollContentsBy".}
proc fcQUndoView_override_virtual_scrollContentsBy(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_scrollContentsBy".}
proc fQUndoView_virtualbase_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void{.importc: "QUndoView_virtualbase_dataChanged".}
proc fcQUndoView_override_virtual_dataChanged(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_dataChanged".}
proc fQUndoView_virtualbase_rowsInserted(self: pointer, parent: pointer, start: cint, endVal: cint): void{.importc: "QUndoView_virtualbase_rowsInserted".}
proc fcQUndoView_override_virtual_rowsInserted(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_rowsInserted".}
proc fQUndoView_virtualbase_rowsAboutToBeRemoved(self: pointer, parent: pointer, start: cint, endVal: cint): void{.importc: "QUndoView_virtualbase_rowsAboutToBeRemoved".}
proc fcQUndoView_override_virtual_rowsAboutToBeRemoved(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_rowsAboutToBeRemoved".}
proc fQUndoView_virtualbase_mouseMoveEvent(self: pointer, e: pointer): void{.importc: "QUndoView_virtualbase_mouseMoveEvent".}
proc fcQUndoView_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_mouseMoveEvent".}
proc fQUndoView_virtualbase_mouseReleaseEvent(self: pointer, e: pointer): void{.importc: "QUndoView_virtualbase_mouseReleaseEvent".}
proc fcQUndoView_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_mouseReleaseEvent".}
proc fQUndoView_virtualbase_wheelEvent(self: pointer, e: pointer): void{.importc: "QUndoView_virtualbase_wheelEvent".}
proc fcQUndoView_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_wheelEvent".}
proc fQUndoView_virtualbase_timerEvent(self: pointer, e: pointer): void{.importc: "QUndoView_virtualbase_timerEvent".}
proc fcQUndoView_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_timerEvent".}
proc fQUndoView_virtualbase_resizeEvent(self: pointer, e: pointer): void{.importc: "QUndoView_virtualbase_resizeEvent".}
proc fcQUndoView_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_resizeEvent".}
proc fQUndoView_virtualbase_dragMoveEvent(self: pointer, e: pointer): void{.importc: "QUndoView_virtualbase_dragMoveEvent".}
proc fcQUndoView_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_dragMoveEvent".}
proc fQUndoView_virtualbase_dragLeaveEvent(self: pointer, e: pointer): void{.importc: "QUndoView_virtualbase_dragLeaveEvent".}
proc fcQUndoView_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_dragLeaveEvent".}
proc fQUndoView_virtualbase_dropEvent(self: pointer, e: pointer): void{.importc: "QUndoView_virtualbase_dropEvent".}
proc fcQUndoView_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_dropEvent".}
proc fQUndoView_virtualbase_startDrag(self: pointer, supportedActions: cint): void{.importc: "QUndoView_virtualbase_startDrag".}
proc fcQUndoView_override_virtual_startDrag(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_startDrag".}
proc fQUndoView_virtualbase_viewOptions(self: pointer, ): pointer{.importc: "QUndoView_virtualbase_viewOptions".}
proc fcQUndoView_override_virtual_viewOptions(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_viewOptions".}
proc fQUndoView_virtualbase_paintEvent(self: pointer, e: pointer): void{.importc: "QUndoView_virtualbase_paintEvent".}
proc fcQUndoView_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_paintEvent".}
proc fQUndoView_virtualbase_horizontalOffset(self: pointer, ): cint{.importc: "QUndoView_virtualbase_horizontalOffset".}
proc fcQUndoView_override_virtual_horizontalOffset(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_horizontalOffset".}
proc fQUndoView_virtualbase_verticalOffset(self: pointer, ): cint{.importc: "QUndoView_virtualbase_verticalOffset".}
proc fcQUndoView_override_virtual_verticalOffset(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_verticalOffset".}
proc fQUndoView_virtualbase_moveCursor(self: pointer, cursorAction: cint, modifiers: cint): pointer{.importc: "QUndoView_virtualbase_moveCursor".}
proc fcQUndoView_override_virtual_moveCursor(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_moveCursor".}
proc fQUndoView_virtualbase_setSelection(self: pointer, rect: pointer, command: cint): void{.importc: "QUndoView_virtualbase_setSelection".}
proc fcQUndoView_override_virtual_setSelection(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_setSelection".}
proc fQUndoView_virtualbase_visualRegionForSelection(self: pointer, selection: pointer): pointer{.importc: "QUndoView_virtualbase_visualRegionForSelection".}
proc fcQUndoView_override_virtual_visualRegionForSelection(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_visualRegionForSelection".}
proc fQUndoView_virtualbase_selectedIndexes(self: pointer, ): struct_miqt_array{.importc: "QUndoView_virtualbase_selectedIndexes".}
proc fcQUndoView_override_virtual_selectedIndexes(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_selectedIndexes".}
proc fQUndoView_virtualbase_updateGeometries(self: pointer, ): void{.importc: "QUndoView_virtualbase_updateGeometries".}
proc fcQUndoView_override_virtual_updateGeometries(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_updateGeometries".}
proc fQUndoView_virtualbase_isIndexHidden(self: pointer, index: pointer): bool{.importc: "QUndoView_virtualbase_isIndexHidden".}
proc fcQUndoView_override_virtual_isIndexHidden(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_isIndexHidden".}
proc fQUndoView_virtualbase_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void{.importc: "QUndoView_virtualbase_selectionChanged".}
proc fcQUndoView_override_virtual_selectionChanged(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_selectionChanged".}
proc fQUndoView_virtualbase_currentChanged(self: pointer, current: pointer, previous: pointer): void{.importc: "QUndoView_virtualbase_currentChanged".}
proc fcQUndoView_override_virtual_currentChanged(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_currentChanged".}
proc fQUndoView_virtualbase_viewportSizeHint(self: pointer, ): pointer{.importc: "QUndoView_virtualbase_viewportSizeHint".}
proc fcQUndoView_override_virtual_viewportSizeHint(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_viewportSizeHint".}
proc fQUndoView_virtualbase_setModel(self: pointer, model: pointer): void{.importc: "QUndoView_virtualbase_setModel".}
proc fcQUndoView_override_virtual_setModel(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_setModel".}
proc fQUndoView_virtualbase_setSelectionModel(self: pointer, selectionModel: pointer): void{.importc: "QUndoView_virtualbase_setSelectionModel".}
proc fcQUndoView_override_virtual_setSelectionModel(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_setSelectionModel".}
proc fQUndoView_virtualbase_keyboardSearch(self: pointer, search: struct_miqt_string): void{.importc: "QUndoView_virtualbase_keyboardSearch".}
proc fcQUndoView_override_virtual_keyboardSearch(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_keyboardSearch".}
proc fQUndoView_virtualbase_sizeHintForRow(self: pointer, row: cint): cint{.importc: "QUndoView_virtualbase_sizeHintForRow".}
proc fcQUndoView_override_virtual_sizeHintForRow(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_sizeHintForRow".}
proc fQUndoView_virtualbase_sizeHintForColumn(self: pointer, column: cint): cint{.importc: "QUndoView_virtualbase_sizeHintForColumn".}
proc fcQUndoView_override_virtual_sizeHintForColumn(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_sizeHintForColumn".}
proc fQUndoView_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QUndoView_virtualbase_inputMethodQuery".}
proc fcQUndoView_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_inputMethodQuery".}
proc fQUndoView_virtualbase_selectAll(self: pointer, ): void{.importc: "QUndoView_virtualbase_selectAll".}
proc fcQUndoView_override_virtual_selectAll(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_selectAll".}
proc fQUndoView_virtualbase_updateEditorData(self: pointer, ): void{.importc: "QUndoView_virtualbase_updateEditorData".}
proc fcQUndoView_override_virtual_updateEditorData(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_updateEditorData".}
proc fQUndoView_virtualbase_updateEditorGeometries(self: pointer, ): void{.importc: "QUndoView_virtualbase_updateEditorGeometries".}
proc fcQUndoView_override_virtual_updateEditorGeometries(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_updateEditorGeometries".}
proc fQUndoView_virtualbase_verticalScrollbarAction(self: pointer, action: cint): void{.importc: "QUndoView_virtualbase_verticalScrollbarAction".}
proc fcQUndoView_override_virtual_verticalScrollbarAction(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_verticalScrollbarAction".}
proc fQUndoView_virtualbase_horizontalScrollbarAction(self: pointer, action: cint): void{.importc: "QUndoView_virtualbase_horizontalScrollbarAction".}
proc fcQUndoView_override_virtual_horizontalScrollbarAction(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_horizontalScrollbarAction".}
proc fQUndoView_virtualbase_verticalScrollbarValueChanged(self: pointer, value: cint): void{.importc: "QUndoView_virtualbase_verticalScrollbarValueChanged".}
proc fcQUndoView_override_virtual_verticalScrollbarValueChanged(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_verticalScrollbarValueChanged".}
proc fQUndoView_virtualbase_horizontalScrollbarValueChanged(self: pointer, value: cint): void{.importc: "QUndoView_virtualbase_horizontalScrollbarValueChanged".}
proc fcQUndoView_override_virtual_horizontalScrollbarValueChanged(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_horizontalScrollbarValueChanged".}
proc fQUndoView_virtualbase_closeEditor(self: pointer, editor: pointer, hint: cint): void{.importc: "QUndoView_virtualbase_closeEditor".}
proc fcQUndoView_override_virtual_closeEditor(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_closeEditor".}
proc fQUndoView_virtualbase_commitData(self: pointer, editor: pointer): void{.importc: "QUndoView_virtualbase_commitData".}
proc fcQUndoView_override_virtual_commitData(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_commitData".}
proc fQUndoView_virtualbase_editorDestroyed(self: pointer, editor: pointer): void{.importc: "QUndoView_virtualbase_editorDestroyed".}
proc fcQUndoView_override_virtual_editorDestroyed(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_editorDestroyed".}
proc fQUndoView_virtualbase_edit2(self: pointer, index: pointer, trigger: cint, event: pointer): bool{.importc: "QUndoView_virtualbase_edit2".}
proc fcQUndoView_override_virtual_edit2(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_edit2".}
proc fQUndoView_virtualbase_selectionCommand(self: pointer, index: pointer, event: pointer): cint{.importc: "QUndoView_virtualbase_selectionCommand".}
proc fcQUndoView_override_virtual_selectionCommand(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_selectionCommand".}
proc fQUndoView_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QUndoView_virtualbase_focusNextPrevChild".}
proc fcQUndoView_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_focusNextPrevChild".}
proc fQUndoView_virtualbase_viewportEvent(self: pointer, event: pointer): bool{.importc: "QUndoView_virtualbase_viewportEvent".}
proc fcQUndoView_override_virtual_viewportEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_viewportEvent".}
proc fQUndoView_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QUndoView_virtualbase_mousePressEvent".}
proc fcQUndoView_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_mousePressEvent".}
proc fQUndoView_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QUndoView_virtualbase_mouseDoubleClickEvent".}
proc fcQUndoView_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_mouseDoubleClickEvent".}
proc fQUndoView_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QUndoView_virtualbase_dragEnterEvent".}
proc fcQUndoView_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_dragEnterEvent".}
proc fQUndoView_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QUndoView_virtualbase_focusInEvent".}
proc fcQUndoView_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_focusInEvent".}
proc fQUndoView_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QUndoView_virtualbase_focusOutEvent".}
proc fcQUndoView_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_focusOutEvent".}
proc fQUndoView_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QUndoView_virtualbase_keyPressEvent".}
proc fcQUndoView_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_keyPressEvent".}
proc fQUndoView_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QUndoView_virtualbase_inputMethodEvent".}
proc fcQUndoView_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_inputMethodEvent".}
proc fQUndoView_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool{.importc: "QUndoView_virtualbase_eventFilter".}
proc fcQUndoView_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_eventFilter".}
proc fQUndoView_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QUndoView_virtualbase_minimumSizeHint".}
proc fcQUndoView_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_minimumSizeHint".}
proc fQUndoView_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QUndoView_virtualbase_sizeHint".}
proc fcQUndoView_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_sizeHint".}
proc fQUndoView_virtualbase_setupViewport(self: pointer, viewport: pointer): void{.importc: "QUndoView_virtualbase_setupViewport".}
proc fcQUndoView_override_virtual_setupViewport(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_setupViewport".}
proc fQUndoView_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QUndoView_virtualbase_contextMenuEvent".}
proc fcQUndoView_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_contextMenuEvent".}
proc fQUndoView_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QUndoView_virtualbase_changeEvent".}
proc fcQUndoView_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_changeEvent".}
proc fQUndoView_virtualbase_devType(self: pointer, ): cint{.importc: "QUndoView_virtualbase_devType".}
proc fcQUndoView_override_virtual_devType(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_devType".}
proc fQUndoView_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QUndoView_virtualbase_setVisible".}
proc fcQUndoView_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_setVisible".}
proc fQUndoView_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QUndoView_virtualbase_heightForWidth".}
proc fcQUndoView_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_heightForWidth".}
proc fQUndoView_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QUndoView_virtualbase_hasHeightForWidth".}
proc fcQUndoView_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_hasHeightForWidth".}
proc fQUndoView_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QUndoView_virtualbase_paintEngine".}
proc fcQUndoView_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_paintEngine".}
proc fQUndoView_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QUndoView_virtualbase_keyReleaseEvent".}
proc fcQUndoView_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_keyReleaseEvent".}
proc fQUndoView_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QUndoView_virtualbase_enterEvent".}
proc fcQUndoView_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_enterEvent".}
proc fQUndoView_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QUndoView_virtualbase_leaveEvent".}
proc fcQUndoView_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_leaveEvent".}
proc fQUndoView_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QUndoView_virtualbase_moveEvent".}
proc fcQUndoView_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_moveEvent".}
proc fQUndoView_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QUndoView_virtualbase_closeEvent".}
proc fcQUndoView_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_closeEvent".}
proc fQUndoView_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QUndoView_virtualbase_tabletEvent".}
proc fcQUndoView_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_tabletEvent".}
proc fQUndoView_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QUndoView_virtualbase_actionEvent".}
proc fcQUndoView_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_actionEvent".}
proc fQUndoView_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QUndoView_virtualbase_showEvent".}
proc fcQUndoView_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_showEvent".}
proc fQUndoView_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QUndoView_virtualbase_hideEvent".}
proc fcQUndoView_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_hideEvent".}
proc fQUndoView_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QUndoView_virtualbase_nativeEvent".}
proc fcQUndoView_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_nativeEvent".}
proc fQUndoView_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QUndoView_virtualbase_metric".}
proc fcQUndoView_override_virtual_metric(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_metric".}
proc fQUndoView_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QUndoView_virtualbase_initPainter".}
proc fcQUndoView_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_initPainter".}
proc fQUndoView_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QUndoView_virtualbase_redirected".}
proc fcQUndoView_override_virtual_redirected(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_redirected".}
proc fQUndoView_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QUndoView_virtualbase_sharedPainter".}
proc fcQUndoView_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_sharedPainter".}
proc fQUndoView_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QUndoView_virtualbase_childEvent".}
proc fcQUndoView_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_childEvent".}
proc fQUndoView_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QUndoView_virtualbase_customEvent".}
proc fcQUndoView_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_customEvent".}
proc fQUndoView_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QUndoView_virtualbase_connectNotify".}
proc fcQUndoView_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_connectNotify".}
proc fQUndoView_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QUndoView_virtualbase_disconnectNotify".}
proc fcQUndoView_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_disconnectNotify".}
proc fcQUndoView_staticMetaObject(): pointer {.importc: "QUndoView_staticMetaObject".}
proc fcQUndoView_delete(self: pointer) {.importc: "QUndoView_delete".}


func init*(T: type gen_qundoview_types.QUndoView, h: ptr cQUndoView): gen_qundoview_types.QUndoView =
  T(h: h)
proc create*(T: type gen_qundoview_types.QUndoView, parent: gen_qwidget_types.QWidget): gen_qundoview_types.QUndoView =
  gen_qundoview_types.QUndoView.init(fcQUndoView_new(parent.h))

proc create*(T: type gen_qundoview_types.QUndoView, ): gen_qundoview_types.QUndoView =
  gen_qundoview_types.QUndoView.init(fcQUndoView_new2())

proc create*(T: type gen_qundoview_types.QUndoView, stack: gen_qundostack_types.QUndoStack): gen_qundoview_types.QUndoView =
  gen_qundoview_types.QUndoView.init(fcQUndoView_new3(stack.h))

proc create*(T: type gen_qundoview_types.QUndoView, group: gen_qundogroup_types.QUndoGroup): gen_qundoview_types.QUndoView =
  gen_qundoview_types.QUndoView.init(fcQUndoView_new4(group.h))

proc create*(T: type gen_qundoview_types.QUndoView, stack: gen_qundostack_types.QUndoStack, parent: gen_qwidget_types.QWidget): gen_qundoview_types.QUndoView =
  gen_qundoview_types.QUndoView.init(fcQUndoView_new5(stack.h, parent.h))

proc create*(T: type gen_qundoview_types.QUndoView, group: gen_qundogroup_types.QUndoGroup, parent: gen_qwidget_types.QWidget): gen_qundoview_types.QUndoView =
  gen_qundoview_types.QUndoView.init(fcQUndoView_new6(group.h, parent.h))

proc metaObject*(self: gen_qundoview_types.QUndoView, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQUndoView_metaObject(self.h))

proc metacast*(self: gen_qundoview_types.QUndoView, param1: cstring): pointer =
  fcQUndoView_metacast(self.h, param1)

proc metacall*(self: gen_qundoview_types.QUndoView, param1: cint, param2: cint, param3: pointer): cint =
  fcQUndoView_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qundoview_types.QUndoView, s: cstring): string =
  let v_ms = fcQUndoView_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qundoview_types.QUndoView, s: cstring): string =
  let v_ms = fcQUndoView_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc stack*(self: gen_qundoview_types.QUndoView, ): gen_qundostack_types.QUndoStack =
  gen_qundostack_types.QUndoStack(h: fcQUndoView_stack(self.h))

proc group*(self: gen_qundoview_types.QUndoView, ): gen_qundogroup_types.QUndoGroup =
  gen_qundogroup_types.QUndoGroup(h: fcQUndoView_group(self.h))

proc setEmptyLabel*(self: gen_qundoview_types.QUndoView, label: string): void =
  fcQUndoView_setEmptyLabel(self.h, struct_miqt_string(data: label, len: csize_t(len(label))))

proc emptyLabel*(self: gen_qundoview_types.QUndoView, ): string =
  let v_ms = fcQUndoView_emptyLabel(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setCleanIcon*(self: gen_qundoview_types.QUndoView, icon: gen_qicon_types.QIcon): void =
  fcQUndoView_setCleanIcon(self.h, icon.h)

proc cleanIcon*(self: gen_qundoview_types.QUndoView, ): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQUndoView_cleanIcon(self.h))

proc setStack*(self: gen_qundoview_types.QUndoView, stack: gen_qundostack_types.QUndoStack): void =
  fcQUndoView_setStack(self.h, stack.h)

proc setGroup*(self: gen_qundoview_types.QUndoView, group: gen_qundogroup_types.QUndoGroup): void =
  fcQUndoView_setGroup(self.h, group.h)

proc tr*(_: type gen_qundoview_types.QUndoView, s: cstring, c: cstring): string =
  let v_ms = fcQUndoView_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qundoview_types.QUndoView, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQUndoView_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qundoview_types.QUndoView, s: cstring, c: cstring): string =
  let v_ms = fcQUndoView_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qundoview_types.QUndoView, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQUndoView_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QUndoViewmetaObject*(self: gen_qundoview_types.QUndoView, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQUndoView_virtualbase_metaObject(self.h))

type QUndoViewmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qundoview_types.QUndoView, slot: QUndoViewmetaObjectProc) =
  # TODO check subclass
  var tmp = new QUndoViewmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_metaObject(self: ptr cQUndoView, slot: int): pointer {.exportc: "miqt_exec_callback_QUndoView_metaObject ".} =
  var nimfunc = cast[ptr QUndoViewmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QUndoViewmetacast*(self: gen_qundoview_types.QUndoView, param1: cstring): pointer =
  fQUndoView_virtualbase_metacast(self.h, param1)

type QUndoViewmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qundoview_types.QUndoView, slot: QUndoViewmetacastProc) =
  # TODO check subclass
  var tmp = new QUndoViewmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_metacast(self: ptr cQUndoView, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QUndoView_metacast ".} =
  var nimfunc = cast[ptr QUndoViewmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QUndoViewmetacall*(self: gen_qundoview_types.QUndoView, param1: cint, param2: cint, param3: pointer): cint =
  fQUndoView_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QUndoViewmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qundoview_types.QUndoView, slot: QUndoViewmetacallProc) =
  # TODO check subclass
  var tmp = new QUndoViewmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_metacall(self: ptr cQUndoView, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QUndoView_metacall ".} =
  var nimfunc = cast[ptr QUndoViewmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QUndoViewvisualRect*(self: gen_qundoview_types.QUndoView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fQUndoView_virtualbase_visualRect(self.h, index.h))

type QUndoViewvisualRectProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect
proc onvisualRect*(self: gen_qundoview_types.QUndoView, slot: QUndoViewvisualRectProc) =
  # TODO check subclass
  var tmp = new QUndoViewvisualRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_visualRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_visualRect(self: ptr cQUndoView, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QUndoView_visualRect ".} =
  var nimfunc = cast[ptr QUndoViewvisualRectProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QUndoViewscrollTo*(self: gen_qundoview_types.QUndoView, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void =
  fQUndoView_virtualbase_scrollTo(self.h, index.h, cint(hint))

type QUndoViewscrollToProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void
proc onscrollTo*(self: gen_qundoview_types.QUndoView, slot: QUndoViewscrollToProc) =
  # TODO check subclass
  var tmp = new QUndoViewscrollToProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_scrollTo(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_scrollTo(self: ptr cQUndoView, slot: int, index: pointer, hint: cint): void {.exportc: "miqt_exec_callback_QUndoView_scrollTo ".} =
  var nimfunc = cast[ptr QUndoViewscrollToProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = cint(hint)


  nimfunc[](slotval1, slotval2)
proc QUndoViewindexAt*(self: gen_qundoview_types.QUndoView, p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQUndoView_virtualbase_indexAt(self.h, p.h))

type QUndoViewindexAtProc* = proc(p: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex
proc onindexAt*(self: gen_qundoview_types.QUndoView, slot: QUndoViewindexAtProc) =
  # TODO check subclass
  var tmp = new QUndoViewindexAtProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_indexAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_indexAt(self: ptr cQUndoView, slot: int, p: pointer): pointer {.exportc: "miqt_exec_callback_QUndoView_indexAt ".} =
  var nimfunc = cast[ptr QUndoViewindexAtProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: p)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QUndoViewdoItemsLayout*(self: gen_qundoview_types.QUndoView, ): void =
  fQUndoView_virtualbase_doItemsLayout(self.h)

type QUndoViewdoItemsLayoutProc* = proc(): void
proc ondoItemsLayout*(self: gen_qundoview_types.QUndoView, slot: QUndoViewdoItemsLayoutProc) =
  # TODO check subclass
  var tmp = new QUndoViewdoItemsLayoutProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_doItemsLayout(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_doItemsLayout(self: ptr cQUndoView, slot: int): void {.exportc: "miqt_exec_callback_QUndoView_doItemsLayout ".} =
  var nimfunc = cast[ptr QUndoViewdoItemsLayoutProc](cast[pointer](slot))

  nimfunc[]()
proc QUndoViewreset*(self: gen_qundoview_types.QUndoView, ): void =
  fQUndoView_virtualbase_reset(self.h)

type QUndoViewresetProc* = proc(): void
proc onreset*(self: gen_qundoview_types.QUndoView, slot: QUndoViewresetProc) =
  # TODO check subclass
  var tmp = new QUndoViewresetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_reset(self: ptr cQUndoView, slot: int): void {.exportc: "miqt_exec_callback_QUndoView_reset ".} =
  var nimfunc = cast[ptr QUndoViewresetProc](cast[pointer](slot))

  nimfunc[]()
proc QUndoViewsetRootIndex*(self: gen_qundoview_types.QUndoView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fQUndoView_virtualbase_setRootIndex(self.h, index.h)

type QUndoViewsetRootIndexProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): void
proc onsetRootIndex*(self: gen_qundoview_types.QUndoView, slot: QUndoViewsetRootIndexProc) =
  # TODO check subclass
  var tmp = new QUndoViewsetRootIndexProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_setRootIndex(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_setRootIndex(self: ptr cQUndoView, slot: int, index: pointer): void {.exportc: "miqt_exec_callback_QUndoView_setRootIndex ".} =
  var nimfunc = cast[ptr QUndoViewsetRootIndexProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  nimfunc[](slotval1)
proc QUndoViewevent*(self: gen_qundoview_types.QUndoView, e: gen_qcoreevent_types.QEvent): bool =
  fQUndoView_virtualbase_event(self.h, e.h)

type QUndoVieweventProc* = proc(e: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qundoview_types.QUndoView, slot: QUndoVieweventProc) =
  # TODO check subclass
  var tmp = new QUndoVieweventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_event(self: ptr cQUndoView, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QUndoView_event ".} =
  var nimfunc = cast[ptr QUndoVieweventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QUndoViewscrollContentsBy*(self: gen_qundoview_types.QUndoView, dx: cint, dy: cint): void =
  fQUndoView_virtualbase_scrollContentsBy(self.h, dx, dy)

type QUndoViewscrollContentsByProc* = proc(dx: cint, dy: cint): void
proc onscrollContentsBy*(self: gen_qundoview_types.QUndoView, slot: QUndoViewscrollContentsByProc) =
  # TODO check subclass
  var tmp = new QUndoViewscrollContentsByProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_scrollContentsBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_scrollContentsBy(self: ptr cQUndoView, slot: int, dx: cint, dy: cint): void {.exportc: "miqt_exec_callback_QUndoView_scrollContentsBy ".} =
  var nimfunc = cast[ptr QUndoViewscrollContentsByProc](cast[pointer](slot))
  let slotval1 = dx

  let slotval2 = dy


  nimfunc[](slotval1, slotval2)
proc QUndoViewdataChanged*(self: gen_qundoview_types.QUndoView, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: seq[cint]): void =
  var roles_CArray = newSeq[cint](len(roles))
  for i in 0..<len(roles):
    roles_CArray[i] = roles[i]

  fQUndoView_virtualbase_dataChanged(self.h, topLeft.h, bottomRight.h, struct_miqt_array(len: csize_t(len(roles)), data: if len(roles) == 0: nil else: addr(roles_CArray[0])))

type QUndoViewdataChangedProc* = proc(topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: seq[cint]): void
proc ondataChanged*(self: gen_qundoview_types.QUndoView, slot: QUndoViewdataChangedProc) =
  # TODO check subclass
  var tmp = new QUndoViewdataChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_dataChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_dataChanged(self: ptr cQUndoView, slot: int, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.exportc: "miqt_exec_callback_QUndoView_dataChanged ".} =
  var nimfunc = cast[ptr QUndoViewdataChangedProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: topLeft)

  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: bottomRight)

  var vroles_ma = roles
  var vrolesx_ret = newSeq[cint](int(vroles_ma.len))
  let vroles_outCast = cast[ptr UncheckedArray[cint]](vroles_ma.data)
  for i in 0 ..< vroles_ma.len:
    vrolesx_ret[i] = vroles_outCast[i]
  let slotval3 = vrolesx_ret


  nimfunc[](slotval1, slotval2, slotval3)
proc QUndoViewrowsInserted*(self: gen_qundoview_types.QUndoView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fQUndoView_virtualbase_rowsInserted(self.h, parent.h, start, endVal)

type QUndoViewrowsInsertedProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void
proc onrowsInserted*(self: gen_qundoview_types.QUndoView, slot: QUndoViewrowsInsertedProc) =
  # TODO check subclass
  var tmp = new QUndoViewrowsInsertedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_rowsInserted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_rowsInserted(self: ptr cQUndoView, slot: int, parent: pointer, start: cint, endVal: cint): void {.exportc: "miqt_exec_callback_QUndoView_rowsInserted ".} =
  var nimfunc = cast[ptr QUndoViewrowsInsertedProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)

  let slotval2 = start

  let slotval3 = endVal


  nimfunc[](slotval1, slotval2, slotval3)
proc QUndoViewrowsAboutToBeRemoved*(self: gen_qundoview_types.QUndoView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fQUndoView_virtualbase_rowsAboutToBeRemoved(self.h, parent.h, start, endVal)

type QUndoViewrowsAboutToBeRemovedProc* = proc(parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void
proc onrowsAboutToBeRemoved*(self: gen_qundoview_types.QUndoView, slot: QUndoViewrowsAboutToBeRemovedProc) =
  # TODO check subclass
  var tmp = new QUndoViewrowsAboutToBeRemovedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_rowsAboutToBeRemoved(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_rowsAboutToBeRemoved(self: ptr cQUndoView, slot: int, parent: pointer, start: cint, endVal: cint): void {.exportc: "miqt_exec_callback_QUndoView_rowsAboutToBeRemoved ".} =
  var nimfunc = cast[ptr QUndoViewrowsAboutToBeRemovedProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)

  let slotval2 = start

  let slotval3 = endVal


  nimfunc[](slotval1, slotval2, slotval3)
proc QUndoViewmouseMoveEvent*(self: gen_qundoview_types.QUndoView, e: gen_qevent_types.QMouseEvent): void =
  fQUndoView_virtualbase_mouseMoveEvent(self.h, e.h)

type QUndoViewmouseMoveEventProc* = proc(e: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qundoview_types.QUndoView, slot: QUndoViewmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QUndoViewmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_mouseMoveEvent(self: ptr cQUndoView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QUndoView_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QUndoViewmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)


  nimfunc[](slotval1)
proc QUndoViewmouseReleaseEvent*(self: gen_qundoview_types.QUndoView, e: gen_qevent_types.QMouseEvent): void =
  fQUndoView_virtualbase_mouseReleaseEvent(self.h, e.h)

type QUndoViewmouseReleaseEventProc* = proc(e: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qundoview_types.QUndoView, slot: QUndoViewmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QUndoViewmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_mouseReleaseEvent(self: ptr cQUndoView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QUndoView_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QUndoViewmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)


  nimfunc[](slotval1)
proc QUndoViewwheelEvent*(self: gen_qundoview_types.QUndoView, e: gen_qevent_types.QWheelEvent): void =
  fQUndoView_virtualbase_wheelEvent(self.h, e.h)

type QUndoViewwheelEventProc* = proc(e: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qundoview_types.QUndoView, slot: QUndoViewwheelEventProc) =
  # TODO check subclass
  var tmp = new QUndoViewwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_wheelEvent(self: ptr cQUndoView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QUndoView_wheelEvent ".} =
  var nimfunc = cast[ptr QUndoViewwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: e)


  nimfunc[](slotval1)
proc QUndoViewtimerEvent*(self: gen_qundoview_types.QUndoView, e: gen_qcoreevent_types.QTimerEvent): void =
  fQUndoView_virtualbase_timerEvent(self.h, e.h)

type QUndoViewtimerEventProc* = proc(e: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qundoview_types.QUndoView, slot: QUndoViewtimerEventProc) =
  # TODO check subclass
  var tmp = new QUndoViewtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_timerEvent(self: ptr cQUndoView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QUndoView_timerEvent ".} =
  var nimfunc = cast[ptr QUndoViewtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: e)


  nimfunc[](slotval1)
proc QUndoViewresizeEvent*(self: gen_qundoview_types.QUndoView, e: gen_qevent_types.QResizeEvent): void =
  fQUndoView_virtualbase_resizeEvent(self.h, e.h)

type QUndoViewresizeEventProc* = proc(e: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qundoview_types.QUndoView, slot: QUndoViewresizeEventProc) =
  # TODO check subclass
  var tmp = new QUndoViewresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_resizeEvent(self: ptr cQUndoView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QUndoView_resizeEvent ".} =
  var nimfunc = cast[ptr QUndoViewresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: e)


  nimfunc[](slotval1)
proc QUndoViewdragMoveEvent*(self: gen_qundoview_types.QUndoView, e: gen_qevent_types.QDragMoveEvent): void =
  fQUndoView_virtualbase_dragMoveEvent(self.h, e.h)

type QUndoViewdragMoveEventProc* = proc(e: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qundoview_types.QUndoView, slot: QUndoViewdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QUndoViewdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_dragMoveEvent(self: ptr cQUndoView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QUndoView_dragMoveEvent ".} =
  var nimfunc = cast[ptr QUndoViewdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: e)


  nimfunc[](slotval1)
proc QUndoViewdragLeaveEvent*(self: gen_qundoview_types.QUndoView, e: gen_qevent_types.QDragLeaveEvent): void =
  fQUndoView_virtualbase_dragLeaveEvent(self.h, e.h)

type QUndoViewdragLeaveEventProc* = proc(e: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qundoview_types.QUndoView, slot: QUndoViewdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QUndoViewdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_dragLeaveEvent(self: ptr cQUndoView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QUndoView_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QUndoViewdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: e)


  nimfunc[](slotval1)
proc QUndoViewdropEvent*(self: gen_qundoview_types.QUndoView, e: gen_qevent_types.QDropEvent): void =
  fQUndoView_virtualbase_dropEvent(self.h, e.h)

type QUndoViewdropEventProc* = proc(e: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qundoview_types.QUndoView, slot: QUndoViewdropEventProc) =
  # TODO check subclass
  var tmp = new QUndoViewdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_dropEvent(self: ptr cQUndoView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QUndoView_dropEvent ".} =
  var nimfunc = cast[ptr QUndoViewdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: e)


  nimfunc[](slotval1)
proc QUndoViewstartDrag*(self: gen_qundoview_types.QUndoView, supportedActions: cint): void =
  fQUndoView_virtualbase_startDrag(self.h, cint(supportedActions))

type QUndoViewstartDragProc* = proc(supportedActions: cint): void
proc onstartDrag*(self: gen_qundoview_types.QUndoView, slot: QUndoViewstartDragProc) =
  # TODO check subclass
  var tmp = new QUndoViewstartDragProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_startDrag(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_startDrag(self: ptr cQUndoView, slot: int, supportedActions: cint): void {.exportc: "miqt_exec_callback_QUndoView_startDrag ".} =
  var nimfunc = cast[ptr QUndoViewstartDragProc](cast[pointer](slot))
  let slotval1 = cint(supportedActions)


  nimfunc[](slotval1)
proc QUndoViewviewOptions*(self: gen_qundoview_types.QUndoView, ): gen_qstyleoption_types.QStyleOptionViewItem =
  gen_qstyleoption_types.QStyleOptionViewItem(h: fQUndoView_virtualbase_viewOptions(self.h))

type QUndoViewviewOptionsProc* = proc(): gen_qstyleoption_types.QStyleOptionViewItem
proc onviewOptions*(self: gen_qundoview_types.QUndoView, slot: QUndoViewviewOptionsProc) =
  # TODO check subclass
  var tmp = new QUndoViewviewOptionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_viewOptions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_viewOptions(self: ptr cQUndoView, slot: int): pointer {.exportc: "miqt_exec_callback_QUndoView_viewOptions ".} =
  var nimfunc = cast[ptr QUndoViewviewOptionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QUndoViewpaintEvent*(self: gen_qundoview_types.QUndoView, e: gen_qevent_types.QPaintEvent): void =
  fQUndoView_virtualbase_paintEvent(self.h, e.h)

type QUndoViewpaintEventProc* = proc(e: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qundoview_types.QUndoView, slot: QUndoViewpaintEventProc) =
  # TODO check subclass
  var tmp = new QUndoViewpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_paintEvent(self: ptr cQUndoView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QUndoView_paintEvent ".} =
  var nimfunc = cast[ptr QUndoViewpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: e)


  nimfunc[](slotval1)
proc QUndoViewhorizontalOffset*(self: gen_qundoview_types.QUndoView, ): cint =
  fQUndoView_virtualbase_horizontalOffset(self.h)

type QUndoViewhorizontalOffsetProc* = proc(): cint
proc onhorizontalOffset*(self: gen_qundoview_types.QUndoView, slot: QUndoViewhorizontalOffsetProc) =
  # TODO check subclass
  var tmp = new QUndoViewhorizontalOffsetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_horizontalOffset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_horizontalOffset(self: ptr cQUndoView, slot: int): cint {.exportc: "miqt_exec_callback_QUndoView_horizontalOffset ".} =
  var nimfunc = cast[ptr QUndoViewhorizontalOffsetProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QUndoViewverticalOffset*(self: gen_qundoview_types.QUndoView, ): cint =
  fQUndoView_virtualbase_verticalOffset(self.h)

type QUndoViewverticalOffsetProc* = proc(): cint
proc onverticalOffset*(self: gen_qundoview_types.QUndoView, slot: QUndoViewverticalOffsetProc) =
  # TODO check subclass
  var tmp = new QUndoViewverticalOffsetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_verticalOffset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_verticalOffset(self: ptr cQUndoView, slot: int): cint {.exportc: "miqt_exec_callback_QUndoView_verticalOffset ".} =
  var nimfunc = cast[ptr QUndoViewverticalOffsetProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QUndoViewmoveCursor*(self: gen_qundoview_types.QUndoView, cursorAction: cint, modifiers: cint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fQUndoView_virtualbase_moveCursor(self.h, cint(cursorAction), cint(modifiers)))

type QUndoViewmoveCursorProc* = proc(cursorAction: cint, modifiers: cint): gen_qabstractitemmodel_types.QModelIndex
proc onmoveCursor*(self: gen_qundoview_types.QUndoView, slot: QUndoViewmoveCursorProc) =
  # TODO check subclass
  var tmp = new QUndoViewmoveCursorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_moveCursor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_moveCursor(self: ptr cQUndoView, slot: int, cursorAction: cint, modifiers: cint): pointer {.exportc: "miqt_exec_callback_QUndoView_moveCursor ".} =
  var nimfunc = cast[ptr QUndoViewmoveCursorProc](cast[pointer](slot))
  let slotval1 = cint(cursorAction)

  let slotval2 = cint(modifiers)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QUndoViewsetSelection*(self: gen_qundoview_types.QUndoView, rect: gen_qrect_types.QRect, command: cint): void =
  fQUndoView_virtualbase_setSelection(self.h, rect.h, cint(command))

type QUndoViewsetSelectionProc* = proc(rect: gen_qrect_types.QRect, command: cint): void
proc onsetSelection*(self: gen_qundoview_types.QUndoView, slot: QUndoViewsetSelectionProc) =
  # TODO check subclass
  var tmp = new QUndoViewsetSelectionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_setSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_setSelection(self: ptr cQUndoView, slot: int, rect: pointer, command: cint): void {.exportc: "miqt_exec_callback_QUndoView_setSelection ".} =
  var nimfunc = cast[ptr QUndoViewsetSelectionProc](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRect(h: rect)

  let slotval2 = cint(command)


  nimfunc[](slotval1, slotval2)
proc QUndoViewvisualRegionForSelection*(self: gen_qundoview_types.QUndoView, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fQUndoView_virtualbase_visualRegionForSelection(self.h, selection.h))

type QUndoViewvisualRegionForSelectionProc* = proc(selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion
proc onvisualRegionForSelection*(self: gen_qundoview_types.QUndoView, slot: QUndoViewvisualRegionForSelectionProc) =
  # TODO check subclass
  var tmp = new QUndoViewvisualRegionForSelectionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_visualRegionForSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_visualRegionForSelection(self: ptr cQUndoView, slot: int, selection: pointer): pointer {.exportc: "miqt_exec_callback_QUndoView_visualRegionForSelection ".} =
  var nimfunc = cast[ptr QUndoViewvisualRegionForSelectionProc](cast[pointer](slot))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QUndoViewselectedIndexes*(self: gen_qundoview_types.QUndoView, ): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fQUndoView_virtualbase_selectedIndexes(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  vx_ret

type QUndoViewselectedIndexesProc* = proc(): seq[gen_qabstractitemmodel_types.QModelIndex]
proc onselectedIndexes*(self: gen_qundoview_types.QUndoView, slot: QUndoViewselectedIndexesProc) =
  # TODO check subclass
  var tmp = new QUndoViewselectedIndexesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_selectedIndexes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_selectedIndexes(self: ptr cQUndoView, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QUndoView_selectedIndexes ".} =
  var nimfunc = cast[ptr QUndoViewselectedIndexesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[pointer](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QUndoViewupdateGeometries*(self: gen_qundoview_types.QUndoView, ): void =
  fQUndoView_virtualbase_updateGeometries(self.h)

type QUndoViewupdateGeometriesProc* = proc(): void
proc onupdateGeometries*(self: gen_qundoview_types.QUndoView, slot: QUndoViewupdateGeometriesProc) =
  # TODO check subclass
  var tmp = new QUndoViewupdateGeometriesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_updateGeometries(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_updateGeometries(self: ptr cQUndoView, slot: int): void {.exportc: "miqt_exec_callback_QUndoView_updateGeometries ".} =
  var nimfunc = cast[ptr QUndoViewupdateGeometriesProc](cast[pointer](slot))

  nimfunc[]()
proc QUndoViewisIndexHidden*(self: gen_qundoview_types.QUndoView, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fQUndoView_virtualbase_isIndexHidden(self.h, index.h)

type QUndoViewisIndexHiddenProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex): bool
proc onisIndexHidden*(self: gen_qundoview_types.QUndoView, slot: QUndoViewisIndexHiddenProc) =
  # TODO check subclass
  var tmp = new QUndoViewisIndexHiddenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_isIndexHidden(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_isIndexHidden(self: ptr cQUndoView, slot: int, index: pointer): bool {.exportc: "miqt_exec_callback_QUndoView_isIndexHidden ".} =
  var nimfunc = cast[ptr QUndoViewisIndexHiddenProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QUndoViewselectionChanged*(self: gen_qundoview_types.QUndoView, selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void =
  fQUndoView_virtualbase_selectionChanged(self.h, selected.h, deselected.h)

type QUndoViewselectionChangedProc* = proc(selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void
proc onselectionChanged*(self: gen_qundoview_types.QUndoView, slot: QUndoViewselectionChangedProc) =
  # TODO check subclass
  var tmp = new QUndoViewselectionChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_selectionChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_selectionChanged(self: ptr cQUndoView, slot: int, selected: pointer, deselected: pointer): void {.exportc: "miqt_exec_callback_QUndoView_selectionChanged ".} =
  var nimfunc = cast[ptr QUndoViewselectionChangedProc](cast[pointer](slot))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selected)

  let slotval2 = gen_qitemselectionmodel_types.QItemSelection(h: deselected)


  nimfunc[](slotval1, slotval2)
proc QUndoViewcurrentChanged*(self: gen_qundoview_types.QUndoView, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void =
  fQUndoView_virtualbase_currentChanged(self.h, current.h, previous.h)

type QUndoViewcurrentChangedProc* = proc(current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void
proc oncurrentChanged*(self: gen_qundoview_types.QUndoView, slot: QUndoViewcurrentChangedProc) =
  # TODO check subclass
  var tmp = new QUndoViewcurrentChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_currentChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_currentChanged(self: ptr cQUndoView, slot: int, current: pointer, previous: pointer): void {.exportc: "miqt_exec_callback_QUndoView_currentChanged ".} =
  var nimfunc = cast[ptr QUndoViewcurrentChangedProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: current)

  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: previous)


  nimfunc[](slotval1, slotval2)
proc QUndoViewviewportSizeHint*(self: gen_qundoview_types.QUndoView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQUndoView_virtualbase_viewportSizeHint(self.h))

type QUndoViewviewportSizeHintProc* = proc(): gen_qsize_types.QSize
proc onviewportSizeHint*(self: gen_qundoview_types.QUndoView, slot: QUndoViewviewportSizeHintProc) =
  # TODO check subclass
  var tmp = new QUndoViewviewportSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_viewportSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_viewportSizeHint(self: ptr cQUndoView, slot: int): pointer {.exportc: "miqt_exec_callback_QUndoView_viewportSizeHint ".} =
  var nimfunc = cast[ptr QUndoViewviewportSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QUndoViewsetModel*(self: gen_qundoview_types.QUndoView, model: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fQUndoView_virtualbase_setModel(self.h, model.h)

type QUndoViewsetModelProc* = proc(model: gen_qabstractitemmodel_types.QAbstractItemModel): void
proc onsetModel*(self: gen_qundoview_types.QUndoView, slot: QUndoViewsetModelProc) =
  # TODO check subclass
  var tmp = new QUndoViewsetModelProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_setModel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_setModel(self: ptr cQUndoView, slot: int, model: pointer): void {.exportc: "miqt_exec_callback_QUndoView_setModel ".} =
  var nimfunc = cast[ptr QUndoViewsetModelProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model)


  nimfunc[](slotval1)
proc QUndoViewsetSelectionModel*(self: gen_qundoview_types.QUndoView, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void =
  fQUndoView_virtualbase_setSelectionModel(self.h, selectionModel.h)

type QUndoViewsetSelectionModelProc* = proc(selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void
proc onsetSelectionModel*(self: gen_qundoview_types.QUndoView, slot: QUndoViewsetSelectionModelProc) =
  # TODO check subclass
  var tmp = new QUndoViewsetSelectionModelProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_setSelectionModel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_setSelectionModel(self: ptr cQUndoView, slot: int, selectionModel: pointer): void {.exportc: "miqt_exec_callback_QUndoView_setSelectionModel ".} =
  var nimfunc = cast[ptr QUndoViewsetSelectionModelProc](cast[pointer](slot))
  let slotval1 = gen_qitemselectionmodel_types.QItemSelectionModel(h: selectionModel)


  nimfunc[](slotval1)
proc QUndoViewkeyboardSearch*(self: gen_qundoview_types.QUndoView, search: string): void =
  fQUndoView_virtualbase_keyboardSearch(self.h, struct_miqt_string(data: search, len: csize_t(len(search))))

type QUndoViewkeyboardSearchProc* = proc(search: string): void
proc onkeyboardSearch*(self: gen_qundoview_types.QUndoView, slot: QUndoViewkeyboardSearchProc) =
  # TODO check subclass
  var tmp = new QUndoViewkeyboardSearchProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_keyboardSearch(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_keyboardSearch(self: ptr cQUndoView, slot: int, search: struct_miqt_string): void {.exportc: "miqt_exec_callback_QUndoView_keyboardSearch ".} =
  var nimfunc = cast[ptr QUndoViewkeyboardSearchProc](cast[pointer](slot))
  let vsearch_ms = search
  let vsearchx_ret = string.fromBytes(toOpenArrayByte(vsearch_ms.data, 0, int(vsearch_ms.len)-1))
  c_free(vsearch_ms.data)
  let slotval1 = vsearchx_ret


  nimfunc[](slotval1)
proc QUndoViewsizeHintForRow*(self: gen_qundoview_types.QUndoView, row: cint): cint =
  fQUndoView_virtualbase_sizeHintForRow(self.h, row)

type QUndoViewsizeHintForRowProc* = proc(row: cint): cint
proc onsizeHintForRow*(self: gen_qundoview_types.QUndoView, slot: QUndoViewsizeHintForRowProc) =
  # TODO check subclass
  var tmp = new QUndoViewsizeHintForRowProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_sizeHintForRow(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_sizeHintForRow(self: ptr cQUndoView, slot: int, row: cint): cint {.exportc: "miqt_exec_callback_QUndoView_sizeHintForRow ".} =
  var nimfunc = cast[ptr QUndoViewsizeHintForRowProc](cast[pointer](slot))
  let slotval1 = row


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QUndoViewsizeHintForColumn*(self: gen_qundoview_types.QUndoView, column: cint): cint =
  fQUndoView_virtualbase_sizeHintForColumn(self.h, column)

type QUndoViewsizeHintForColumnProc* = proc(column: cint): cint
proc onsizeHintForColumn*(self: gen_qundoview_types.QUndoView, slot: QUndoViewsizeHintForColumnProc) =
  # TODO check subclass
  var tmp = new QUndoViewsizeHintForColumnProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_sizeHintForColumn(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_sizeHintForColumn(self: ptr cQUndoView, slot: int, column: cint): cint {.exportc: "miqt_exec_callback_QUndoView_sizeHintForColumn ".} =
  var nimfunc = cast[ptr QUndoViewsizeHintForColumnProc](cast[pointer](slot))
  let slotval1 = column


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QUndoViewinputMethodQuery*(self: gen_qundoview_types.QUndoView, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQUndoView_virtualbase_inputMethodQuery(self.h, cint(query)))

type QUndoViewinputMethodQueryProc* = proc(query: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qundoview_types.QUndoView, slot: QUndoViewinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QUndoViewinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_inputMethodQuery(self: ptr cQUndoView, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QUndoView_inputMethodQuery ".} =
  var nimfunc = cast[ptr QUndoViewinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(query)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QUndoViewselectAll*(self: gen_qundoview_types.QUndoView, ): void =
  fQUndoView_virtualbase_selectAll(self.h)

type QUndoViewselectAllProc* = proc(): void
proc onselectAll*(self: gen_qundoview_types.QUndoView, slot: QUndoViewselectAllProc) =
  # TODO check subclass
  var tmp = new QUndoViewselectAllProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_selectAll(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_selectAll(self: ptr cQUndoView, slot: int): void {.exportc: "miqt_exec_callback_QUndoView_selectAll ".} =
  var nimfunc = cast[ptr QUndoViewselectAllProc](cast[pointer](slot))

  nimfunc[]()
proc QUndoViewupdateEditorData*(self: gen_qundoview_types.QUndoView, ): void =
  fQUndoView_virtualbase_updateEditorData(self.h)

type QUndoViewupdateEditorDataProc* = proc(): void
proc onupdateEditorData*(self: gen_qundoview_types.QUndoView, slot: QUndoViewupdateEditorDataProc) =
  # TODO check subclass
  var tmp = new QUndoViewupdateEditorDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_updateEditorData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_updateEditorData(self: ptr cQUndoView, slot: int): void {.exportc: "miqt_exec_callback_QUndoView_updateEditorData ".} =
  var nimfunc = cast[ptr QUndoViewupdateEditorDataProc](cast[pointer](slot))

  nimfunc[]()
proc QUndoViewupdateEditorGeometries*(self: gen_qundoview_types.QUndoView, ): void =
  fQUndoView_virtualbase_updateEditorGeometries(self.h)

type QUndoViewupdateEditorGeometriesProc* = proc(): void
proc onupdateEditorGeometries*(self: gen_qundoview_types.QUndoView, slot: QUndoViewupdateEditorGeometriesProc) =
  # TODO check subclass
  var tmp = new QUndoViewupdateEditorGeometriesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_updateEditorGeometries(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_updateEditorGeometries(self: ptr cQUndoView, slot: int): void {.exportc: "miqt_exec_callback_QUndoView_updateEditorGeometries ".} =
  var nimfunc = cast[ptr QUndoViewupdateEditorGeometriesProc](cast[pointer](slot))

  nimfunc[]()
proc QUndoViewverticalScrollbarAction*(self: gen_qundoview_types.QUndoView, action: cint): void =
  fQUndoView_virtualbase_verticalScrollbarAction(self.h, action)

type QUndoViewverticalScrollbarActionProc* = proc(action: cint): void
proc onverticalScrollbarAction*(self: gen_qundoview_types.QUndoView, slot: QUndoViewverticalScrollbarActionProc) =
  # TODO check subclass
  var tmp = new QUndoViewverticalScrollbarActionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_verticalScrollbarAction(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_verticalScrollbarAction(self: ptr cQUndoView, slot: int, action: cint): void {.exportc: "miqt_exec_callback_QUndoView_verticalScrollbarAction ".} =
  var nimfunc = cast[ptr QUndoViewverticalScrollbarActionProc](cast[pointer](slot))
  let slotval1 = action


  nimfunc[](slotval1)
proc QUndoViewhorizontalScrollbarAction*(self: gen_qundoview_types.QUndoView, action: cint): void =
  fQUndoView_virtualbase_horizontalScrollbarAction(self.h, action)

type QUndoViewhorizontalScrollbarActionProc* = proc(action: cint): void
proc onhorizontalScrollbarAction*(self: gen_qundoview_types.QUndoView, slot: QUndoViewhorizontalScrollbarActionProc) =
  # TODO check subclass
  var tmp = new QUndoViewhorizontalScrollbarActionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_horizontalScrollbarAction(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_horizontalScrollbarAction(self: ptr cQUndoView, slot: int, action: cint): void {.exportc: "miqt_exec_callback_QUndoView_horizontalScrollbarAction ".} =
  var nimfunc = cast[ptr QUndoViewhorizontalScrollbarActionProc](cast[pointer](slot))
  let slotval1 = action


  nimfunc[](slotval1)
proc QUndoViewverticalScrollbarValueChanged*(self: gen_qundoview_types.QUndoView, value: cint): void =
  fQUndoView_virtualbase_verticalScrollbarValueChanged(self.h, value)

type QUndoViewverticalScrollbarValueChangedProc* = proc(value: cint): void
proc onverticalScrollbarValueChanged*(self: gen_qundoview_types.QUndoView, slot: QUndoViewverticalScrollbarValueChangedProc) =
  # TODO check subclass
  var tmp = new QUndoViewverticalScrollbarValueChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_verticalScrollbarValueChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_verticalScrollbarValueChanged(self: ptr cQUndoView, slot: int, value: cint): void {.exportc: "miqt_exec_callback_QUndoView_verticalScrollbarValueChanged ".} =
  var nimfunc = cast[ptr QUndoViewverticalScrollbarValueChangedProc](cast[pointer](slot))
  let slotval1 = value


  nimfunc[](slotval1)
proc QUndoViewhorizontalScrollbarValueChanged*(self: gen_qundoview_types.QUndoView, value: cint): void =
  fQUndoView_virtualbase_horizontalScrollbarValueChanged(self.h, value)

type QUndoViewhorizontalScrollbarValueChangedProc* = proc(value: cint): void
proc onhorizontalScrollbarValueChanged*(self: gen_qundoview_types.QUndoView, slot: QUndoViewhorizontalScrollbarValueChangedProc) =
  # TODO check subclass
  var tmp = new QUndoViewhorizontalScrollbarValueChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_horizontalScrollbarValueChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_horizontalScrollbarValueChanged(self: ptr cQUndoView, slot: int, value: cint): void {.exportc: "miqt_exec_callback_QUndoView_horizontalScrollbarValueChanged ".} =
  var nimfunc = cast[ptr QUndoViewhorizontalScrollbarValueChangedProc](cast[pointer](slot))
  let slotval1 = value


  nimfunc[](slotval1)
proc QUndoViewcloseEditor*(self: gen_qundoview_types.QUndoView, editor: gen_qwidget_types.QWidget, hint: cint): void =
  fQUndoView_virtualbase_closeEditor(self.h, editor.h, cint(hint))

type QUndoViewcloseEditorProc* = proc(editor: gen_qwidget_types.QWidget, hint: cint): void
proc oncloseEditor*(self: gen_qundoview_types.QUndoView, slot: QUndoViewcloseEditorProc) =
  # TODO check subclass
  var tmp = new QUndoViewcloseEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_closeEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_closeEditor(self: ptr cQUndoView, slot: int, editor: pointer, hint: cint): void {.exportc: "miqt_exec_callback_QUndoView_closeEditor ".} =
  var nimfunc = cast[ptr QUndoViewcloseEditorProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: editor)

  let slotval2 = cint(hint)


  nimfunc[](slotval1, slotval2)
proc QUndoViewcommitData*(self: gen_qundoview_types.QUndoView, editor: gen_qwidget_types.QWidget): void =
  fQUndoView_virtualbase_commitData(self.h, editor.h)

type QUndoViewcommitDataProc* = proc(editor: gen_qwidget_types.QWidget): void
proc oncommitData*(self: gen_qundoview_types.QUndoView, slot: QUndoViewcommitDataProc) =
  # TODO check subclass
  var tmp = new QUndoViewcommitDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_commitData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_commitData(self: ptr cQUndoView, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QUndoView_commitData ".} =
  var nimfunc = cast[ptr QUndoViewcommitDataProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: editor)


  nimfunc[](slotval1)
proc QUndoVieweditorDestroyed*(self: gen_qundoview_types.QUndoView, editor: gen_qobject_types.QObject): void =
  fQUndoView_virtualbase_editorDestroyed(self.h, editor.h)

type QUndoVieweditorDestroyedProc* = proc(editor: gen_qobject_types.QObject): void
proc oneditorDestroyed*(self: gen_qundoview_types.QUndoView, slot: QUndoVieweditorDestroyedProc) =
  # TODO check subclass
  var tmp = new QUndoVieweditorDestroyedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_editorDestroyed(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_editorDestroyed(self: ptr cQUndoView, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QUndoView_editorDestroyed ".} =
  var nimfunc = cast[ptr QUndoVieweditorDestroyedProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: editor)


  nimfunc[](slotval1)
proc QUndoViewedit*(self: gen_qundoview_types.QUndoView, index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool =
  fQUndoView_virtualbase_edit2(self.h, index.h, cint(trigger), event.h)

type QUndoViewedit2Proc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool
proc onedit*(self: gen_qundoview_types.QUndoView, slot: QUndoViewedit2Proc) =
  # TODO check subclass
  var tmp = new QUndoViewedit2Proc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_edit2(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_edit2(self: ptr cQUndoView, slot: int, index: pointer, trigger: cint, event: pointer): bool {.exportc: "miqt_exec_callback_QUndoView_edit2 ".} =
  var nimfunc = cast[ptr QUndoViewedit2Proc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = cint(trigger)

  let slotval3 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QUndoViewselectionCommand*(self: gen_qundoview_types.QUndoView, index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint =
  cint(fQUndoView_virtualbase_selectionCommand(self.h, index.h, event.h))

type QUndoViewselectionCommandProc* = proc(index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint
proc onselectionCommand*(self: gen_qundoview_types.QUndoView, slot: QUndoViewselectionCommandProc) =
  # TODO check subclass
  var tmp = new QUndoViewselectionCommandProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_selectionCommand(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_selectionCommand(self: ptr cQUndoView, slot: int, index: pointer, event: pointer): cint {.exportc: "miqt_exec_callback_QUndoView_selectionCommand ".} =
  var nimfunc = cast[ptr QUndoViewselectionCommandProc](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  cint(virtualReturn)
proc QUndoViewfocusNextPrevChild*(self: gen_qundoview_types.QUndoView, next: bool): bool =
  fQUndoView_virtualbase_focusNextPrevChild(self.h, next)

type QUndoViewfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qundoview_types.QUndoView, slot: QUndoViewfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QUndoViewfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_focusNextPrevChild(self: ptr cQUndoView, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QUndoView_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QUndoViewfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QUndoViewviewportEvent*(self: gen_qundoview_types.QUndoView, event: gen_qcoreevent_types.QEvent): bool =
  fQUndoView_virtualbase_viewportEvent(self.h, event.h)

type QUndoViewviewportEventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onviewportEvent*(self: gen_qundoview_types.QUndoView, slot: QUndoViewviewportEventProc) =
  # TODO check subclass
  var tmp = new QUndoViewviewportEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_viewportEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_viewportEvent(self: ptr cQUndoView, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QUndoView_viewportEvent ".} =
  var nimfunc = cast[ptr QUndoViewviewportEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QUndoViewmousePressEvent*(self: gen_qundoview_types.QUndoView, event: gen_qevent_types.QMouseEvent): void =
  fQUndoView_virtualbase_mousePressEvent(self.h, event.h)

type QUndoViewmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qundoview_types.QUndoView, slot: QUndoViewmousePressEventProc) =
  # TODO check subclass
  var tmp = new QUndoViewmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_mousePressEvent(self: ptr cQUndoView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUndoView_mousePressEvent ".} =
  var nimfunc = cast[ptr QUndoViewmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QUndoViewmouseDoubleClickEvent*(self: gen_qundoview_types.QUndoView, event: gen_qevent_types.QMouseEvent): void =
  fQUndoView_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QUndoViewmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qundoview_types.QUndoView, slot: QUndoViewmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QUndoViewmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_mouseDoubleClickEvent(self: ptr cQUndoView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUndoView_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QUndoViewmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QUndoViewdragEnterEvent*(self: gen_qundoview_types.QUndoView, event: gen_qevent_types.QDragEnterEvent): void =
  fQUndoView_virtualbase_dragEnterEvent(self.h, event.h)

type QUndoViewdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qundoview_types.QUndoView, slot: QUndoViewdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QUndoViewdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_dragEnterEvent(self: ptr cQUndoView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUndoView_dragEnterEvent ".} =
  var nimfunc = cast[ptr QUndoViewdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QUndoViewfocusInEvent*(self: gen_qundoview_types.QUndoView, event: gen_qevent_types.QFocusEvent): void =
  fQUndoView_virtualbase_focusInEvent(self.h, event.h)

type QUndoViewfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qundoview_types.QUndoView, slot: QUndoViewfocusInEventProc) =
  # TODO check subclass
  var tmp = new QUndoViewfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_focusInEvent(self: ptr cQUndoView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUndoView_focusInEvent ".} =
  var nimfunc = cast[ptr QUndoViewfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QUndoViewfocusOutEvent*(self: gen_qundoview_types.QUndoView, event: gen_qevent_types.QFocusEvent): void =
  fQUndoView_virtualbase_focusOutEvent(self.h, event.h)

type QUndoViewfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qundoview_types.QUndoView, slot: QUndoViewfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QUndoViewfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_focusOutEvent(self: ptr cQUndoView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUndoView_focusOutEvent ".} =
  var nimfunc = cast[ptr QUndoViewfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QUndoViewkeyPressEvent*(self: gen_qundoview_types.QUndoView, event: gen_qevent_types.QKeyEvent): void =
  fQUndoView_virtualbase_keyPressEvent(self.h, event.h)

type QUndoViewkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qundoview_types.QUndoView, slot: QUndoViewkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QUndoViewkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_keyPressEvent(self: ptr cQUndoView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUndoView_keyPressEvent ".} =
  var nimfunc = cast[ptr QUndoViewkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QUndoViewinputMethodEvent*(self: gen_qundoview_types.QUndoView, event: gen_qevent_types.QInputMethodEvent): void =
  fQUndoView_virtualbase_inputMethodEvent(self.h, event.h)

type QUndoViewinputMethodEventProc* = proc(event: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qundoview_types.QUndoView, slot: QUndoViewinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QUndoViewinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_inputMethodEvent(self: ptr cQUndoView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUndoView_inputMethodEvent ".} =
  var nimfunc = cast[ptr QUndoViewinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)


  nimfunc[](slotval1)
proc QUndoVieweventFilter*(self: gen_qundoview_types.QUndoView, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQUndoView_virtualbase_eventFilter(self.h, objectVal.h, event.h)

type QUndoVieweventFilterProc* = proc(objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qundoview_types.QUndoView, slot: QUndoVieweventFilterProc) =
  # TODO check subclass
  var tmp = new QUndoVieweventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_eventFilter(self: ptr cQUndoView, slot: int, objectVal: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QUndoView_eventFilter ".} =
  var nimfunc = cast[ptr QUndoVieweventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: objectVal)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QUndoViewminimumSizeHint*(self: gen_qundoview_types.QUndoView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQUndoView_virtualbase_minimumSizeHint(self.h))

type QUndoViewminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qundoview_types.QUndoView, slot: QUndoViewminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QUndoViewminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_minimumSizeHint(self: ptr cQUndoView, slot: int): pointer {.exportc: "miqt_exec_callback_QUndoView_minimumSizeHint ".} =
  var nimfunc = cast[ptr QUndoViewminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QUndoViewsizeHint*(self: gen_qundoview_types.QUndoView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQUndoView_virtualbase_sizeHint(self.h))

type QUndoViewsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qundoview_types.QUndoView, slot: QUndoViewsizeHintProc) =
  # TODO check subclass
  var tmp = new QUndoViewsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_sizeHint(self: ptr cQUndoView, slot: int): pointer {.exportc: "miqt_exec_callback_QUndoView_sizeHint ".} =
  var nimfunc = cast[ptr QUndoViewsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QUndoViewsetupViewport*(self: gen_qundoview_types.QUndoView, viewport: gen_qwidget_types.QWidget): void =
  fQUndoView_virtualbase_setupViewport(self.h, viewport.h)

type QUndoViewsetupViewportProc* = proc(viewport: gen_qwidget_types.QWidget): void
proc onsetupViewport*(self: gen_qundoview_types.QUndoView, slot: QUndoViewsetupViewportProc) =
  # TODO check subclass
  var tmp = new QUndoViewsetupViewportProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_setupViewport(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_setupViewport(self: ptr cQUndoView, slot: int, viewport: pointer): void {.exportc: "miqt_exec_callback_QUndoView_setupViewport ".} =
  var nimfunc = cast[ptr QUndoViewsetupViewportProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: viewport)


  nimfunc[](slotval1)
proc QUndoViewcontextMenuEvent*(self: gen_qundoview_types.QUndoView, param1: gen_qevent_types.QContextMenuEvent): void =
  fQUndoView_virtualbase_contextMenuEvent(self.h, param1.h)

type QUndoViewcontextMenuEventProc* = proc(param1: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qundoview_types.QUndoView, slot: QUndoViewcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QUndoViewcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_contextMenuEvent(self: ptr cQUndoView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QUndoView_contextMenuEvent ".} =
  var nimfunc = cast[ptr QUndoViewcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)


  nimfunc[](slotval1)
proc QUndoViewchangeEvent*(self: gen_qundoview_types.QUndoView, param1: gen_qcoreevent_types.QEvent): void =
  fQUndoView_virtualbase_changeEvent(self.h, param1.h)

type QUndoViewchangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qundoview_types.QUndoView, slot: QUndoViewchangeEventProc) =
  # TODO check subclass
  var tmp = new QUndoViewchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_changeEvent(self: ptr cQUndoView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QUndoView_changeEvent ".} =
  var nimfunc = cast[ptr QUndoViewchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QUndoViewdevType*(self: gen_qundoview_types.QUndoView, ): cint =
  fQUndoView_virtualbase_devType(self.h)

type QUndoViewdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qundoview_types.QUndoView, slot: QUndoViewdevTypeProc) =
  # TODO check subclass
  var tmp = new QUndoViewdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_devType(self: ptr cQUndoView, slot: int): cint {.exportc: "miqt_exec_callback_QUndoView_devType ".} =
  var nimfunc = cast[ptr QUndoViewdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QUndoViewsetVisible*(self: gen_qundoview_types.QUndoView, visible: bool): void =
  fQUndoView_virtualbase_setVisible(self.h, visible)

type QUndoViewsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qundoview_types.QUndoView, slot: QUndoViewsetVisibleProc) =
  # TODO check subclass
  var tmp = new QUndoViewsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_setVisible(self: ptr cQUndoView, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QUndoView_setVisible ".} =
  var nimfunc = cast[ptr QUndoViewsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QUndoViewheightForWidth*(self: gen_qundoview_types.QUndoView, param1: cint): cint =
  fQUndoView_virtualbase_heightForWidth(self.h, param1)

type QUndoViewheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qundoview_types.QUndoView, slot: QUndoViewheightForWidthProc) =
  # TODO check subclass
  var tmp = new QUndoViewheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_heightForWidth(self: ptr cQUndoView, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QUndoView_heightForWidth ".} =
  var nimfunc = cast[ptr QUndoViewheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QUndoViewhasHeightForWidth*(self: gen_qundoview_types.QUndoView, ): bool =
  fQUndoView_virtualbase_hasHeightForWidth(self.h)

type QUndoViewhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qundoview_types.QUndoView, slot: QUndoViewhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QUndoViewhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_hasHeightForWidth(self: ptr cQUndoView, slot: int): bool {.exportc: "miqt_exec_callback_QUndoView_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QUndoViewhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QUndoViewpaintEngine*(self: gen_qundoview_types.QUndoView, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQUndoView_virtualbase_paintEngine(self.h))

type QUndoViewpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qundoview_types.QUndoView, slot: QUndoViewpaintEngineProc) =
  # TODO check subclass
  var tmp = new QUndoViewpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_paintEngine(self: ptr cQUndoView, slot: int): pointer {.exportc: "miqt_exec_callback_QUndoView_paintEngine ".} =
  var nimfunc = cast[ptr QUndoViewpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QUndoViewkeyReleaseEvent*(self: gen_qundoview_types.QUndoView, event: gen_qevent_types.QKeyEvent): void =
  fQUndoView_virtualbase_keyReleaseEvent(self.h, event.h)

type QUndoViewkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qundoview_types.QUndoView, slot: QUndoViewkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QUndoViewkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_keyReleaseEvent(self: ptr cQUndoView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUndoView_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QUndoViewkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QUndoViewenterEvent*(self: gen_qundoview_types.QUndoView, event: gen_qcoreevent_types.QEvent): void =
  fQUndoView_virtualbase_enterEvent(self.h, event.h)

type QUndoViewenterEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onenterEvent*(self: gen_qundoview_types.QUndoView, slot: QUndoViewenterEventProc) =
  # TODO check subclass
  var tmp = new QUndoViewenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_enterEvent(self: ptr cQUndoView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUndoView_enterEvent ".} =
  var nimfunc = cast[ptr QUndoViewenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QUndoViewleaveEvent*(self: gen_qundoview_types.QUndoView, event: gen_qcoreevent_types.QEvent): void =
  fQUndoView_virtualbase_leaveEvent(self.h, event.h)

type QUndoViewleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qundoview_types.QUndoView, slot: QUndoViewleaveEventProc) =
  # TODO check subclass
  var tmp = new QUndoViewleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_leaveEvent(self: ptr cQUndoView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUndoView_leaveEvent ".} =
  var nimfunc = cast[ptr QUndoViewleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QUndoViewmoveEvent*(self: gen_qundoview_types.QUndoView, event: gen_qevent_types.QMoveEvent): void =
  fQUndoView_virtualbase_moveEvent(self.h, event.h)

type QUndoViewmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qundoview_types.QUndoView, slot: QUndoViewmoveEventProc) =
  # TODO check subclass
  var tmp = new QUndoViewmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_moveEvent(self: ptr cQUndoView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUndoView_moveEvent ".} =
  var nimfunc = cast[ptr QUndoViewmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QUndoViewcloseEvent*(self: gen_qundoview_types.QUndoView, event: gen_qevent_types.QCloseEvent): void =
  fQUndoView_virtualbase_closeEvent(self.h, event.h)

type QUndoViewcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qundoview_types.QUndoView, slot: QUndoViewcloseEventProc) =
  # TODO check subclass
  var tmp = new QUndoViewcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_closeEvent(self: ptr cQUndoView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUndoView_closeEvent ".} =
  var nimfunc = cast[ptr QUndoViewcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QUndoViewtabletEvent*(self: gen_qundoview_types.QUndoView, event: gen_qevent_types.QTabletEvent): void =
  fQUndoView_virtualbase_tabletEvent(self.h, event.h)

type QUndoViewtabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qundoview_types.QUndoView, slot: QUndoViewtabletEventProc) =
  # TODO check subclass
  var tmp = new QUndoViewtabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_tabletEvent(self: ptr cQUndoView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUndoView_tabletEvent ".} =
  var nimfunc = cast[ptr QUndoViewtabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QUndoViewactionEvent*(self: gen_qundoview_types.QUndoView, event: gen_qevent_types.QActionEvent): void =
  fQUndoView_virtualbase_actionEvent(self.h, event.h)

type QUndoViewactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qundoview_types.QUndoView, slot: QUndoViewactionEventProc) =
  # TODO check subclass
  var tmp = new QUndoViewactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_actionEvent(self: ptr cQUndoView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUndoView_actionEvent ".} =
  var nimfunc = cast[ptr QUndoViewactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QUndoViewshowEvent*(self: gen_qundoview_types.QUndoView, event: gen_qevent_types.QShowEvent): void =
  fQUndoView_virtualbase_showEvent(self.h, event.h)

type QUndoViewshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qundoview_types.QUndoView, slot: QUndoViewshowEventProc) =
  # TODO check subclass
  var tmp = new QUndoViewshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_showEvent(self: ptr cQUndoView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUndoView_showEvent ".} =
  var nimfunc = cast[ptr QUndoViewshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QUndoViewhideEvent*(self: gen_qundoview_types.QUndoView, event: gen_qevent_types.QHideEvent): void =
  fQUndoView_virtualbase_hideEvent(self.h, event.h)

type QUndoViewhideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qundoview_types.QUndoView, slot: QUndoViewhideEventProc) =
  # TODO check subclass
  var tmp = new QUndoViewhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_hideEvent(self: ptr cQUndoView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUndoView_hideEvent ".} =
  var nimfunc = cast[ptr QUndoViewhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QUndoViewnativeEvent*(self: gen_qundoview_types.QUndoView, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fQUndoView_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QUndoViewnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: gen_qundoview_types.QUndoView, slot: QUndoViewnativeEventProc) =
  # TODO check subclass
  var tmp = new QUndoViewnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_nativeEvent(self: ptr cQUndoView, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QUndoView_nativeEvent ".} =
  var nimfunc = cast[ptr QUndoViewnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QUndoViewmetric*(self: gen_qundoview_types.QUndoView, param1: cint): cint =
  fQUndoView_virtualbase_metric(self.h, cint(param1))

type QUndoViewmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qundoview_types.QUndoView, slot: QUndoViewmetricProc) =
  # TODO check subclass
  var tmp = new QUndoViewmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_metric(self: ptr cQUndoView, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QUndoView_metric ".} =
  var nimfunc = cast[ptr QUndoViewmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QUndoViewinitPainter*(self: gen_qundoview_types.QUndoView, painter: gen_qpainter_types.QPainter): void =
  fQUndoView_virtualbase_initPainter(self.h, painter.h)

type QUndoViewinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qundoview_types.QUndoView, slot: QUndoViewinitPainterProc) =
  # TODO check subclass
  var tmp = new QUndoViewinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_initPainter(self: ptr cQUndoView, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QUndoView_initPainter ".} =
  var nimfunc = cast[ptr QUndoViewinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QUndoViewredirected*(self: gen_qundoview_types.QUndoView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQUndoView_virtualbase_redirected(self.h, offset.h))

type QUndoViewredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qundoview_types.QUndoView, slot: QUndoViewredirectedProc) =
  # TODO check subclass
  var tmp = new QUndoViewredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_redirected(self: ptr cQUndoView, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QUndoView_redirected ".} =
  var nimfunc = cast[ptr QUndoViewredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QUndoViewsharedPainter*(self: gen_qundoview_types.QUndoView, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQUndoView_virtualbase_sharedPainter(self.h))

type QUndoViewsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qundoview_types.QUndoView, slot: QUndoViewsharedPainterProc) =
  # TODO check subclass
  var tmp = new QUndoViewsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_sharedPainter(self: ptr cQUndoView, slot: int): pointer {.exportc: "miqt_exec_callback_QUndoView_sharedPainter ".} =
  var nimfunc = cast[ptr QUndoViewsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QUndoViewchildEvent*(self: gen_qundoview_types.QUndoView, event: gen_qcoreevent_types.QChildEvent): void =
  fQUndoView_virtualbase_childEvent(self.h, event.h)

type QUndoViewchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qundoview_types.QUndoView, slot: QUndoViewchildEventProc) =
  # TODO check subclass
  var tmp = new QUndoViewchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_childEvent(self: ptr cQUndoView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUndoView_childEvent ".} =
  var nimfunc = cast[ptr QUndoViewchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QUndoViewcustomEvent*(self: gen_qundoview_types.QUndoView, event: gen_qcoreevent_types.QEvent): void =
  fQUndoView_virtualbase_customEvent(self.h, event.h)

type QUndoViewcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qundoview_types.QUndoView, slot: QUndoViewcustomEventProc) =
  # TODO check subclass
  var tmp = new QUndoViewcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_customEvent(self: ptr cQUndoView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUndoView_customEvent ".} =
  var nimfunc = cast[ptr QUndoViewcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QUndoViewconnectNotify*(self: gen_qundoview_types.QUndoView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQUndoView_virtualbase_connectNotify(self.h, signal.h)

type QUndoViewconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qundoview_types.QUndoView, slot: QUndoViewconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QUndoViewconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_connectNotify(self: ptr cQUndoView, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QUndoView_connectNotify ".} =
  var nimfunc = cast[ptr QUndoViewconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QUndoViewdisconnectNotify*(self: gen_qundoview_types.QUndoView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQUndoView_virtualbase_disconnectNotify(self.h, signal.h)

type QUndoViewdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qundoview_types.QUndoView, slot: QUndoViewdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QUndoViewdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_disconnectNotify(self: ptr cQUndoView, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QUndoView_disconnectNotify ".} =
  var nimfunc = cast[ptr QUndoViewdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qundoview_types.QUndoView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQUndoView_staticMetaObject())
proc delete*(self: gen_qundoview_types.QUndoView) =
  fcQUndoView_delete(self.h)
