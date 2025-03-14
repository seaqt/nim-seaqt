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


{.compile("gen_qsplitter.cpp", QtWidgetsCFlags).}


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

proc fcQSplitter_metaObject(self: pointer): pointer {.importc: "QSplitter_metaObject".}
proc fcQSplitter_metacast(self: pointer, param1: cstring): pointer {.importc: "QSplitter_metacast".}
proc fcQSplitter_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSplitter_metacall".}
proc fcQSplitter_tr(s: cstring): struct_miqt_string {.importc: "QSplitter_tr".}
proc fcQSplitter_addWidget(self: pointer, widget: pointer): void {.importc: "QSplitter_addWidget".}
proc fcQSplitter_insertWidget(self: pointer, index: cint, widget: pointer): void {.importc: "QSplitter_insertWidget".}
proc fcQSplitter_replaceWidget(self: pointer, index: cint, widget: pointer): pointer {.importc: "QSplitter_replaceWidget".}
proc fcQSplitter_setOrientation(self: pointer, orientation: cint): void {.importc: "QSplitter_setOrientation".}
proc fcQSplitter_orientation(self: pointer): cint {.importc: "QSplitter_orientation".}
proc fcQSplitter_setChildrenCollapsible(self: pointer, childrenCollapsible: bool): void {.importc: "QSplitter_setChildrenCollapsible".}
proc fcQSplitter_childrenCollapsible(self: pointer): bool {.importc: "QSplitter_childrenCollapsible".}
proc fcQSplitter_setCollapsible(self: pointer, index: cint, param2: bool): void {.importc: "QSplitter_setCollapsible".}
proc fcQSplitter_isCollapsible(self: pointer, index: cint): bool {.importc: "QSplitter_isCollapsible".}
proc fcQSplitter_setOpaqueResize(self: pointer): void {.importc: "QSplitter_setOpaqueResize".}
proc fcQSplitter_opaqueResize(self: pointer): bool {.importc: "QSplitter_opaqueResize".}
proc fcQSplitter_refresh(self: pointer): void {.importc: "QSplitter_refresh".}
proc fcQSplitter_sizeHint(self: pointer): pointer {.importc: "QSplitter_sizeHint".}
proc fcQSplitter_minimumSizeHint(self: pointer): pointer {.importc: "QSplitter_minimumSizeHint".}
proc fcQSplitter_sizes(self: pointer): struct_miqt_array {.importc: "QSplitter_sizes".}
proc fcQSplitter_setSizes(self: pointer, list: struct_miqt_array): void {.importc: "QSplitter_setSizes".}
proc fcQSplitter_saveState(self: pointer): struct_miqt_string {.importc: "QSplitter_saveState".}
proc fcQSplitter_restoreState(self: pointer, state: struct_miqt_string): bool {.importc: "QSplitter_restoreState".}
proc fcQSplitter_handleWidth(self: pointer): cint {.importc: "QSplitter_handleWidth".}
proc fcQSplitter_setHandleWidth(self: pointer, handleWidth: cint): void {.importc: "QSplitter_setHandleWidth".}
proc fcQSplitter_indexOf(self: pointer, w: pointer): cint {.importc: "QSplitter_indexOf".}
proc fcQSplitter_widget(self: pointer, index: cint): pointer {.importc: "QSplitter_widget".}
proc fcQSplitter_count(self: pointer): cint {.importc: "QSplitter_count".}
proc fcQSplitter_getRange(self: pointer, index: cint, param2: ptr cint, param3: ptr cint): void {.importc: "QSplitter_getRange".}
proc fcQSplitter_handle(self: pointer, index: cint): pointer {.importc: "QSplitter_handle".}
proc fcQSplitter_setStretchFactor(self: pointer, index: cint, stretch: cint): void {.importc: "QSplitter_setStretchFactor".}
proc fcQSplitter_splitterMoved(self: pointer, pos: cint, index: cint): void {.importc: "QSplitter_splitterMoved".}
proc fcQSplitter_connect_splitterMoved(self: pointer, slot: int, callback: proc (slot: int, pos: cint, index: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSplitter_connect_splitterMoved".}
proc fcQSplitter_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSplitter_tr2".}
proc fcQSplitter_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSplitter_tr3".}
proc fcQSplitter_setOpaqueResize1(self: pointer, opaque: bool): void {.importc: "QSplitter_setOpaqueResize1".}
proc fcQSplitter_vtbl(self: pointer): pointer {.importc: "QSplitter_vtbl".}
proc fcQSplitter_vdata(self: pointer): pointer {.importc: "QSplitter_vdata".}
type cQSplitterVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  createHandle*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  initStyleOption*: proc(self: pointer, option: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQSplitter_virtualbase_metaObject(self: pointer): pointer {.importc: "QSplitter_virtualbase_metaObject".}
proc fcQSplitter_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSplitter_virtualbase_metacast".}
proc fcQSplitter_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSplitter_virtualbase_metacall".}
proc fcQSplitter_virtualbase_sizeHint(self: pointer): pointer {.importc: "QSplitter_virtualbase_sizeHint".}
proc fcQSplitter_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QSplitter_virtualbase_minimumSizeHint".}
proc fcQSplitter_virtualbase_createHandle(self: pointer): pointer {.importc: "QSplitter_virtualbase_createHandle".}
proc fcQSplitter_virtualbase_childEvent(self: pointer, param1: pointer): void {.importc: "QSplitter_virtualbase_childEvent".}
proc fcQSplitter_virtualbase_event(self: pointer, param1: pointer): bool {.importc: "QSplitter_virtualbase_event".}
proc fcQSplitter_virtualbase_resizeEvent(self: pointer, param1: pointer): void {.importc: "QSplitter_virtualbase_resizeEvent".}
proc fcQSplitter_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QSplitter_virtualbase_changeEvent".}
proc fcQSplitter_virtualbase_paintEvent(self: pointer, param1: pointer): void {.importc: "QSplitter_virtualbase_paintEvent".}
proc fcQSplitter_virtualbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QSplitter_virtualbase_initStyleOption".}
proc fcQSplitter_virtualbase_devType(self: pointer): cint {.importc: "QSplitter_virtualbase_devType".}
proc fcQSplitter_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QSplitter_virtualbase_setVisible".}
proc fcQSplitter_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QSplitter_virtualbase_heightForWidth".}
proc fcQSplitter_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QSplitter_virtualbase_hasHeightForWidth".}
proc fcQSplitter_virtualbase_paintEngine(self: pointer): pointer {.importc: "QSplitter_virtualbase_paintEngine".}
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
proc fcQSplitter_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QSplitter_virtualbase_nativeEvent".}
proc fcQSplitter_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QSplitter_virtualbase_metric".}
proc fcQSplitter_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QSplitter_virtualbase_initPainter".}
proc fcQSplitter_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QSplitter_virtualbase_redirected".}
proc fcQSplitter_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QSplitter_virtualbase_sharedPainter".}
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
proc fcQSplitter_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QSplitter_protectedbase_updateMicroFocus".}
proc fcQSplitter_protectedbase_create(self: pointer): void {.importc: "QSplitter_protectedbase_create".}
proc fcQSplitter_protectedbase_destroy(self: pointer): void {.importc: "QSplitter_protectedbase_destroy".}
proc fcQSplitter_protectedbase_focusNextChild(self: pointer): bool {.importc: "QSplitter_protectedbase_focusNextChild".}
proc fcQSplitter_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QSplitter_protectedbase_focusPreviousChild".}
proc fcQSplitter_protectedbase_sender(self: pointer): pointer {.importc: "QSplitter_protectedbase_sender".}
proc fcQSplitter_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QSplitter_protectedbase_senderSignalIndex".}
proc fcQSplitter_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QSplitter_protectedbase_receivers".}
proc fcQSplitter_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QSplitter_protectedbase_isSignalConnected".}
proc fcQSplitter_new(vtbl, vdata: pointer, parent: pointer): ptr cQSplitter {.importc: "QSplitter_new".}
proc fcQSplitter_new2(vtbl, vdata: pointer): ptr cQSplitter {.importc: "QSplitter_new2".}
proc fcQSplitter_new3(vtbl, vdata: pointer, param1: cint): ptr cQSplitter {.importc: "QSplitter_new3".}
proc fcQSplitter_new4(vtbl, vdata: pointer, param1: cint, parent: pointer): ptr cQSplitter {.importc: "QSplitter_new4".}
proc fcQSplitter_staticMetaObject(): pointer {.importc: "QSplitter_staticMetaObject".}
proc fcQSplitterHandle_metaObject(self: pointer): pointer {.importc: "QSplitterHandle_metaObject".}
proc fcQSplitterHandle_metacast(self: pointer, param1: cstring): pointer {.importc: "QSplitterHandle_metacast".}
proc fcQSplitterHandle_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSplitterHandle_metacall".}
proc fcQSplitterHandle_tr(s: cstring): struct_miqt_string {.importc: "QSplitterHandle_tr".}
proc fcQSplitterHandle_setOrientation(self: pointer, o: cint): void {.importc: "QSplitterHandle_setOrientation".}
proc fcQSplitterHandle_orientation(self: pointer): cint {.importc: "QSplitterHandle_orientation".}
proc fcQSplitterHandle_opaqueResize(self: pointer): bool {.importc: "QSplitterHandle_opaqueResize".}
proc fcQSplitterHandle_splitter(self: pointer): pointer {.importc: "QSplitterHandle_splitter".}
proc fcQSplitterHandle_sizeHint(self: pointer): pointer {.importc: "QSplitterHandle_sizeHint".}
proc fcQSplitterHandle_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSplitterHandle_tr2".}
proc fcQSplitterHandle_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSplitterHandle_tr3".}
proc fcQSplitterHandle_vtbl(self: pointer): pointer {.importc: "QSplitterHandle_vtbl".}
proc fcQSplitterHandle_vdata(self: pointer): pointer {.importc: "QSplitterHandle_vdata".}
type cQSplitterHandleVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  metric*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQSplitterHandle_virtualbase_metaObject(self: pointer): pointer {.importc: "QSplitterHandle_virtualbase_metaObject".}
proc fcQSplitterHandle_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSplitterHandle_virtualbase_metacast".}
proc fcQSplitterHandle_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSplitterHandle_virtualbase_metacall".}
proc fcQSplitterHandle_virtualbase_sizeHint(self: pointer): pointer {.importc: "QSplitterHandle_virtualbase_sizeHint".}
proc fcQSplitterHandle_virtualbase_paintEvent(self: pointer, param1: pointer): void {.importc: "QSplitterHandle_virtualbase_paintEvent".}
proc fcQSplitterHandle_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void {.importc: "QSplitterHandle_virtualbase_mouseMoveEvent".}
proc fcQSplitterHandle_virtualbase_mousePressEvent(self: pointer, param1: pointer): void {.importc: "QSplitterHandle_virtualbase_mousePressEvent".}
proc fcQSplitterHandle_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void {.importc: "QSplitterHandle_virtualbase_mouseReleaseEvent".}
proc fcQSplitterHandle_virtualbase_resizeEvent(self: pointer, param1: pointer): void {.importc: "QSplitterHandle_virtualbase_resizeEvent".}
proc fcQSplitterHandle_virtualbase_event(self: pointer, param1: pointer): bool {.importc: "QSplitterHandle_virtualbase_event".}
proc fcQSplitterHandle_virtualbase_devType(self: pointer): cint {.importc: "QSplitterHandle_virtualbase_devType".}
proc fcQSplitterHandle_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QSplitterHandle_virtualbase_setVisible".}
proc fcQSplitterHandle_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QSplitterHandle_virtualbase_minimumSizeHint".}
proc fcQSplitterHandle_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QSplitterHandle_virtualbase_heightForWidth".}
proc fcQSplitterHandle_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QSplitterHandle_virtualbase_hasHeightForWidth".}
proc fcQSplitterHandle_virtualbase_paintEngine(self: pointer): pointer {.importc: "QSplitterHandle_virtualbase_paintEngine".}
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
proc fcQSplitterHandle_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QSplitterHandle_virtualbase_nativeEvent".}
proc fcQSplitterHandle_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QSplitterHandle_virtualbase_changeEvent".}
proc fcQSplitterHandle_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QSplitterHandle_virtualbase_metric".}
proc fcQSplitterHandle_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QSplitterHandle_virtualbase_initPainter".}
proc fcQSplitterHandle_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QSplitterHandle_virtualbase_redirected".}
proc fcQSplitterHandle_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QSplitterHandle_virtualbase_sharedPainter".}
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
proc fcQSplitterHandle_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QSplitterHandle_protectedbase_updateMicroFocus".}
proc fcQSplitterHandle_protectedbase_create(self: pointer): void {.importc: "QSplitterHandle_protectedbase_create".}
proc fcQSplitterHandle_protectedbase_destroy(self: pointer): void {.importc: "QSplitterHandle_protectedbase_destroy".}
proc fcQSplitterHandle_protectedbase_focusNextChild(self: pointer): bool {.importc: "QSplitterHandle_protectedbase_focusNextChild".}
proc fcQSplitterHandle_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QSplitterHandle_protectedbase_focusPreviousChild".}
proc fcQSplitterHandle_protectedbase_sender(self: pointer): pointer {.importc: "QSplitterHandle_protectedbase_sender".}
proc fcQSplitterHandle_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QSplitterHandle_protectedbase_senderSignalIndex".}
proc fcQSplitterHandle_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QSplitterHandle_protectedbase_receivers".}
proc fcQSplitterHandle_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QSplitterHandle_protectedbase_isSignalConnected".}
proc fcQSplitterHandle_new(vtbl, vdata: pointer, o: cint, parent: pointer): ptr cQSplitterHandle {.importc: "QSplitterHandle_new".}
proc fcQSplitterHandle_staticMetaObject(): pointer {.importc: "QSplitterHandle_staticMetaObject".}

proc metaObject*(self: gen_qsplitter_types.QSplitter): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSplitter_metaObject(self.h), owned: false)

proc metacast*(self: gen_qsplitter_types.QSplitter, param1: cstring): pointer =
  fcQSplitter_metacast(self.h, param1)

proc metacall*(self: gen_qsplitter_types.QSplitter, param1: cint, param2: cint, param3: pointer): cint =
  fcQSplitter_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsplitter_types.QSplitter, s: cstring): string =
  let v_ms = fcQSplitter_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc addWidget*(self: gen_qsplitter_types.QSplitter, widget: gen_qwidget_types.QWidget): void =
  fcQSplitter_addWidget(self.h, widget.h)

proc insertWidget*(self: gen_qsplitter_types.QSplitter, index: cint, widget: gen_qwidget_types.QWidget): void =
  fcQSplitter_insertWidget(self.h, index, widget.h)

proc replaceWidget*(self: gen_qsplitter_types.QSplitter, index: cint, widget: gen_qwidget_types.QWidget): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQSplitter_replaceWidget(self.h, index, widget.h), owned: false)

