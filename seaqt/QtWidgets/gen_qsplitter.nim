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
{.compile("gen_qsplitter.cpp", cflags).}


import ./gen_qsplitter_types
export gen_qsplitter_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qpaintdevice_types,
  ../QtGui/gen_qpaintengine_types,
  ../QtGui/gen_qpainter_types,
  ./gen_qframe,
  ./gen_qwidget
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qsize_types,
  gen_qvariant_types,
  gen_qevent_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qframe,
  gen_qwidget

type cQSplitter*{.exportc: "QSplitter", incompleteStruct.} = object
type cQSplitterHandle*{.exportc: "QSplitterHandle", incompleteStruct.} = object

proc fcQSplitter_new(parent: pointer): ptr cQSplitter {.importc: "QSplitter_new".}
proc fcQSplitter_new2(): ptr cQSplitter {.importc: "QSplitter_new2".}
proc fcQSplitter_new3(param1: cint): ptr cQSplitter {.importc: "QSplitter_new3".}
proc fcQSplitter_new4(param1: cint, parent: pointer): ptr cQSplitter {.importc: "QSplitter_new4".}
proc fcQSplitter_metaObject(self: pointer, ): pointer {.importc: "QSplitter_metaObject".}
proc fcQSplitter_metacast(self: pointer, param1: cstring): pointer {.importc: "QSplitter_metacast".}
proc fcQSplitter_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSplitter_metacall".}
proc fcQSplitter_tr(s: cstring): struct_miqt_string {.importc: "QSplitter_tr".}
proc fcQSplitter_trUtf8(s: cstring): struct_miqt_string {.importc: "QSplitter_trUtf8".}
proc fcQSplitter_addWidget(self: pointer, widget: pointer): void {.importc: "QSplitter_addWidget".}
proc fcQSplitter_insertWidget(self: pointer, index: cint, widget: pointer): void {.importc: "QSplitter_insertWidget".}
proc fcQSplitter_replaceWidget(self: pointer, index: cint, widget: pointer): pointer {.importc: "QSplitter_replaceWidget".}
proc fcQSplitter_setOrientation(self: pointer, orientation: cint): void {.importc: "QSplitter_setOrientation".}
proc fcQSplitter_orientation(self: pointer, ): cint {.importc: "QSplitter_orientation".}
proc fcQSplitter_setChildrenCollapsible(self: pointer, childrenCollapsible: bool): void {.importc: "QSplitter_setChildrenCollapsible".}
proc fcQSplitter_childrenCollapsible(self: pointer, ): bool {.importc: "QSplitter_childrenCollapsible".}
proc fcQSplitter_setCollapsible(self: pointer, index: cint, param2: bool): void {.importc: "QSplitter_setCollapsible".}
proc fcQSplitter_isCollapsible(self: pointer, index: cint): bool {.importc: "QSplitter_isCollapsible".}
proc fcQSplitter_setOpaqueResize(self: pointer, ): void {.importc: "QSplitter_setOpaqueResize".}
proc fcQSplitter_opaqueResize(self: pointer, ): bool {.importc: "QSplitter_opaqueResize".}
proc fcQSplitter_refresh(self: pointer, ): void {.importc: "QSplitter_refresh".}
proc fcQSplitter_sizeHint(self: pointer, ): pointer {.importc: "QSplitter_sizeHint".}
proc fcQSplitter_minimumSizeHint(self: pointer, ): pointer {.importc: "QSplitter_minimumSizeHint".}
proc fcQSplitter_sizes(self: pointer, ): struct_miqt_array {.importc: "QSplitter_sizes".}
proc fcQSplitter_setSizes(self: pointer, list: struct_miqt_array): void {.importc: "QSplitter_setSizes".}
proc fcQSplitter_saveState(self: pointer, ): struct_miqt_string {.importc: "QSplitter_saveState".}
proc fcQSplitter_restoreState(self: pointer, state: struct_miqt_string): bool {.importc: "QSplitter_restoreState".}
proc fcQSplitter_handleWidth(self: pointer, ): cint {.importc: "QSplitter_handleWidth".}
proc fcQSplitter_setHandleWidth(self: pointer, handleWidth: cint): void {.importc: "QSplitter_setHandleWidth".}
proc fcQSplitter_indexOf(self: pointer, w: pointer): cint {.importc: "QSplitter_indexOf".}
proc fcQSplitter_widget(self: pointer, index: cint): pointer {.importc: "QSplitter_widget".}
proc fcQSplitter_count(self: pointer, ): cint {.importc: "QSplitter_count".}
proc fcQSplitter_getRange(self: pointer, index: cint, param2: ptr cint, param3: ptr cint): void {.importc: "QSplitter_getRange".}
proc fcQSplitter_handle(self: pointer, index: cint): pointer {.importc: "QSplitter_handle".}
proc fcQSplitter_setStretchFactor(self: pointer, index: cint, stretch: cint): void {.importc: "QSplitter_setStretchFactor".}
proc fcQSplitter_splitterMoved(self: pointer, pos: cint, index: cint): void {.importc: "QSplitter_splitterMoved".}
proc fcQSplitter_connect_splitterMoved(self: pointer, slot: int) {.importc: "QSplitter_connect_splitterMoved".}
proc fcQSplitter_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSplitter_tr2".}
proc fcQSplitter_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSplitter_tr3".}
proc fcQSplitter_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSplitter_trUtf82".}
proc fcQSplitter_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSplitter_trUtf83".}
proc fcQSplitter_setOpaqueResize1(self: pointer, opaque: bool): void {.importc: "QSplitter_setOpaqueResize1".}
proc fQSplitter_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QSplitter_virtualbase_metaObject".}
proc fcQSplitter_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_metaObject".}
proc fQSplitter_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QSplitter_virtualbase_metacast".}
proc fcQSplitter_override_virtual_metacast(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_metacast".}
proc fQSplitter_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QSplitter_virtualbase_metacall".}
proc fcQSplitter_override_virtual_metacall(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_metacall".}
proc fQSplitter_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QSplitter_virtualbase_sizeHint".}
proc fcQSplitter_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_sizeHint".}
proc fQSplitter_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QSplitter_virtualbase_minimumSizeHint".}
proc fcQSplitter_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_minimumSizeHint".}
proc fQSplitter_virtualbase_createHandle(self: pointer, ): pointer{.importc: "QSplitter_virtualbase_createHandle".}
proc fcQSplitter_override_virtual_createHandle(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_createHandle".}
proc fQSplitter_virtualbase_childEvent(self: pointer, param1: pointer): void{.importc: "QSplitter_virtualbase_childEvent".}
proc fcQSplitter_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_childEvent".}
proc fQSplitter_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QSplitter_virtualbase_event".}
proc fcQSplitter_override_virtual_event(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_event".}
proc fQSplitter_virtualbase_resizeEvent(self: pointer, param1: pointer): void{.importc: "QSplitter_virtualbase_resizeEvent".}
proc fcQSplitter_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_resizeEvent".}
proc fQSplitter_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QSplitter_virtualbase_changeEvent".}
proc fcQSplitter_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_changeEvent".}
proc fQSplitter_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QSplitter_virtualbase_paintEvent".}
proc fcQSplitter_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_paintEvent".}
proc fQSplitter_virtualbase_devType(self: pointer, ): cint{.importc: "QSplitter_virtualbase_devType".}
proc fcQSplitter_override_virtual_devType(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_devType".}
proc fQSplitter_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QSplitter_virtualbase_setVisible".}
proc fcQSplitter_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_setVisible".}
proc fQSplitter_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QSplitter_virtualbase_heightForWidth".}
proc fcQSplitter_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_heightForWidth".}
proc fQSplitter_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QSplitter_virtualbase_hasHeightForWidth".}
proc fcQSplitter_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_hasHeightForWidth".}
proc fQSplitter_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QSplitter_virtualbase_paintEngine".}
proc fcQSplitter_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_paintEngine".}
proc fQSplitter_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QSplitter_virtualbase_mousePressEvent".}
proc fcQSplitter_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_mousePressEvent".}
proc fQSplitter_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QSplitter_virtualbase_mouseReleaseEvent".}
proc fcQSplitter_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_mouseReleaseEvent".}
proc fQSplitter_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QSplitter_virtualbase_mouseDoubleClickEvent".}
proc fcQSplitter_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_mouseDoubleClickEvent".}
proc fQSplitter_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QSplitter_virtualbase_mouseMoveEvent".}
proc fcQSplitter_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_mouseMoveEvent".}
proc fQSplitter_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QSplitter_virtualbase_wheelEvent".}
proc fcQSplitter_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_wheelEvent".}
proc fQSplitter_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QSplitter_virtualbase_keyPressEvent".}
proc fcQSplitter_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_keyPressEvent".}
proc fQSplitter_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QSplitter_virtualbase_keyReleaseEvent".}
proc fcQSplitter_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_keyReleaseEvent".}
proc fQSplitter_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QSplitter_virtualbase_focusInEvent".}
proc fcQSplitter_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_focusInEvent".}
proc fQSplitter_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QSplitter_virtualbase_focusOutEvent".}
proc fcQSplitter_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_focusOutEvent".}
proc fQSplitter_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QSplitter_virtualbase_enterEvent".}
proc fcQSplitter_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_enterEvent".}
proc fQSplitter_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QSplitter_virtualbase_leaveEvent".}
proc fcQSplitter_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_leaveEvent".}
proc fQSplitter_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QSplitter_virtualbase_moveEvent".}
proc fcQSplitter_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_moveEvent".}
proc fQSplitter_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QSplitter_virtualbase_closeEvent".}
proc fcQSplitter_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_closeEvent".}
proc fQSplitter_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QSplitter_virtualbase_contextMenuEvent".}
proc fcQSplitter_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_contextMenuEvent".}
proc fQSplitter_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QSplitter_virtualbase_tabletEvent".}
proc fcQSplitter_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_tabletEvent".}
proc fQSplitter_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QSplitter_virtualbase_actionEvent".}
proc fcQSplitter_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_actionEvent".}
proc fQSplitter_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QSplitter_virtualbase_dragEnterEvent".}
proc fcQSplitter_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_dragEnterEvent".}
proc fQSplitter_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QSplitter_virtualbase_dragMoveEvent".}
proc fcQSplitter_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_dragMoveEvent".}
proc fQSplitter_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QSplitter_virtualbase_dragLeaveEvent".}
proc fcQSplitter_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_dragLeaveEvent".}
proc fQSplitter_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QSplitter_virtualbase_dropEvent".}
proc fcQSplitter_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_dropEvent".}
proc fQSplitter_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QSplitter_virtualbase_showEvent".}
proc fcQSplitter_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_showEvent".}
proc fQSplitter_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QSplitter_virtualbase_hideEvent".}
proc fcQSplitter_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_hideEvent".}
proc fQSplitter_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QSplitter_virtualbase_nativeEvent".}
proc fcQSplitter_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_nativeEvent".}
proc fQSplitter_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QSplitter_virtualbase_metric".}
proc fcQSplitter_override_virtual_metric(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_metric".}
proc fQSplitter_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QSplitter_virtualbase_initPainter".}
proc fcQSplitter_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_initPainter".}
proc fQSplitter_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QSplitter_virtualbase_redirected".}
proc fcQSplitter_override_virtual_redirected(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_redirected".}
proc fQSplitter_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QSplitter_virtualbase_sharedPainter".}
proc fcQSplitter_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_sharedPainter".}
proc fQSplitter_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QSplitter_virtualbase_inputMethodEvent".}
proc fcQSplitter_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_inputMethodEvent".}
proc fQSplitter_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QSplitter_virtualbase_inputMethodQuery".}
proc fcQSplitter_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_inputMethodQuery".}
proc fQSplitter_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QSplitter_virtualbase_focusNextPrevChild".}
proc fcQSplitter_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_focusNextPrevChild".}
proc fQSplitter_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSplitter_virtualbase_eventFilter".}
proc fcQSplitter_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_eventFilter".}
proc fQSplitter_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSplitter_virtualbase_timerEvent".}
proc fcQSplitter_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_timerEvent".}
proc fQSplitter_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSplitter_virtualbase_customEvent".}
proc fcQSplitter_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_customEvent".}
proc fQSplitter_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSplitter_virtualbase_connectNotify".}
proc fcQSplitter_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_connectNotify".}
proc fQSplitter_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSplitter_virtualbase_disconnectNotify".}
proc fcQSplitter_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_disconnectNotify".}
proc fcQSplitter_staticMetaObject(): pointer {.importc: "QSplitter_staticMetaObject".}
proc fcQSplitter_delete(self: pointer) {.importc: "QSplitter_delete".}
proc fcQSplitterHandle_new(o: cint, parent: pointer): ptr cQSplitterHandle {.importc: "QSplitterHandle_new".}
proc fcQSplitterHandle_metaObject(self: pointer, ): pointer {.importc: "QSplitterHandle_metaObject".}
proc fcQSplitterHandle_metacast(self: pointer, param1: cstring): pointer {.importc: "QSplitterHandle_metacast".}
proc fcQSplitterHandle_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSplitterHandle_metacall".}
proc fcQSplitterHandle_tr(s: cstring): struct_miqt_string {.importc: "QSplitterHandle_tr".}
proc fcQSplitterHandle_trUtf8(s: cstring): struct_miqt_string {.importc: "QSplitterHandle_trUtf8".}
proc fcQSplitterHandle_setOrientation(self: pointer, o: cint): void {.importc: "QSplitterHandle_setOrientation".}
proc fcQSplitterHandle_orientation(self: pointer, ): cint {.importc: "QSplitterHandle_orientation".}
proc fcQSplitterHandle_opaqueResize(self: pointer, ): bool {.importc: "QSplitterHandle_opaqueResize".}
proc fcQSplitterHandle_splitter(self: pointer, ): pointer {.importc: "QSplitterHandle_splitter".}
proc fcQSplitterHandle_sizeHint(self: pointer, ): pointer {.importc: "QSplitterHandle_sizeHint".}
proc fcQSplitterHandle_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSplitterHandle_tr2".}
proc fcQSplitterHandle_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSplitterHandle_tr3".}
proc fcQSplitterHandle_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSplitterHandle_trUtf82".}
proc fcQSplitterHandle_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSplitterHandle_trUtf83".}
proc fQSplitterHandle_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QSplitterHandle_virtualbase_metaObject".}
proc fcQSplitterHandle_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_metaObject".}
proc fQSplitterHandle_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QSplitterHandle_virtualbase_metacast".}
proc fcQSplitterHandle_override_virtual_metacast(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_metacast".}
proc fQSplitterHandle_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QSplitterHandle_virtualbase_metacall".}
proc fcQSplitterHandle_override_virtual_metacall(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_metacall".}
proc fQSplitterHandle_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QSplitterHandle_virtualbase_sizeHint".}
proc fcQSplitterHandle_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_sizeHint".}
proc fQSplitterHandle_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QSplitterHandle_virtualbase_paintEvent".}
proc fcQSplitterHandle_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_paintEvent".}
proc fQSplitterHandle_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void{.importc: "QSplitterHandle_virtualbase_mouseMoveEvent".}
proc fcQSplitterHandle_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_mouseMoveEvent".}
proc fQSplitterHandle_virtualbase_mousePressEvent(self: pointer, param1: pointer): void{.importc: "QSplitterHandle_virtualbase_mousePressEvent".}
proc fcQSplitterHandle_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_mousePressEvent".}
proc fQSplitterHandle_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void{.importc: "QSplitterHandle_virtualbase_mouseReleaseEvent".}
proc fcQSplitterHandle_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_mouseReleaseEvent".}
proc fQSplitterHandle_virtualbase_resizeEvent(self: pointer, param1: pointer): void{.importc: "QSplitterHandle_virtualbase_resizeEvent".}
proc fcQSplitterHandle_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_resizeEvent".}
proc fQSplitterHandle_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QSplitterHandle_virtualbase_event".}
proc fcQSplitterHandle_override_virtual_event(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_event".}
proc fQSplitterHandle_virtualbase_devType(self: pointer, ): cint{.importc: "QSplitterHandle_virtualbase_devType".}
proc fcQSplitterHandle_override_virtual_devType(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_devType".}
proc fQSplitterHandle_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QSplitterHandle_virtualbase_setVisible".}
proc fcQSplitterHandle_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_setVisible".}
proc fQSplitterHandle_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QSplitterHandle_virtualbase_minimumSizeHint".}
proc fcQSplitterHandle_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_minimumSizeHint".}
proc fQSplitterHandle_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QSplitterHandle_virtualbase_heightForWidth".}
proc fcQSplitterHandle_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_heightForWidth".}
proc fQSplitterHandle_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QSplitterHandle_virtualbase_hasHeightForWidth".}
proc fcQSplitterHandle_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_hasHeightForWidth".}
proc fQSplitterHandle_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QSplitterHandle_virtualbase_paintEngine".}
proc fcQSplitterHandle_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_paintEngine".}
proc fQSplitterHandle_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QSplitterHandle_virtualbase_mouseDoubleClickEvent".}
proc fcQSplitterHandle_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_mouseDoubleClickEvent".}
proc fQSplitterHandle_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QSplitterHandle_virtualbase_wheelEvent".}
proc fcQSplitterHandle_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_wheelEvent".}
proc fQSplitterHandle_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QSplitterHandle_virtualbase_keyPressEvent".}
proc fcQSplitterHandle_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_keyPressEvent".}
proc fQSplitterHandle_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QSplitterHandle_virtualbase_keyReleaseEvent".}
proc fcQSplitterHandle_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_keyReleaseEvent".}
proc fQSplitterHandle_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QSplitterHandle_virtualbase_focusInEvent".}
proc fcQSplitterHandle_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_focusInEvent".}
proc fQSplitterHandle_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QSplitterHandle_virtualbase_focusOutEvent".}
proc fcQSplitterHandle_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_focusOutEvent".}
proc fQSplitterHandle_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QSplitterHandle_virtualbase_enterEvent".}
proc fcQSplitterHandle_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_enterEvent".}
proc fQSplitterHandle_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QSplitterHandle_virtualbase_leaveEvent".}
proc fcQSplitterHandle_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_leaveEvent".}
proc fQSplitterHandle_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QSplitterHandle_virtualbase_moveEvent".}
proc fcQSplitterHandle_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_moveEvent".}
proc fQSplitterHandle_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QSplitterHandle_virtualbase_closeEvent".}
proc fcQSplitterHandle_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_closeEvent".}
proc fQSplitterHandle_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QSplitterHandle_virtualbase_contextMenuEvent".}
proc fcQSplitterHandle_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_contextMenuEvent".}
proc fQSplitterHandle_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QSplitterHandle_virtualbase_tabletEvent".}
proc fcQSplitterHandle_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_tabletEvent".}
proc fQSplitterHandle_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QSplitterHandle_virtualbase_actionEvent".}
proc fcQSplitterHandle_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_actionEvent".}
proc fQSplitterHandle_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QSplitterHandle_virtualbase_dragEnterEvent".}
proc fcQSplitterHandle_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_dragEnterEvent".}
proc fQSplitterHandle_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QSplitterHandle_virtualbase_dragMoveEvent".}
proc fcQSplitterHandle_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_dragMoveEvent".}
proc fQSplitterHandle_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QSplitterHandle_virtualbase_dragLeaveEvent".}
proc fcQSplitterHandle_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_dragLeaveEvent".}
proc fQSplitterHandle_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QSplitterHandle_virtualbase_dropEvent".}
proc fcQSplitterHandle_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_dropEvent".}
proc fQSplitterHandle_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QSplitterHandle_virtualbase_showEvent".}
proc fcQSplitterHandle_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_showEvent".}
proc fQSplitterHandle_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QSplitterHandle_virtualbase_hideEvent".}
proc fcQSplitterHandle_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_hideEvent".}
proc fQSplitterHandle_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QSplitterHandle_virtualbase_nativeEvent".}
proc fcQSplitterHandle_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_nativeEvent".}
proc fQSplitterHandle_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QSplitterHandle_virtualbase_changeEvent".}
proc fcQSplitterHandle_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_changeEvent".}
proc fQSplitterHandle_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QSplitterHandle_virtualbase_metric".}
proc fcQSplitterHandle_override_virtual_metric(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_metric".}
proc fQSplitterHandle_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QSplitterHandle_virtualbase_initPainter".}
proc fcQSplitterHandle_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_initPainter".}
proc fQSplitterHandle_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QSplitterHandle_virtualbase_redirected".}
proc fcQSplitterHandle_override_virtual_redirected(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_redirected".}
proc fQSplitterHandle_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QSplitterHandle_virtualbase_sharedPainter".}
proc fcQSplitterHandle_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_sharedPainter".}
proc fQSplitterHandle_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QSplitterHandle_virtualbase_inputMethodEvent".}
proc fcQSplitterHandle_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_inputMethodEvent".}
proc fQSplitterHandle_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QSplitterHandle_virtualbase_inputMethodQuery".}
proc fcQSplitterHandle_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_inputMethodQuery".}
proc fQSplitterHandle_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QSplitterHandle_virtualbase_focusNextPrevChild".}
proc fcQSplitterHandle_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_focusNextPrevChild".}
proc fQSplitterHandle_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSplitterHandle_virtualbase_eventFilter".}
proc fcQSplitterHandle_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_eventFilter".}
proc fQSplitterHandle_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSplitterHandle_virtualbase_timerEvent".}
proc fcQSplitterHandle_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_timerEvent".}
proc fQSplitterHandle_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSplitterHandle_virtualbase_childEvent".}
proc fcQSplitterHandle_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_childEvent".}
proc fQSplitterHandle_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSplitterHandle_virtualbase_customEvent".}
proc fcQSplitterHandle_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_customEvent".}
proc fQSplitterHandle_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSplitterHandle_virtualbase_connectNotify".}
proc fcQSplitterHandle_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_connectNotify".}
proc fQSplitterHandle_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSplitterHandle_virtualbase_disconnectNotify".}
proc fcQSplitterHandle_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_disconnectNotify".}
proc fcQSplitterHandle_staticMetaObject(): pointer {.importc: "QSplitterHandle_staticMetaObject".}
proc fcQSplitterHandle_delete(self: pointer) {.importc: "QSplitterHandle_delete".}


func init*(T: type gen_qsplitter_types.QSplitter, h: ptr cQSplitter): gen_qsplitter_types.QSplitter =
  T(h: h)
proc create*(T: type gen_qsplitter_types.QSplitter, parent: gen_qwidget_types.QWidget): gen_qsplitter_types.QSplitter =
  gen_qsplitter_types.QSplitter.init(fcQSplitter_new(parent.h))

proc create*(T: type gen_qsplitter_types.QSplitter, ): gen_qsplitter_types.QSplitter =
  gen_qsplitter_types.QSplitter.init(fcQSplitter_new2())

proc create*(T: type gen_qsplitter_types.QSplitter, param1: cint): gen_qsplitter_types.QSplitter =
  gen_qsplitter_types.QSplitter.init(fcQSplitter_new3(cint(param1)))

proc create*(T: type gen_qsplitter_types.QSplitter, param1: cint, parent: gen_qwidget_types.QWidget): gen_qsplitter_types.QSplitter =
  gen_qsplitter_types.QSplitter.init(fcQSplitter_new4(cint(param1), parent.h))

proc metaObject*(self: gen_qsplitter_types.QSplitter, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSplitter_metaObject(self.h))

proc metacast*(self: gen_qsplitter_types.QSplitter, param1: cstring): pointer =
  fcQSplitter_metacast(self.h, param1)

proc metacall*(self: gen_qsplitter_types.QSplitter, param1: cint, param2: cint, param3: pointer): cint =
  fcQSplitter_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsplitter_types.QSplitter, s: cstring): string =
  let v_ms = fcQSplitter_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsplitter_types.QSplitter, s: cstring): string =
  let v_ms = fcQSplitter_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addWidget*(self: gen_qsplitter_types.QSplitter, widget: gen_qwidget_types.QWidget): void =
  fcQSplitter_addWidget(self.h, widget.h)

proc insertWidget*(self: gen_qsplitter_types.QSplitter, index: cint, widget: gen_qwidget_types.QWidget): void =
  fcQSplitter_insertWidget(self.h, index, widget.h)

proc replaceWidget*(self: gen_qsplitter_types.QSplitter, index: cint, widget: gen_qwidget_types.QWidget): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQSplitter_replaceWidget(self.h, index, widget.h))

proc setOrientation*(self: gen_qsplitter_types.QSplitter, orientation: cint): void =
  fcQSplitter_setOrientation(self.h, cint(orientation))

proc orientation*(self: gen_qsplitter_types.QSplitter, ): cint =
  cint(fcQSplitter_orientation(self.h))

proc setChildrenCollapsible*(self: gen_qsplitter_types.QSplitter, childrenCollapsible: bool): void =
  fcQSplitter_setChildrenCollapsible(self.h, childrenCollapsible)

proc childrenCollapsible*(self: gen_qsplitter_types.QSplitter, ): bool =
  fcQSplitter_childrenCollapsible(self.h)

proc setCollapsible*(self: gen_qsplitter_types.QSplitter, index: cint, param2: bool): void =
  fcQSplitter_setCollapsible(self.h, index, param2)

proc isCollapsible*(self: gen_qsplitter_types.QSplitter, index: cint): bool =
  fcQSplitter_isCollapsible(self.h, index)

proc setOpaqueResize*(self: gen_qsplitter_types.QSplitter, ): void =
  fcQSplitter_setOpaqueResize(self.h)

proc opaqueResize*(self: gen_qsplitter_types.QSplitter, ): bool =
  fcQSplitter_opaqueResize(self.h)

proc refresh*(self: gen_qsplitter_types.QSplitter, ): void =
  fcQSplitter_refresh(self.h)

proc sizeHint*(self: gen_qsplitter_types.QSplitter, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSplitter_sizeHint(self.h))

proc minimumSizeHint*(self: gen_qsplitter_types.QSplitter, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSplitter_minimumSizeHint(self.h))

proc sizes*(self: gen_qsplitter_types.QSplitter, ): seq[cint] =
  var v_ma = fcQSplitter_sizes(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc setSizes*(self: gen_qsplitter_types.QSplitter, list: seq[cint]): void =
  var list_CArray = newSeq[cint](len(list))
  for i in 0..<len(list):
    list_CArray[i] = list[i]

  fcQSplitter_setSizes(self.h, struct_miqt_array(len: csize_t(len(list)), data: if len(list) == 0: nil else: addr(list_CArray[0])))

proc saveState*(self: gen_qsplitter_types.QSplitter, ): seq[byte] =
  var v_bytearray = fcQSplitter_saveState(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc restoreState*(self: gen_qsplitter_types.QSplitter, state: seq[byte]): bool =
  fcQSplitter_restoreState(self.h, struct_miqt_string(data: cast[cstring](if len(state) == 0: nil else: unsafeAddr state[0]), len: csize_t(len(state))))

proc handleWidth*(self: gen_qsplitter_types.QSplitter, ): cint =
  fcQSplitter_handleWidth(self.h)

proc setHandleWidth*(self: gen_qsplitter_types.QSplitter, handleWidth: cint): void =
  fcQSplitter_setHandleWidth(self.h, handleWidth)

proc indexOf*(self: gen_qsplitter_types.QSplitter, w: gen_qwidget_types.QWidget): cint =
  fcQSplitter_indexOf(self.h, w.h)

proc widget*(self: gen_qsplitter_types.QSplitter, index: cint): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQSplitter_widget(self.h, index))

proc count*(self: gen_qsplitter_types.QSplitter, ): cint =
  fcQSplitter_count(self.h)

proc getRange*(self: gen_qsplitter_types.QSplitter, index: cint, param2: ptr cint, param3: ptr cint): void =
  fcQSplitter_getRange(self.h, index, param2, param3)

proc handle*(self: gen_qsplitter_types.QSplitter, index: cint): gen_qsplitter_types.QSplitterHandle =
  gen_qsplitter_types.QSplitterHandle(h: fcQSplitter_handle(self.h, index))

proc setStretchFactor*(self: gen_qsplitter_types.QSplitter, index: cint, stretch: cint): void =
  fcQSplitter_setStretchFactor(self.h, index, stretch)

proc splitterMoved*(self: gen_qsplitter_types.QSplitter, pos: cint, index: cint): void =
  fcQSplitter_splitterMoved(self.h, pos, index)

type QSplittersplitterMovedSlot* = proc(pos: cint, index: cint)
proc miqt_exec_callback_QSplitter_splitterMoved(slot: int, pos: cint, index: cint) {.exportc.} =
  let nimfunc = cast[ptr QSplittersplitterMovedSlot](cast[pointer](slot))
  let slotval1 = pos

  let slotval2 = index

  nimfunc[](slotval1, slotval2)

proc onsplitterMoved*(self: gen_qsplitter_types.QSplitter, slot: QSplittersplitterMovedSlot) =
  var tmp = new QSplittersplitterMovedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_connect_splitterMoved(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qsplitter_types.QSplitter, s: cstring, c: cstring): string =
  let v_ms = fcQSplitter_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsplitter_types.QSplitter, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSplitter_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsplitter_types.QSplitter, s: cstring, c: cstring): string =
  let v_ms = fcQSplitter_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsplitter_types.QSplitter, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSplitter_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setOpaqueResize*(self: gen_qsplitter_types.QSplitter, opaque: bool): void =
  fcQSplitter_setOpaqueResize1(self.h, opaque)

proc QSplittermetaObject*(self: gen_qsplitter_types.QSplitter, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQSplitter_virtualbase_metaObject(self.h))

type QSplittermetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qsplitter_types.QSplitter, slot: QSplittermetaObjectProc) =
  # TODO check subclass
  var tmp = new QSplittermetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_metaObject(self: ptr cQSplitter, slot: int): pointer {.exportc: "miqt_exec_callback_QSplitter_metaObject ".} =
  var nimfunc = cast[ptr QSplittermetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSplittermetacast*(self: gen_qsplitter_types.QSplitter, param1: cstring): pointer =
  fQSplitter_virtualbase_metacast(self.h, param1)

type QSplittermetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qsplitter_types.QSplitter, slot: QSplittermetacastProc) =
  # TODO check subclass
  var tmp = new QSplittermetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_metacast(self: ptr cQSplitter, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QSplitter_metacast ".} =
  var nimfunc = cast[ptr QSplittermetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSplittermetacall*(self: gen_qsplitter_types.QSplitter, param1: cint, param2: cint, param3: pointer): cint =
  fQSplitter_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSplittermetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qsplitter_types.QSplitter, slot: QSplittermetacallProc) =
  # TODO check subclass
  var tmp = new QSplittermetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_metacall(self: ptr cQSplitter, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSplitter_metacall ".} =
  var nimfunc = cast[ptr QSplittermetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QSplittersizeHint*(self: gen_qsplitter_types.QSplitter, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQSplitter_virtualbase_sizeHint(self.h))

type QSplittersizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qsplitter_types.QSplitter, slot: QSplittersizeHintProc) =
  # TODO check subclass
  var tmp = new QSplittersizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_sizeHint(self: ptr cQSplitter, slot: int): pointer {.exportc: "miqt_exec_callback_QSplitter_sizeHint ".} =
  var nimfunc = cast[ptr QSplittersizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSplitterminimumSizeHint*(self: gen_qsplitter_types.QSplitter, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQSplitter_virtualbase_minimumSizeHint(self.h))

type QSplitterminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qsplitter_types.QSplitter, slot: QSplitterminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QSplitterminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_minimumSizeHint(self: ptr cQSplitter, slot: int): pointer {.exportc: "miqt_exec_callback_QSplitter_minimumSizeHint ".} =
  var nimfunc = cast[ptr QSplitterminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSplittercreateHandle*(self: gen_qsplitter_types.QSplitter, ): gen_qsplitter_types.QSplitterHandle =
  gen_qsplitter_types.QSplitterHandle(h: fQSplitter_virtualbase_createHandle(self.h))

type QSplittercreateHandleProc* = proc(): gen_qsplitter_types.QSplitterHandle
proc oncreateHandle*(self: gen_qsplitter_types.QSplitter, slot: QSplittercreateHandleProc) =
  # TODO check subclass
  var tmp = new QSplittercreateHandleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_createHandle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_createHandle(self: ptr cQSplitter, slot: int): pointer {.exportc: "miqt_exec_callback_QSplitter_createHandle ".} =
  var nimfunc = cast[ptr QSplittercreateHandleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSplitterchildEvent*(self: gen_qsplitter_types.QSplitter, param1: gen_qcoreevent_types.QChildEvent): void =
  fQSplitter_virtualbase_childEvent(self.h, param1.h)

type QSplitterchildEventProc* = proc(param1: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qsplitter_types.QSplitter, slot: QSplitterchildEventProc) =
  # TODO check subclass
  var tmp = new QSplitterchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_childEvent(self: ptr cQSplitter, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSplitter_childEvent ".} =
  var nimfunc = cast[ptr QSplitterchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: param1)


  nimfunc[](slotval1)
proc QSplitterevent*(self: gen_qsplitter_types.QSplitter, param1: gen_qcoreevent_types.QEvent): bool =
  fQSplitter_virtualbase_event(self.h, param1.h)

type QSplittereventProc* = proc(param1: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qsplitter_types.QSplitter, slot: QSplittereventProc) =
  # TODO check subclass
  var tmp = new QSplittereventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_event(self: ptr cQSplitter, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QSplitter_event ".} =
  var nimfunc = cast[ptr QSplittereventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSplitterresizeEvent*(self: gen_qsplitter_types.QSplitter, param1: gen_qevent_types.QResizeEvent): void =
  fQSplitter_virtualbase_resizeEvent(self.h, param1.h)

type QSplitterresizeEventProc* = proc(param1: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qsplitter_types.QSplitter, slot: QSplitterresizeEventProc) =
  # TODO check subclass
  var tmp = new QSplitterresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_resizeEvent(self: ptr cQSplitter, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSplitter_resizeEvent ".} =
  var nimfunc = cast[ptr QSplitterresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1)


  nimfunc[](slotval1)
proc QSplitterchangeEvent*(self: gen_qsplitter_types.QSplitter, param1: gen_qcoreevent_types.QEvent): void =
  fQSplitter_virtualbase_changeEvent(self.h, param1.h)

type QSplitterchangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qsplitter_types.QSplitter, slot: QSplitterchangeEventProc) =
  # TODO check subclass
  var tmp = new QSplitterchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_changeEvent(self: ptr cQSplitter, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSplitter_changeEvent ".} =
  var nimfunc = cast[ptr QSplitterchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QSplitterpaintEvent*(self: gen_qsplitter_types.QSplitter, param1: gen_qevent_types.QPaintEvent): void =
  fQSplitter_virtualbase_paintEvent(self.h, param1.h)

type QSplitterpaintEventProc* = proc(param1: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qsplitter_types.QSplitter, slot: QSplitterpaintEventProc) =
  # TODO check subclass
  var tmp = new QSplitterpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_paintEvent(self: ptr cQSplitter, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSplitter_paintEvent ".} =
  var nimfunc = cast[ptr QSplitterpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1)


  nimfunc[](slotval1)
proc QSplitterdevType*(self: gen_qsplitter_types.QSplitter, ): cint =
  fQSplitter_virtualbase_devType(self.h)

type QSplitterdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qsplitter_types.QSplitter, slot: QSplitterdevTypeProc) =
  # TODO check subclass
  var tmp = new QSplitterdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_devType(self: ptr cQSplitter, slot: int): cint {.exportc: "miqt_exec_callback_QSplitter_devType ".} =
  var nimfunc = cast[ptr QSplitterdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSplittersetVisible*(self: gen_qsplitter_types.QSplitter, visible: bool): void =
  fQSplitter_virtualbase_setVisible(self.h, visible)

type QSplittersetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qsplitter_types.QSplitter, slot: QSplittersetVisibleProc) =
  # TODO check subclass
  var tmp = new QSplittersetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_setVisible(self: ptr cQSplitter, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QSplitter_setVisible ".} =
  var nimfunc = cast[ptr QSplittersetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QSplitterheightForWidth*(self: gen_qsplitter_types.QSplitter, param1: cint): cint =
  fQSplitter_virtualbase_heightForWidth(self.h, param1)

type QSplitterheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qsplitter_types.QSplitter, slot: QSplitterheightForWidthProc) =
  # TODO check subclass
  var tmp = new QSplitterheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_heightForWidth(self: ptr cQSplitter, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QSplitter_heightForWidth ".} =
  var nimfunc = cast[ptr QSplitterheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSplitterhasHeightForWidth*(self: gen_qsplitter_types.QSplitter, ): bool =
  fQSplitter_virtualbase_hasHeightForWidth(self.h)

type QSplitterhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qsplitter_types.QSplitter, slot: QSplitterhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QSplitterhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_hasHeightForWidth(self: ptr cQSplitter, slot: int): bool {.exportc: "miqt_exec_callback_QSplitter_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QSplitterhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSplitterpaintEngine*(self: gen_qsplitter_types.QSplitter, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQSplitter_virtualbase_paintEngine(self.h))

type QSplitterpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qsplitter_types.QSplitter, slot: QSplitterpaintEngineProc) =
  # TODO check subclass
  var tmp = new QSplitterpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_paintEngine(self: ptr cQSplitter, slot: int): pointer {.exportc: "miqt_exec_callback_QSplitter_paintEngine ".} =
  var nimfunc = cast[ptr QSplitterpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSplittermousePressEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QMouseEvent): void =
  fQSplitter_virtualbase_mousePressEvent(self.h, event.h)

type QSplittermousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qsplitter_types.QSplitter, slot: QSplittermousePressEventProc) =
  # TODO check subclass
  var tmp = new QSplittermousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_mousePressEvent(self: ptr cQSplitter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitter_mousePressEvent ".} =
  var nimfunc = cast[ptr QSplittermousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QSplittermouseReleaseEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QMouseEvent): void =
  fQSplitter_virtualbase_mouseReleaseEvent(self.h, event.h)

type QSplittermouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qsplitter_types.QSplitter, slot: QSplittermouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QSplittermouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_mouseReleaseEvent(self: ptr cQSplitter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitter_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QSplittermouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QSplittermouseDoubleClickEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QMouseEvent): void =
  fQSplitter_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QSplittermouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qsplitter_types.QSplitter, slot: QSplittermouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QSplittermouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_mouseDoubleClickEvent(self: ptr cQSplitter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitter_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QSplittermouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QSplittermouseMoveEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QMouseEvent): void =
  fQSplitter_virtualbase_mouseMoveEvent(self.h, event.h)

type QSplittermouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qsplitter_types.QSplitter, slot: QSplittermouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QSplittermouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_mouseMoveEvent(self: ptr cQSplitter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitter_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QSplittermouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QSplitterwheelEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QWheelEvent): void =
  fQSplitter_virtualbase_wheelEvent(self.h, event.h)

type QSplitterwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qsplitter_types.QSplitter, slot: QSplitterwheelEventProc) =
  # TODO check subclass
  var tmp = new QSplitterwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_wheelEvent(self: ptr cQSplitter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitter_wheelEvent ".} =
  var nimfunc = cast[ptr QSplitterwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QSplitterkeyPressEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QKeyEvent): void =
  fQSplitter_virtualbase_keyPressEvent(self.h, event.h)

type QSplitterkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qsplitter_types.QSplitter, slot: QSplitterkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QSplitterkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_keyPressEvent(self: ptr cQSplitter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitter_keyPressEvent ".} =
  var nimfunc = cast[ptr QSplitterkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QSplitterkeyReleaseEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QKeyEvent): void =
  fQSplitter_virtualbase_keyReleaseEvent(self.h, event.h)

type QSplitterkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qsplitter_types.QSplitter, slot: QSplitterkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QSplitterkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_keyReleaseEvent(self: ptr cQSplitter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitter_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QSplitterkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QSplitterfocusInEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QFocusEvent): void =
  fQSplitter_virtualbase_focusInEvent(self.h, event.h)

type QSplitterfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qsplitter_types.QSplitter, slot: QSplitterfocusInEventProc) =
  # TODO check subclass
  var tmp = new QSplitterfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_focusInEvent(self: ptr cQSplitter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitter_focusInEvent ".} =
  var nimfunc = cast[ptr QSplitterfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QSplitterfocusOutEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QFocusEvent): void =
  fQSplitter_virtualbase_focusOutEvent(self.h, event.h)

type QSplitterfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qsplitter_types.QSplitter, slot: QSplitterfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QSplitterfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_focusOutEvent(self: ptr cQSplitter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitter_focusOutEvent ".} =
  var nimfunc = cast[ptr QSplitterfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QSplitterenterEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qcoreevent_types.QEvent): void =
  fQSplitter_virtualbase_enterEvent(self.h, event.h)

type QSplitterenterEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onenterEvent*(self: gen_qsplitter_types.QSplitter, slot: QSplitterenterEventProc) =
  # TODO check subclass
  var tmp = new QSplitterenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_enterEvent(self: ptr cQSplitter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitter_enterEvent ".} =
  var nimfunc = cast[ptr QSplitterenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QSplitterleaveEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qcoreevent_types.QEvent): void =
  fQSplitter_virtualbase_leaveEvent(self.h, event.h)

type QSplitterleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qsplitter_types.QSplitter, slot: QSplitterleaveEventProc) =
  # TODO check subclass
  var tmp = new QSplitterleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_leaveEvent(self: ptr cQSplitter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitter_leaveEvent ".} =
  var nimfunc = cast[ptr QSplitterleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QSplittermoveEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QMoveEvent): void =
  fQSplitter_virtualbase_moveEvent(self.h, event.h)

type QSplittermoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qsplitter_types.QSplitter, slot: QSplittermoveEventProc) =
  # TODO check subclass
  var tmp = new QSplittermoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_moveEvent(self: ptr cQSplitter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitter_moveEvent ".} =
  var nimfunc = cast[ptr QSplittermoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QSplittercloseEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QCloseEvent): void =
  fQSplitter_virtualbase_closeEvent(self.h, event.h)

type QSplittercloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qsplitter_types.QSplitter, slot: QSplittercloseEventProc) =
  # TODO check subclass
  var tmp = new QSplittercloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_closeEvent(self: ptr cQSplitter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitter_closeEvent ".} =
  var nimfunc = cast[ptr QSplittercloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QSplittercontextMenuEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QContextMenuEvent): void =
  fQSplitter_virtualbase_contextMenuEvent(self.h, event.h)

type QSplittercontextMenuEventProc* = proc(event: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qsplitter_types.QSplitter, slot: QSplittercontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QSplittercontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_contextMenuEvent(self: ptr cQSplitter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitter_contextMenuEvent ".} =
  var nimfunc = cast[ptr QSplittercontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QSplittertabletEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QTabletEvent): void =
  fQSplitter_virtualbase_tabletEvent(self.h, event.h)

type QSplittertabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qsplitter_types.QSplitter, slot: QSplittertabletEventProc) =
  # TODO check subclass
  var tmp = new QSplittertabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_tabletEvent(self: ptr cQSplitter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitter_tabletEvent ".} =
  var nimfunc = cast[ptr QSplittertabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QSplitteractionEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QActionEvent): void =
  fQSplitter_virtualbase_actionEvent(self.h, event.h)

type QSplitteractionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qsplitter_types.QSplitter, slot: QSplitteractionEventProc) =
  # TODO check subclass
  var tmp = new QSplitteractionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_actionEvent(self: ptr cQSplitter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitter_actionEvent ".} =
  var nimfunc = cast[ptr QSplitteractionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QSplitterdragEnterEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QDragEnterEvent): void =
  fQSplitter_virtualbase_dragEnterEvent(self.h, event.h)

type QSplitterdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qsplitter_types.QSplitter, slot: QSplitterdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QSplitterdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_dragEnterEvent(self: ptr cQSplitter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitter_dragEnterEvent ".} =
  var nimfunc = cast[ptr QSplitterdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QSplitterdragMoveEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QDragMoveEvent): void =
  fQSplitter_virtualbase_dragMoveEvent(self.h, event.h)

type QSplitterdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qsplitter_types.QSplitter, slot: QSplitterdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QSplitterdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_dragMoveEvent(self: ptr cQSplitter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitter_dragMoveEvent ".} =
  var nimfunc = cast[ptr QSplitterdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QSplitterdragLeaveEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QDragLeaveEvent): void =
  fQSplitter_virtualbase_dragLeaveEvent(self.h, event.h)

type QSplitterdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qsplitter_types.QSplitter, slot: QSplitterdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QSplitterdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_dragLeaveEvent(self: ptr cQSplitter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitter_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QSplitterdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QSplitterdropEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QDropEvent): void =
  fQSplitter_virtualbase_dropEvent(self.h, event.h)

type QSplitterdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qsplitter_types.QSplitter, slot: QSplitterdropEventProc) =
  # TODO check subclass
  var tmp = new QSplitterdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_dropEvent(self: ptr cQSplitter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitter_dropEvent ".} =
  var nimfunc = cast[ptr QSplitterdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QSplittershowEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QShowEvent): void =
  fQSplitter_virtualbase_showEvent(self.h, event.h)

type QSplittershowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qsplitter_types.QSplitter, slot: QSplittershowEventProc) =
  # TODO check subclass
  var tmp = new QSplittershowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_showEvent(self: ptr cQSplitter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitter_showEvent ".} =
  var nimfunc = cast[ptr QSplittershowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QSplitterhideEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QHideEvent): void =
  fQSplitter_virtualbase_hideEvent(self.h, event.h)

type QSplitterhideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qsplitter_types.QSplitter, slot: QSplitterhideEventProc) =
  # TODO check subclass
  var tmp = new QSplitterhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_hideEvent(self: ptr cQSplitter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitter_hideEvent ".} =
  var nimfunc = cast[ptr QSplitterhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QSplitternativeEvent*(self: gen_qsplitter_types.QSplitter, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fQSplitter_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QSplitternativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: gen_qsplitter_types.QSplitter, slot: QSplitternativeEventProc) =
  # TODO check subclass
  var tmp = new QSplitternativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_nativeEvent(self: ptr cQSplitter, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QSplitter_nativeEvent ".} =
  var nimfunc = cast[ptr QSplitternativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QSplittermetric*(self: gen_qsplitter_types.QSplitter, param1: cint): cint =
  fQSplitter_virtualbase_metric(self.h, cint(param1))

type QSplittermetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qsplitter_types.QSplitter, slot: QSplittermetricProc) =
  # TODO check subclass
  var tmp = new QSplittermetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_metric(self: ptr cQSplitter, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QSplitter_metric ".} =
  var nimfunc = cast[ptr QSplittermetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSplitterinitPainter*(self: gen_qsplitter_types.QSplitter, painter: gen_qpainter_types.QPainter): void =
  fQSplitter_virtualbase_initPainter(self.h, painter.h)

type QSplitterinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qsplitter_types.QSplitter, slot: QSplitterinitPainterProc) =
  # TODO check subclass
  var tmp = new QSplitterinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_initPainter(self: ptr cQSplitter, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QSplitter_initPainter ".} =
  var nimfunc = cast[ptr QSplitterinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QSplitterredirected*(self: gen_qsplitter_types.QSplitter, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQSplitter_virtualbase_redirected(self.h, offset.h))

type QSplitterredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qsplitter_types.QSplitter, slot: QSplitterredirectedProc) =
  # TODO check subclass
  var tmp = new QSplitterredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_redirected(self: ptr cQSplitter, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QSplitter_redirected ".} =
  var nimfunc = cast[ptr QSplitterredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QSplittersharedPainter*(self: gen_qsplitter_types.QSplitter, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQSplitter_virtualbase_sharedPainter(self.h))

type QSplittersharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qsplitter_types.QSplitter, slot: QSplittersharedPainterProc) =
  # TODO check subclass
  var tmp = new QSplittersharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_sharedPainter(self: ptr cQSplitter, slot: int): pointer {.exportc: "miqt_exec_callback_QSplitter_sharedPainter ".} =
  var nimfunc = cast[ptr QSplittersharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSplitterinputMethodEvent*(self: gen_qsplitter_types.QSplitter, param1: gen_qevent_types.QInputMethodEvent): void =
  fQSplitter_virtualbase_inputMethodEvent(self.h, param1.h)

type QSplitterinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qsplitter_types.QSplitter, slot: QSplitterinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QSplitterinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_inputMethodEvent(self: ptr cQSplitter, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSplitter_inputMethodEvent ".} =
  var nimfunc = cast[ptr QSplitterinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QSplitterinputMethodQuery*(self: gen_qsplitter_types.QSplitter, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQSplitter_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QSplitterinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qsplitter_types.QSplitter, slot: QSplitterinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QSplitterinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_inputMethodQuery(self: ptr cQSplitter, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QSplitter_inputMethodQuery ".} =
  var nimfunc = cast[ptr QSplitterinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QSplitterfocusNextPrevChild*(self: gen_qsplitter_types.QSplitter, next: bool): bool =
  fQSplitter_virtualbase_focusNextPrevChild(self.h, next)

type QSplitterfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qsplitter_types.QSplitter, slot: QSplitterfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QSplitterfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_focusNextPrevChild(self: ptr cQSplitter, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QSplitter_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QSplitterfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSplittereventFilter*(self: gen_qsplitter_types.QSplitter, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQSplitter_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSplittereventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qsplitter_types.QSplitter, slot: QSplittereventFilterProc) =
  # TODO check subclass
  var tmp = new QSplittereventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_eventFilter(self: ptr cQSplitter, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSplitter_eventFilter ".} =
  var nimfunc = cast[ptr QSplittereventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QSplittertimerEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qcoreevent_types.QTimerEvent): void =
  fQSplitter_virtualbase_timerEvent(self.h, event.h)

type QSplittertimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qsplitter_types.QSplitter, slot: QSplittertimerEventProc) =
  # TODO check subclass
  var tmp = new QSplittertimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_timerEvent(self: ptr cQSplitter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitter_timerEvent ".} =
  var nimfunc = cast[ptr QSplittertimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QSplittercustomEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qcoreevent_types.QEvent): void =
  fQSplitter_virtualbase_customEvent(self.h, event.h)

type QSplittercustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qsplitter_types.QSplitter, slot: QSplittercustomEventProc) =
  # TODO check subclass
  var tmp = new QSplittercustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_customEvent(self: ptr cQSplitter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitter_customEvent ".} =
  var nimfunc = cast[ptr QSplittercustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QSplitterconnectNotify*(self: gen_qsplitter_types.QSplitter, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQSplitter_virtualbase_connectNotify(self.h, signal.h)

type QSplitterconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qsplitter_types.QSplitter, slot: QSplitterconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSplitterconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_connectNotify(self: ptr cQSplitter, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSplitter_connectNotify ".} =
  var nimfunc = cast[ptr QSplitterconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QSplitterdisconnectNotify*(self: gen_qsplitter_types.QSplitter, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQSplitter_virtualbase_disconnectNotify(self.h, signal.h)

type QSplitterdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qsplitter_types.QSplitter, slot: QSplitterdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSplitterdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_disconnectNotify(self: ptr cQSplitter, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSplitter_disconnectNotify ".} =
  var nimfunc = cast[ptr QSplitterdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qsplitter_types.QSplitter): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSplitter_staticMetaObject())
proc delete*(self: gen_qsplitter_types.QSplitter) =
  fcQSplitter_delete(self.h)

func init*(T: type gen_qsplitter_types.QSplitterHandle, h: ptr cQSplitterHandle): gen_qsplitter_types.QSplitterHandle =
  T(h: h)
proc create*(T: type gen_qsplitter_types.QSplitterHandle, o: cint, parent: gen_qsplitter_types.QSplitter): gen_qsplitter_types.QSplitterHandle =
  gen_qsplitter_types.QSplitterHandle.init(fcQSplitterHandle_new(cint(o), parent.h))

proc metaObject*(self: gen_qsplitter_types.QSplitterHandle, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSplitterHandle_metaObject(self.h))

proc metacast*(self: gen_qsplitter_types.QSplitterHandle, param1: cstring): pointer =
  fcQSplitterHandle_metacast(self.h, param1)

proc metacall*(self: gen_qsplitter_types.QSplitterHandle, param1: cint, param2: cint, param3: pointer): cint =
  fcQSplitterHandle_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsplitter_types.QSplitterHandle, s: cstring): string =
  let v_ms = fcQSplitterHandle_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsplitter_types.QSplitterHandle, s: cstring): string =
  let v_ms = fcQSplitterHandle_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setOrientation*(self: gen_qsplitter_types.QSplitterHandle, o: cint): void =
  fcQSplitterHandle_setOrientation(self.h, cint(o))

proc orientation*(self: gen_qsplitter_types.QSplitterHandle, ): cint =
  cint(fcQSplitterHandle_orientation(self.h))

proc opaqueResize*(self: gen_qsplitter_types.QSplitterHandle, ): bool =
  fcQSplitterHandle_opaqueResize(self.h)

proc splitter*(self: gen_qsplitter_types.QSplitterHandle, ): gen_qsplitter_types.QSplitter =
  gen_qsplitter_types.QSplitter(h: fcQSplitterHandle_splitter(self.h))

proc sizeHint*(self: gen_qsplitter_types.QSplitterHandle, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSplitterHandle_sizeHint(self.h))

proc tr*(_: type gen_qsplitter_types.QSplitterHandle, s: cstring, c: cstring): string =
  let v_ms = fcQSplitterHandle_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsplitter_types.QSplitterHandle, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSplitterHandle_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsplitter_types.QSplitterHandle, s: cstring, c: cstring): string =
  let v_ms = fcQSplitterHandle_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsplitter_types.QSplitterHandle, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSplitterHandle_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QSplitterHandlemetaObject*(self: gen_qsplitter_types.QSplitterHandle, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQSplitterHandle_virtualbase_metaObject(self.h))

type QSplitterHandlemetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandlemetaObjectProc) =
  # TODO check subclass
  var tmp = new QSplitterHandlemetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_metaObject(self: ptr cQSplitterHandle, slot: int): pointer {.exportc: "miqt_exec_callback_QSplitterHandle_metaObject ".} =
  var nimfunc = cast[ptr QSplitterHandlemetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSplitterHandlemetacast*(self: gen_qsplitter_types.QSplitterHandle, param1: cstring): pointer =
  fQSplitterHandle_virtualbase_metacast(self.h, param1)

type QSplitterHandlemetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandlemetacastProc) =
  # TODO check subclass
  var tmp = new QSplitterHandlemetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_metacast(self: ptr cQSplitterHandle, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QSplitterHandle_metacast ".} =
  var nimfunc = cast[ptr QSplitterHandlemetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSplitterHandlemetacall*(self: gen_qsplitter_types.QSplitterHandle, param1: cint, param2: cint, param3: pointer): cint =
  fQSplitterHandle_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSplitterHandlemetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandlemetacallProc) =
  # TODO check subclass
  var tmp = new QSplitterHandlemetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_metacall(self: ptr cQSplitterHandle, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSplitterHandle_metacall ".} =
  var nimfunc = cast[ptr QSplitterHandlemetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QSplitterHandlesizeHint*(self: gen_qsplitter_types.QSplitterHandle, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQSplitterHandle_virtualbase_sizeHint(self.h))

type QSplitterHandlesizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandlesizeHintProc) =
  # TODO check subclass
  var tmp = new QSplitterHandlesizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_sizeHint(self: ptr cQSplitterHandle, slot: int): pointer {.exportc: "miqt_exec_callback_QSplitterHandle_sizeHint ".} =
  var nimfunc = cast[ptr QSplitterHandlesizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSplitterHandlepaintEvent*(self: gen_qsplitter_types.QSplitterHandle, param1: gen_qevent_types.QPaintEvent): void =
  fQSplitterHandle_virtualbase_paintEvent(self.h, param1.h)

type QSplitterHandlepaintEventProc* = proc(param1: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandlepaintEventProc) =
  # TODO check subclass
  var tmp = new QSplitterHandlepaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_paintEvent(self: ptr cQSplitterHandle, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_paintEvent ".} =
  var nimfunc = cast[ptr QSplitterHandlepaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1)


  nimfunc[](slotval1)
proc QSplitterHandlemouseMoveEvent*(self: gen_qsplitter_types.QSplitterHandle, param1: gen_qevent_types.QMouseEvent): void =
  fQSplitterHandle_virtualbase_mouseMoveEvent(self.h, param1.h)

type QSplitterHandlemouseMoveEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandlemouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QSplitterHandlemouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_mouseMoveEvent(self: ptr cQSplitterHandle, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QSplitterHandlemouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QSplitterHandlemousePressEvent*(self: gen_qsplitter_types.QSplitterHandle, param1: gen_qevent_types.QMouseEvent): void =
  fQSplitterHandle_virtualbase_mousePressEvent(self.h, param1.h)

type QSplitterHandlemousePressEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandlemousePressEventProc) =
  # TODO check subclass
  var tmp = new QSplitterHandlemousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_mousePressEvent(self: ptr cQSplitterHandle, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_mousePressEvent ".} =
  var nimfunc = cast[ptr QSplitterHandlemousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QSplitterHandlemouseReleaseEvent*(self: gen_qsplitter_types.QSplitterHandle, param1: gen_qevent_types.QMouseEvent): void =
  fQSplitterHandle_virtualbase_mouseReleaseEvent(self.h, param1.h)

type QSplitterHandlemouseReleaseEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandlemouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QSplitterHandlemouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_mouseReleaseEvent(self: ptr cQSplitterHandle, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QSplitterHandlemouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QSplitterHandleresizeEvent*(self: gen_qsplitter_types.QSplitterHandle, param1: gen_qevent_types.QResizeEvent): void =
  fQSplitterHandle_virtualbase_resizeEvent(self.h, param1.h)

type QSplitterHandleresizeEventProc* = proc(param1: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandleresizeEventProc) =
  # TODO check subclass
  var tmp = new QSplitterHandleresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_resizeEvent(self: ptr cQSplitterHandle, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_resizeEvent ".} =
  var nimfunc = cast[ptr QSplitterHandleresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1)


  nimfunc[](slotval1)
proc QSplitterHandleevent*(self: gen_qsplitter_types.QSplitterHandle, param1: gen_qcoreevent_types.QEvent): bool =
  fQSplitterHandle_virtualbase_event(self.h, param1.h)

type QSplitterHandleeventProc* = proc(param1: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandleeventProc) =
  # TODO check subclass
  var tmp = new QSplitterHandleeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_event(self: ptr cQSplitterHandle, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QSplitterHandle_event ".} =
  var nimfunc = cast[ptr QSplitterHandleeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSplitterHandledevType*(self: gen_qsplitter_types.QSplitterHandle, ): cint =
  fQSplitterHandle_virtualbase_devType(self.h)

type QSplitterHandledevTypeProc* = proc(): cint
proc ondevType*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandledevTypeProc) =
  # TODO check subclass
  var tmp = new QSplitterHandledevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_devType(self: ptr cQSplitterHandle, slot: int): cint {.exportc: "miqt_exec_callback_QSplitterHandle_devType ".} =
  var nimfunc = cast[ptr QSplitterHandledevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSplitterHandlesetVisible*(self: gen_qsplitter_types.QSplitterHandle, visible: bool): void =
  fQSplitterHandle_virtualbase_setVisible(self.h, visible)

type QSplitterHandlesetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandlesetVisibleProc) =
  # TODO check subclass
  var tmp = new QSplitterHandlesetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_setVisible(self: ptr cQSplitterHandle, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QSplitterHandle_setVisible ".} =
  var nimfunc = cast[ptr QSplitterHandlesetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QSplitterHandleminimumSizeHint*(self: gen_qsplitter_types.QSplitterHandle, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQSplitterHandle_virtualbase_minimumSizeHint(self.h))

type QSplitterHandleminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandleminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QSplitterHandleminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_minimumSizeHint(self: ptr cQSplitterHandle, slot: int): pointer {.exportc: "miqt_exec_callback_QSplitterHandle_minimumSizeHint ".} =
  var nimfunc = cast[ptr QSplitterHandleminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSplitterHandleheightForWidth*(self: gen_qsplitter_types.QSplitterHandle, param1: cint): cint =
  fQSplitterHandle_virtualbase_heightForWidth(self.h, param1)

type QSplitterHandleheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandleheightForWidthProc) =
  # TODO check subclass
  var tmp = new QSplitterHandleheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_heightForWidth(self: ptr cQSplitterHandle, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QSplitterHandle_heightForWidth ".} =
  var nimfunc = cast[ptr QSplitterHandleheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSplitterHandlehasHeightForWidth*(self: gen_qsplitter_types.QSplitterHandle, ): bool =
  fQSplitterHandle_virtualbase_hasHeightForWidth(self.h)

type QSplitterHandlehasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandlehasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QSplitterHandlehasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_hasHeightForWidth(self: ptr cQSplitterHandle, slot: int): bool {.exportc: "miqt_exec_callback_QSplitterHandle_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QSplitterHandlehasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSplitterHandlepaintEngine*(self: gen_qsplitter_types.QSplitterHandle, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQSplitterHandle_virtualbase_paintEngine(self.h))

type QSplitterHandlepaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandlepaintEngineProc) =
  # TODO check subclass
  var tmp = new QSplitterHandlepaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_paintEngine(self: ptr cQSplitterHandle, slot: int): pointer {.exportc: "miqt_exec_callback_QSplitterHandle_paintEngine ".} =
  var nimfunc = cast[ptr QSplitterHandlepaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSplitterHandlemouseDoubleClickEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QMouseEvent): void =
  fQSplitterHandle_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QSplitterHandlemouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandlemouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QSplitterHandlemouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_mouseDoubleClickEvent(self: ptr cQSplitterHandle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QSplitterHandlemouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QSplitterHandlewheelEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QWheelEvent): void =
  fQSplitterHandle_virtualbase_wheelEvent(self.h, event.h)

type QSplitterHandlewheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandlewheelEventProc) =
  # TODO check subclass
  var tmp = new QSplitterHandlewheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_wheelEvent(self: ptr cQSplitterHandle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_wheelEvent ".} =
  var nimfunc = cast[ptr QSplitterHandlewheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QSplitterHandlekeyPressEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QKeyEvent): void =
  fQSplitterHandle_virtualbase_keyPressEvent(self.h, event.h)

type QSplitterHandlekeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandlekeyPressEventProc) =
  # TODO check subclass
  var tmp = new QSplitterHandlekeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_keyPressEvent(self: ptr cQSplitterHandle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_keyPressEvent ".} =
  var nimfunc = cast[ptr QSplitterHandlekeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QSplitterHandlekeyReleaseEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QKeyEvent): void =
  fQSplitterHandle_virtualbase_keyReleaseEvent(self.h, event.h)

type QSplitterHandlekeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandlekeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QSplitterHandlekeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_keyReleaseEvent(self: ptr cQSplitterHandle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QSplitterHandlekeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QSplitterHandlefocusInEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QFocusEvent): void =
  fQSplitterHandle_virtualbase_focusInEvent(self.h, event.h)

type QSplitterHandlefocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandlefocusInEventProc) =
  # TODO check subclass
  var tmp = new QSplitterHandlefocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_focusInEvent(self: ptr cQSplitterHandle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_focusInEvent ".} =
  var nimfunc = cast[ptr QSplitterHandlefocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QSplitterHandlefocusOutEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QFocusEvent): void =
  fQSplitterHandle_virtualbase_focusOutEvent(self.h, event.h)

type QSplitterHandlefocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandlefocusOutEventProc) =
  # TODO check subclass
  var tmp = new QSplitterHandlefocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_focusOutEvent(self: ptr cQSplitterHandle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_focusOutEvent ".} =
  var nimfunc = cast[ptr QSplitterHandlefocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QSplitterHandleenterEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qcoreevent_types.QEvent): void =
  fQSplitterHandle_virtualbase_enterEvent(self.h, event.h)

type QSplitterHandleenterEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onenterEvent*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandleenterEventProc) =
  # TODO check subclass
  var tmp = new QSplitterHandleenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_enterEvent(self: ptr cQSplitterHandle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_enterEvent ".} =
  var nimfunc = cast[ptr QSplitterHandleenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QSplitterHandleleaveEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qcoreevent_types.QEvent): void =
  fQSplitterHandle_virtualbase_leaveEvent(self.h, event.h)

type QSplitterHandleleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandleleaveEventProc) =
  # TODO check subclass
  var tmp = new QSplitterHandleleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_leaveEvent(self: ptr cQSplitterHandle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_leaveEvent ".} =
  var nimfunc = cast[ptr QSplitterHandleleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QSplitterHandlemoveEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QMoveEvent): void =
  fQSplitterHandle_virtualbase_moveEvent(self.h, event.h)

type QSplitterHandlemoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandlemoveEventProc) =
  # TODO check subclass
  var tmp = new QSplitterHandlemoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_moveEvent(self: ptr cQSplitterHandle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_moveEvent ".} =
  var nimfunc = cast[ptr QSplitterHandlemoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QSplitterHandlecloseEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QCloseEvent): void =
  fQSplitterHandle_virtualbase_closeEvent(self.h, event.h)

type QSplitterHandlecloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandlecloseEventProc) =
  # TODO check subclass
  var tmp = new QSplitterHandlecloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_closeEvent(self: ptr cQSplitterHandle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_closeEvent ".} =
  var nimfunc = cast[ptr QSplitterHandlecloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QSplitterHandlecontextMenuEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QContextMenuEvent): void =
  fQSplitterHandle_virtualbase_contextMenuEvent(self.h, event.h)

type QSplitterHandlecontextMenuEventProc* = proc(event: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandlecontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QSplitterHandlecontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_contextMenuEvent(self: ptr cQSplitterHandle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_contextMenuEvent ".} =
  var nimfunc = cast[ptr QSplitterHandlecontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QSplitterHandletabletEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QTabletEvent): void =
  fQSplitterHandle_virtualbase_tabletEvent(self.h, event.h)

type QSplitterHandletabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandletabletEventProc) =
  # TODO check subclass
  var tmp = new QSplitterHandletabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_tabletEvent(self: ptr cQSplitterHandle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_tabletEvent ".} =
  var nimfunc = cast[ptr QSplitterHandletabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QSplitterHandleactionEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QActionEvent): void =
  fQSplitterHandle_virtualbase_actionEvent(self.h, event.h)

type QSplitterHandleactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandleactionEventProc) =
  # TODO check subclass
  var tmp = new QSplitterHandleactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_actionEvent(self: ptr cQSplitterHandle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_actionEvent ".} =
  var nimfunc = cast[ptr QSplitterHandleactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QSplitterHandledragEnterEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QDragEnterEvent): void =
  fQSplitterHandle_virtualbase_dragEnterEvent(self.h, event.h)

type QSplitterHandledragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandledragEnterEventProc) =
  # TODO check subclass
  var tmp = new QSplitterHandledragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_dragEnterEvent(self: ptr cQSplitterHandle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_dragEnterEvent ".} =
  var nimfunc = cast[ptr QSplitterHandledragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QSplitterHandledragMoveEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QDragMoveEvent): void =
  fQSplitterHandle_virtualbase_dragMoveEvent(self.h, event.h)

type QSplitterHandledragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandledragMoveEventProc) =
  # TODO check subclass
  var tmp = new QSplitterHandledragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_dragMoveEvent(self: ptr cQSplitterHandle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_dragMoveEvent ".} =
  var nimfunc = cast[ptr QSplitterHandledragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QSplitterHandledragLeaveEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QDragLeaveEvent): void =
  fQSplitterHandle_virtualbase_dragLeaveEvent(self.h, event.h)

type QSplitterHandledragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandledragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QSplitterHandledragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_dragLeaveEvent(self: ptr cQSplitterHandle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QSplitterHandledragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QSplitterHandledropEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QDropEvent): void =
  fQSplitterHandle_virtualbase_dropEvent(self.h, event.h)

type QSplitterHandledropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandledropEventProc) =
  # TODO check subclass
  var tmp = new QSplitterHandledropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_dropEvent(self: ptr cQSplitterHandle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_dropEvent ".} =
  var nimfunc = cast[ptr QSplitterHandledropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QSplitterHandleshowEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QShowEvent): void =
  fQSplitterHandle_virtualbase_showEvent(self.h, event.h)

type QSplitterHandleshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandleshowEventProc) =
  # TODO check subclass
  var tmp = new QSplitterHandleshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_showEvent(self: ptr cQSplitterHandle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_showEvent ".} =
  var nimfunc = cast[ptr QSplitterHandleshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QSplitterHandlehideEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QHideEvent): void =
  fQSplitterHandle_virtualbase_hideEvent(self.h, event.h)

type QSplitterHandlehideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandlehideEventProc) =
  # TODO check subclass
  var tmp = new QSplitterHandlehideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_hideEvent(self: ptr cQSplitterHandle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_hideEvent ".} =
  var nimfunc = cast[ptr QSplitterHandlehideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QSplitterHandlenativeEvent*(self: gen_qsplitter_types.QSplitterHandle, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fQSplitterHandle_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QSplitterHandlenativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandlenativeEventProc) =
  # TODO check subclass
  var tmp = new QSplitterHandlenativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_nativeEvent(self: ptr cQSplitterHandle, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QSplitterHandle_nativeEvent ".} =
  var nimfunc = cast[ptr QSplitterHandlenativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QSplitterHandlechangeEvent*(self: gen_qsplitter_types.QSplitterHandle, param1: gen_qcoreevent_types.QEvent): void =
  fQSplitterHandle_virtualbase_changeEvent(self.h, param1.h)

type QSplitterHandlechangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandlechangeEventProc) =
  # TODO check subclass
  var tmp = new QSplitterHandlechangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_changeEvent(self: ptr cQSplitterHandle, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_changeEvent ".} =
  var nimfunc = cast[ptr QSplitterHandlechangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QSplitterHandlemetric*(self: gen_qsplitter_types.QSplitterHandle, param1: cint): cint =
  fQSplitterHandle_virtualbase_metric(self.h, cint(param1))

type QSplitterHandlemetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandlemetricProc) =
  # TODO check subclass
  var tmp = new QSplitterHandlemetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_metric(self: ptr cQSplitterHandle, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QSplitterHandle_metric ".} =
  var nimfunc = cast[ptr QSplitterHandlemetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSplitterHandleinitPainter*(self: gen_qsplitter_types.QSplitterHandle, painter: gen_qpainter_types.QPainter): void =
  fQSplitterHandle_virtualbase_initPainter(self.h, painter.h)

type QSplitterHandleinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandleinitPainterProc) =
  # TODO check subclass
  var tmp = new QSplitterHandleinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_initPainter(self: ptr cQSplitterHandle, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_initPainter ".} =
  var nimfunc = cast[ptr QSplitterHandleinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QSplitterHandleredirected*(self: gen_qsplitter_types.QSplitterHandle, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQSplitterHandle_virtualbase_redirected(self.h, offset.h))

type QSplitterHandleredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandleredirectedProc) =
  # TODO check subclass
  var tmp = new QSplitterHandleredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_redirected(self: ptr cQSplitterHandle, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QSplitterHandle_redirected ".} =
  var nimfunc = cast[ptr QSplitterHandleredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QSplitterHandlesharedPainter*(self: gen_qsplitter_types.QSplitterHandle, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQSplitterHandle_virtualbase_sharedPainter(self.h))

type QSplitterHandlesharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandlesharedPainterProc) =
  # TODO check subclass
  var tmp = new QSplitterHandlesharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_sharedPainter(self: ptr cQSplitterHandle, slot: int): pointer {.exportc: "miqt_exec_callback_QSplitterHandle_sharedPainter ".} =
  var nimfunc = cast[ptr QSplitterHandlesharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSplitterHandleinputMethodEvent*(self: gen_qsplitter_types.QSplitterHandle, param1: gen_qevent_types.QInputMethodEvent): void =
  fQSplitterHandle_virtualbase_inputMethodEvent(self.h, param1.h)

type QSplitterHandleinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandleinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QSplitterHandleinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_inputMethodEvent(self: ptr cQSplitterHandle, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_inputMethodEvent ".} =
  var nimfunc = cast[ptr QSplitterHandleinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QSplitterHandleinputMethodQuery*(self: gen_qsplitter_types.QSplitterHandle, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQSplitterHandle_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QSplitterHandleinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandleinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QSplitterHandleinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_inputMethodQuery(self: ptr cQSplitterHandle, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QSplitterHandle_inputMethodQuery ".} =
  var nimfunc = cast[ptr QSplitterHandleinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QSplitterHandlefocusNextPrevChild*(self: gen_qsplitter_types.QSplitterHandle, next: bool): bool =
  fQSplitterHandle_virtualbase_focusNextPrevChild(self.h, next)

type QSplitterHandlefocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandlefocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QSplitterHandlefocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_focusNextPrevChild(self: ptr cQSplitterHandle, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QSplitterHandle_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QSplitterHandlefocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSplitterHandleeventFilter*(self: gen_qsplitter_types.QSplitterHandle, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQSplitterHandle_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSplitterHandleeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandleeventFilterProc) =
  # TODO check subclass
  var tmp = new QSplitterHandleeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_eventFilter(self: ptr cQSplitterHandle, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSplitterHandle_eventFilter ".} =
  var nimfunc = cast[ptr QSplitterHandleeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QSplitterHandletimerEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qcoreevent_types.QTimerEvent): void =
  fQSplitterHandle_virtualbase_timerEvent(self.h, event.h)

type QSplitterHandletimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandletimerEventProc) =
  # TODO check subclass
  var tmp = new QSplitterHandletimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_timerEvent(self: ptr cQSplitterHandle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_timerEvent ".} =
  var nimfunc = cast[ptr QSplitterHandletimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QSplitterHandlechildEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qcoreevent_types.QChildEvent): void =
  fQSplitterHandle_virtualbase_childEvent(self.h, event.h)

type QSplitterHandlechildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandlechildEventProc) =
  # TODO check subclass
  var tmp = new QSplitterHandlechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_childEvent(self: ptr cQSplitterHandle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_childEvent ".} =
  var nimfunc = cast[ptr QSplitterHandlechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QSplitterHandlecustomEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qcoreevent_types.QEvent): void =
  fQSplitterHandle_virtualbase_customEvent(self.h, event.h)

type QSplitterHandlecustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandlecustomEventProc) =
  # TODO check subclass
  var tmp = new QSplitterHandlecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_customEvent(self: ptr cQSplitterHandle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_customEvent ".} =
  var nimfunc = cast[ptr QSplitterHandlecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QSplitterHandleconnectNotify*(self: gen_qsplitter_types.QSplitterHandle, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQSplitterHandle_virtualbase_connectNotify(self.h, signal.h)

type QSplitterHandleconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandleconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSplitterHandleconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_connectNotify(self: ptr cQSplitterHandle, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_connectNotify ".} =
  var nimfunc = cast[ptr QSplitterHandleconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QSplitterHandledisconnectNotify*(self: gen_qsplitter_types.QSplitterHandle, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQSplitterHandle_virtualbase_disconnectNotify(self.h, signal.h)

type QSplitterHandledisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qsplitter_types.QSplitterHandle, slot: QSplitterHandledisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSplitterHandledisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_disconnectNotify(self: ptr cQSplitterHandle, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_disconnectNotify ".} =
  var nimfunc = cast[ptr QSplitterHandledisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qsplitter_types.QSplitterHandle): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSplitterHandle_staticMetaObject())
proc delete*(self: gen_qsplitter_types.QSplitterHandle) =
  fcQSplitterHandle_delete(self.h)
