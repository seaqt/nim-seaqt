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
{.compile("gen_qmdiarea.cpp", cflags).}


type QMdiAreaAreaOptionEnum* = distinct cint
template DontMaximizeSubWindowOnActivation*(_: type QMdiAreaAreaOptionEnum): untyped = 1


type QMdiAreaWindowOrderEnum* = distinct cint
template CreationOrder*(_: type QMdiAreaWindowOrderEnum): untyped = 0
template StackingOrder*(_: type QMdiAreaWindowOrderEnum): untyped = 1
template ActivationHistoryOrder*(_: type QMdiAreaWindowOrderEnum): untyped = 2


type QMdiAreaViewModeEnum* = distinct cint
template SubWindowView*(_: type QMdiAreaViewModeEnum): untyped = 0
template TabbedView*(_: type QMdiAreaViewModeEnum): untyped = 1


import ./gen_qmdiarea_types
export gen_qmdiarea_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmargins_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qbrush_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qpaintdevice_types,
  ../QtGui/gen_qpaintengine_types,
  ../QtGui/gen_qpainter_types,
  ./gen_qabstractscrollarea,
  ./gen_qmdisubwindow_types,
  ./gen_qstyleoption_types,
  ./gen_qwidget_types
export
  gen_qcoreevent_types,
  gen_qmargins_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qsize_types,
  gen_qvariant_types,
  gen_qbrush_types,
  gen_qevent_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qabstractscrollarea,
  gen_qmdisubwindow_types,
  gen_qstyleoption_types,
  gen_qwidget_types

type cQMdiArea*{.exportc: "QMdiArea", incompleteStruct.} = object