proc setOrientation*(self: gen_qsplitter_types.QSplitter, orientation: cint): void =
  fcQSplitter_setOrientation(self.h, cint(orientation))

proc orientation*(self: gen_qsplitter_types.QSplitter): cint =
  cint(fcQSplitter_orientation(self.h))

proc setChildrenCollapsible*(self: gen_qsplitter_types.QSplitter, childrenCollapsible: bool): void =
  fcQSplitter_setChildrenCollapsible(self.h, childrenCollapsible)

proc childrenCollapsible*(self: gen_qsplitter_types.QSplitter): bool =
  fcQSplitter_childrenCollapsible(self.h)

proc setCollapsible*(self: gen_qsplitter_types.QSplitter, index: cint, param2: bool): void =
  fcQSplitter_setCollapsible(self.h, index, param2)

proc isCollapsible*(self: gen_qsplitter_types.QSplitter, index: cint): bool =
  fcQSplitter_isCollapsible(self.h, index)

proc setOpaqueResize*(self: gen_qsplitter_types.QSplitter): void =
  fcQSplitter_setOpaqueResize(self.h)

proc opaqueResize*(self: gen_qsplitter_types.QSplitter): bool =
  fcQSplitter_opaqueResize(self.h)

proc refresh*(self: gen_qsplitter_types.QSplitter): void =
  fcQSplitter_refresh(self.h)

proc sizeHint*(self: gen_qsplitter_types.QSplitter): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSplitter_sizeHint(self.h), owned: true)

proc minimumSizeHint*(self: gen_qsplitter_types.QSplitter): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSplitter_minimumSizeHint(self.h), owned: true)

proc sizes*(self: gen_qsplitter_types.QSplitter): seq[cint] =
  var v_ma = fcQSplitter_sizes(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  c_free(v_ma.data)
  vx_ret

proc setSizes*(self: gen_qsplitter_types.QSplitter, list: openArray[cint]): void =
  var list_CArray = newSeq[cint](len(list))
  for i in 0..<len(list):
    list_CArray[i] = list[i]

  fcQSplitter_setSizes(self.h, struct_miqt_array(len: csize_t(len(list)), data: if len(list) == 0: nil else: addr(list_CArray[0])))

proc saveState*(self: gen_qsplitter_types.QSplitter): seq[byte] =
  var v_bytearray = fcQSplitter_saveState(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc restoreState*(self: gen_qsplitter_types.QSplitter, state: openArray[byte]): bool =
  fcQSplitter_restoreState(self.h, struct_miqt_string(data: cast[cstring](if len(state) == 0: nil else: unsafeAddr state[0]), len: csize_t(len(state))))

proc handleWidth*(self: gen_qsplitter_types.QSplitter): cint =
  fcQSplitter_handleWidth(self.h)

proc setHandleWidth*(self: gen_qsplitter_types.QSplitter, handleWidth: cint): void =
  fcQSplitter_setHandleWidth(self.h, handleWidth)

proc indexOf*(self: gen_qsplitter_types.QSplitter, w: gen_qwidget_types.QWidget): cint =
  fcQSplitter_indexOf(self.h, w.h)

proc widget*(self: gen_qsplitter_types.QSplitter, index: cint): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQSplitter_widget(self.h, index), owned: false)

proc count*(self: gen_qsplitter_types.QSplitter): cint =
  fcQSplitter_count(self.h)

proc getRange*(self: gen_qsplitter_types.QSplitter, index: cint, param2: ptr cint, param3: ptr cint): void =
  fcQSplitter_getRange(self.h, index, param2, param3)

proc handle*(self: gen_qsplitter_types.QSplitter, index: cint): gen_qsplitter_types.QSplitterHandle =
  gen_qsplitter_types.QSplitterHandle(h: fcQSplitter_handle(self.h, index), owned: false)

proc setStretchFactor*(self: gen_qsplitter_types.QSplitter, index: cint, stretch: cint): void =
  fcQSplitter_setStretchFactor(self.h, index, stretch)

proc splitterMoved*(self: gen_qsplitter_types.QSplitter, pos: cint, index: cint): void =
  fcQSplitter_splitterMoved(self.h, pos, index)

type QSplittersplitterMovedSlot* = proc(pos: cint, index: cint)
proc cQSplitter_slot_callback_splitterMoved(slot: int, pos: cint, index: cint) {.cdecl.} =
  let nimfunc = cast[ptr QSplittersplitterMovedSlot](cast[pointer](slot))
  let slotval1 = pos

  let slotval2 = index

  nimfunc[](slotval1, slotval2)

proc cQSplitter_slot_callback_splitterMoved_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSplittersplitterMovedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsplitterMoved*(self: gen_qsplitter_types.QSplitter, slot: QSplittersplitterMovedSlot) =
  var tmp = new QSplittersplitterMovedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_connect_splitterMoved(self.h, cast[int](addr tmp[]), cQSplitter_slot_callback_splitterMoved, cQSplitter_slot_callback_splitterMoved_release)

proc tr*(_: type gen_qsplitter_types.QSplitter, s: cstring, c: cstring): string =
  let v_ms = fcQSplitter_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsplitter_types.QSplitter, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSplitter_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
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
type QSplitterinitStyleOptionProc* = proc(self: QSplitter, option: gen_qstyleoption_types.QStyleOptionFrame): void {.raises: [], gcsafe.}
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
type QSplitterenterEventProc* = proc(self: QSplitter, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
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
type QSplitternativeEventProc* = proc(self: QSplitter, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
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
type QSplitterVTable* {.inheritable, pure.} = object
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
  initStyleOption*: QSplitterinitStyleOptionProc
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
proc QSplittermetaObject*(self: gen_qsplitter_types.QSplitter): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSplitter_virtualbase_metaObject(self.h), owned: false)

proc cQSplitter_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSplittermetacast*(self: gen_qsplitter_types.QSplitter, param1: cstring): pointer =
  fcQSplitter_virtualbase_metacast(self.h, param1)

proc cQSplitter_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QSplittermetacall*(self: gen_qsplitter_types.QSplitter, param1: cint, param2: cint, param3: pointer): cint =
  fcQSplitter_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQSplitter_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSplittersizeHint*(self: gen_qsplitter_types.QSplitter): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSplitter_virtualbase_sizeHint(self.h), owned: true)

proc cQSplitter_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSplitterminimumSizeHint*(self: gen_qsplitter_types.QSplitter): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSplitter_virtualbase_minimumSizeHint(self.h), owned: true)

