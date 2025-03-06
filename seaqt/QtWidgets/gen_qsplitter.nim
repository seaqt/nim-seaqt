import ./Qt5Widgets_libs

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
  ./gen_qstyleoption_types,
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
  gen_qstyleoption_types,
  gen_qwidget

type cQSplitter*{.exportc: "QSplitter", incompleteStruct.} = object
type cQSplitterHandle*{.exportc: "QSplitterHandle", incompleteStruct.} = object

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
proc fcQSplitter_connect_splitterMoved(self: pointer, slot: int, callback: proc (slot: int, pos: cint, index: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSplitter_connect_splitterMoved".}
proc fcQSplitter_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSplitter_tr2".}
proc fcQSplitter_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSplitter_tr3".}
proc fcQSplitter_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSplitter_trUtf82".}
proc fcQSplitter_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSplitter_trUtf83".}
proc fcQSplitter_setOpaqueResize1(self: pointer, opaque: bool): void {.importc: "QSplitter_setOpaqueResize1".}
type cQSplitterVTable = object
  destructor*: proc(vtbl: ptr cQSplitterVTable, self: ptr cQSplitter) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  createHandle*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(vtbl, self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQSplitter_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QSplitter_virtualbase_metaObject".}
proc fcQSplitter_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSplitter_virtualbase_metacast".}
proc fcQSplitter_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSplitter_virtualbase_metacall".}
proc fcQSplitter_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QSplitter_virtualbase_sizeHint".}
proc fcQSplitter_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QSplitter_virtualbase_minimumSizeHint".}
proc fcQSplitter_virtualbase_createHandle(self: pointer, ): pointer {.importc: "QSplitter_virtualbase_createHandle".}
proc fcQSplitter_virtualbase_childEvent(self: pointer, param1: pointer): void {.importc: "QSplitter_virtualbase_childEvent".}
proc fcQSplitter_virtualbase_event(self: pointer, param1: pointer): bool {.importc: "QSplitter_virtualbase_event".}
proc fcQSplitter_virtualbase_resizeEvent(self: pointer, param1: pointer): void {.importc: "QSplitter_virtualbase_resizeEvent".}
proc fcQSplitter_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QSplitter_virtualbase_changeEvent".}
proc fcQSplitter_virtualbase_paintEvent(self: pointer, param1: pointer): void {.importc: "QSplitter_virtualbase_paintEvent".}
proc fcQSplitter_virtualbase_devType(self: pointer, ): cint {.importc: "QSplitter_virtualbase_devType".}
proc fcQSplitter_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QSplitter_virtualbase_setVisible".}
proc fcQSplitter_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QSplitter_virtualbase_heightForWidth".}
proc fcQSplitter_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QSplitter_virtualbase_hasHeightForWidth".}
proc fcQSplitter_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QSplitter_virtualbase_paintEngine".}
proc fcQSplitter_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QSplitter_virtualbase_mousePressEvent".}
proc fcQSplitter_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QSplitter_virtualbase_mouseReleaseEvent".}
proc fcQSplitter_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QSplitter_virtualbase_mouseDoubleClickEvent".}
proc fcQSplitter_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QSplitter_virtualbase_mouseMoveEvent".}
proc fcQSplitter_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QSplitter_virtualbase_wheelEvent".}
proc fcQSplitter_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QSplitter_virtualbase_keyPressEvent".}
proc fcQSplitter_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QSplitter_virtualbase_keyReleaseEvent".}
proc fcQSplitter_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QSplitter_virtualbase_focusInEvent".}
proc fcQSplitter_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QSplitter_virtualbase_focusOutEvent".}
proc fcQSplitter_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QSplitter_virtualbase_enterEvent".}
proc fcQSplitter_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QSplitter_virtualbase_leaveEvent".}
proc fcQSplitter_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QSplitter_virtualbase_moveEvent".}
proc fcQSplitter_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QSplitter_virtualbase_closeEvent".}
proc fcQSplitter_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QSplitter_virtualbase_contextMenuEvent".}
proc fcQSplitter_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QSplitter_virtualbase_tabletEvent".}
proc fcQSplitter_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QSplitter_virtualbase_actionEvent".}
proc fcQSplitter_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QSplitter_virtualbase_dragEnterEvent".}
proc fcQSplitter_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QSplitter_virtualbase_dragMoveEvent".}
proc fcQSplitter_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QSplitter_virtualbase_dragLeaveEvent".}
proc fcQSplitter_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QSplitter_virtualbase_dropEvent".}
proc fcQSplitter_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QSplitter_virtualbase_showEvent".}
proc fcQSplitter_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QSplitter_virtualbase_hideEvent".}
proc fcQSplitter_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QSplitter_virtualbase_nativeEvent".}
proc fcQSplitter_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QSplitter_virtualbase_metric".}
proc fcQSplitter_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QSplitter_virtualbase_initPainter".}
proc fcQSplitter_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QSplitter_virtualbase_redirected".}
proc fcQSplitter_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QSplitter_virtualbase_sharedPainter".}
proc fcQSplitter_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QSplitter_virtualbase_inputMethodEvent".}
proc fcQSplitter_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QSplitter_virtualbase_inputMethodQuery".}
proc fcQSplitter_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QSplitter_virtualbase_focusNextPrevChild".}
proc fcQSplitter_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSplitter_virtualbase_eventFilter".}
proc fcQSplitter_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QSplitter_virtualbase_timerEvent".}
proc fcQSplitter_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSplitter_virtualbase_customEvent".}
proc fcQSplitter_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSplitter_virtualbase_connectNotify".}
proc fcQSplitter_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSplitter_virtualbase_disconnectNotify".}
proc fcQSplitter_protectedbase_moveSplitter(self: pointer, pos: cint, index: cint): void {.importc: "QSplitter_protectedbase_moveSplitter".}
proc fcQSplitter_protectedbase_setRubberBand(self: pointer, position: cint): void {.importc: "QSplitter_protectedbase_setRubberBand".}
proc fcQSplitter_protectedbase_closestLegalPosition(self: pointer, param1: cint, param2: cint): cint {.importc: "QSplitter_protectedbase_closestLegalPosition".}
proc fcQSplitter_protectedbase_drawFrame(self: pointer, param1: pointer): void {.importc: "QSplitter_protectedbase_drawFrame".}
proc fcQSplitter_protectedbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QSplitter_protectedbase_initStyleOption".}
proc fcQSplitter_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QSplitter_protectedbase_updateMicroFocus".}
proc fcQSplitter_protectedbase_create(self: pointer, ): void {.importc: "QSplitter_protectedbase_create".}
proc fcQSplitter_protectedbase_destroy(self: pointer, ): void {.importc: "QSplitter_protectedbase_destroy".}
proc fcQSplitter_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QSplitter_protectedbase_focusNextChild".}
proc fcQSplitter_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QSplitter_protectedbase_focusPreviousChild".}
proc fcQSplitter_protectedbase_sender(self: pointer, ): pointer {.importc: "QSplitter_protectedbase_sender".}
proc fcQSplitter_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QSplitter_protectedbase_senderSignalIndex".}
proc fcQSplitter_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QSplitter_protectedbase_receivers".}
proc fcQSplitter_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QSplitter_protectedbase_isSignalConnected".}
proc fcQSplitter_new(vtbl: pointer, parent: pointer): ptr cQSplitter {.importc: "QSplitter_new".}
proc fcQSplitter_new2(vtbl: pointer, ): ptr cQSplitter {.importc: "QSplitter_new2".}
proc fcQSplitter_new3(vtbl: pointer, param1: cint): ptr cQSplitter {.importc: "QSplitter_new3".}
proc fcQSplitter_new4(vtbl: pointer, param1: cint, parent: pointer): ptr cQSplitter {.importc: "QSplitter_new4".}
proc fcQSplitter_staticMetaObject(): pointer {.importc: "QSplitter_staticMetaObject".}
proc fcQSplitter_delete(self: pointer) {.importc: "QSplitter_delete".}
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
type cQSplitterHandleVTable = object
  destructor*: proc(vtbl: ptr cQSplitterHandleVTable, self: ptr cQSplitterHandle) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(vtbl, self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQSplitterHandle_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QSplitterHandle_virtualbase_metaObject".}
proc fcQSplitterHandle_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSplitterHandle_virtualbase_metacast".}
proc fcQSplitterHandle_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSplitterHandle_virtualbase_metacall".}
proc fcQSplitterHandle_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QSplitterHandle_virtualbase_sizeHint".}
proc fcQSplitterHandle_virtualbase_paintEvent(self: pointer, param1: pointer): void {.importc: "QSplitterHandle_virtualbase_paintEvent".}
proc fcQSplitterHandle_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void {.importc: "QSplitterHandle_virtualbase_mouseMoveEvent".}
proc fcQSplitterHandle_virtualbase_mousePressEvent(self: pointer, param1: pointer): void {.importc: "QSplitterHandle_virtualbase_mousePressEvent".}
proc fcQSplitterHandle_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void {.importc: "QSplitterHandle_virtualbase_mouseReleaseEvent".}
proc fcQSplitterHandle_virtualbase_resizeEvent(self: pointer, param1: pointer): void {.importc: "QSplitterHandle_virtualbase_resizeEvent".}
proc fcQSplitterHandle_virtualbase_event(self: pointer, param1: pointer): bool {.importc: "QSplitterHandle_virtualbase_event".}
proc fcQSplitterHandle_virtualbase_devType(self: pointer, ): cint {.importc: "QSplitterHandle_virtualbase_devType".}
proc fcQSplitterHandle_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QSplitterHandle_virtualbase_setVisible".}
proc fcQSplitterHandle_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QSplitterHandle_virtualbase_minimumSizeHint".}
proc fcQSplitterHandle_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QSplitterHandle_virtualbase_heightForWidth".}
proc fcQSplitterHandle_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QSplitterHandle_virtualbase_hasHeightForWidth".}
proc fcQSplitterHandle_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QSplitterHandle_virtualbase_paintEngine".}
proc fcQSplitterHandle_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QSplitterHandle_virtualbase_mouseDoubleClickEvent".}
proc fcQSplitterHandle_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QSplitterHandle_virtualbase_wheelEvent".}
proc fcQSplitterHandle_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QSplitterHandle_virtualbase_keyPressEvent".}
proc fcQSplitterHandle_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QSplitterHandle_virtualbase_keyReleaseEvent".}
proc fcQSplitterHandle_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QSplitterHandle_virtualbase_focusInEvent".}
proc fcQSplitterHandle_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QSplitterHandle_virtualbase_focusOutEvent".}
proc fcQSplitterHandle_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QSplitterHandle_virtualbase_enterEvent".}
proc fcQSplitterHandle_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QSplitterHandle_virtualbase_leaveEvent".}
proc fcQSplitterHandle_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QSplitterHandle_virtualbase_moveEvent".}
proc fcQSplitterHandle_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QSplitterHandle_virtualbase_closeEvent".}
proc fcQSplitterHandle_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QSplitterHandle_virtualbase_contextMenuEvent".}
proc fcQSplitterHandle_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QSplitterHandle_virtualbase_tabletEvent".}
proc fcQSplitterHandle_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QSplitterHandle_virtualbase_actionEvent".}
proc fcQSplitterHandle_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QSplitterHandle_virtualbase_dragEnterEvent".}
proc fcQSplitterHandle_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QSplitterHandle_virtualbase_dragMoveEvent".}
proc fcQSplitterHandle_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QSplitterHandle_virtualbase_dragLeaveEvent".}
proc fcQSplitterHandle_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QSplitterHandle_virtualbase_dropEvent".}
proc fcQSplitterHandle_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QSplitterHandle_virtualbase_showEvent".}
proc fcQSplitterHandle_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QSplitterHandle_virtualbase_hideEvent".}
proc fcQSplitterHandle_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QSplitterHandle_virtualbase_nativeEvent".}
proc fcQSplitterHandle_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QSplitterHandle_virtualbase_changeEvent".}
proc fcQSplitterHandle_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QSplitterHandle_virtualbase_metric".}
proc fcQSplitterHandle_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QSplitterHandle_virtualbase_initPainter".}
proc fcQSplitterHandle_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QSplitterHandle_virtualbase_redirected".}
proc fcQSplitterHandle_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QSplitterHandle_virtualbase_sharedPainter".}
proc fcQSplitterHandle_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QSplitterHandle_virtualbase_inputMethodEvent".}
proc fcQSplitterHandle_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QSplitterHandle_virtualbase_inputMethodQuery".}
proc fcQSplitterHandle_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QSplitterHandle_virtualbase_focusNextPrevChild".}
proc fcQSplitterHandle_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSplitterHandle_virtualbase_eventFilter".}
proc fcQSplitterHandle_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QSplitterHandle_virtualbase_timerEvent".}
proc fcQSplitterHandle_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSplitterHandle_virtualbase_childEvent".}
proc fcQSplitterHandle_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSplitterHandle_virtualbase_customEvent".}
proc fcQSplitterHandle_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSplitterHandle_virtualbase_connectNotify".}
proc fcQSplitterHandle_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSplitterHandle_virtualbase_disconnectNotify".}
proc fcQSplitterHandle_protectedbase_moveSplitter(self: pointer, p: cint): void {.importc: "QSplitterHandle_protectedbase_moveSplitter".}
proc fcQSplitterHandle_protectedbase_closestLegalPosition(self: pointer, p: cint): cint {.importc: "QSplitterHandle_protectedbase_closestLegalPosition".}
proc fcQSplitterHandle_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QSplitterHandle_protectedbase_updateMicroFocus".}
proc fcQSplitterHandle_protectedbase_create(self: pointer, ): void {.importc: "QSplitterHandle_protectedbase_create".}
proc fcQSplitterHandle_protectedbase_destroy(self: pointer, ): void {.importc: "QSplitterHandle_protectedbase_destroy".}
proc fcQSplitterHandle_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QSplitterHandle_protectedbase_focusNextChild".}
proc fcQSplitterHandle_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QSplitterHandle_protectedbase_focusPreviousChild".}
proc fcQSplitterHandle_protectedbase_sender(self: pointer, ): pointer {.importc: "QSplitterHandle_protectedbase_sender".}
proc fcQSplitterHandle_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QSplitterHandle_protectedbase_senderSignalIndex".}
proc fcQSplitterHandle_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QSplitterHandle_protectedbase_receivers".}
proc fcQSplitterHandle_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QSplitterHandle_protectedbase_isSignalConnected".}
proc fcQSplitterHandle_new(vtbl: pointer, o: cint, parent: pointer): ptr cQSplitterHandle {.importc: "QSplitterHandle_new".}
proc fcQSplitterHandle_staticMetaObject(): pointer {.importc: "QSplitterHandle_staticMetaObject".}
proc fcQSplitterHandle_delete(self: pointer) {.importc: "QSplitterHandle_delete".}

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
  c_free(v_ma.data)
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
proc miqt_exec_callback_cQSplitter_splitterMoved(slot: int, pos: cint, index: cint) {.cdecl.} =
  let nimfunc = cast[ptr QSplittersplitterMovedSlot](cast[pointer](slot))
  let slotval1 = pos

  let slotval2 = index

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQSplitter_splitterMoved_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSplittersplitterMovedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsplitterMoved*(self: gen_qsplitter_types.QSplitter, slot: QSplittersplitterMovedSlot) =
  var tmp = new QSplittersplitterMovedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_connect_splitterMoved(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQSplitter_splitterMoved, miqt_exec_callback_cQSplitter_splitterMoved_release)

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

type QSplittermetaObjectProc* = proc(self: QSplitter): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QSplittermetacastProc* = proc(self: QSplitter, param1: cstring): pointer {.raises: [], gcsafe.}
type QSplittermetacallProc* = proc(self: QSplitter, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QSplittersizeHintProc* = proc(self: QSplitter): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QSplitterminimumSizeHintProc* = proc(self: QSplitter): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QSplittercreateHandleProc* = proc(self: QSplitter): gen_qsplitter_types.QSplitterHandle {.raises: [], gcsafe.}
type QSplitterchildEventProc* = proc(self: QSplitter, param1: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QSplittereventProc* = proc(self: QSplitter, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSplitterresizeEventProc* = proc(self: QSplitter, param1: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QSplitterchangeEventProc* = proc(self: QSplitter, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSplitterpaintEventProc* = proc(self: QSplitter, param1: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QSplitterdevTypeProc* = proc(self: QSplitter): cint {.raises: [], gcsafe.}
type QSplittersetVisibleProc* = proc(self: QSplitter, visible: bool): void {.raises: [], gcsafe.}
type QSplitterheightForWidthProc* = proc(self: QSplitter, param1: cint): cint {.raises: [], gcsafe.}
type QSplitterhasHeightForWidthProc* = proc(self: QSplitter): bool {.raises: [], gcsafe.}
type QSplitterpaintEngineProc* = proc(self: QSplitter): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QSplittermousePressEventProc* = proc(self: QSplitter, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QSplittermouseReleaseEventProc* = proc(self: QSplitter, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QSplittermouseDoubleClickEventProc* = proc(self: QSplitter, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QSplittermouseMoveEventProc* = proc(self: QSplitter, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QSplitterwheelEventProc* = proc(self: QSplitter, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QSplitterkeyPressEventProc* = proc(self: QSplitter, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QSplitterkeyReleaseEventProc* = proc(self: QSplitter, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QSplitterfocusInEventProc* = proc(self: QSplitter, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QSplitterfocusOutEventProc* = proc(self: QSplitter, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QSplitterenterEventProc* = proc(self: QSplitter, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSplitterleaveEventProc* = proc(self: QSplitter, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSplittermoveEventProc* = proc(self: QSplitter, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QSplittercloseEventProc* = proc(self: QSplitter, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QSplittercontextMenuEventProc* = proc(self: QSplitter, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QSplittertabletEventProc* = proc(self: QSplitter, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QSplitteractionEventProc* = proc(self: QSplitter, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QSplitterdragEnterEventProc* = proc(self: QSplitter, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QSplitterdragMoveEventProc* = proc(self: QSplitter, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QSplitterdragLeaveEventProc* = proc(self: QSplitter, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QSplitterdropEventProc* = proc(self: QSplitter, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QSplittershowEventProc* = proc(self: QSplitter, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QSplitterhideEventProc* = proc(self: QSplitter, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QSplitternativeEventProc* = proc(self: QSplitter, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QSplittermetricProc* = proc(self: QSplitter, param1: cint): cint {.raises: [], gcsafe.}
type QSplitterinitPainterProc* = proc(self: QSplitter, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QSplitterredirectedProc* = proc(self: QSplitter, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QSplittersharedPainterProc* = proc(self: QSplitter): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QSplitterinputMethodEventProc* = proc(self: QSplitter, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QSplitterinputMethodQueryProc* = proc(self: QSplitter, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QSplitterfocusNextPrevChildProc* = proc(self: QSplitter, next: bool): bool {.raises: [], gcsafe.}
type QSplittereventFilterProc* = proc(self: QSplitter, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSplittertimerEventProc* = proc(self: QSplitter, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QSplittercustomEventProc* = proc(self: QSplitter, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSplitterconnectNotifyProc* = proc(self: QSplitter, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSplitterdisconnectNotifyProc* = proc(self: QSplitter, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSplitterVTable* = object
  vtbl: cQSplitterVTable
  metaObject*: QSplittermetaObjectProc
  metacast*: QSplittermetacastProc
  metacall*: QSplittermetacallProc
  sizeHint*: QSplittersizeHintProc
  minimumSizeHint*: QSplitterminimumSizeHintProc
  createHandle*: QSplittercreateHandleProc
  childEvent*: QSplitterchildEventProc
  event*: QSplittereventProc
  resizeEvent*: QSplitterresizeEventProc
  changeEvent*: QSplitterchangeEventProc
  paintEvent*: QSplitterpaintEventProc
  devType*: QSplitterdevTypeProc
  setVisible*: QSplittersetVisibleProc
  heightForWidth*: QSplitterheightForWidthProc
  hasHeightForWidth*: QSplitterhasHeightForWidthProc
  paintEngine*: QSplitterpaintEngineProc
  mousePressEvent*: QSplittermousePressEventProc
  mouseReleaseEvent*: QSplittermouseReleaseEventProc
  mouseDoubleClickEvent*: QSplittermouseDoubleClickEventProc
  mouseMoveEvent*: QSplittermouseMoveEventProc
  wheelEvent*: QSplitterwheelEventProc
  keyPressEvent*: QSplitterkeyPressEventProc
  keyReleaseEvent*: QSplitterkeyReleaseEventProc
  focusInEvent*: QSplitterfocusInEventProc
  focusOutEvent*: QSplitterfocusOutEventProc
  enterEvent*: QSplitterenterEventProc
  leaveEvent*: QSplitterleaveEventProc
  moveEvent*: QSplittermoveEventProc
  closeEvent*: QSplittercloseEventProc
  contextMenuEvent*: QSplittercontextMenuEventProc
  tabletEvent*: QSplittertabletEventProc
  actionEvent*: QSplitteractionEventProc
  dragEnterEvent*: QSplitterdragEnterEventProc
  dragMoveEvent*: QSplitterdragMoveEventProc
  dragLeaveEvent*: QSplitterdragLeaveEventProc
  dropEvent*: QSplitterdropEventProc
  showEvent*: QSplittershowEventProc
  hideEvent*: QSplitterhideEventProc
  nativeEvent*: QSplitternativeEventProc
  metric*: QSplittermetricProc
  initPainter*: QSplitterinitPainterProc
  redirected*: QSplitterredirectedProc
  sharedPainter*: QSplittersharedPainterProc
  inputMethodEvent*: QSplitterinputMethodEventProc
  inputMethodQuery*: QSplitterinputMethodQueryProc
  focusNextPrevChild*: QSplitterfocusNextPrevChildProc
  eventFilter*: QSplittereventFilterProc
  timerEvent*: QSplittertimerEventProc
  customEvent*: QSplittercustomEventProc
  connectNotify*: QSplitterconnectNotifyProc
  disconnectNotify*: QSplitterdisconnectNotifyProc
proc QSplittermetaObject*(self: gen_qsplitter_types.QSplitter, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSplitter_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQSplitter_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QSplittermetacast*(self: gen_qsplitter_types.QSplitter, param1: cstring): pointer =
  fcQSplitter_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQSplitter_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QSplittermetacall*(self: gen_qsplitter_types.QSplitter, param1: cint, param2: cint, param3: pointer): cint =
  fcQSplitter_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQSplitter_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSplittersizeHint*(self: gen_qsplitter_types.QSplitter, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSplitter_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQSplitter_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QSplitterminimumSizeHint*(self: gen_qsplitter_types.QSplitter, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSplitter_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQSplitter_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QSplittercreateHandle*(self: gen_qsplitter_types.QSplitter, ): gen_qsplitter_types.QSplitterHandle =
  gen_qsplitter_types.QSplitterHandle(h: fcQSplitter_virtualbase_createHandle(self.h))

proc miqt_exec_callback_cQSplitter_createHandle(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  var virtualReturn = vtbl[].createHandle(self)
  virtualReturn.h

proc QSplitterchildEvent*(self: gen_qsplitter_types.QSplitter, param1: gen_qcoreevent_types.QChildEvent): void =
  fcQSplitter_virtualbase_childEvent(self.h, param1.h)

proc miqt_exec_callback_cQSplitter_childEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: param1)
  vtbl[].childEvent(self, slotval1)

proc QSplitterevent*(self: gen_qsplitter_types.QSplitter, param1: gen_qcoreevent_types.QEvent): bool =
  fcQSplitter_virtualbase_event(self.h, param1.h)

proc miqt_exec_callback_cQSplitter_event(vtbl: pointer, self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QSplitterresizeEvent*(self: gen_qsplitter_types.QSplitter, param1: gen_qevent_types.QResizeEvent): void =
  fcQSplitter_virtualbase_resizeEvent(self.h, param1.h)

proc miqt_exec_callback_cQSplitter_resizeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1)
  vtbl[].resizeEvent(self, slotval1)

proc QSplitterchangeEvent*(self: gen_qsplitter_types.QSplitter, param1: gen_qcoreevent_types.QEvent): void =
  fcQSplitter_virtualbase_changeEvent(self.h, param1.h)

proc miqt_exec_callback_cQSplitter_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  vtbl[].changeEvent(self, slotval1)

proc QSplitterpaintEvent*(self: gen_qsplitter_types.QSplitter, param1: gen_qevent_types.QPaintEvent): void =
  fcQSplitter_virtualbase_paintEvent(self.h, param1.h)

proc miqt_exec_callback_cQSplitter_paintEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1)
  vtbl[].paintEvent(self, slotval1)

proc QSplitterdevType*(self: gen_qsplitter_types.QSplitter, ): cint =
  fcQSplitter_virtualbase_devType(self.h)

proc miqt_exec_callback_cQSplitter_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QSplittersetVisible*(self: gen_qsplitter_types.QSplitter, visible: bool): void =
  fcQSplitter_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQSplitter_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QSplitterheightForWidth*(self: gen_qsplitter_types.QSplitter, param1: cint): cint =
  fcQSplitter_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQSplitter_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QSplitterhasHeightForWidth*(self: gen_qsplitter_types.QSplitter, ): bool =
  fcQSplitter_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQSplitter_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QSplitterpaintEngine*(self: gen_qsplitter_types.QSplitter, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQSplitter_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQSplitter_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QSplittermousePressEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QMouseEvent): void =
  fcQSplitter_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQSplitter_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QSplittermouseReleaseEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QMouseEvent): void =
  fcQSplitter_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQSplitter_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QSplittermouseDoubleClickEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QMouseEvent): void =
  fcQSplitter_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQSplitter_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QSplittermouseMoveEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QMouseEvent): void =
  fcQSplitter_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQSplitter_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QSplitterwheelEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QWheelEvent): void =
  fcQSplitter_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQSplitter_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QSplitterkeyPressEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QKeyEvent): void =
  fcQSplitter_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQSplitter_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyPressEvent(self, slotval1)

proc QSplitterkeyReleaseEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QKeyEvent): void =
  fcQSplitter_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQSplitter_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QSplitterfocusInEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QFocusEvent): void =
  fcQSplitter_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQSplitter_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QSplitterfocusOutEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QFocusEvent): void =
  fcQSplitter_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQSplitter_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QSplitterenterEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qcoreevent_types.QEvent): void =
  fcQSplitter_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQSplitter_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QSplitterleaveEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qcoreevent_types.QEvent): void =
  fcQSplitter_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQSplitter_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QSplittermoveEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QMoveEvent): void =
  fcQSplitter_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQSplitter_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QSplittercloseEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QCloseEvent): void =
  fcQSplitter_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQSplitter_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QSplittercontextMenuEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QContextMenuEvent): void =
  fcQSplitter_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQSplitter_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)
  vtbl[].contextMenuEvent(self, slotval1)

proc QSplittertabletEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QTabletEvent): void =
  fcQSplitter_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQSplitter_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QSplitteractionEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QActionEvent): void =
  fcQSplitter_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQSplitter_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QSplitterdragEnterEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QDragEnterEvent): void =
  fcQSplitter_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQSplitter_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QSplitterdragMoveEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QDragMoveEvent): void =
  fcQSplitter_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQSplitter_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QSplitterdragLeaveEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQSplitter_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQSplitter_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QSplitterdropEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QDropEvent): void =
  fcQSplitter_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQSplitter_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QSplittershowEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QShowEvent): void =
  fcQSplitter_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQSplitter_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  vtbl[].showEvent(self, slotval1)

proc QSplitterhideEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QHideEvent): void =
  fcQSplitter_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQSplitter_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QSplitternativeEvent*(self: gen_qsplitter_types.QSplitter, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fcQSplitter_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQSplitter_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSplittermetric*(self: gen_qsplitter_types.QSplitter, param1: cint): cint =
  fcQSplitter_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQSplitter_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QSplitterinitPainter*(self: gen_qsplitter_types.QSplitter, painter: gen_qpainter_types.QPainter): void =
  fcQSplitter_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQSplitter_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QSplitterredirected*(self: gen_qsplitter_types.QSplitter, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQSplitter_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQSplitter_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QSplittersharedPainter*(self: gen_qsplitter_types.QSplitter, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQSplitter_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQSplitter_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QSplitterinputMethodEvent*(self: gen_qsplitter_types.QSplitter, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQSplitter_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQSplitter_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QSplitterinputMethodQuery*(self: gen_qsplitter_types.QSplitter, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSplitter_virtualbase_inputMethodQuery(self.h, cint(param1)))

proc miqt_exec_callback_cQSplitter_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QSplitterfocusNextPrevChild*(self: gen_qsplitter_types.QSplitter, next: bool): bool =
  fcQSplitter_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQSplitter_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QSplittereventFilter*(self: gen_qsplitter_types.QSplitter, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSplitter_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQSplitter_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QSplittertimerEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSplitter_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQSplitter_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QSplittercustomEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qcoreevent_types.QEvent): void =
  fcQSplitter_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQSplitter_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QSplitterconnectNotify*(self: gen_qsplitter_types.QSplitter, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSplitter_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSplitter_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QSplitterdisconnectNotify*(self: gen_qsplitter_types.QSplitter, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSplitter_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSplitter_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](vtbl)
  let self = QSplitter(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc moveSplitter*(self: gen_qsplitter_types.QSplitter, pos: cint, index: cint): void =
  fcQSplitter_protectedbase_moveSplitter(self.h, pos, index)

proc setRubberBand*(self: gen_qsplitter_types.QSplitter, position: cint): void =
  fcQSplitter_protectedbase_setRubberBand(self.h, position)

proc closestLegalPosition*(self: gen_qsplitter_types.QSplitter, param1: cint, param2: cint): cint =
  fcQSplitter_protectedbase_closestLegalPosition(self.h, param1, param2)

proc drawFrame*(self: gen_qsplitter_types.QSplitter, param1: gen_qpainter_types.QPainter): void =
  fcQSplitter_protectedbase_drawFrame(self.h, param1.h)

proc initStyleOption*(self: gen_qsplitter_types.QSplitter, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fcQSplitter_protectedbase_initStyleOption(self.h, option.h)

proc updateMicroFocus*(self: gen_qsplitter_types.QSplitter, ): void =
  fcQSplitter_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qsplitter_types.QSplitter, ): void =
  fcQSplitter_protectedbase_create(self.h)

proc destroy*(self: gen_qsplitter_types.QSplitter, ): void =
  fcQSplitter_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qsplitter_types.QSplitter, ): bool =
  fcQSplitter_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qsplitter_types.QSplitter, ): bool =
  fcQSplitter_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qsplitter_types.QSplitter, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSplitter_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qsplitter_types.QSplitter, ): cint =
  fcQSplitter_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qsplitter_types.QSplitter, signal: cstring): cint =
  fcQSplitter_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qsplitter_types.QSplitter, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQSplitter_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qsplitter_types.QSplitter,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QSplitterVTable = nil): gen_qsplitter_types.QSplitter =
  let vtbl = if vtbl == nil: new QSplitterVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSplitterVTable, _: ptr cQSplitter) {.cdecl.} =
    let vtbl = cast[ref QSplitterVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSplitter_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSplitter_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSplitter_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQSplitter_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQSplitter_minimumSizeHint
  if not isNil(vtbl.createHandle):
    vtbl[].vtbl.createHandle = miqt_exec_callback_cQSplitter_createHandle
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSplitter_childEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSplitter_event
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQSplitter_resizeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQSplitter_changeEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQSplitter_paintEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQSplitter_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQSplitter_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQSplitter_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQSplitter_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQSplitter_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQSplitter_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQSplitter_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQSplitter_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQSplitter_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQSplitter_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQSplitter_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQSplitter_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQSplitter_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQSplitter_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQSplitter_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQSplitter_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQSplitter_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQSplitter_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQSplitter_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQSplitter_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQSplitter_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQSplitter_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQSplitter_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQSplitter_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQSplitter_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQSplitter_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQSplitter_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQSplitter_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQSplitter_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQSplitter_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQSplitter_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQSplitter_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQSplitter_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQSplitter_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQSplitter_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSplitter_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSplitter_timerEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSplitter_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSplitter_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSplitter_disconnectNotify
  gen_qsplitter_types.QSplitter(h: fcQSplitter_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qsplitter_types.QSplitter,
    vtbl: ref QSplitterVTable = nil): gen_qsplitter_types.QSplitter =
  let vtbl = if vtbl == nil: new QSplitterVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSplitterVTable, _: ptr cQSplitter) {.cdecl.} =
    let vtbl = cast[ref QSplitterVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSplitter_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSplitter_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSplitter_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQSplitter_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQSplitter_minimumSizeHint
  if not isNil(vtbl.createHandle):
    vtbl[].vtbl.createHandle = miqt_exec_callback_cQSplitter_createHandle
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSplitter_childEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSplitter_event
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQSplitter_resizeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQSplitter_changeEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQSplitter_paintEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQSplitter_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQSplitter_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQSplitter_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQSplitter_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQSplitter_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQSplitter_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQSplitter_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQSplitter_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQSplitter_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQSplitter_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQSplitter_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQSplitter_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQSplitter_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQSplitter_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQSplitter_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQSplitter_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQSplitter_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQSplitter_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQSplitter_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQSplitter_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQSplitter_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQSplitter_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQSplitter_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQSplitter_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQSplitter_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQSplitter_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQSplitter_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQSplitter_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQSplitter_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQSplitter_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQSplitter_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQSplitter_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQSplitter_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQSplitter_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQSplitter_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSplitter_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSplitter_timerEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSplitter_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSplitter_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSplitter_disconnectNotify
  gen_qsplitter_types.QSplitter(h: fcQSplitter_new2(addr(vtbl[]), ))

proc create*(T: type gen_qsplitter_types.QSplitter,
    param1: cint,
    vtbl: ref QSplitterVTable = nil): gen_qsplitter_types.QSplitter =
  let vtbl = if vtbl == nil: new QSplitterVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSplitterVTable, _: ptr cQSplitter) {.cdecl.} =
    let vtbl = cast[ref QSplitterVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSplitter_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSplitter_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSplitter_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQSplitter_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQSplitter_minimumSizeHint
  if not isNil(vtbl.createHandle):
    vtbl[].vtbl.createHandle = miqt_exec_callback_cQSplitter_createHandle
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSplitter_childEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSplitter_event
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQSplitter_resizeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQSplitter_changeEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQSplitter_paintEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQSplitter_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQSplitter_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQSplitter_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQSplitter_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQSplitter_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQSplitter_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQSplitter_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQSplitter_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQSplitter_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQSplitter_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQSplitter_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQSplitter_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQSplitter_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQSplitter_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQSplitter_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQSplitter_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQSplitter_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQSplitter_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQSplitter_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQSplitter_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQSplitter_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQSplitter_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQSplitter_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQSplitter_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQSplitter_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQSplitter_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQSplitter_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQSplitter_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQSplitter_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQSplitter_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQSplitter_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQSplitter_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQSplitter_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQSplitter_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQSplitter_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSplitter_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSplitter_timerEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSplitter_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSplitter_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSplitter_disconnectNotify
  gen_qsplitter_types.QSplitter(h: fcQSplitter_new3(addr(vtbl[]), cint(param1)))

proc create*(T: type gen_qsplitter_types.QSplitter,
    param1: cint, parent: gen_qwidget_types.QWidget,
    vtbl: ref QSplitterVTable = nil): gen_qsplitter_types.QSplitter =
  let vtbl = if vtbl == nil: new QSplitterVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSplitterVTable, _: ptr cQSplitter) {.cdecl.} =
    let vtbl = cast[ref QSplitterVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSplitter_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSplitter_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSplitter_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQSplitter_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQSplitter_minimumSizeHint
  if not isNil(vtbl.createHandle):
    vtbl[].vtbl.createHandle = miqt_exec_callback_cQSplitter_createHandle
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSplitter_childEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSplitter_event
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQSplitter_resizeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQSplitter_changeEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQSplitter_paintEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQSplitter_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQSplitter_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQSplitter_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQSplitter_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQSplitter_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQSplitter_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQSplitter_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQSplitter_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQSplitter_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQSplitter_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQSplitter_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQSplitter_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQSplitter_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQSplitter_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQSplitter_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQSplitter_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQSplitter_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQSplitter_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQSplitter_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQSplitter_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQSplitter_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQSplitter_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQSplitter_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQSplitter_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQSplitter_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQSplitter_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQSplitter_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQSplitter_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQSplitter_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQSplitter_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQSplitter_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQSplitter_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQSplitter_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQSplitter_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQSplitter_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSplitter_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSplitter_timerEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSplitter_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSplitter_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSplitter_disconnectNotify
  gen_qsplitter_types.QSplitter(h: fcQSplitter_new4(addr(vtbl[]), cint(param1), parent.h))

proc staticMetaObject*(_: type gen_qsplitter_types.QSplitter): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSplitter_staticMetaObject())
proc delete*(self: gen_qsplitter_types.QSplitter) =
  fcQSplitter_delete(self.h)
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

type QSplitterHandlemetaObjectProc* = proc(self: QSplitterHandle): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QSplitterHandlemetacastProc* = proc(self: QSplitterHandle, param1: cstring): pointer {.raises: [], gcsafe.}
type QSplitterHandlemetacallProc* = proc(self: QSplitterHandle, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QSplitterHandlesizeHintProc* = proc(self: QSplitterHandle): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QSplitterHandlepaintEventProc* = proc(self: QSplitterHandle, param1: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QSplitterHandlemouseMoveEventProc* = proc(self: QSplitterHandle, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QSplitterHandlemousePressEventProc* = proc(self: QSplitterHandle, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QSplitterHandlemouseReleaseEventProc* = proc(self: QSplitterHandle, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QSplitterHandleresizeEventProc* = proc(self: QSplitterHandle, param1: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QSplitterHandleeventProc* = proc(self: QSplitterHandle, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSplitterHandledevTypeProc* = proc(self: QSplitterHandle): cint {.raises: [], gcsafe.}
type QSplitterHandlesetVisibleProc* = proc(self: QSplitterHandle, visible: bool): void {.raises: [], gcsafe.}
type QSplitterHandleminimumSizeHintProc* = proc(self: QSplitterHandle): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QSplitterHandleheightForWidthProc* = proc(self: QSplitterHandle, param1: cint): cint {.raises: [], gcsafe.}
type QSplitterHandlehasHeightForWidthProc* = proc(self: QSplitterHandle): bool {.raises: [], gcsafe.}
type QSplitterHandlepaintEngineProc* = proc(self: QSplitterHandle): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QSplitterHandlemouseDoubleClickEventProc* = proc(self: QSplitterHandle, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QSplitterHandlewheelEventProc* = proc(self: QSplitterHandle, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QSplitterHandlekeyPressEventProc* = proc(self: QSplitterHandle, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QSplitterHandlekeyReleaseEventProc* = proc(self: QSplitterHandle, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QSplitterHandlefocusInEventProc* = proc(self: QSplitterHandle, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QSplitterHandlefocusOutEventProc* = proc(self: QSplitterHandle, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QSplitterHandleenterEventProc* = proc(self: QSplitterHandle, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSplitterHandleleaveEventProc* = proc(self: QSplitterHandle, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSplitterHandlemoveEventProc* = proc(self: QSplitterHandle, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QSplitterHandlecloseEventProc* = proc(self: QSplitterHandle, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QSplitterHandlecontextMenuEventProc* = proc(self: QSplitterHandle, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QSplitterHandletabletEventProc* = proc(self: QSplitterHandle, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QSplitterHandleactionEventProc* = proc(self: QSplitterHandle, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QSplitterHandledragEnterEventProc* = proc(self: QSplitterHandle, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QSplitterHandledragMoveEventProc* = proc(self: QSplitterHandle, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QSplitterHandledragLeaveEventProc* = proc(self: QSplitterHandle, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QSplitterHandledropEventProc* = proc(self: QSplitterHandle, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QSplitterHandleshowEventProc* = proc(self: QSplitterHandle, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QSplitterHandlehideEventProc* = proc(self: QSplitterHandle, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QSplitterHandlenativeEventProc* = proc(self: QSplitterHandle, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QSplitterHandlechangeEventProc* = proc(self: QSplitterHandle, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSplitterHandlemetricProc* = proc(self: QSplitterHandle, param1: cint): cint {.raises: [], gcsafe.}
type QSplitterHandleinitPainterProc* = proc(self: QSplitterHandle, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QSplitterHandleredirectedProc* = proc(self: QSplitterHandle, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QSplitterHandlesharedPainterProc* = proc(self: QSplitterHandle): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QSplitterHandleinputMethodEventProc* = proc(self: QSplitterHandle, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QSplitterHandleinputMethodQueryProc* = proc(self: QSplitterHandle, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QSplitterHandlefocusNextPrevChildProc* = proc(self: QSplitterHandle, next: bool): bool {.raises: [], gcsafe.}
type QSplitterHandleeventFilterProc* = proc(self: QSplitterHandle, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSplitterHandletimerEventProc* = proc(self: QSplitterHandle, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QSplitterHandlechildEventProc* = proc(self: QSplitterHandle, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QSplitterHandlecustomEventProc* = proc(self: QSplitterHandle, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSplitterHandleconnectNotifyProc* = proc(self: QSplitterHandle, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSplitterHandledisconnectNotifyProc* = proc(self: QSplitterHandle, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSplitterHandleVTable* = object
  vtbl: cQSplitterHandleVTable
  metaObject*: QSplitterHandlemetaObjectProc
  metacast*: QSplitterHandlemetacastProc
  metacall*: QSplitterHandlemetacallProc
  sizeHint*: QSplitterHandlesizeHintProc
  paintEvent*: QSplitterHandlepaintEventProc
  mouseMoveEvent*: QSplitterHandlemouseMoveEventProc
  mousePressEvent*: QSplitterHandlemousePressEventProc
  mouseReleaseEvent*: QSplitterHandlemouseReleaseEventProc
  resizeEvent*: QSplitterHandleresizeEventProc
  event*: QSplitterHandleeventProc
  devType*: QSplitterHandledevTypeProc
  setVisible*: QSplitterHandlesetVisibleProc
  minimumSizeHint*: QSplitterHandleminimumSizeHintProc
  heightForWidth*: QSplitterHandleheightForWidthProc
  hasHeightForWidth*: QSplitterHandlehasHeightForWidthProc
  paintEngine*: QSplitterHandlepaintEngineProc
  mouseDoubleClickEvent*: QSplitterHandlemouseDoubleClickEventProc
  wheelEvent*: QSplitterHandlewheelEventProc
  keyPressEvent*: QSplitterHandlekeyPressEventProc
  keyReleaseEvent*: QSplitterHandlekeyReleaseEventProc
  focusInEvent*: QSplitterHandlefocusInEventProc
  focusOutEvent*: QSplitterHandlefocusOutEventProc
  enterEvent*: QSplitterHandleenterEventProc
  leaveEvent*: QSplitterHandleleaveEventProc
  moveEvent*: QSplitterHandlemoveEventProc
  closeEvent*: QSplitterHandlecloseEventProc
  contextMenuEvent*: QSplitterHandlecontextMenuEventProc
  tabletEvent*: QSplitterHandletabletEventProc
  actionEvent*: QSplitterHandleactionEventProc
  dragEnterEvent*: QSplitterHandledragEnterEventProc
  dragMoveEvent*: QSplitterHandledragMoveEventProc
  dragLeaveEvent*: QSplitterHandledragLeaveEventProc
  dropEvent*: QSplitterHandledropEventProc
  showEvent*: QSplitterHandleshowEventProc
  hideEvent*: QSplitterHandlehideEventProc
  nativeEvent*: QSplitterHandlenativeEventProc
  changeEvent*: QSplitterHandlechangeEventProc
  metric*: QSplitterHandlemetricProc
  initPainter*: QSplitterHandleinitPainterProc
  redirected*: QSplitterHandleredirectedProc
  sharedPainter*: QSplitterHandlesharedPainterProc
  inputMethodEvent*: QSplitterHandleinputMethodEventProc
  inputMethodQuery*: QSplitterHandleinputMethodQueryProc
  focusNextPrevChild*: QSplitterHandlefocusNextPrevChildProc
  eventFilter*: QSplitterHandleeventFilterProc
  timerEvent*: QSplitterHandletimerEventProc
  childEvent*: QSplitterHandlechildEventProc
  customEvent*: QSplitterHandlecustomEventProc
  connectNotify*: QSplitterHandleconnectNotifyProc
  disconnectNotify*: QSplitterHandledisconnectNotifyProc
proc QSplitterHandlemetaObject*(self: gen_qsplitter_types.QSplitterHandle, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSplitterHandle_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQSplitterHandle_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QSplitterHandlemetacast*(self: gen_qsplitter_types.QSplitterHandle, param1: cstring): pointer =
  fcQSplitterHandle_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQSplitterHandle_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QSplitterHandlemetacall*(self: gen_qsplitter_types.QSplitterHandle, param1: cint, param2: cint, param3: pointer): cint =
  fcQSplitterHandle_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQSplitterHandle_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSplitterHandlesizeHint*(self: gen_qsplitter_types.QSplitterHandle, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSplitterHandle_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQSplitterHandle_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QSplitterHandlepaintEvent*(self: gen_qsplitter_types.QSplitterHandle, param1: gen_qevent_types.QPaintEvent): void =
  fcQSplitterHandle_virtualbase_paintEvent(self.h, param1.h)

proc miqt_exec_callback_cQSplitterHandle_paintEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1)
  vtbl[].paintEvent(self, slotval1)

proc QSplitterHandlemouseMoveEvent*(self: gen_qsplitter_types.QSplitterHandle, param1: gen_qevent_types.QMouseEvent): void =
  fcQSplitterHandle_virtualbase_mouseMoveEvent(self.h, param1.h)

proc miqt_exec_callback_cQSplitterHandle_mouseMoveEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QSplitterHandlemousePressEvent*(self: gen_qsplitter_types.QSplitterHandle, param1: gen_qevent_types.QMouseEvent): void =
  fcQSplitterHandle_virtualbase_mousePressEvent(self.h, param1.h)

proc miqt_exec_callback_cQSplitterHandle_mousePressEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)
  vtbl[].mousePressEvent(self, slotval1)

proc QSplitterHandlemouseReleaseEvent*(self: gen_qsplitter_types.QSplitterHandle, param1: gen_qevent_types.QMouseEvent): void =
  fcQSplitterHandle_virtualbase_mouseReleaseEvent(self.h, param1.h)

proc miqt_exec_callback_cQSplitterHandle_mouseReleaseEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QSplitterHandleresizeEvent*(self: gen_qsplitter_types.QSplitterHandle, param1: gen_qevent_types.QResizeEvent): void =
  fcQSplitterHandle_virtualbase_resizeEvent(self.h, param1.h)

proc miqt_exec_callback_cQSplitterHandle_resizeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1)
  vtbl[].resizeEvent(self, slotval1)

proc QSplitterHandleevent*(self: gen_qsplitter_types.QSplitterHandle, param1: gen_qcoreevent_types.QEvent): bool =
  fcQSplitterHandle_virtualbase_event(self.h, param1.h)

proc miqt_exec_callback_cQSplitterHandle_event(vtbl: pointer, self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QSplitterHandledevType*(self: gen_qsplitter_types.QSplitterHandle, ): cint =
  fcQSplitterHandle_virtualbase_devType(self.h)

proc miqt_exec_callback_cQSplitterHandle_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QSplitterHandlesetVisible*(self: gen_qsplitter_types.QSplitterHandle, visible: bool): void =
  fcQSplitterHandle_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQSplitterHandle_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QSplitterHandleminimumSizeHint*(self: gen_qsplitter_types.QSplitterHandle, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSplitterHandle_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQSplitterHandle_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QSplitterHandleheightForWidth*(self: gen_qsplitter_types.QSplitterHandle, param1: cint): cint =
  fcQSplitterHandle_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQSplitterHandle_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QSplitterHandlehasHeightForWidth*(self: gen_qsplitter_types.QSplitterHandle, ): bool =
  fcQSplitterHandle_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQSplitterHandle_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QSplitterHandlepaintEngine*(self: gen_qsplitter_types.QSplitterHandle, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQSplitterHandle_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQSplitterHandle_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QSplitterHandlemouseDoubleClickEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QMouseEvent): void =
  fcQSplitterHandle_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQSplitterHandle_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QSplitterHandlewheelEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QWheelEvent): void =
  fcQSplitterHandle_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQSplitterHandle_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QSplitterHandlekeyPressEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QKeyEvent): void =
  fcQSplitterHandle_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQSplitterHandle_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyPressEvent(self, slotval1)

proc QSplitterHandlekeyReleaseEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QKeyEvent): void =
  fcQSplitterHandle_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQSplitterHandle_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QSplitterHandlefocusInEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QFocusEvent): void =
  fcQSplitterHandle_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQSplitterHandle_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QSplitterHandlefocusOutEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QFocusEvent): void =
  fcQSplitterHandle_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQSplitterHandle_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QSplitterHandleenterEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qcoreevent_types.QEvent): void =
  fcQSplitterHandle_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQSplitterHandle_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QSplitterHandleleaveEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qcoreevent_types.QEvent): void =
  fcQSplitterHandle_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQSplitterHandle_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QSplitterHandlemoveEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QMoveEvent): void =
  fcQSplitterHandle_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQSplitterHandle_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QSplitterHandlecloseEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QCloseEvent): void =
  fcQSplitterHandle_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQSplitterHandle_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QSplitterHandlecontextMenuEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QContextMenuEvent): void =
  fcQSplitterHandle_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQSplitterHandle_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)
  vtbl[].contextMenuEvent(self, slotval1)

proc QSplitterHandletabletEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QTabletEvent): void =
  fcQSplitterHandle_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQSplitterHandle_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QSplitterHandleactionEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QActionEvent): void =
  fcQSplitterHandle_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQSplitterHandle_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QSplitterHandledragEnterEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QDragEnterEvent): void =
  fcQSplitterHandle_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQSplitterHandle_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QSplitterHandledragMoveEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QDragMoveEvent): void =
  fcQSplitterHandle_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQSplitterHandle_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QSplitterHandledragLeaveEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQSplitterHandle_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQSplitterHandle_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QSplitterHandledropEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QDropEvent): void =
  fcQSplitterHandle_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQSplitterHandle_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QSplitterHandleshowEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QShowEvent): void =
  fcQSplitterHandle_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQSplitterHandle_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  vtbl[].showEvent(self, slotval1)

proc QSplitterHandlehideEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QHideEvent): void =
  fcQSplitterHandle_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQSplitterHandle_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QSplitterHandlenativeEvent*(self: gen_qsplitter_types.QSplitterHandle, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fcQSplitterHandle_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQSplitterHandle_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSplitterHandlechangeEvent*(self: gen_qsplitter_types.QSplitterHandle, param1: gen_qcoreevent_types.QEvent): void =
  fcQSplitterHandle_virtualbase_changeEvent(self.h, param1.h)

proc miqt_exec_callback_cQSplitterHandle_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  vtbl[].changeEvent(self, slotval1)

proc QSplitterHandlemetric*(self: gen_qsplitter_types.QSplitterHandle, param1: cint): cint =
  fcQSplitterHandle_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQSplitterHandle_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QSplitterHandleinitPainter*(self: gen_qsplitter_types.QSplitterHandle, painter: gen_qpainter_types.QPainter): void =
  fcQSplitterHandle_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQSplitterHandle_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QSplitterHandleredirected*(self: gen_qsplitter_types.QSplitterHandle, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQSplitterHandle_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQSplitterHandle_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QSplitterHandlesharedPainter*(self: gen_qsplitter_types.QSplitterHandle, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQSplitterHandle_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQSplitterHandle_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QSplitterHandleinputMethodEvent*(self: gen_qsplitter_types.QSplitterHandle, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQSplitterHandle_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQSplitterHandle_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QSplitterHandleinputMethodQuery*(self: gen_qsplitter_types.QSplitterHandle, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSplitterHandle_virtualbase_inputMethodQuery(self.h, cint(param1)))

proc miqt_exec_callback_cQSplitterHandle_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QSplitterHandlefocusNextPrevChild*(self: gen_qsplitter_types.QSplitterHandle, next: bool): bool =
  fcQSplitterHandle_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQSplitterHandle_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QSplitterHandleeventFilter*(self: gen_qsplitter_types.QSplitterHandle, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSplitterHandle_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQSplitterHandle_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QSplitterHandletimerEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSplitterHandle_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQSplitterHandle_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QSplitterHandlechildEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSplitterHandle_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQSplitterHandle_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QSplitterHandlecustomEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qcoreevent_types.QEvent): void =
  fcQSplitterHandle_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQSplitterHandle_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QSplitterHandleconnectNotify*(self: gen_qsplitter_types.QSplitterHandle, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSplitterHandle_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSplitterHandle_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QSplitterHandledisconnectNotify*(self: gen_qsplitter_types.QSplitterHandle, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSplitterHandle_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSplitterHandle_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](vtbl)
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc moveSplitter*(self: gen_qsplitter_types.QSplitterHandle, p: cint): void =
  fcQSplitterHandle_protectedbase_moveSplitter(self.h, p)

proc closestLegalPosition*(self: gen_qsplitter_types.QSplitterHandle, p: cint): cint =
  fcQSplitterHandle_protectedbase_closestLegalPosition(self.h, p)

proc updateMicroFocus*(self: gen_qsplitter_types.QSplitterHandle, ): void =
  fcQSplitterHandle_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qsplitter_types.QSplitterHandle, ): void =
  fcQSplitterHandle_protectedbase_create(self.h)

proc destroy*(self: gen_qsplitter_types.QSplitterHandle, ): void =
  fcQSplitterHandle_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qsplitter_types.QSplitterHandle, ): bool =
  fcQSplitterHandle_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qsplitter_types.QSplitterHandle, ): bool =
  fcQSplitterHandle_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qsplitter_types.QSplitterHandle, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSplitterHandle_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qsplitter_types.QSplitterHandle, ): cint =
  fcQSplitterHandle_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qsplitter_types.QSplitterHandle, signal: cstring): cint =
  fcQSplitterHandle_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qsplitter_types.QSplitterHandle, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQSplitterHandle_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qsplitter_types.QSplitterHandle,
    o: cint, parent: gen_qsplitter_types.QSplitter,
    vtbl: ref QSplitterHandleVTable = nil): gen_qsplitter_types.QSplitterHandle =
  let vtbl = if vtbl == nil: new QSplitterHandleVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSplitterHandleVTable, _: ptr cQSplitterHandle) {.cdecl.} =
    let vtbl = cast[ref QSplitterHandleVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSplitterHandle_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSplitterHandle_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSplitterHandle_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQSplitterHandle_sizeHint
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQSplitterHandle_paintEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQSplitterHandle_mouseMoveEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQSplitterHandle_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQSplitterHandle_mouseReleaseEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQSplitterHandle_resizeEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSplitterHandle_event
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQSplitterHandle_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQSplitterHandle_setVisible
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQSplitterHandle_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQSplitterHandle_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQSplitterHandle_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQSplitterHandle_paintEngine
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQSplitterHandle_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQSplitterHandle_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQSplitterHandle_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQSplitterHandle_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQSplitterHandle_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQSplitterHandle_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQSplitterHandle_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQSplitterHandle_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQSplitterHandle_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQSplitterHandle_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQSplitterHandle_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQSplitterHandle_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQSplitterHandle_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQSplitterHandle_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQSplitterHandle_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQSplitterHandle_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQSplitterHandle_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQSplitterHandle_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQSplitterHandle_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQSplitterHandle_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQSplitterHandle_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQSplitterHandle_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQSplitterHandle_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQSplitterHandle_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQSplitterHandle_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQSplitterHandle_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQSplitterHandle_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQSplitterHandle_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSplitterHandle_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSplitterHandle_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSplitterHandle_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSplitterHandle_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSplitterHandle_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSplitterHandle_disconnectNotify
  gen_qsplitter_types.QSplitterHandle(h: fcQSplitterHandle_new(addr(vtbl[]), cint(o), parent.h))

proc staticMetaObject*(_: type gen_qsplitter_types.QSplitterHandle): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSplitterHandle_staticMetaObject())
proc delete*(self: gen_qsplitter_types.QSplitterHandle) =
  fcQSplitterHandle_delete(self.h)