proc fcQMdiArea_metaObject(self: pointer, ): pointer {.importc: "QMdiArea_metaObject".}
proc fcQMdiArea_metacast(self: pointer, param1: cstring): pointer {.importc: "QMdiArea_metacast".}
proc fcQMdiArea_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMdiArea_metacall".}
proc fcQMdiArea_tr(s: cstring): struct_miqt_string {.importc: "QMdiArea_tr".}
proc fcQMdiArea_sizeHint(self: pointer, ): pointer {.importc: "QMdiArea_sizeHint".}
proc fcQMdiArea_minimumSizeHint(self: pointer, ): pointer {.importc: "QMdiArea_minimumSizeHint".}
proc fcQMdiArea_currentSubWindow(self: pointer, ): pointer {.importc: "QMdiArea_currentSubWindow".}
proc fcQMdiArea_activeSubWindow(self: pointer, ): pointer {.importc: "QMdiArea_activeSubWindow".}
proc fcQMdiArea_subWindowList(self: pointer, ): struct_miqt_array {.importc: "QMdiArea_subWindowList".}
proc fcQMdiArea_addSubWindow(self: pointer, widget: pointer): pointer {.importc: "QMdiArea_addSubWindow".}
proc fcQMdiArea_removeSubWindow(self: pointer, widget: pointer): void {.importc: "QMdiArea_removeSubWindow".}
proc fcQMdiArea_background(self: pointer, ): pointer {.importc: "QMdiArea_background".}
proc fcQMdiArea_setBackground(self: pointer, background: pointer): void {.importc: "QMdiArea_setBackground".}
proc fcQMdiArea_activationOrder(self: pointer, ): cint {.importc: "QMdiArea_activationOrder".}
proc fcQMdiArea_setActivationOrder(self: pointer, order: cint): void {.importc: "QMdiArea_setActivationOrder".}
proc fcQMdiArea_setOption(self: pointer, option: cint): void {.importc: "QMdiArea_setOption".}
proc fcQMdiArea_testOption(self: pointer, opton: cint): bool {.importc: "QMdiArea_testOption".}
proc fcQMdiArea_setViewMode(self: pointer, mode: cint): void {.importc: "QMdiArea_setViewMode".}
proc fcQMdiArea_viewMode(self: pointer, ): cint {.importc: "QMdiArea_viewMode".}
proc fcQMdiArea_documentMode(self: pointer, ): bool {.importc: "QMdiArea_documentMode".}
proc fcQMdiArea_setDocumentMode(self: pointer, enabled: bool): void {.importc: "QMdiArea_setDocumentMode".}
proc fcQMdiArea_setTabsClosable(self: pointer, closable: bool): void {.importc: "QMdiArea_setTabsClosable".}
proc fcQMdiArea_tabsClosable(self: pointer, ): bool {.importc: "QMdiArea_tabsClosable".}
proc fcQMdiArea_setTabsMovable(self: pointer, movable: bool): void {.importc: "QMdiArea_setTabsMovable".}
proc fcQMdiArea_tabsMovable(self: pointer, ): bool {.importc: "QMdiArea_tabsMovable".}
proc fcQMdiArea_setTabShape(self: pointer, shape: cint): void {.importc: "QMdiArea_setTabShape".}
proc fcQMdiArea_tabShape(self: pointer, ): cint {.importc: "QMdiArea_tabShape".}
proc fcQMdiArea_setTabPosition(self: pointer, position: cint): void {.importc: "QMdiArea_setTabPosition".}
proc fcQMdiArea_tabPosition(self: pointer, ): cint {.importc: "QMdiArea_tabPosition".}
proc fcQMdiArea_subWindowActivated(self: pointer, param1: pointer): void {.importc: "QMdiArea_subWindowActivated".}
proc fcQMdiArea_connect_subWindowActivated(self: pointer, slot: int, callback: proc (slot: int, param1: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMdiArea_connect_subWindowActivated".}
proc fcQMdiArea_setActiveSubWindow(self: pointer, window: pointer): void {.importc: "QMdiArea_setActiveSubWindow".}
proc fcQMdiArea_tileSubWindows(self: pointer, ): void {.importc: "QMdiArea_tileSubWindows".}
proc fcQMdiArea_cascadeSubWindows(self: pointer, ): void {.importc: "QMdiArea_cascadeSubWindows".}
proc fcQMdiArea_closeActiveSubWindow(self: pointer, ): void {.importc: "QMdiArea_closeActiveSubWindow".}
proc fcQMdiArea_closeAllSubWindows(self: pointer, ): void {.importc: "QMdiArea_closeAllSubWindows".}
proc fcQMdiArea_activateNextSubWindow(self: pointer, ): void {.importc: "QMdiArea_activateNextSubWindow".}
proc fcQMdiArea_activatePreviousSubWindow(self: pointer, ): void {.importc: "QMdiArea_activatePreviousSubWindow".}
proc fcQMdiArea_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMdiArea_tr2".}
proc fcQMdiArea_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMdiArea_tr3".}
proc fcQMdiArea_subWindowList1(self: pointer, order: cint): struct_miqt_array {.importc: "QMdiArea_subWindowList1".}
proc fcQMdiArea_addSubWindow2(self: pointer, widget: pointer, flags: cint): pointer {.importc: "QMdiArea_addSubWindow2".}
proc fcQMdiArea_setOption2(self: pointer, option: cint, on: bool): void {.importc: "QMdiArea_setOption2".}
type cQMdiAreaVTable = object
  destructor*: proc(vtbl: ptr cQMdiAreaVTable, self: ptr cQMdiArea) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setupViewport*: proc(vtbl, self: pointer, viewport: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, objectVal: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, paintEvent: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, childEvent: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, resizeEvent: pointer): void {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, timerEvent: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, showEvent: pointer): void {.cdecl, raises: [], gcsafe.}
  viewportEvent*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  scrollContentsBy*: proc(vtbl, self: pointer, dx: cint, dy: cint): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  viewportSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  initStyleOption*: proc(vtbl, self: pointer, option: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(vtbl, self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQMdiArea_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QMdiArea_virtualbase_metaObject".}
proc fcQMdiArea_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QMdiArea_virtualbase_metacast".}
proc fcQMdiArea_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMdiArea_virtualbase_metacall".}
proc fcQMdiArea_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QMdiArea_virtualbase_sizeHint".}
proc fcQMdiArea_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QMdiArea_virtualbase_minimumSizeHint".}
proc fcQMdiArea_virtualbase_setupViewport(self: pointer, viewport: pointer): void {.importc: "QMdiArea_virtualbase_setupViewport".}
proc fcQMdiArea_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QMdiArea_virtualbase_event".}
proc fcQMdiArea_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool {.importc: "QMdiArea_virtualbase_eventFilter".}
proc fcQMdiArea_virtualbase_paintEvent(self: pointer, paintEvent: pointer): void {.importc: "QMdiArea_virtualbase_paintEvent".}
proc fcQMdiArea_virtualbase_childEvent(self: pointer, childEvent: pointer): void {.importc: "QMdiArea_virtualbase_childEvent".}
proc fcQMdiArea_virtualbase_resizeEvent(self: pointer, resizeEvent: pointer): void {.importc: "QMdiArea_virtualbase_resizeEvent".}
proc fcQMdiArea_virtualbase_timerEvent(self: pointer, timerEvent: pointer): void {.importc: "QMdiArea_virtualbase_timerEvent".}
proc fcQMdiArea_virtualbase_showEvent(self: pointer, showEvent: pointer): void {.importc: "QMdiArea_virtualbase_showEvent".}
proc fcQMdiArea_virtualbase_viewportEvent(self: pointer, event: pointer): bool {.importc: "QMdiArea_virtualbase_viewportEvent".}
proc fcQMdiArea_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.importc: "QMdiArea_virtualbase_scrollContentsBy".}
proc fcQMdiArea_virtualbase_mousePressEvent(self: pointer, param1: pointer): void {.importc: "QMdiArea_virtualbase_mousePressEvent".}
proc fcQMdiArea_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void {.importc: "QMdiArea_virtualbase_mouseReleaseEvent".}
proc fcQMdiArea_virtualbase_mouseDoubleClickEvent(self: pointer, param1: pointer): void {.importc: "QMdiArea_virtualbase_mouseDoubleClickEvent".}
proc fcQMdiArea_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void {.importc: "QMdiArea_virtualbase_mouseMoveEvent".}
proc fcQMdiArea_virtualbase_wheelEvent(self: pointer, param1: pointer): void {.importc: "QMdiArea_virtualbase_wheelEvent".}
proc fcQMdiArea_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void {.importc: "QMdiArea_virtualbase_contextMenuEvent".}
proc fcQMdiArea_virtualbase_dragEnterEvent(self: pointer, param1: pointer): void {.importc: "QMdiArea_virtualbase_dragEnterEvent".}
proc fcQMdiArea_virtualbase_dragMoveEvent(self: pointer, param1: pointer): void {.importc: "QMdiArea_virtualbase_dragMoveEvent".}
proc fcQMdiArea_virtualbase_dragLeaveEvent(self: pointer, param1: pointer): void {.importc: "QMdiArea_virtualbase_dragLeaveEvent".}
proc fcQMdiArea_virtualbase_dropEvent(self: pointer, param1: pointer): void {.importc: "QMdiArea_virtualbase_dropEvent".}
proc fcQMdiArea_virtualbase_keyPressEvent(self: pointer, param1: pointer): void {.importc: "QMdiArea_virtualbase_keyPressEvent".}
proc fcQMdiArea_virtualbase_viewportSizeHint(self: pointer, ): pointer {.importc: "QMdiArea_virtualbase_viewportSizeHint".}
proc fcQMdiArea_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QMdiArea_virtualbase_changeEvent".}
proc fcQMdiArea_virtualbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QMdiArea_virtualbase_initStyleOption".}
proc fcQMdiArea_virtualbase_devType(self: pointer, ): cint {.importc: "QMdiArea_virtualbase_devType".}
proc fcQMdiArea_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QMdiArea_virtualbase_setVisible".}
proc fcQMdiArea_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QMdiArea_virtualbase_heightForWidth".}
proc fcQMdiArea_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QMdiArea_virtualbase_hasHeightForWidth".}
proc fcQMdiArea_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QMdiArea_virtualbase_paintEngine".}
proc fcQMdiArea_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QMdiArea_virtualbase_keyReleaseEvent".}
proc fcQMdiArea_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QMdiArea_virtualbase_focusInEvent".}
proc fcQMdiArea_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QMdiArea_virtualbase_focusOutEvent".}
proc fcQMdiArea_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QMdiArea_virtualbase_enterEvent".}
proc fcQMdiArea_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QMdiArea_virtualbase_leaveEvent".}
proc fcQMdiArea_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QMdiArea_virtualbase_moveEvent".}
proc fcQMdiArea_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QMdiArea_virtualbase_closeEvent".}
proc fcQMdiArea_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QMdiArea_virtualbase_tabletEvent".}
proc fcQMdiArea_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QMdiArea_virtualbase_actionEvent".}
proc fcQMdiArea_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QMdiArea_virtualbase_hideEvent".}
proc fcQMdiArea_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QMdiArea_virtualbase_nativeEvent".}
proc fcQMdiArea_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QMdiArea_virtualbase_metric".}
proc fcQMdiArea_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QMdiArea_virtualbase_initPainter".}
proc fcQMdiArea_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QMdiArea_virtualbase_redirected".}
proc fcQMdiArea_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QMdiArea_virtualbase_sharedPainter".}
proc fcQMdiArea_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QMdiArea_virtualbase_inputMethodEvent".}
proc fcQMdiArea_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QMdiArea_virtualbase_inputMethodQuery".}
proc fcQMdiArea_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QMdiArea_virtualbase_focusNextPrevChild".}
proc fcQMdiArea_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QMdiArea_virtualbase_customEvent".}
proc fcQMdiArea_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QMdiArea_virtualbase_connectNotify".}
proc fcQMdiArea_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QMdiArea_virtualbase_disconnectNotify".}
proc fcQMdiArea_protectedbase_setViewportMargins(self: pointer, left: cint, top: cint, right: cint, bottom: cint): void {.importc: "QMdiArea_protectedbase_setViewportMargins".}
proc fcQMdiArea_protectedbase_viewportMargins(self: pointer, ): pointer {.importc: "QMdiArea_protectedbase_viewportMargins".}
proc fcQMdiArea_protectedbase_drawFrame(self: pointer, param1: pointer): void {.importc: "QMdiArea_protectedbase_drawFrame".}
proc fcQMdiArea_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QMdiArea_protectedbase_updateMicroFocus".}
proc fcQMdiArea_protectedbase_create(self: pointer, ): void {.importc: "QMdiArea_protectedbase_create".}
proc fcQMdiArea_protectedbase_destroy(self: pointer, ): void {.importc: "QMdiArea_protectedbase_destroy".}
proc fcQMdiArea_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QMdiArea_protectedbase_focusNextChild".}
proc fcQMdiArea_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QMdiArea_protectedbase_focusPreviousChild".}
proc fcQMdiArea_protectedbase_sender(self: pointer, ): pointer {.importc: "QMdiArea_protectedbase_sender".}
proc fcQMdiArea_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QMdiArea_protectedbase_senderSignalIndex".}
proc fcQMdiArea_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QMdiArea_protectedbase_receivers".}
proc fcQMdiArea_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QMdiArea_protectedbase_isSignalConnected".}
proc fcQMdiArea_new(vtbl: pointer, parent: pointer): ptr cQMdiArea {.importc: "QMdiArea_new".}
proc fcQMdiArea_new2(vtbl: pointer, ): ptr cQMdiArea {.importc: "QMdiArea_new2".}
proc fcQMdiArea_staticMetaObject(): pointer {.importc: "QMdiArea_staticMetaObject".}
proc fcQMdiArea_delete(self: pointer) {.importc: "QMdiArea_delete".}

proc metaObject*(self: gen_qmdiarea_types.QMdiArea, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMdiArea_metaObject(self.h))

proc metacast*(self: gen_qmdiarea_types.QMdiArea, param1: cstring): pointer =
  fcQMdiArea_metacast(self.h, param1)

proc metacall*(self: gen_qmdiarea_types.QMdiArea, param1: cint, param2: cint, param3: pointer): cint =
  fcQMdiArea_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qmdiarea_types.QMdiArea, s: cstring): string =
  let v_ms = fcQMdiArea_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sizeHint*(self: gen_qmdiarea_types.QMdiArea, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQMdiArea_sizeHint(self.h))

proc minimumSizeHint*(self: gen_qmdiarea_types.QMdiArea, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQMdiArea_minimumSizeHint(self.h))

proc currentSubWindow*(self: gen_qmdiarea_types.QMdiArea, ): gen_qmdisubwindow_types.QMdiSubWindow =
  gen_qmdisubwindow_types.QMdiSubWindow(h: fcQMdiArea_currentSubWindow(self.h))

proc activeSubWindow*(self: gen_qmdiarea_types.QMdiArea, ): gen_qmdisubwindow_types.QMdiSubWindow =
  gen_qmdisubwindow_types.QMdiSubWindow(h: fcQMdiArea_activeSubWindow(self.h))

proc subWindowList*(self: gen_qmdiarea_types.QMdiArea, ): seq[gen_qmdisubwindow_types.QMdiSubWindow] =
  var v_ma = fcQMdiArea_subWindowList(self.h)
  var vx_ret = newSeq[gen_qmdisubwindow_types.QMdiSubWindow](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qmdisubwindow_types.QMdiSubWindow(h: v_outCast[i])
  vx_ret

proc addSubWindow*(self: gen_qmdiarea_types.QMdiArea, widget: gen_qwidget_types.QWidget): gen_qmdisubwindow_types.QMdiSubWindow =
  gen_qmdisubwindow_types.QMdiSubWindow(h: fcQMdiArea_addSubWindow(self.h, widget.h))

proc removeSubWindow*(self: gen_qmdiarea_types.QMdiArea, widget: gen_qwidget_types.QWidget): void =
  fcQMdiArea_removeSubWindow(self.h, widget.h)

proc background*(self: gen_qmdiarea_types.QMdiArea, ): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQMdiArea_background(self.h))

proc setBackground*(self: gen_qmdiarea_types.QMdiArea, background: gen_qbrush_types.QBrush): void =
  fcQMdiArea_setBackground(self.h, background.h)

proc activationOrder*(self: gen_qmdiarea_types.QMdiArea, ): cint =
  cint(fcQMdiArea_activationOrder(self.h))

proc setActivationOrder*(self: gen_qmdiarea_types.QMdiArea, order: cint): void =
  fcQMdiArea_setActivationOrder(self.h, cint(order))

proc setOption*(self: gen_qmdiarea_types.QMdiArea, option: cint): void =
  fcQMdiArea_setOption(self.h, cint(option))

proc testOption*(self: gen_qmdiarea_types.QMdiArea, opton: cint): bool =
  fcQMdiArea_testOption(self.h, cint(opton))

proc setViewMode*(self: gen_qmdiarea_types.QMdiArea, mode: cint): void =
  fcQMdiArea_setViewMode(self.h, cint(mode))

proc viewMode*(self: gen_qmdiarea_types.QMdiArea, ): cint =
  cint(fcQMdiArea_viewMode(self.h))

proc documentMode*(self: gen_qmdiarea_types.QMdiArea, ): bool =
  fcQMdiArea_documentMode(self.h)

proc setDocumentMode*(self: gen_qmdiarea_types.QMdiArea, enabled: bool): void =
  fcQMdiArea_setDocumentMode(self.h, enabled)

proc setTabsClosable*(self: gen_qmdiarea_types.QMdiArea, closable: bool): void =
  fcQMdiArea_setTabsClosable(self.h, closable)

proc tabsClosable*(self: gen_qmdiarea_types.QMdiArea, ): bool =
  fcQMdiArea_tabsClosable(self.h)

proc setTabsMovable*(self: gen_qmdiarea_types.QMdiArea, movable: bool): void =
  fcQMdiArea_setTabsMovable(self.h, movable)

proc tabsMovable*(self: gen_qmdiarea_types.QMdiArea, ): bool =
  fcQMdiArea_tabsMovable(self.h)

proc setTabShape*(self: gen_qmdiarea_types.QMdiArea, shape: cint): void =
  fcQMdiArea_setTabShape(self.h, cint(shape))

proc tabShape*(self: gen_qmdiarea_types.QMdiArea, ): cint =
  cint(fcQMdiArea_tabShape(self.h))

proc setTabPosition*(self: gen_qmdiarea_types.QMdiArea, position: cint): void =
  fcQMdiArea_setTabPosition(self.h, cint(position))

proc tabPosition*(self: gen_qmdiarea_types.QMdiArea, ): cint =
  cint(fcQMdiArea_tabPosition(self.h))

proc subWindowActivated*(self: gen_qmdiarea_types.QMdiArea, param1: gen_qmdisubwindow_types.QMdiSubWindow): void =
  fcQMdiArea_subWindowActivated(self.h, param1.h)

type QMdiAreasubWindowActivatedSlot* = proc(param1: gen_qmdisubwindow_types.QMdiSubWindow)
proc miqt_exec_callback_cQMdiArea_subWindowActivated(slot: int, param1: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QMdiAreasubWindowActivatedSlot](cast[pointer](slot))
  let slotval1 = gen_qmdisubwindow_types.QMdiSubWindow(h: param1)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQMdiArea_subWindowActivated_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMdiAreasubWindowActivatedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsubWindowActivated*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreasubWindowActivatedSlot) =
  var tmp = new QMdiAreasubWindowActivatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_connect_subWindowActivated(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQMdiArea_subWindowActivated, miqt_exec_callback_cQMdiArea_subWindowActivated_release)

proc setActiveSubWindow*(self: gen_qmdiarea_types.QMdiArea, window: gen_qmdisubwindow_types.QMdiSubWindow): void =
  fcQMdiArea_setActiveSubWindow(self.h, window.h)

proc tileSubWindows*(self: gen_qmdiarea_types.QMdiArea, ): void =
  fcQMdiArea_tileSubWindows(self.h)

proc cascadeSubWindows*(self: gen_qmdiarea_types.QMdiArea, ): void =
  fcQMdiArea_cascadeSubWindows(self.h)

proc closeActiveSubWindow*(self: gen_qmdiarea_types.QMdiArea, ): void =
  fcQMdiArea_closeActiveSubWindow(self.h)

proc closeAllSubWindows*(self: gen_qmdiarea_types.QMdiArea, ): void =
  fcQMdiArea_closeAllSubWindows(self.h)

proc activateNextSubWindow*(self: gen_qmdiarea_types.QMdiArea, ): void =
  fcQMdiArea_activateNextSubWindow(self.h)

proc activatePreviousSubWindow*(self: gen_qmdiarea_types.QMdiArea, ): void =
  fcQMdiArea_activatePreviousSubWindow(self.h)

proc tr*(_: type gen_qmdiarea_types.QMdiArea, s: cstring, c: cstring): string =
  let v_ms = fcQMdiArea_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qmdiarea_types.QMdiArea, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMdiArea_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc subWindowList*(self: gen_qmdiarea_types.QMdiArea, order: cint): seq[gen_qmdisubwindow_types.QMdiSubWindow] =
  var v_ma = fcQMdiArea_subWindowList1(self.h, cint(order))
  var vx_ret = newSeq[gen_qmdisubwindow_types.QMdiSubWindow](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qmdisubwindow_types.QMdiSubWindow(h: v_outCast[i])
  vx_ret

proc addSubWindow*(self: gen_qmdiarea_types.QMdiArea, widget: gen_qwidget_types.QWidget, flags: cint): gen_qmdisubwindow_types.QMdiSubWindow =
  gen_qmdisubwindow_types.QMdiSubWindow(h: fcQMdiArea_addSubWindow2(self.h, widget.h, cint(flags)))

proc setOption*(self: gen_qmdiarea_types.QMdiArea, option: cint, on: bool): void =
  fcQMdiArea_setOption2(self.h, cint(option), on)

type QMdiAreametaObjectProc* = proc(self: QMdiArea): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QMdiAreametacastProc* = proc(self: QMdiArea, param1: cstring): pointer {.raises: [], gcsafe.}
type QMdiAreametacallProc* = proc(self: QMdiArea, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QMdiAreasizeHintProc* = proc(self: QMdiArea): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QMdiAreaminimumSizeHintProc* = proc(self: QMdiArea): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QMdiAreasetupViewportProc* = proc(self: QMdiArea, viewport: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QMdiAreaeventProc* = proc(self: QMdiArea, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QMdiAreaeventFilterProc* = proc(self: QMdiArea, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QMdiAreapaintEventProc* = proc(self: QMdiArea, paintEvent: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QMdiAreachildEventProc* = proc(self: QMdiArea, childEvent: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QMdiArearesizeEventProc* = proc(self: QMdiArea, resizeEvent: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QMdiAreatimerEventProc* = proc(self: QMdiArea, timerEvent: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QMdiAreashowEventProc* = proc(self: QMdiArea, showEvent: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QMdiAreaviewportEventProc* = proc(self: QMdiArea, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QMdiAreascrollContentsByProc* = proc(self: QMdiArea, dx: cint, dy: cint): void {.raises: [], gcsafe.}
type QMdiAreamousePressEventProc* = proc(self: QMdiArea, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QMdiAreamouseReleaseEventProc* = proc(self: QMdiArea, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QMdiAreamouseDoubleClickEventProc* = proc(self: QMdiArea, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QMdiAreamouseMoveEventProc* = proc(self: QMdiArea, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QMdiAreawheelEventProc* = proc(self: QMdiArea, param1: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QMdiAreacontextMenuEventProc* = proc(self: QMdiArea, param1: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QMdiAreadragEnterEventProc* = proc(self: QMdiArea, param1: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QMdiAreadragMoveEventProc* = proc(self: QMdiArea, param1: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QMdiAreadragLeaveEventProc* = proc(self: QMdiArea, param1: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QMdiAreadropEventProc* = proc(self: QMdiArea, param1: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QMdiAreakeyPressEventProc* = proc(self: QMdiArea, param1: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QMdiAreaviewportSizeHintProc* = proc(self: QMdiArea): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QMdiAreachangeEventProc* = proc(self: QMdiArea, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QMdiAreainitStyleOptionProc* = proc(self: QMdiArea, option: gen_qstyleoption_types.QStyleOptionFrame): void {.raises: [], gcsafe.}
type QMdiAreadevTypeProc* = proc(self: QMdiArea): cint {.raises: [], gcsafe.}
type QMdiAreasetVisibleProc* = proc(self: QMdiArea, visible: bool): void {.raises: [], gcsafe.}
type QMdiAreaheightForWidthProc* = proc(self: QMdiArea, param1: cint): cint {.raises: [], gcsafe.}
type QMdiAreahasHeightForWidthProc* = proc(self: QMdiArea): bool {.raises: [], gcsafe.}
type QMdiAreapaintEngineProc* = proc(self: QMdiArea): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QMdiAreakeyReleaseEventProc* = proc(self: QMdiArea, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QMdiAreafocusInEventProc* = proc(self: QMdiArea, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QMdiAreafocusOutEventProc* = proc(self: QMdiArea, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QMdiAreaenterEventProc* = proc(self: QMdiArea, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QMdiArealeaveEventProc* = proc(self: QMdiArea, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QMdiAreamoveEventProc* = proc(self: QMdiArea, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QMdiAreacloseEventProc* = proc(self: QMdiArea, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QMdiAreatabletEventProc* = proc(self: QMdiArea, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QMdiAreaactionEventProc* = proc(self: QMdiArea, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QMdiAreahideEventProc* = proc(self: QMdiArea, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QMdiAreanativeEventProc* = proc(self: QMdiArea, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QMdiAreametricProc* = proc(self: QMdiArea, param1: cint): cint {.raises: [], gcsafe.}
type QMdiAreainitPainterProc* = proc(self: QMdiArea, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QMdiArearedirectedProc* = proc(self: QMdiArea, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QMdiAreasharedPainterProc* = proc(self: QMdiArea): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QMdiAreainputMethodEventProc* = proc(self: QMdiArea, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QMdiAreainputMethodQueryProc* = proc(self: QMdiArea, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QMdiAreafocusNextPrevChildProc* = proc(self: QMdiArea, next: bool): bool {.raises: [], gcsafe.}
type QMdiAreacustomEventProc* = proc(self: QMdiArea, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QMdiAreaconnectNotifyProc* = proc(self: QMdiArea, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QMdiAreadisconnectNotifyProc* = proc(self: QMdiArea, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QMdiAreaVTable* = object
  vtbl: cQMdiAreaVTable
  metaObject*: QMdiAreametaObjectProc
  metacast*: QMdiAreametacastProc
  metacall*: QMdiAreametacallProc
  sizeHint*: QMdiAreasizeHintProc
  minimumSizeHint*: QMdiAreaminimumSizeHintProc
  setupViewport*: QMdiAreasetupViewportProc
  event*: QMdiAreaeventProc
  eventFilter*: QMdiAreaeventFilterProc
  paintEvent*: QMdiAreapaintEventProc
  childEvent*: QMdiAreachildEventProc
  resizeEvent*: QMdiArearesizeEventProc
  timerEvent*: QMdiAreatimerEventProc
  showEvent*: QMdiAreashowEventProc
  viewportEvent*: QMdiAreaviewportEventProc
  scrollContentsBy*: QMdiAreascrollContentsByProc
  mousePressEvent*: QMdiAreamousePressEventProc
  mouseReleaseEvent*: QMdiAreamouseReleaseEventProc
  mouseDoubleClickEvent*: QMdiAreamouseDoubleClickEventProc
  mouseMoveEvent*: QMdiAreamouseMoveEventProc
  wheelEvent*: QMdiAreawheelEventProc
  contextMenuEvent*: QMdiAreacontextMenuEventProc
  dragEnterEvent*: QMdiAreadragEnterEventProc
  dragMoveEvent*: QMdiAreadragMoveEventProc
  dragLeaveEvent*: QMdiAreadragLeaveEventProc
  dropEvent*: QMdiAreadropEventProc
  keyPressEvent*: QMdiAreakeyPressEventProc
  viewportSizeHint*: QMdiAreaviewportSizeHintProc
  changeEvent*: QMdiAreachangeEventProc
  initStyleOption*: QMdiAreainitStyleOptionProc
  devType*: QMdiAreadevTypeProc
  setVisible*: QMdiAreasetVisibleProc
  heightForWidth*: QMdiAreaheightForWidthProc
  hasHeightForWidth*: QMdiAreahasHeightForWidthProc
  paintEngine*: QMdiAreapaintEngineProc
  keyReleaseEvent*: QMdiAreakeyReleaseEventProc
  focusInEvent*: QMdiAreafocusInEventProc
  focusOutEvent*: QMdiAreafocusOutEventProc
  enterEvent*: QMdiAreaenterEventProc
  leaveEvent*: QMdiArealeaveEventProc
  moveEvent*: QMdiAreamoveEventProc
  closeEvent*: QMdiAreacloseEventProc
  tabletEvent*: QMdiAreatabletEventProc
  actionEvent*: QMdiAreaactionEventProc
  hideEvent*: QMdiAreahideEventProc
  nativeEvent*: QMdiAreanativeEventProc
  metric*: QMdiAreametricProc
  initPainter*: QMdiAreainitPainterProc
  redirected*: QMdiArearedirectedProc
  sharedPainter*: QMdiAreasharedPainterProc
  inputMethodEvent*: QMdiAreainputMethodEventProc
  inputMethodQuery*: QMdiAreainputMethodQueryProc
  focusNextPrevChild*: QMdiAreafocusNextPrevChildProc
  customEvent*: QMdiAreacustomEventProc
  connectNotify*: QMdiAreaconnectNotifyProc
  disconnectNotify*: QMdiAreadisconnectNotifyProc
proc QMdiAreametaObject*(self: gen_qmdiarea_types.QMdiArea, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMdiArea_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQMdiArea_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QMdiAreametacast*(self: gen_qmdiarea_types.QMdiArea, param1: cstring): pointer =
  fcQMdiArea_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQMdiArea_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QMdiAreametacall*(self: gen_qmdiarea_types.QMdiArea, param1: cint, param2: cint, param3: pointer): cint =
  fcQMdiArea_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQMdiArea_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QMdiAreasizeHint*(self: gen_qmdiarea_types.QMdiArea, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQMdiArea_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQMdiArea_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QMdiAreaminimumSizeHint*(self: gen_qmdiarea_types.QMdiArea, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQMdiArea_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQMdiArea_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QMdiAreasetupViewport*(self: gen_qmdiarea_types.QMdiArea, viewport: gen_qwidget_types.QWidget): void =
  fcQMdiArea_virtualbase_setupViewport(self.h, viewport.h)

proc miqt_exec_callback_cQMdiArea_setupViewport(vtbl: pointer, self: pointer, viewport: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: viewport)
  vtbl[].setupViewport(self, slotval1)

proc QMdiAreaevent*(self: gen_qmdiarea_types.QMdiArea, event: gen_qcoreevent_types.QEvent): bool =
  fcQMdiArea_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQMdiArea_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QMdiAreaeventFilter*(self: gen_qmdiarea_types.QMdiArea, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQMdiArea_virtualbase_eventFilter(self.h, objectVal.h, event.h)

proc miqt_exec_callback_cQMdiArea_eventFilter(vtbl: pointer, self: pointer, objectVal: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  let slotval1 = gen_qobject_types.QObject(h: objectVal)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QMdiAreapaintEvent*(self: gen_qmdiarea_types.QMdiArea, paintEvent: gen_qevent_types.QPaintEvent): void =
  fcQMdiArea_virtualbase_paintEvent(self.h, paintEvent.h)

proc miqt_exec_callback_cQMdiArea_paintEvent(vtbl: pointer, self: pointer, paintEvent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: paintEvent)
  vtbl[].paintEvent(self, slotval1)

proc QMdiAreachildEvent*(self: gen_qmdiarea_types.QMdiArea, childEvent: gen_qcoreevent_types.QChildEvent): void =
  fcQMdiArea_virtualbase_childEvent(self.h, childEvent.h)

proc miqt_exec_callback_cQMdiArea_childEvent(vtbl: pointer, self: pointer, childEvent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: childEvent)
  vtbl[].childEvent(self, slotval1)

proc QMdiArearesizeEvent*(self: gen_qmdiarea_types.QMdiArea, resizeEvent: gen_qevent_types.QResizeEvent): void =
  fcQMdiArea_virtualbase_resizeEvent(self.h, resizeEvent.h)

proc miqt_exec_callback_cQMdiArea_resizeEvent(vtbl: pointer, self: pointer, resizeEvent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: resizeEvent)
  vtbl[].resizeEvent(self, slotval1)

proc QMdiAreatimerEvent*(self: gen_qmdiarea_types.QMdiArea, timerEvent: gen_qcoreevent_types.QTimerEvent): void =
  fcQMdiArea_virtualbase_timerEvent(self.h, timerEvent.h)

proc miqt_exec_callback_cQMdiArea_timerEvent(vtbl: pointer, self: pointer, timerEvent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: timerEvent)
  vtbl[].timerEvent(self, slotval1)

proc QMdiAreashowEvent*(self: gen_qmdiarea_types.QMdiArea, showEvent: gen_qevent_types.QShowEvent): void =
  fcQMdiArea_virtualbase_showEvent(self.h, showEvent.h)

proc miqt_exec_callback_cQMdiArea_showEvent(vtbl: pointer, self: pointer, showEvent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: showEvent)
  vtbl[].showEvent(self, slotval1)

proc QMdiAreaviewportEvent*(self: gen_qmdiarea_types.QMdiArea, event: gen_qcoreevent_types.QEvent): bool =
  fcQMdiArea_virtualbase_viewportEvent(self.h, event.h)

proc miqt_exec_callback_cQMdiArea_viewportEvent(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].viewportEvent(self, slotval1)
  virtualReturn

proc QMdiAreascrollContentsBy*(self: gen_qmdiarea_types.QMdiArea, dx: cint, dy: cint): void =
  fcQMdiArea_virtualbase_scrollContentsBy(self.h, dx, dy)

proc miqt_exec_callback_cQMdiArea_scrollContentsBy(vtbl: pointer, self: pointer, dx: cint, dy: cint): void {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  let slotval1 = dx
  let slotval2 = dy
  vtbl[].scrollContentsBy(self, slotval1, slotval2)

proc QMdiAreamousePressEvent*(self: gen_qmdiarea_types.QMdiArea, param1: gen_qevent_types.QMouseEvent): void =
  fcQMdiArea_virtualbase_mousePressEvent(self.h, param1.h)

proc miqt_exec_callback_cQMdiArea_mousePressEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)
  vtbl[].mousePressEvent(self, slotval1)

proc QMdiAreamouseReleaseEvent*(self: gen_qmdiarea_types.QMdiArea, param1: gen_qevent_types.QMouseEvent): void =
  fcQMdiArea_virtualbase_mouseReleaseEvent(self.h, param1.h)

proc miqt_exec_callback_cQMdiArea_mouseReleaseEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QMdiAreamouseDoubleClickEvent*(self: gen_qmdiarea_types.QMdiArea, param1: gen_qevent_types.QMouseEvent): void =
  fcQMdiArea_virtualbase_mouseDoubleClickEvent(self.h, param1.h)

proc miqt_exec_callback_cQMdiArea_mouseDoubleClickEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QMdiAreamouseMoveEvent*(self: gen_qmdiarea_types.QMdiArea, param1: gen_qevent_types.QMouseEvent): void =
  fcQMdiArea_virtualbase_mouseMoveEvent(self.h, param1.h)

proc miqt_exec_callback_cQMdiArea_mouseMoveEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QMdiAreawheelEvent*(self: gen_qmdiarea_types.QMdiArea, param1: gen_qevent_types.QWheelEvent): void =
  fcQMdiArea_virtualbase_wheelEvent(self.h, param1.h)

proc miqt_exec_callback_cQMdiArea_wheelEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1)
  vtbl[].wheelEvent(self, slotval1)

proc QMdiAreacontextMenuEvent*(self: gen_qmdiarea_types.QMdiArea, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQMdiArea_virtualbase_contextMenuEvent(self.h, param1.h)

proc miqt_exec_callback_cQMdiArea_contextMenuEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)
  vtbl[].contextMenuEvent(self, slotval1)

proc QMdiAreadragEnterEvent*(self: gen_qmdiarea_types.QMdiArea, param1: gen_qevent_types.QDragEnterEvent): void =
  fcQMdiArea_virtualbase_dragEnterEvent(self.h, param1.h)

proc miqt_exec_callback_cQMdiArea_dragEnterEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: param1)
  vtbl[].dragEnterEvent(self, slotval1)

proc QMdiAreadragMoveEvent*(self: gen_qmdiarea_types.QMdiArea, param1: gen_qevent_types.QDragMoveEvent): void =
  fcQMdiArea_virtualbase_dragMoveEvent(self.h, param1.h)

proc miqt_exec_callback_cQMdiArea_dragMoveEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: param1)
  vtbl[].dragMoveEvent(self, slotval1)

proc QMdiAreadragLeaveEvent*(self: gen_qmdiarea_types.QMdiArea, param1: gen_qevent_types.QDragLeaveEvent): void =
  fcQMdiArea_virtualbase_dragLeaveEvent(self.h, param1.h)

proc miqt_exec_callback_cQMdiArea_dragLeaveEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: param1)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QMdiAreadropEvent*(self: gen_qmdiarea_types.QMdiArea, param1: gen_qevent_types.QDropEvent): void =
  fcQMdiArea_virtualbase_dropEvent(self.h, param1.h)

proc miqt_exec_callback_cQMdiArea_dropEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: param1)
  vtbl[].dropEvent(self, slotval1)

proc QMdiAreakeyPressEvent*(self: gen_qmdiarea_types.QMdiArea, param1: gen_qevent_types.QKeyEvent): void =
  fcQMdiArea_virtualbase_keyPressEvent(self.h, param1.h)

proc miqt_exec_callback_cQMdiArea_keyPressEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)
  vtbl[].keyPressEvent(self, slotval1)

proc QMdiAreaviewportSizeHint*(self: gen_qmdiarea_types.QMdiArea, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQMdiArea_virtualbase_viewportSizeHint(self.h))

proc miqt_exec_callback_cQMdiArea_viewportSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  var virtualReturn = vtbl[].viewportSizeHint(self)
  virtualReturn.h

proc QMdiAreachangeEvent*(self: gen_qmdiarea_types.QMdiArea, param1: gen_qcoreevent_types.QEvent): void =
  fcQMdiArea_virtualbase_changeEvent(self.h, param1.h)

proc miqt_exec_callback_cQMdiArea_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  vtbl[].changeEvent(self, slotval1)

proc QMdiAreainitStyleOption*(self: gen_qmdiarea_types.QMdiArea, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fcQMdiArea_virtualbase_initStyleOption(self.h, option.h)

proc miqt_exec_callback_cQMdiArea_initStyleOption(vtbl: pointer, self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionFrame(h: option)
  vtbl[].initStyleOption(self, slotval1)

proc QMdiAreadevType*(self: gen_qmdiarea_types.QMdiArea, ): cint =
  fcQMdiArea_virtualbase_devType(self.h)

proc miqt_exec_callback_cQMdiArea_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QMdiAreasetVisible*(self: gen_qmdiarea_types.QMdiArea, visible: bool): void =
  fcQMdiArea_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQMdiArea_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QMdiAreaheightForWidth*(self: gen_qmdiarea_types.QMdiArea, param1: cint): cint =
  fcQMdiArea_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQMdiArea_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QMdiAreahasHeightForWidth*(self: gen_qmdiarea_types.QMdiArea, ): bool =
  fcQMdiArea_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQMdiArea_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QMdiAreapaintEngine*(self: gen_qmdiarea_types.QMdiArea, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQMdiArea_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQMdiArea_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QMdiAreakeyReleaseEvent*(self: gen_qmdiarea_types.QMdiArea, event: gen_qevent_types.QKeyEvent): void =
  fcQMdiArea_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQMdiArea_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QMdiAreafocusInEvent*(self: gen_qmdiarea_types.QMdiArea, event: gen_qevent_types.QFocusEvent): void =
  fcQMdiArea_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQMdiArea_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QMdiAreafocusOutEvent*(self: gen_qmdiarea_types.QMdiArea, event: gen_qevent_types.QFocusEvent): void =
  fcQMdiArea_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQMdiArea_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QMdiAreaenterEvent*(self: gen_qmdiarea_types.QMdiArea, event: gen_qevent_types.QEnterEvent): void =
  fcQMdiArea_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQMdiArea_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QMdiArealeaveEvent*(self: gen_qmdiarea_types.QMdiArea, event: gen_qcoreevent_types.QEvent): void =
  fcQMdiArea_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQMdiArea_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QMdiAreamoveEvent*(self: gen_qmdiarea_types.QMdiArea, event: gen_qevent_types.QMoveEvent): void =
  fcQMdiArea_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQMdiArea_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QMdiAreacloseEvent*(self: gen_qmdiarea_types.QMdiArea, event: gen_qevent_types.QCloseEvent): void =
  fcQMdiArea_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQMdiArea_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QMdiAreatabletEvent*(self: gen_qmdiarea_types.QMdiArea, event: gen_qevent_types.QTabletEvent): void =
  fcQMdiArea_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQMdiArea_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QMdiAreaactionEvent*(self: gen_qmdiarea_types.QMdiArea, event: gen_qevent_types.QActionEvent): void =
  fcQMdiArea_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQMdiArea_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QMdiAreahideEvent*(self: gen_qmdiarea_types.QMdiArea, event: gen_qevent_types.QHideEvent): void =
  fcQMdiArea_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQMdiArea_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QMdiAreanativeEvent*(self: gen_qmdiarea_types.QMdiArea, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fcQMdiArea_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQMdiArea_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QMdiAreametric*(self: gen_qmdiarea_types.QMdiArea, param1: cint): cint =
  fcQMdiArea_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQMdiArea_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QMdiAreainitPainter*(self: gen_qmdiarea_types.QMdiArea, painter: gen_qpainter_types.QPainter): void =
  fcQMdiArea_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQMdiArea_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QMdiArearedirected*(self: gen_qmdiarea_types.QMdiArea, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQMdiArea_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQMdiArea_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QMdiAreasharedPainter*(self: gen_qmdiarea_types.QMdiArea, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQMdiArea_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQMdiArea_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QMdiAreainputMethodEvent*(self: gen_qmdiarea_types.QMdiArea, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQMdiArea_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQMdiArea_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QMdiAreainputMethodQuery*(self: gen_qmdiarea_types.QMdiArea, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQMdiArea_virtualbase_inputMethodQuery(self.h, cint(param1)))

proc miqt_exec_callback_cQMdiArea_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QMdiAreafocusNextPrevChild*(self: gen_qmdiarea_types.QMdiArea, next: bool): bool =
  fcQMdiArea_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQMdiArea_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QMdiAreacustomEvent*(self: gen_qmdiarea_types.QMdiArea, event: gen_qcoreevent_types.QEvent): void =
  fcQMdiArea_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQMdiArea_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QMdiAreaconnectNotify*(self: gen_qmdiarea_types.QMdiArea, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQMdiArea_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQMdiArea_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QMdiAreadisconnectNotify*(self: gen_qmdiarea_types.QMdiArea, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQMdiArea_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQMdiArea_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiAreaVTable](vtbl)
  let self = QMdiArea(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc setViewportMargins*(self: gen_qmdiarea_types.QMdiArea, left: cint, top: cint, right: cint, bottom: cint): void =
  fcQMdiArea_protectedbase_setViewportMargins(self.h, left, top, right, bottom)

proc viewportMargins*(self: gen_qmdiarea_types.QMdiArea, ): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQMdiArea_protectedbase_viewportMargins(self.h))

proc drawFrame*(self: gen_qmdiarea_types.QMdiArea, param1: gen_qpainter_types.QPainter): void =
  fcQMdiArea_protectedbase_drawFrame(self.h, param1.h)

proc updateMicroFocus*(self: gen_qmdiarea_types.QMdiArea, ): void =
  fcQMdiArea_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qmdiarea_types.QMdiArea, ): void =
  fcQMdiArea_protectedbase_create(self.h)

proc destroy*(self: gen_qmdiarea_types.QMdiArea, ): void =
  fcQMdiArea_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qmdiarea_types.QMdiArea, ): bool =
  fcQMdiArea_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qmdiarea_types.QMdiArea, ): bool =
  fcQMdiArea_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qmdiarea_types.QMdiArea, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMdiArea_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qmdiarea_types.QMdiArea, ): cint =
  fcQMdiArea_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qmdiarea_types.QMdiArea, signal: cstring): cint =
  fcQMdiArea_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qmdiarea_types.QMdiArea, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQMdiArea_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qmdiarea_types.QMdiArea,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QMdiAreaVTable = nil): gen_qmdiarea_types.QMdiArea =
  let vtbl = if vtbl == nil: new QMdiAreaVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQMdiAreaVTable, _: ptr cQMdiArea) {.cdecl.} =
    let vtbl = cast[ref QMdiAreaVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQMdiArea_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQMdiArea_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQMdiArea_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQMdiArea_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQMdiArea_minimumSizeHint
  if not isNil(vtbl.setupViewport):
    vtbl[].vtbl.setupViewport = miqt_exec_callback_cQMdiArea_setupViewport
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQMdiArea_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQMdiArea_eventFilter
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQMdiArea_paintEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQMdiArea_childEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQMdiArea_resizeEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQMdiArea_timerEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQMdiArea_showEvent
  if not isNil(vtbl.viewportEvent):
    vtbl[].vtbl.viewportEvent = miqt_exec_callback_cQMdiArea_viewportEvent
  if not isNil(vtbl.scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = miqt_exec_callback_cQMdiArea_scrollContentsBy
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQMdiArea_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQMdiArea_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQMdiArea_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQMdiArea_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQMdiArea_wheelEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQMdiArea_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQMdiArea_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQMdiArea_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQMdiArea_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQMdiArea_dropEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQMdiArea_keyPressEvent
  if not isNil(vtbl.viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = miqt_exec_callback_cQMdiArea_viewportSizeHint
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQMdiArea_changeEvent
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQMdiArea_initStyleOption
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQMdiArea_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQMdiArea_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQMdiArea_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQMdiArea_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQMdiArea_paintEngine
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQMdiArea_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQMdiArea_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQMdiArea_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQMdiArea_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQMdiArea_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQMdiArea_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQMdiArea_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQMdiArea_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQMdiArea_actionEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQMdiArea_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQMdiArea_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQMdiArea_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQMdiArea_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQMdiArea_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQMdiArea_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQMdiArea_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQMdiArea_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQMdiArea_focusNextPrevChild
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQMdiArea_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQMdiArea_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQMdiArea_disconnectNotify
  gen_qmdiarea_types.QMdiArea(h: fcQMdiArea_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qmdiarea_types.QMdiArea,
    vtbl: ref QMdiAreaVTable = nil): gen_qmdiarea_types.QMdiArea =
  let vtbl = if vtbl == nil: new QMdiAreaVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQMdiAreaVTable, _: ptr cQMdiArea) {.cdecl.} =
    let vtbl = cast[ref QMdiAreaVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQMdiArea_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQMdiArea_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQMdiArea_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQMdiArea_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQMdiArea_minimumSizeHint
  if not isNil(vtbl.setupViewport):
    vtbl[].vtbl.setupViewport = miqt_exec_callback_cQMdiArea_setupViewport
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQMdiArea_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQMdiArea_eventFilter
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQMdiArea_paintEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQMdiArea_childEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQMdiArea_resizeEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQMdiArea_timerEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQMdiArea_showEvent
  if not isNil(vtbl.viewportEvent):
    vtbl[].vtbl.viewportEvent = miqt_exec_callback_cQMdiArea_viewportEvent
  if not isNil(vtbl.scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = miqt_exec_callback_cQMdiArea_scrollContentsBy
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQMdiArea_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQMdiArea_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQMdiArea_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQMdiArea_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQMdiArea_wheelEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQMdiArea_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQMdiArea_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQMdiArea_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQMdiArea_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQMdiArea_dropEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQMdiArea_keyPressEvent
  if not isNil(vtbl.viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = miqt_exec_callback_cQMdiArea_viewportSizeHint
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQMdiArea_changeEvent
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQMdiArea_initStyleOption
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQMdiArea_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQMdiArea_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQMdiArea_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQMdiArea_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQMdiArea_paintEngine
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQMdiArea_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQMdiArea_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQMdiArea_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQMdiArea_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQMdiArea_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQMdiArea_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQMdiArea_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQMdiArea_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQMdiArea_actionEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQMdiArea_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQMdiArea_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQMdiArea_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQMdiArea_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQMdiArea_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQMdiArea_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQMdiArea_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQMdiArea_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQMdiArea_focusNextPrevChild
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQMdiArea_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQMdiArea_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQMdiArea_disconnectNotify
  gen_qmdiarea_types.QMdiArea(h: fcQMdiArea_new2(addr(vtbl[]), ))

proc staticMetaObject*(_: type gen_qmdiarea_types.QMdiArea): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMdiArea_staticMetaObject())
proc delete*(self: gen_qmdiarea_types.QMdiArea) =
  fcQMdiArea_delete(self.h)