proc cQSplitter_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSplittercreateHandle*(self: gen_qsplitter_types.QSplitter): gen_qsplitter_types.QSplitterHandle =
  gen_qsplitter_types.QSplitterHandle(h: fcQSplitter_virtualbase_createHandle(self.h), owned: false)

proc cQSplitter_vtable_callback_createHandle(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  var virtualReturn = vtbl[].createHandle(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSplitterchildEvent*(self: gen_qsplitter_types.QSplitter, param1: gen_qcoreevent_types.QChildEvent): void =
  fcQSplitter_virtualbase_childEvent(self.h, param1.h)

proc cQSplitter_vtable_callback_childEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: param1, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QSplitterevent*(self: gen_qsplitter_types.QSplitter, param1: gen_qcoreevent_types.QEvent): bool =
  fcQSplitter_virtualbase_event(self.h, param1.h)

proc cQSplitter_vtable_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QSplitterresizeEvent*(self: gen_qsplitter_types.QSplitter, param1: gen_qevent_types.QResizeEvent): void =
  fcQSplitter_virtualbase_resizeEvent(self.h, param1.h)

proc cQSplitter_vtable_callback_resizeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QSplitterchangeEvent*(self: gen_qsplitter_types.QSplitter, param1: gen_qcoreevent_types.QEvent): void =
  fcQSplitter_virtualbase_changeEvent(self.h, param1.h)

proc cQSplitter_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QSplitterpaintEvent*(self: gen_qsplitter_types.QSplitter, param1: gen_qevent_types.QPaintEvent): void =
  fcQSplitter_virtualbase_paintEvent(self.h, param1.h)

proc cQSplitter_vtable_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QSplitterinitStyleOption*(self: gen_qsplitter_types.QSplitter, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fcQSplitter_virtualbase_initStyleOption(self.h, option.h)

proc cQSplitter_vtable_callback_initStyleOption(self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionFrame(h: option, owned: false)
  vtbl[].initStyleOption(self, slotval1)

proc QSplitterdevType*(self: gen_qsplitter_types.QSplitter): cint =
  fcQSplitter_virtualbase_devType(self.h)

proc cQSplitter_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QSplittersetVisible*(self: gen_qsplitter_types.QSplitter, visible: bool): void =
  fcQSplitter_virtualbase_setVisible(self.h, visible)

proc cQSplitter_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QSplitterheightForWidth*(self: gen_qsplitter_types.QSplitter, param1: cint): cint =
  fcQSplitter_virtualbase_heightForWidth(self.h, param1)

proc cQSplitter_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QSplitterhasHeightForWidth*(self: gen_qsplitter_types.QSplitter): bool =
  fcQSplitter_virtualbase_hasHeightForWidth(self.h)

proc cQSplitter_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QSplitterpaintEngine*(self: gen_qsplitter_types.QSplitter): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQSplitter_virtualbase_paintEngine(self.h), owned: false)

proc cQSplitter_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSplittermousePressEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QMouseEvent): void =
  fcQSplitter_virtualbase_mousePressEvent(self.h, event.h)

proc cQSplitter_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QSplittermouseReleaseEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QMouseEvent): void =
  fcQSplitter_virtualbase_mouseReleaseEvent(self.h, event.h)

proc cQSplitter_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QSplittermouseDoubleClickEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QMouseEvent): void =
  fcQSplitter_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc cQSplitter_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QSplittermouseMoveEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QMouseEvent): void =
  fcQSplitter_virtualbase_mouseMoveEvent(self.h, event.h)

proc cQSplitter_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QSplitterwheelEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QWheelEvent): void =
  fcQSplitter_virtualbase_wheelEvent(self.h, event.h)

proc cQSplitter_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QSplitterkeyPressEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QKeyEvent): void =
  fcQSplitter_virtualbase_keyPressEvent(self.h, event.h)

proc cQSplitter_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QSplitterkeyReleaseEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QKeyEvent): void =
  fcQSplitter_virtualbase_keyReleaseEvent(self.h, event.h)

proc cQSplitter_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QSplitterfocusInEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QFocusEvent): void =
  fcQSplitter_virtualbase_focusInEvent(self.h, event.h)

proc cQSplitter_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QSplitterfocusOutEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QFocusEvent): void =
  fcQSplitter_virtualbase_focusOutEvent(self.h, event.h)

proc cQSplitter_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QSplitterenterEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QEnterEvent): void =
  fcQSplitter_virtualbase_enterEvent(self.h, event.h)

proc cQSplitter_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QSplitterleaveEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qcoreevent_types.QEvent): void =
  fcQSplitter_virtualbase_leaveEvent(self.h, event.h)

proc cQSplitter_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QSplittermoveEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QMoveEvent): void =
  fcQSplitter_virtualbase_moveEvent(self.h, event.h)

proc cQSplitter_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QSplittercloseEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QCloseEvent): void =
  fcQSplitter_virtualbase_closeEvent(self.h, event.h)

proc cQSplitter_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QSplittercontextMenuEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QContextMenuEvent): void =
  fcQSplitter_virtualbase_contextMenuEvent(self.h, event.h)

proc cQSplitter_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QSplittertabletEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QTabletEvent): void =
  fcQSplitter_virtualbase_tabletEvent(self.h, event.h)

proc cQSplitter_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QSplitteractionEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QActionEvent): void =
  fcQSplitter_virtualbase_actionEvent(self.h, event.h)

proc cQSplitter_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QSplitterdragEnterEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QDragEnterEvent): void =
  fcQSplitter_virtualbase_dragEnterEvent(self.h, event.h)

proc cQSplitter_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QSplitterdragMoveEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QDragMoveEvent): void =
  fcQSplitter_virtualbase_dragMoveEvent(self.h, event.h)

proc cQSplitter_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QSplitterdragLeaveEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQSplitter_virtualbase_dragLeaveEvent(self.h, event.h)

proc cQSplitter_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QSplitterdropEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QDropEvent): void =
  fcQSplitter_virtualbase_dropEvent(self.h, event.h)

proc cQSplitter_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QSplittershowEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QShowEvent): void =
  fcQSplitter_virtualbase_showEvent(self.h, event.h)

proc cQSplitter_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QSplitterhideEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qevent_types.QHideEvent): void =
  fcQSplitter_virtualbase_hideEvent(self.h, event.h)

proc cQSplitter_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QSplitternativeEvent*(self: gen_qsplitter_types.QSplitter, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool =
  fcQSplitter_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc cQSplitter_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSplittermetric*(self: gen_qsplitter_types.QSplitter, param1: cint): cint =
  fcQSplitter_virtualbase_metric(self.h, cint(param1))

proc cQSplitter_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QSplitterinitPainter*(self: gen_qsplitter_types.QSplitter, painter: gen_qpainter_types.QPainter): void =
  fcQSplitter_virtualbase_initPainter(self.h, painter.h)

proc cQSplitter_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QSplitterredirected*(self: gen_qsplitter_types.QSplitter, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQSplitter_virtualbase_redirected(self.h, offset.h), owned: false)

proc cQSplitter_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSplittersharedPainter*(self: gen_qsplitter_types.QSplitter): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQSplitter_virtualbase_sharedPainter(self.h), owned: false)

proc cQSplitter_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSplitterinputMethodEvent*(self: gen_qsplitter_types.QSplitter, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQSplitter_virtualbase_inputMethodEvent(self.h, param1.h)

proc cQSplitter_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QSplitterinputMethodQuery*(self: gen_qsplitter_types.QSplitter, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSplitter_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc cQSplitter_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSplitterfocusNextPrevChild*(self: gen_qsplitter_types.QSplitter, next: bool): bool =
  fcQSplitter_virtualbase_focusNextPrevChild(self.h, next)

proc cQSplitter_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QSplittereventFilter*(self: gen_qsplitter_types.QSplitter, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSplitter_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQSplitter_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QSplittertimerEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSplitter_virtualbase_timerEvent(self.h, event.h)

proc cQSplitter_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QSplittercustomEvent*(self: gen_qsplitter_types.QSplitter, event: gen_qcoreevent_types.QEvent): void =
  fcQSplitter_virtualbase_customEvent(self.h, event.h)

proc cQSplitter_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QSplitterconnectNotify*(self: gen_qsplitter_types.QSplitter, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSplitter_virtualbase_connectNotify(self.h, signal.h)

proc cQSplitter_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QSplitterdisconnectNotify*(self: gen_qsplitter_types.QSplitter, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSplitter_virtualbase_disconnectNotify(self.h, signal.h)

proc cQSplitter_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterVTable](fcQSplitter_vdata(self))
  let self = QSplitter(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQSplitter* {.inheritable.} = ref object of QSplitter
  vtbl*: cQSplitterVTable
method metaObject*(self: VirtualQSplitter): gen_qobjectdefs_types.QMetaObject {.base.} =
  QSplittermetaObject(self[])
proc cQSplitter_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQSplitter, param1: cstring): pointer {.base.} =
  QSplittermetacast(self[], param1)
proc cQSplitter_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQSplitter, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QSplittermetacall(self[], param1, param2, param3)
proc cQSplitter_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method sizeHint*(self: VirtualQSplitter): gen_qsize_types.QSize {.base.} =
  QSplittersizeHint(self[])
proc cQSplitter_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method minimumSizeHint*(self: VirtualQSplitter): gen_qsize_types.QSize {.base.} =
  QSplitterminimumSizeHint(self[])
proc cQSplitter_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method createHandle*(self: VirtualQSplitter): gen_qsplitter_types.QSplitterHandle {.base.} =
  QSplittercreateHandle(self[])
proc cQSplitter_method_callback_createHandle(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  var virtualReturn = inst.createHandle()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method childEvent*(self: VirtualQSplitter, param1: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QSplitterchildEvent(self[], param1)
proc cQSplitter_method_callback_childEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: param1, owned: false)
  inst.childEvent(slotval1)

method event*(self: VirtualQSplitter, param1: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSplitterevent(self[], param1)
proc cQSplitter_method_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method resizeEvent*(self: VirtualQSplitter, param1: gen_qevent_types.QResizeEvent): void {.base.} =
  QSplitterresizeEvent(self[], param1)
proc cQSplitter_method_callback_resizeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  inst.resizeEvent(slotval1)

method changeEvent*(self: VirtualQSplitter, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QSplitterchangeEvent(self[], param1)
proc cQSplitter_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.changeEvent(slotval1)

method paintEvent*(self: VirtualQSplitter, param1: gen_qevent_types.QPaintEvent): void {.base.} =
  QSplitterpaintEvent(self[], param1)
proc cQSplitter_method_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  inst.paintEvent(slotval1)

method initStyleOption*(self: VirtualQSplitter, option: gen_qstyleoption_types.QStyleOptionFrame): void {.base.} =
  QSplitterinitStyleOption(self[], option)
proc cQSplitter_method_callback_initStyleOption(self: pointer, option: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  let slotval1 = gen_qstyleoption_types.QStyleOptionFrame(h: option, owned: false)
  inst.initStyleOption(slotval1)

method devType*(self: VirtualQSplitter): cint {.base.} =
  QSplitterdevType(self[])
proc cQSplitter_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

method setVisible*(self: VirtualQSplitter, visible: bool): void {.base.} =
  QSplittersetVisible(self[], visible)
proc cQSplitter_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

method heightForWidth*(self: VirtualQSplitter, param1: cint): cint {.base.} =
  QSplitterheightForWidth(self[], param1)
proc cQSplitter_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQSplitter): bool {.base.} =
  QSplitterhasHeightForWidth(self[])
proc cQSplitter_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQSplitter): gen_qpaintengine_types.QPaintEngine {.base.} =
  QSplitterpaintEngine(self[])
proc cQSplitter_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mousePressEvent*(self: VirtualQSplitter, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QSplittermousePressEvent(self[], event)
proc cQSplitter_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQSplitter, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QSplittermouseReleaseEvent(self[], event)
proc cQSplitter_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQSplitter, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QSplittermouseDoubleClickEvent(self[], event)
proc cQSplitter_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method mouseMoveEvent*(self: VirtualQSplitter, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QSplittermouseMoveEvent(self[], event)
proc cQSplitter_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

method wheelEvent*(self: VirtualQSplitter, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QSplitterwheelEvent(self[], event)
proc cQSplitter_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

method keyPressEvent*(self: VirtualQSplitter, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QSplitterkeyPressEvent(self[], event)
proc cQSplitter_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyPressEvent(slotval1)

method keyReleaseEvent*(self: VirtualQSplitter, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QSplitterkeyReleaseEvent(self[], event)
proc cQSplitter_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

method focusInEvent*(self: VirtualQSplitter, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QSplitterfocusInEvent(self[], event)
proc cQSplitter_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQSplitter, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QSplitterfocusOutEvent(self[], event)
proc cQSplitter_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

method enterEvent*(self: VirtualQSplitter, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QSplitterenterEvent(self[], event)
proc cQSplitter_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

method leaveEvent*(self: VirtualQSplitter, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QSplitterleaveEvent(self[], event)
proc cQSplitter_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

method moveEvent*(self: VirtualQSplitter, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QSplittermoveEvent(self[], event)
proc cQSplitter_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

method closeEvent*(self: VirtualQSplitter, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QSplittercloseEvent(self[], event)
proc cQSplitter_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

method contextMenuEvent*(self: VirtualQSplitter, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QSplittercontextMenuEvent(self[], event)
proc cQSplitter_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

method tabletEvent*(self: VirtualQSplitter, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QSplittertabletEvent(self[], event)
proc cQSplitter_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

method actionEvent*(self: VirtualQSplitter, event: gen_qevent_types.QActionEvent): void {.base.} =
  QSplitteractionEvent(self[], event)
proc cQSplitter_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

method dragEnterEvent*(self: VirtualQSplitter, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QSplitterdragEnterEvent(self[], event)
proc cQSplitter_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQSplitter, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QSplitterdragMoveEvent(self[], event)
proc cQSplitter_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQSplitter, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QSplitterdragLeaveEvent(self[], event)
proc cQSplitter_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQSplitter, event: gen_qevent_types.QDropEvent): void {.base.} =
  QSplitterdropEvent(self[], event)
proc cQSplitter_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

method showEvent*(self: VirtualQSplitter, event: gen_qevent_types.QShowEvent): void {.base.} =
  QSplittershowEvent(self[], event)
proc cQSplitter_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

method hideEvent*(self: VirtualQSplitter, event: gen_qevent_types.QHideEvent): void {.base.} =
  QSplitterhideEvent(self[], event)
proc cQSplitter_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

method nativeEvent*(self: VirtualQSplitter, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QSplitternativeEvent(self[], eventType, message, resultVal)
proc cQSplitter_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method metric*(self: VirtualQSplitter, param1: cint): cint {.base.} =
  QSplittermetric(self[], param1)
proc cQSplitter_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQSplitter, painter: gen_qpainter_types.QPainter): void {.base.} =
  QSplitterinitPainter(self[], painter)
proc cQSplitter_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

method redirected*(self: VirtualQSplitter, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QSplitterredirected(self[], offset)
proc cQSplitter_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQSplitter): gen_qpainter_types.QPainter {.base.} =
  QSplittersharedPainter(self[])
proc cQSplitter_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQSplitter, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QSplitterinputMethodEvent(self[], param1)
proc cQSplitter_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQSplitter, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QSplitterinputMethodQuery(self[], param1)
proc cQSplitter_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQSplitter, next: bool): bool {.base.} =
  QSplitterfocusNextPrevChild(self[], next)
proc cQSplitter_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQSplitter, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSplittereventFilter(self[], watched, event)
proc cQSplitter_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQSplitter, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QSplittertimerEvent(self[], event)
proc cQSplitter_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method customEvent*(self: VirtualQSplitter, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QSplittercustomEvent(self[], event)
proc cQSplitter_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQSplitter, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSplitterconnectNotify(self[], signal)
proc cQSplitter_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQSplitter, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSplitterdisconnectNotify(self[], signal)
proc cQSplitter_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitter](fcQSplitter_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc moveSplitter*(self: gen_qsplitter_types.QSplitter, pos: cint, index: cint): void =
  fcQSplitter_protectedbase_moveSplitter(self.h, pos, index)

proc setRubberBand*(self: gen_qsplitter_types.QSplitter, position: cint): void =
  fcQSplitter_protectedbase_setRubberBand(self.h, position)

proc closestLegalPosition*(self: gen_qsplitter_types.QSplitter, param1: cint, param2: cint): cint =
  fcQSplitter_protectedbase_closestLegalPosition(self.h, param1, param2)

proc drawFrame*(self: gen_qsplitter_types.QSplitter, param1: gen_qpainter_types.QPainter): void =
  fcQSplitter_protectedbase_drawFrame(self.h, param1.h)

proc updateMicroFocus*(self: gen_qsplitter_types.QSplitter): void =
  fcQSplitter_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qsplitter_types.QSplitter): void =
  fcQSplitter_protectedbase_create(self.h)

proc destroy*(self: gen_qsplitter_types.QSplitter): void =
  fcQSplitter_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qsplitter_types.QSplitter): bool =
  fcQSplitter_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qsplitter_types.QSplitter): bool =
  fcQSplitter_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qsplitter_types.QSplitter): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSplitter_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qsplitter_types.QSplitter): cint =
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
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSplitterVTable](fcQSplitter_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQSplitter_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQSplitter_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQSplitter_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQSplitter_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQSplitter_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].createHandle):
    vtbl[].vtbl.createHandle = cQSplitter_vtable_callback_createHandle
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQSplitter_vtable_callback_childEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQSplitter_vtable_callback_event
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQSplitter_vtable_callback_resizeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQSplitter_vtable_callback_changeEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQSplitter_vtable_callback_paintEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQSplitter_vtable_callback_initStyleOption
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQSplitter_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQSplitter_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQSplitter_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQSplitter_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQSplitter_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQSplitter_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQSplitter_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQSplitter_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQSplitter_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQSplitter_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQSplitter_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQSplitter_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQSplitter_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQSplitter_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQSplitter_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQSplitter_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQSplitter_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQSplitter_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQSplitter_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQSplitter_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQSplitter_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQSplitter_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQSplitter_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQSplitter_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQSplitter_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQSplitter_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQSplitter_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQSplitter_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQSplitter_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQSplitter_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQSplitter_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQSplitter_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQSplitter_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQSplitter_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQSplitter_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQSplitter_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQSplitter_vtable_callback_timerEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQSplitter_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQSplitter_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQSplitter_vtable_callback_disconnectNotify
  gen_qsplitter_types.QSplitter(h: fcQSplitter_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qsplitter_types.QSplitter,
    vtbl: ref QSplitterVTable = nil): gen_qsplitter_types.QSplitter =
  let vtbl = if vtbl == nil: new QSplitterVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSplitterVTable](fcQSplitter_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQSplitter_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQSplitter_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQSplitter_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQSplitter_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQSplitter_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].createHandle):
    vtbl[].vtbl.createHandle = cQSplitter_vtable_callback_createHandle
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQSplitter_vtable_callback_childEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQSplitter_vtable_callback_event
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQSplitter_vtable_callback_resizeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQSplitter_vtable_callback_changeEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQSplitter_vtable_callback_paintEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQSplitter_vtable_callback_initStyleOption
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQSplitter_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQSplitter_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQSplitter_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQSplitter_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQSplitter_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQSplitter_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQSplitter_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQSplitter_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQSplitter_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQSplitter_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQSplitter_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQSplitter_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQSplitter_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQSplitter_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQSplitter_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQSplitter_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQSplitter_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQSplitter_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQSplitter_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQSplitter_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQSplitter_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQSplitter_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQSplitter_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQSplitter_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQSplitter_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQSplitter_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQSplitter_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQSplitter_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQSplitter_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQSplitter_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQSplitter_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQSplitter_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQSplitter_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQSplitter_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQSplitter_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQSplitter_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQSplitter_vtable_callback_timerEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQSplitter_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQSplitter_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQSplitter_vtable_callback_disconnectNotify
  gen_qsplitter_types.QSplitter(h: fcQSplitter_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qsplitter_types.QSplitter,
    param1: cint,
    vtbl: ref QSplitterVTable = nil): gen_qsplitter_types.QSplitter =
  let vtbl = if vtbl == nil: new QSplitterVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSplitterVTable](fcQSplitter_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQSplitter_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQSplitter_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQSplitter_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQSplitter_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQSplitter_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].createHandle):
    vtbl[].vtbl.createHandle = cQSplitter_vtable_callback_createHandle
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQSplitter_vtable_callback_childEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQSplitter_vtable_callback_event
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQSplitter_vtable_callback_resizeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQSplitter_vtable_callback_changeEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQSplitter_vtable_callback_paintEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQSplitter_vtable_callback_initStyleOption
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQSplitter_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQSplitter_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQSplitter_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQSplitter_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQSplitter_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQSplitter_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQSplitter_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQSplitter_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQSplitter_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQSplitter_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQSplitter_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQSplitter_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQSplitter_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQSplitter_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQSplitter_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQSplitter_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQSplitter_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQSplitter_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQSplitter_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQSplitter_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQSplitter_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQSplitter_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQSplitter_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQSplitter_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQSplitter_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQSplitter_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQSplitter_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQSplitter_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQSplitter_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQSplitter_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQSplitter_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQSplitter_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQSplitter_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQSplitter_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQSplitter_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQSplitter_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQSplitter_vtable_callback_timerEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQSplitter_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQSplitter_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQSplitter_vtable_callback_disconnectNotify
  gen_qsplitter_types.QSplitter(h: fcQSplitter_new3(addr(vtbl[].vtbl), addr(vtbl[]), cint(param1)), owned: true)

proc create*(T: type gen_qsplitter_types.QSplitter,
    param1: cint, parent: gen_qwidget_types.QWidget,
    vtbl: ref QSplitterVTable = nil): gen_qsplitter_types.QSplitter =
  let vtbl = if vtbl == nil: new QSplitterVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSplitterVTable](fcQSplitter_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQSplitter_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQSplitter_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQSplitter_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQSplitter_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQSplitter_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].createHandle):
    vtbl[].vtbl.createHandle = cQSplitter_vtable_callback_createHandle
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQSplitter_vtable_callback_childEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQSplitter_vtable_callback_event
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQSplitter_vtable_callback_resizeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQSplitter_vtable_callback_changeEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQSplitter_vtable_callback_paintEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQSplitter_vtable_callback_initStyleOption
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQSplitter_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQSplitter_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQSplitter_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQSplitter_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQSplitter_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQSplitter_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQSplitter_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQSplitter_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQSplitter_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQSplitter_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQSplitter_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQSplitter_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQSplitter_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQSplitter_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQSplitter_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQSplitter_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQSplitter_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQSplitter_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQSplitter_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQSplitter_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQSplitter_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQSplitter_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQSplitter_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQSplitter_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQSplitter_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQSplitter_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQSplitter_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQSplitter_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQSplitter_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQSplitter_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQSplitter_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQSplitter_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQSplitter_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQSplitter_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQSplitter_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQSplitter_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQSplitter_vtable_callback_timerEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQSplitter_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQSplitter_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQSplitter_vtable_callback_disconnectNotify
  gen_qsplitter_types.QSplitter(h: fcQSplitter_new4(addr(vtbl[].vtbl), addr(vtbl[]), cint(param1), parent.h), owned: true)

const cQSplitter_mvtbl = cQSplitterVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQSplitter()[])](self.fcQSplitter_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQSplitter_method_callback_metaObject,
  metacast: cQSplitter_method_callback_metacast,
  metacall: cQSplitter_method_callback_metacall,
  sizeHint: cQSplitter_method_callback_sizeHint,
  minimumSizeHint: cQSplitter_method_callback_minimumSizeHint,
  createHandle: cQSplitter_method_callback_createHandle,
  childEvent: cQSplitter_method_callback_childEvent,
  event: cQSplitter_method_callback_event,
  resizeEvent: cQSplitter_method_callback_resizeEvent,
  changeEvent: cQSplitter_method_callback_changeEvent,
  paintEvent: cQSplitter_method_callback_paintEvent,
  initStyleOption: cQSplitter_method_callback_initStyleOption,
  devType: cQSplitter_method_callback_devType,
  setVisible: cQSplitter_method_callback_setVisible,
  heightForWidth: cQSplitter_method_callback_heightForWidth,
  hasHeightForWidth: cQSplitter_method_callback_hasHeightForWidth,
  paintEngine: cQSplitter_method_callback_paintEngine,
  mousePressEvent: cQSplitter_method_callback_mousePressEvent,
  mouseReleaseEvent: cQSplitter_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: cQSplitter_method_callback_mouseDoubleClickEvent,
  mouseMoveEvent: cQSplitter_method_callback_mouseMoveEvent,
  wheelEvent: cQSplitter_method_callback_wheelEvent,
  keyPressEvent: cQSplitter_method_callback_keyPressEvent,
  keyReleaseEvent: cQSplitter_method_callback_keyReleaseEvent,
  focusInEvent: cQSplitter_method_callback_focusInEvent,
  focusOutEvent: cQSplitter_method_callback_focusOutEvent,
  enterEvent: cQSplitter_method_callback_enterEvent,
  leaveEvent: cQSplitter_method_callback_leaveEvent,
  moveEvent: cQSplitter_method_callback_moveEvent,
  closeEvent: cQSplitter_method_callback_closeEvent,
  contextMenuEvent: cQSplitter_method_callback_contextMenuEvent,
  tabletEvent: cQSplitter_method_callback_tabletEvent,
  actionEvent: cQSplitter_method_callback_actionEvent,
  dragEnterEvent: cQSplitter_method_callback_dragEnterEvent,
  dragMoveEvent: cQSplitter_method_callback_dragMoveEvent,
  dragLeaveEvent: cQSplitter_method_callback_dragLeaveEvent,
  dropEvent: cQSplitter_method_callback_dropEvent,
  showEvent: cQSplitter_method_callback_showEvent,
  hideEvent: cQSplitter_method_callback_hideEvent,
  nativeEvent: cQSplitter_method_callback_nativeEvent,
  metric: cQSplitter_method_callback_metric,
  initPainter: cQSplitter_method_callback_initPainter,
  redirected: cQSplitter_method_callback_redirected,
  sharedPainter: cQSplitter_method_callback_sharedPainter,
  inputMethodEvent: cQSplitter_method_callback_inputMethodEvent,
  inputMethodQuery: cQSplitter_method_callback_inputMethodQuery,
  focusNextPrevChild: cQSplitter_method_callback_focusNextPrevChild,
  eventFilter: cQSplitter_method_callback_eventFilter,
  timerEvent: cQSplitter_method_callback_timerEvent,
  customEvent: cQSplitter_method_callback_customEvent,
  connectNotify: cQSplitter_method_callback_connectNotify,
  disconnectNotify: cQSplitter_method_callback_disconnectNotify,
)
proc create*(T: type gen_qsplitter_types.QSplitter,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQSplitter) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSplitter_new(addr(cQSplitter_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qsplitter_types.QSplitter,
    inst: VirtualQSplitter) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSplitter_new2(addr(cQSplitter_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qsplitter_types.QSplitter,
    param1: cint,
    inst: VirtualQSplitter) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSplitter_new3(addr(cQSplitter_mvtbl), addr(inst[]), cint(param1))
  inst[].owned = true

proc create*(T: type gen_qsplitter_types.QSplitter,
    param1: cint, parent: gen_qwidget_types.QWidget,
    inst: VirtualQSplitter) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSplitter_new4(addr(cQSplitter_mvtbl), addr(inst[]), cint(param1), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qsplitter_types.QSplitter): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSplitter_staticMetaObject())
proc metaObject*(self: gen_qsplitter_types.QSplitterHandle): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSplitterHandle_metaObject(self.h), owned: false)

proc metacast*(self: gen_qsplitter_types.QSplitterHandle, param1: cstring): pointer =
  fcQSplitterHandle_metacast(self.h, param1)

proc metacall*(self: gen_qsplitter_types.QSplitterHandle, param1: cint, param2: cint, param3: pointer): cint =
  fcQSplitterHandle_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsplitter_types.QSplitterHandle, s: cstring): string =
  let v_ms = fcQSplitterHandle_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setOrientation*(self: gen_qsplitter_types.QSplitterHandle, o: cint): void =
  fcQSplitterHandle_setOrientation(self.h, cint(o))

proc orientation*(self: gen_qsplitter_types.QSplitterHandle): cint =
  cint(fcQSplitterHandle_orientation(self.h))

proc opaqueResize*(self: gen_qsplitter_types.QSplitterHandle): bool =
  fcQSplitterHandle_opaqueResize(self.h)

proc splitter*(self: gen_qsplitter_types.QSplitterHandle): gen_qsplitter_types.QSplitter =
  gen_qsplitter_types.QSplitter(h: fcQSplitterHandle_splitter(self.h), owned: false)

proc sizeHint*(self: gen_qsplitter_types.QSplitterHandle): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSplitterHandle_sizeHint(self.h), owned: true)

proc tr*(_: type gen_qsplitter_types.QSplitterHandle, s: cstring, c: cstring): string =
  let v_ms = fcQSplitterHandle_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsplitter_types.QSplitterHandle, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSplitterHandle_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
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
type QSplitterHandleenterEventProc* = proc(self: QSplitterHandle, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
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
type QSplitterHandlenativeEventProc* = proc(self: QSplitterHandle, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
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
type QSplitterHandleVTable* {.inheritable, pure.} = object
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
proc QSplitterHandlemetaObject*(self: gen_qsplitter_types.QSplitterHandle): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSplitterHandle_virtualbase_metaObject(self.h), owned: false)

proc cQSplitterHandle_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSplitterHandlemetacast*(self: gen_qsplitter_types.QSplitterHandle, param1: cstring): pointer =
  fcQSplitterHandle_virtualbase_metacast(self.h, param1)

proc cQSplitterHandle_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QSplitterHandlemetacall*(self: gen_qsplitter_types.QSplitterHandle, param1: cint, param2: cint, param3: pointer): cint =
  fcQSplitterHandle_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQSplitterHandle_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSplitterHandlesizeHint*(self: gen_qsplitter_types.QSplitterHandle): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSplitterHandle_virtualbase_sizeHint(self.h), owned: true)

proc cQSplitterHandle_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSplitterHandlepaintEvent*(self: gen_qsplitter_types.QSplitterHandle, param1: gen_qevent_types.QPaintEvent): void =
  fcQSplitterHandle_virtualbase_paintEvent(self.h, param1.h)

proc cQSplitterHandle_vtable_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QSplitterHandlemouseMoveEvent*(self: gen_qsplitter_types.QSplitterHandle, param1: gen_qevent_types.QMouseEvent): void =
  fcQSplitterHandle_virtualbase_mouseMoveEvent(self.h, param1.h)

proc cQSplitterHandle_vtable_callback_mouseMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QSplitterHandlemousePressEvent*(self: gen_qsplitter_types.QSplitterHandle, param1: gen_qevent_types.QMouseEvent): void =
  fcQSplitterHandle_virtualbase_mousePressEvent(self.h, param1.h)

proc cQSplitterHandle_vtable_callback_mousePressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QSplitterHandlemouseReleaseEvent*(self: gen_qsplitter_types.QSplitterHandle, param1: gen_qevent_types.QMouseEvent): void =
  fcQSplitterHandle_virtualbase_mouseReleaseEvent(self.h, param1.h)

proc cQSplitterHandle_vtable_callback_mouseReleaseEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QSplitterHandleresizeEvent*(self: gen_qsplitter_types.QSplitterHandle, param1: gen_qevent_types.QResizeEvent): void =
  fcQSplitterHandle_virtualbase_resizeEvent(self.h, param1.h)

proc cQSplitterHandle_vtable_callback_resizeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QSplitterHandleevent*(self: gen_qsplitter_types.QSplitterHandle, param1: gen_qcoreevent_types.QEvent): bool =
  fcQSplitterHandle_virtualbase_event(self.h, param1.h)

proc cQSplitterHandle_vtable_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QSplitterHandledevType*(self: gen_qsplitter_types.QSplitterHandle): cint =
  fcQSplitterHandle_virtualbase_devType(self.h)

proc cQSplitterHandle_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QSplitterHandlesetVisible*(self: gen_qsplitter_types.QSplitterHandle, visible: bool): void =
  fcQSplitterHandle_virtualbase_setVisible(self.h, visible)

proc cQSplitterHandle_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QSplitterHandleminimumSizeHint*(self: gen_qsplitter_types.QSplitterHandle): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSplitterHandle_virtualbase_minimumSizeHint(self.h), owned: true)

proc cQSplitterHandle_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSplitterHandleheightForWidth*(self: gen_qsplitter_types.QSplitterHandle, param1: cint): cint =
  fcQSplitterHandle_virtualbase_heightForWidth(self.h, param1)

proc cQSplitterHandle_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QSplitterHandlehasHeightForWidth*(self: gen_qsplitter_types.QSplitterHandle): bool =
  fcQSplitterHandle_virtualbase_hasHeightForWidth(self.h)

proc cQSplitterHandle_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QSplitterHandlepaintEngine*(self: gen_qsplitter_types.QSplitterHandle): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQSplitterHandle_virtualbase_paintEngine(self.h), owned: false)

proc cQSplitterHandle_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSplitterHandlemouseDoubleClickEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QMouseEvent): void =
  fcQSplitterHandle_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc cQSplitterHandle_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QSplitterHandlewheelEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QWheelEvent): void =
  fcQSplitterHandle_virtualbase_wheelEvent(self.h, event.h)

proc cQSplitterHandle_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QSplitterHandlekeyPressEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QKeyEvent): void =
  fcQSplitterHandle_virtualbase_keyPressEvent(self.h, event.h)

proc cQSplitterHandle_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QSplitterHandlekeyReleaseEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QKeyEvent): void =
  fcQSplitterHandle_virtualbase_keyReleaseEvent(self.h, event.h)

proc cQSplitterHandle_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QSplitterHandlefocusInEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QFocusEvent): void =
  fcQSplitterHandle_virtualbase_focusInEvent(self.h, event.h)

proc cQSplitterHandle_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QSplitterHandlefocusOutEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QFocusEvent): void =
  fcQSplitterHandle_virtualbase_focusOutEvent(self.h, event.h)

proc cQSplitterHandle_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QSplitterHandleenterEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QEnterEvent): void =
  fcQSplitterHandle_virtualbase_enterEvent(self.h, event.h)

proc cQSplitterHandle_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QSplitterHandleleaveEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qcoreevent_types.QEvent): void =
  fcQSplitterHandle_virtualbase_leaveEvent(self.h, event.h)

proc cQSplitterHandle_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QSplitterHandlemoveEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QMoveEvent): void =
  fcQSplitterHandle_virtualbase_moveEvent(self.h, event.h)

proc cQSplitterHandle_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QSplitterHandlecloseEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QCloseEvent): void =
  fcQSplitterHandle_virtualbase_closeEvent(self.h, event.h)

proc cQSplitterHandle_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QSplitterHandlecontextMenuEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QContextMenuEvent): void =
  fcQSplitterHandle_virtualbase_contextMenuEvent(self.h, event.h)

proc cQSplitterHandle_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QSplitterHandletabletEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QTabletEvent): void =
  fcQSplitterHandle_virtualbase_tabletEvent(self.h, event.h)

proc cQSplitterHandle_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QSplitterHandleactionEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QActionEvent): void =
  fcQSplitterHandle_virtualbase_actionEvent(self.h, event.h)

proc cQSplitterHandle_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QSplitterHandledragEnterEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QDragEnterEvent): void =
  fcQSplitterHandle_virtualbase_dragEnterEvent(self.h, event.h)

proc cQSplitterHandle_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QSplitterHandledragMoveEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QDragMoveEvent): void =
  fcQSplitterHandle_virtualbase_dragMoveEvent(self.h, event.h)

proc cQSplitterHandle_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QSplitterHandledragLeaveEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQSplitterHandle_virtualbase_dragLeaveEvent(self.h, event.h)

proc cQSplitterHandle_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QSplitterHandledropEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QDropEvent): void =
  fcQSplitterHandle_virtualbase_dropEvent(self.h, event.h)

proc cQSplitterHandle_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QSplitterHandleshowEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QShowEvent): void =
  fcQSplitterHandle_virtualbase_showEvent(self.h, event.h)

proc cQSplitterHandle_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QSplitterHandlehideEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qevent_types.QHideEvent): void =
  fcQSplitterHandle_virtualbase_hideEvent(self.h, event.h)

proc cQSplitterHandle_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QSplitterHandlenativeEvent*(self: gen_qsplitter_types.QSplitterHandle, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool =
  fcQSplitterHandle_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc cQSplitterHandle_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSplitterHandlechangeEvent*(self: gen_qsplitter_types.QSplitterHandle, param1: gen_qcoreevent_types.QEvent): void =
  fcQSplitterHandle_virtualbase_changeEvent(self.h, param1.h)

proc cQSplitterHandle_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QSplitterHandlemetric*(self: gen_qsplitter_types.QSplitterHandle, param1: cint): cint =
  fcQSplitterHandle_virtualbase_metric(self.h, cint(param1))

proc cQSplitterHandle_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QSplitterHandleinitPainter*(self: gen_qsplitter_types.QSplitterHandle, painter: gen_qpainter_types.QPainter): void =
  fcQSplitterHandle_virtualbase_initPainter(self.h, painter.h)

proc cQSplitterHandle_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QSplitterHandleredirected*(self: gen_qsplitter_types.QSplitterHandle, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQSplitterHandle_virtualbase_redirected(self.h, offset.h), owned: false)

proc cQSplitterHandle_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSplitterHandlesharedPainter*(self: gen_qsplitter_types.QSplitterHandle): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQSplitterHandle_virtualbase_sharedPainter(self.h), owned: false)

proc cQSplitterHandle_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSplitterHandleinputMethodEvent*(self: gen_qsplitter_types.QSplitterHandle, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQSplitterHandle_virtualbase_inputMethodEvent(self.h, param1.h)

proc cQSplitterHandle_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QSplitterHandleinputMethodQuery*(self: gen_qsplitter_types.QSplitterHandle, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSplitterHandle_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc cQSplitterHandle_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSplitterHandlefocusNextPrevChild*(self: gen_qsplitter_types.QSplitterHandle, next: bool): bool =
  fcQSplitterHandle_virtualbase_focusNextPrevChild(self.h, next)

proc cQSplitterHandle_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QSplitterHandleeventFilter*(self: gen_qsplitter_types.QSplitterHandle, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSplitterHandle_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQSplitterHandle_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QSplitterHandletimerEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSplitterHandle_virtualbase_timerEvent(self.h, event.h)

proc cQSplitterHandle_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QSplitterHandlechildEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSplitterHandle_virtualbase_childEvent(self.h, event.h)

proc cQSplitterHandle_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QSplitterHandlecustomEvent*(self: gen_qsplitter_types.QSplitterHandle, event: gen_qcoreevent_types.QEvent): void =
  fcQSplitterHandle_virtualbase_customEvent(self.h, event.h)

proc cQSplitterHandle_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QSplitterHandleconnectNotify*(self: gen_qsplitter_types.QSplitterHandle, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSplitterHandle_virtualbase_connectNotify(self.h, signal.h)

proc cQSplitterHandle_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QSplitterHandledisconnectNotify*(self: gen_qsplitter_types.QSplitterHandle, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSplitterHandle_virtualbase_disconnectNotify(self.h, signal.h)

proc cQSplitterHandle_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
  let self = QSplitterHandle(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQSplitterHandle* {.inheritable.} = ref object of QSplitterHandle
  vtbl*: cQSplitterHandleVTable
method metaObject*(self: VirtualQSplitterHandle): gen_qobjectdefs_types.QMetaObject {.base.} =
  QSplitterHandlemetaObject(self[])
proc cQSplitterHandle_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQSplitterHandle, param1: cstring): pointer {.base.} =
  QSplitterHandlemetacast(self[], param1)
proc cQSplitterHandle_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQSplitterHandle, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QSplitterHandlemetacall(self[], param1, param2, param3)
proc cQSplitterHandle_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method sizeHint*(self: VirtualQSplitterHandle): gen_qsize_types.QSize {.base.} =
  QSplitterHandlesizeHint(self[])
proc cQSplitterHandle_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method paintEvent*(self: VirtualQSplitterHandle, param1: gen_qevent_types.QPaintEvent): void {.base.} =
  QSplitterHandlepaintEvent(self[], param1)
proc cQSplitterHandle_method_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  inst.paintEvent(slotval1)

method mouseMoveEvent*(self: VirtualQSplitterHandle, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QSplitterHandlemouseMoveEvent(self[], param1)
proc cQSplitterHandle_method_callback_mouseMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  inst.mouseMoveEvent(slotval1)

method mousePressEvent*(self: VirtualQSplitterHandle, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QSplitterHandlemousePressEvent(self[], param1)
proc cQSplitterHandle_method_callback_mousePressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  inst.mousePressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQSplitterHandle, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QSplitterHandlemouseReleaseEvent(self[], param1)
proc cQSplitterHandle_method_callback_mouseReleaseEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  inst.mouseReleaseEvent(slotval1)

method resizeEvent*(self: VirtualQSplitterHandle, param1: gen_qevent_types.QResizeEvent): void {.base.} =
  QSplitterHandleresizeEvent(self[], param1)
proc cQSplitterHandle_method_callback_resizeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  inst.resizeEvent(slotval1)

method event*(self: VirtualQSplitterHandle, param1: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSplitterHandleevent(self[], param1)
proc cQSplitterHandle_method_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method devType*(self: VirtualQSplitterHandle): cint {.base.} =
  QSplitterHandledevType(self[])
proc cQSplitterHandle_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

method setVisible*(self: VirtualQSplitterHandle, visible: bool): void {.base.} =
  QSplitterHandlesetVisible(self[], visible)
proc cQSplitterHandle_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

method minimumSizeHint*(self: VirtualQSplitterHandle): gen_qsize_types.QSize {.base.} =
  QSplitterHandleminimumSizeHint(self[])
proc cQSplitterHandle_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method heightForWidth*(self: VirtualQSplitterHandle, param1: cint): cint {.base.} =
  QSplitterHandleheightForWidth(self[], param1)
proc cQSplitterHandle_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQSplitterHandle): bool {.base.} =
  QSplitterHandlehasHeightForWidth(self[])
proc cQSplitterHandle_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQSplitterHandle): gen_qpaintengine_types.QPaintEngine {.base.} =
  QSplitterHandlepaintEngine(self[])
proc cQSplitterHandle_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mouseDoubleClickEvent*(self: VirtualQSplitterHandle, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QSplitterHandlemouseDoubleClickEvent(self[], event)
proc cQSplitterHandle_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method wheelEvent*(self: VirtualQSplitterHandle, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QSplitterHandlewheelEvent(self[], event)
proc cQSplitterHandle_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

method keyPressEvent*(self: VirtualQSplitterHandle, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QSplitterHandlekeyPressEvent(self[], event)
proc cQSplitterHandle_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyPressEvent(slotval1)

method keyReleaseEvent*(self: VirtualQSplitterHandle, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QSplitterHandlekeyReleaseEvent(self[], event)
proc cQSplitterHandle_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

method focusInEvent*(self: VirtualQSplitterHandle, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QSplitterHandlefocusInEvent(self[], event)
proc cQSplitterHandle_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQSplitterHandle, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QSplitterHandlefocusOutEvent(self[], event)
proc cQSplitterHandle_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

method enterEvent*(self: VirtualQSplitterHandle, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QSplitterHandleenterEvent(self[], event)
proc cQSplitterHandle_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

method leaveEvent*(self: VirtualQSplitterHandle, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QSplitterHandleleaveEvent(self[], event)
proc cQSplitterHandle_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

method moveEvent*(self: VirtualQSplitterHandle, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QSplitterHandlemoveEvent(self[], event)
proc cQSplitterHandle_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

method closeEvent*(self: VirtualQSplitterHandle, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QSplitterHandlecloseEvent(self[], event)
proc cQSplitterHandle_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

method contextMenuEvent*(self: VirtualQSplitterHandle, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QSplitterHandlecontextMenuEvent(self[], event)
proc cQSplitterHandle_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

method tabletEvent*(self: VirtualQSplitterHandle, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QSplitterHandletabletEvent(self[], event)
proc cQSplitterHandle_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

method actionEvent*(self: VirtualQSplitterHandle, event: gen_qevent_types.QActionEvent): void {.base.} =
  QSplitterHandleactionEvent(self[], event)
proc cQSplitterHandle_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

method dragEnterEvent*(self: VirtualQSplitterHandle, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QSplitterHandledragEnterEvent(self[], event)
proc cQSplitterHandle_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQSplitterHandle, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QSplitterHandledragMoveEvent(self[], event)
proc cQSplitterHandle_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQSplitterHandle, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QSplitterHandledragLeaveEvent(self[], event)
proc cQSplitterHandle_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQSplitterHandle, event: gen_qevent_types.QDropEvent): void {.base.} =
  QSplitterHandledropEvent(self[], event)
proc cQSplitterHandle_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

method showEvent*(self: VirtualQSplitterHandle, event: gen_qevent_types.QShowEvent): void {.base.} =
  QSplitterHandleshowEvent(self[], event)
proc cQSplitterHandle_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

method hideEvent*(self: VirtualQSplitterHandle, event: gen_qevent_types.QHideEvent): void {.base.} =
  QSplitterHandlehideEvent(self[], event)
proc cQSplitterHandle_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

method nativeEvent*(self: VirtualQSplitterHandle, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QSplitterHandlenativeEvent(self[], eventType, message, resultVal)
proc cQSplitterHandle_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method changeEvent*(self: VirtualQSplitterHandle, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QSplitterHandlechangeEvent(self[], param1)
proc cQSplitterHandle_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.changeEvent(slotval1)

method metric*(self: VirtualQSplitterHandle, param1: cint): cint {.base.} =
  QSplitterHandlemetric(self[], param1)
proc cQSplitterHandle_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQSplitterHandle, painter: gen_qpainter_types.QPainter): void {.base.} =
  QSplitterHandleinitPainter(self[], painter)
proc cQSplitterHandle_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

method redirected*(self: VirtualQSplitterHandle, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QSplitterHandleredirected(self[], offset)
proc cQSplitterHandle_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQSplitterHandle): gen_qpainter_types.QPainter {.base.} =
  QSplitterHandlesharedPainter(self[])
proc cQSplitterHandle_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQSplitterHandle, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QSplitterHandleinputMethodEvent(self[], param1)
proc cQSplitterHandle_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQSplitterHandle, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QSplitterHandleinputMethodQuery(self[], param1)
proc cQSplitterHandle_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQSplitterHandle, next: bool): bool {.base.} =
  QSplitterHandlefocusNextPrevChild(self[], next)
proc cQSplitterHandle_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQSplitterHandle, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSplitterHandleeventFilter(self[], watched, event)
proc cQSplitterHandle_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQSplitterHandle, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QSplitterHandletimerEvent(self[], event)
proc cQSplitterHandle_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQSplitterHandle, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QSplitterHandlechildEvent(self[], event)
proc cQSplitterHandle_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQSplitterHandle, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QSplitterHandlecustomEvent(self[], event)
proc cQSplitterHandle_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQSplitterHandle, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSplitterHandleconnectNotify(self[], signal)
proc cQSplitterHandle_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQSplitterHandle, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSplitterHandledisconnectNotify(self[], signal)
proc cQSplitterHandle_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplitterHandle](fcQSplitterHandle_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc moveSplitter*(self: gen_qsplitter_types.QSplitterHandle, p: cint): void =
  fcQSplitterHandle_protectedbase_moveSplitter(self.h, p)

proc closestLegalPosition*(self: gen_qsplitter_types.QSplitterHandle, p: cint): cint =
  fcQSplitterHandle_protectedbase_closestLegalPosition(self.h, p)

proc updateMicroFocus*(self: gen_qsplitter_types.QSplitterHandle): void =
  fcQSplitterHandle_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qsplitter_types.QSplitterHandle): void =
  fcQSplitterHandle_protectedbase_create(self.h)

proc destroy*(self: gen_qsplitter_types.QSplitterHandle): void =
  fcQSplitterHandle_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qsplitter_types.QSplitterHandle): bool =
  fcQSplitterHandle_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qsplitter_types.QSplitterHandle): bool =
  fcQSplitterHandle_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qsplitter_types.QSplitterHandle): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSplitterHandle_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qsplitter_types.QSplitterHandle): cint =
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
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSplitterHandleVTable](fcQSplitterHandle_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQSplitterHandle_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQSplitterHandle_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQSplitterHandle_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQSplitterHandle_vtable_callback_sizeHint
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQSplitterHandle_vtable_callback_paintEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQSplitterHandle_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQSplitterHandle_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQSplitterHandle_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQSplitterHandle_vtable_callback_resizeEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQSplitterHandle_vtable_callback_event
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQSplitterHandle_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQSplitterHandle_vtable_callback_setVisible
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQSplitterHandle_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQSplitterHandle_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQSplitterHandle_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQSplitterHandle_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQSplitterHandle_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQSplitterHandle_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQSplitterHandle_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQSplitterHandle_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQSplitterHandle_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQSplitterHandle_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQSplitterHandle_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQSplitterHandle_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQSplitterHandle_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQSplitterHandle_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQSplitterHandle_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQSplitterHandle_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQSplitterHandle_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQSplitterHandle_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQSplitterHandle_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQSplitterHandle_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQSplitterHandle_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQSplitterHandle_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQSplitterHandle_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQSplitterHandle_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQSplitterHandle_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQSplitterHandle_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQSplitterHandle_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQSplitterHandle_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQSplitterHandle_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQSplitterHandle_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQSplitterHandle_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQSplitterHandle_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQSplitterHandle_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQSplitterHandle_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQSplitterHandle_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQSplitterHandle_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQSplitterHandle_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQSplitterHandle_vtable_callback_disconnectNotify
  gen_qsplitter_types.QSplitterHandle(h: fcQSplitterHandle_new(addr(vtbl[].vtbl), addr(vtbl[]), cint(o), parent.h), owned: true)

const cQSplitterHandle_mvtbl = cQSplitterHandleVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQSplitterHandle()[])](self.fcQSplitterHandle_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQSplitterHandle_method_callback_metaObject,
  metacast: cQSplitterHandle_method_callback_metacast,
  metacall: cQSplitterHandle_method_callback_metacall,
  sizeHint: cQSplitterHandle_method_callback_sizeHint,
  paintEvent: cQSplitterHandle_method_callback_paintEvent,
  mouseMoveEvent: cQSplitterHandle_method_callback_mouseMoveEvent,
  mousePressEvent: cQSplitterHandle_method_callback_mousePressEvent,
  mouseReleaseEvent: cQSplitterHandle_method_callback_mouseReleaseEvent,
  resizeEvent: cQSplitterHandle_method_callback_resizeEvent,
  event: cQSplitterHandle_method_callback_event,
  devType: cQSplitterHandle_method_callback_devType,
  setVisible: cQSplitterHandle_method_callback_setVisible,
  minimumSizeHint: cQSplitterHandle_method_callback_minimumSizeHint,
  heightForWidth: cQSplitterHandle_method_callback_heightForWidth,
  hasHeightForWidth: cQSplitterHandle_method_callback_hasHeightForWidth,
  paintEngine: cQSplitterHandle_method_callback_paintEngine,
  mouseDoubleClickEvent: cQSplitterHandle_method_callback_mouseDoubleClickEvent,
  wheelEvent: cQSplitterHandle_method_callback_wheelEvent,
  keyPressEvent: cQSplitterHandle_method_callback_keyPressEvent,
  keyReleaseEvent: cQSplitterHandle_method_callback_keyReleaseEvent,
  focusInEvent: cQSplitterHandle_method_callback_focusInEvent,
  focusOutEvent: cQSplitterHandle_method_callback_focusOutEvent,
  enterEvent: cQSplitterHandle_method_callback_enterEvent,
  leaveEvent: cQSplitterHandle_method_callback_leaveEvent,
  moveEvent: cQSplitterHandle_method_callback_moveEvent,
  closeEvent: cQSplitterHandle_method_callback_closeEvent,
  contextMenuEvent: cQSplitterHandle_method_callback_contextMenuEvent,
  tabletEvent: cQSplitterHandle_method_callback_tabletEvent,
  actionEvent: cQSplitterHandle_method_callback_actionEvent,
  dragEnterEvent: cQSplitterHandle_method_callback_dragEnterEvent,
  dragMoveEvent: cQSplitterHandle_method_callback_dragMoveEvent,
  dragLeaveEvent: cQSplitterHandle_method_callback_dragLeaveEvent,
  dropEvent: cQSplitterHandle_method_callback_dropEvent,
  showEvent: cQSplitterHandle_method_callback_showEvent,
  hideEvent: cQSplitterHandle_method_callback_hideEvent,
  nativeEvent: cQSplitterHandle_method_callback_nativeEvent,
  changeEvent: cQSplitterHandle_method_callback_changeEvent,
  metric: cQSplitterHandle_method_callback_metric,
  initPainter: cQSplitterHandle_method_callback_initPainter,
  redirected: cQSplitterHandle_method_callback_redirected,
  sharedPainter: cQSplitterHandle_method_callback_sharedPainter,
  inputMethodEvent: cQSplitterHandle_method_callback_inputMethodEvent,
  inputMethodQuery: cQSplitterHandle_method_callback_inputMethodQuery,
  focusNextPrevChild: cQSplitterHandle_method_callback_focusNextPrevChild,
  eventFilter: cQSplitterHandle_method_callback_eventFilter,
  timerEvent: cQSplitterHandle_method_callback_timerEvent,
  childEvent: cQSplitterHandle_method_callback_childEvent,
  customEvent: cQSplitterHandle_method_callback_customEvent,
  connectNotify: cQSplitterHandle_method_callback_connectNotify,
  disconnectNotify: cQSplitterHandle_method_callback_disconnectNotify,
)
proc create*(T: type gen_qsplitter_types.QSplitterHandle,
    o: cint, parent: gen_qsplitter_types.QSplitter,
    inst: VirtualQSplitterHandle) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSplitterHandle_new(addr(cQSplitterHandle_mvtbl), addr(inst[]), cint(o), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qsplitter_types.QSplitterHandle): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSplitterHandle_staticMetaObject())
