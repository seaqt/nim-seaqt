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

proc fcQMdiArea_new(parent: pointer): ptr cQMdiArea {.importc: "QMdiArea_new".}
proc fcQMdiArea_new2(): ptr cQMdiArea {.importc: "QMdiArea_new2".}
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
proc fcQMdiArea_connect_subWindowActivated(self: pointer, slot: int) {.importc: "QMdiArea_connect_subWindowActivated".}
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
proc fQMdiArea_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QMdiArea_virtualbase_metaObject".}
proc fcQMdiArea_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_metaObject".}
proc fQMdiArea_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QMdiArea_virtualbase_metacast".}
proc fcQMdiArea_override_virtual_metacast(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_metacast".}
proc fQMdiArea_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QMdiArea_virtualbase_metacall".}
proc fcQMdiArea_override_virtual_metacall(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_metacall".}
proc fQMdiArea_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QMdiArea_virtualbase_sizeHint".}
proc fcQMdiArea_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_sizeHint".}
proc fQMdiArea_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QMdiArea_virtualbase_minimumSizeHint".}
proc fcQMdiArea_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_minimumSizeHint".}
proc fQMdiArea_virtualbase_setupViewport(self: pointer, viewport: pointer): void{.importc: "QMdiArea_virtualbase_setupViewport".}
proc fcQMdiArea_override_virtual_setupViewport(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_setupViewport".}
proc fQMdiArea_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QMdiArea_virtualbase_event".}
proc fcQMdiArea_override_virtual_event(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_event".}
proc fQMdiArea_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool{.importc: "QMdiArea_virtualbase_eventFilter".}
proc fcQMdiArea_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_eventFilter".}
proc fQMdiArea_virtualbase_paintEvent(self: pointer, paintEvent: pointer): void{.importc: "QMdiArea_virtualbase_paintEvent".}
proc fcQMdiArea_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_paintEvent".}
proc fQMdiArea_virtualbase_childEvent(self: pointer, childEvent: pointer): void{.importc: "QMdiArea_virtualbase_childEvent".}
proc fcQMdiArea_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_childEvent".}
proc fQMdiArea_virtualbase_resizeEvent(self: pointer, resizeEvent: pointer): void{.importc: "QMdiArea_virtualbase_resizeEvent".}
proc fcQMdiArea_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_resizeEvent".}
proc fQMdiArea_virtualbase_timerEvent(self: pointer, timerEvent: pointer): void{.importc: "QMdiArea_virtualbase_timerEvent".}
proc fcQMdiArea_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_timerEvent".}
proc fQMdiArea_virtualbase_showEvent(self: pointer, showEvent: pointer): void{.importc: "QMdiArea_virtualbase_showEvent".}
proc fcQMdiArea_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_showEvent".}
proc fQMdiArea_virtualbase_viewportEvent(self: pointer, event: pointer): bool{.importc: "QMdiArea_virtualbase_viewportEvent".}
proc fcQMdiArea_override_virtual_viewportEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_viewportEvent".}
proc fQMdiArea_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void{.importc: "QMdiArea_virtualbase_scrollContentsBy".}
proc fcQMdiArea_override_virtual_scrollContentsBy(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_scrollContentsBy".}
proc fQMdiArea_virtualbase_mousePressEvent(self: pointer, param1: pointer): void{.importc: "QMdiArea_virtualbase_mousePressEvent".}
proc fcQMdiArea_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_mousePressEvent".}
proc fQMdiArea_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void{.importc: "QMdiArea_virtualbase_mouseReleaseEvent".}
proc fcQMdiArea_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_mouseReleaseEvent".}
proc fQMdiArea_virtualbase_mouseDoubleClickEvent(self: pointer, param1: pointer): void{.importc: "QMdiArea_virtualbase_mouseDoubleClickEvent".}
proc fcQMdiArea_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_mouseDoubleClickEvent".}
proc fQMdiArea_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void{.importc: "QMdiArea_virtualbase_mouseMoveEvent".}
proc fcQMdiArea_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_mouseMoveEvent".}
proc fQMdiArea_virtualbase_wheelEvent(self: pointer, param1: pointer): void{.importc: "QMdiArea_virtualbase_wheelEvent".}
proc fcQMdiArea_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_wheelEvent".}
proc fQMdiArea_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QMdiArea_virtualbase_contextMenuEvent".}
proc fcQMdiArea_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_contextMenuEvent".}
proc fQMdiArea_virtualbase_dragEnterEvent(self: pointer, param1: pointer): void{.importc: "QMdiArea_virtualbase_dragEnterEvent".}
proc fcQMdiArea_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_dragEnterEvent".}
proc fQMdiArea_virtualbase_dragMoveEvent(self: pointer, param1: pointer): void{.importc: "QMdiArea_virtualbase_dragMoveEvent".}
proc fcQMdiArea_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_dragMoveEvent".}
proc fQMdiArea_virtualbase_dragLeaveEvent(self: pointer, param1: pointer): void{.importc: "QMdiArea_virtualbase_dragLeaveEvent".}
proc fcQMdiArea_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_dragLeaveEvent".}
proc fQMdiArea_virtualbase_dropEvent(self: pointer, param1: pointer): void{.importc: "QMdiArea_virtualbase_dropEvent".}
proc fcQMdiArea_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_dropEvent".}
proc fQMdiArea_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QMdiArea_virtualbase_keyPressEvent".}
proc fcQMdiArea_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_keyPressEvent".}
proc fQMdiArea_virtualbase_viewportSizeHint(self: pointer, ): pointer{.importc: "QMdiArea_virtualbase_viewportSizeHint".}
proc fcQMdiArea_override_virtual_viewportSizeHint(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_viewportSizeHint".}
proc fQMdiArea_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QMdiArea_virtualbase_changeEvent".}
proc fcQMdiArea_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_changeEvent".}
proc fQMdiArea_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QMdiArea_virtualbase_initStyleOption".}
proc fcQMdiArea_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_initStyleOption".}
proc fQMdiArea_virtualbase_devType(self: pointer, ): cint{.importc: "QMdiArea_virtualbase_devType".}
proc fcQMdiArea_override_virtual_devType(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_devType".}
proc fQMdiArea_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QMdiArea_virtualbase_setVisible".}
proc fcQMdiArea_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_setVisible".}
proc fQMdiArea_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QMdiArea_virtualbase_heightForWidth".}
proc fcQMdiArea_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_heightForWidth".}
proc fQMdiArea_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QMdiArea_virtualbase_hasHeightForWidth".}
proc fcQMdiArea_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_hasHeightForWidth".}
proc fQMdiArea_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QMdiArea_virtualbase_paintEngine".}
proc fcQMdiArea_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_paintEngine".}
proc fQMdiArea_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QMdiArea_virtualbase_keyReleaseEvent".}
proc fcQMdiArea_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_keyReleaseEvent".}
proc fQMdiArea_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QMdiArea_virtualbase_focusInEvent".}
proc fcQMdiArea_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_focusInEvent".}
proc fQMdiArea_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QMdiArea_virtualbase_focusOutEvent".}
proc fcQMdiArea_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_focusOutEvent".}
proc fQMdiArea_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QMdiArea_virtualbase_enterEvent".}
proc fcQMdiArea_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_enterEvent".}
proc fQMdiArea_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QMdiArea_virtualbase_leaveEvent".}
proc fcQMdiArea_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_leaveEvent".}
proc fQMdiArea_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QMdiArea_virtualbase_moveEvent".}
proc fcQMdiArea_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_moveEvent".}
proc fQMdiArea_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QMdiArea_virtualbase_closeEvent".}
proc fcQMdiArea_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_closeEvent".}
proc fQMdiArea_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QMdiArea_virtualbase_tabletEvent".}
proc fcQMdiArea_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_tabletEvent".}
proc fQMdiArea_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QMdiArea_virtualbase_actionEvent".}
proc fcQMdiArea_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_actionEvent".}
proc fQMdiArea_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QMdiArea_virtualbase_hideEvent".}
proc fcQMdiArea_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_hideEvent".}
proc fQMdiArea_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QMdiArea_virtualbase_nativeEvent".}
proc fcQMdiArea_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_nativeEvent".}
proc fQMdiArea_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QMdiArea_virtualbase_metric".}
proc fcQMdiArea_override_virtual_metric(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_metric".}
proc fQMdiArea_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QMdiArea_virtualbase_initPainter".}
proc fcQMdiArea_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_initPainter".}
proc fQMdiArea_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QMdiArea_virtualbase_redirected".}
proc fcQMdiArea_override_virtual_redirected(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_redirected".}
proc fQMdiArea_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QMdiArea_virtualbase_sharedPainter".}
proc fcQMdiArea_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_sharedPainter".}
proc fQMdiArea_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QMdiArea_virtualbase_inputMethodEvent".}
proc fcQMdiArea_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_inputMethodEvent".}
proc fQMdiArea_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QMdiArea_virtualbase_inputMethodQuery".}
proc fcQMdiArea_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_inputMethodQuery".}
proc fQMdiArea_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QMdiArea_virtualbase_focusNextPrevChild".}
proc fcQMdiArea_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_focusNextPrevChild".}
proc fQMdiArea_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QMdiArea_virtualbase_customEvent".}
proc fcQMdiArea_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_customEvent".}
proc fQMdiArea_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QMdiArea_virtualbase_connectNotify".}
proc fcQMdiArea_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_connectNotify".}
proc fQMdiArea_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QMdiArea_virtualbase_disconnectNotify".}
proc fcQMdiArea_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QMdiArea_override_virtual_disconnectNotify".}
proc fcQMdiArea_staticMetaObject(): pointer {.importc: "QMdiArea_staticMetaObject".}
proc fcQMdiArea_delete(self: pointer) {.importc: "QMdiArea_delete".}


func init*(T: type gen_qmdiarea_types.QMdiArea, h: ptr cQMdiArea): gen_qmdiarea_types.QMdiArea =
  T(h: h)
proc create*(T: type gen_qmdiarea_types.QMdiArea, parent: gen_qwidget_types.QWidget): gen_qmdiarea_types.QMdiArea =
  gen_qmdiarea_types.QMdiArea.init(fcQMdiArea_new(parent.h))

proc create*(T: type gen_qmdiarea_types.QMdiArea, ): gen_qmdiarea_types.QMdiArea =
  gen_qmdiarea_types.QMdiArea.init(fcQMdiArea_new2())

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
proc miqt_exec_callback_QMdiArea_subWindowActivated(slot: int, param1: pointer) {.exportc.} =
  let nimfunc = cast[ptr QMdiAreasubWindowActivatedSlot](cast[pointer](slot))
  let slotval1 = gen_qmdisubwindow_types.QMdiSubWindow(h: param1)

  nimfunc[](slotval1)

proc onsubWindowActivated*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreasubWindowActivatedSlot) =
  var tmp = new QMdiAreasubWindowActivatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_connect_subWindowActivated(self.h, cast[int](addr tmp[]))

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

proc QMdiAreametaObject*(self: gen_qmdiarea_types.QMdiArea, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQMdiArea_virtualbase_metaObject(self.h))

type QMdiAreametaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreametaObjectProc) =
  # TODO check subclass
  var tmp = new QMdiAreametaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_metaObject(self: ptr cQMdiArea, slot: int): pointer {.exportc: "miqt_exec_callback_QMdiArea_metaObject ".} =
  var nimfunc = cast[ptr QMdiAreametaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QMdiAreametacast*(self: gen_qmdiarea_types.QMdiArea, param1: cstring): pointer =
  fQMdiArea_virtualbase_metacast(self.h, param1)

type QMdiAreametacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreametacastProc) =
  # TODO check subclass
  var tmp = new QMdiAreametacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_metacast(self: ptr cQMdiArea, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QMdiArea_metacast ".} =
  var nimfunc = cast[ptr QMdiAreametacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMdiAreametacall*(self: gen_qmdiarea_types.QMdiArea, param1: cint, param2: cint, param3: pointer): cint =
  fQMdiArea_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QMdiAreametacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreametacallProc) =
  # TODO check subclass
  var tmp = new QMdiAreametacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_metacall(self: ptr cQMdiArea, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QMdiArea_metacall ".} =
  var nimfunc = cast[ptr QMdiAreametacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QMdiAreasizeHint*(self: gen_qmdiarea_types.QMdiArea, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQMdiArea_virtualbase_sizeHint(self.h))

type QMdiAreasizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreasizeHintProc) =
  # TODO check subclass
  var tmp = new QMdiAreasizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_sizeHint(self: ptr cQMdiArea, slot: int): pointer {.exportc: "miqt_exec_callback_QMdiArea_sizeHint ".} =
  var nimfunc = cast[ptr QMdiAreasizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QMdiAreaminimumSizeHint*(self: gen_qmdiarea_types.QMdiArea, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQMdiArea_virtualbase_minimumSizeHint(self.h))

type QMdiAreaminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreaminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QMdiAreaminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_minimumSizeHint(self: ptr cQMdiArea, slot: int): pointer {.exportc: "miqt_exec_callback_QMdiArea_minimumSizeHint ".} =
  var nimfunc = cast[ptr QMdiAreaminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QMdiAreasetupViewport*(self: gen_qmdiarea_types.QMdiArea, viewport: gen_qwidget_types.QWidget): void =
  fQMdiArea_virtualbase_setupViewport(self.h, viewport.h)

type QMdiAreasetupViewportProc* = proc(viewport: gen_qwidget_types.QWidget): void
proc onsetupViewport*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreasetupViewportProc) =
  # TODO check subclass
  var tmp = new QMdiAreasetupViewportProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_setupViewport(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_setupViewport(self: ptr cQMdiArea, slot: int, viewport: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_setupViewport ".} =
  var nimfunc = cast[ptr QMdiAreasetupViewportProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: viewport)


  nimfunc[](slotval1)
proc QMdiAreaevent*(self: gen_qmdiarea_types.QMdiArea, event: gen_qcoreevent_types.QEvent): bool =
  fQMdiArea_virtualbase_event(self.h, event.h)

type QMdiAreaeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreaeventProc) =
  # TODO check subclass
  var tmp = new QMdiAreaeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_event(self: ptr cQMdiArea, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QMdiArea_event ".} =
  var nimfunc = cast[ptr QMdiAreaeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMdiAreaeventFilter*(self: gen_qmdiarea_types.QMdiArea, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQMdiArea_virtualbase_eventFilter(self.h, objectVal.h, event.h)

type QMdiAreaeventFilterProc* = proc(objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreaeventFilterProc) =
  # TODO check subclass
  var tmp = new QMdiAreaeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_eventFilter(self: ptr cQMdiArea, slot: int, objectVal: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QMdiArea_eventFilter ".} =
  var nimfunc = cast[ptr QMdiAreaeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: objectVal)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QMdiAreapaintEvent*(self: gen_qmdiarea_types.QMdiArea, paintEvent: gen_qevent_types.QPaintEvent): void =
  fQMdiArea_virtualbase_paintEvent(self.h, paintEvent.h)

type QMdiAreapaintEventProc* = proc(paintEvent: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreapaintEventProc) =
  # TODO check subclass
  var tmp = new QMdiAreapaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_paintEvent(self: ptr cQMdiArea, slot: int, paintEvent: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_paintEvent ".} =
  var nimfunc = cast[ptr QMdiAreapaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: paintEvent)


  nimfunc[](slotval1)
proc QMdiAreachildEvent*(self: gen_qmdiarea_types.QMdiArea, childEvent: gen_qcoreevent_types.QChildEvent): void =
  fQMdiArea_virtualbase_childEvent(self.h, childEvent.h)

type QMdiAreachildEventProc* = proc(childEvent: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreachildEventProc) =
  # TODO check subclass
  var tmp = new QMdiAreachildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_childEvent(self: ptr cQMdiArea, slot: int, childEvent: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_childEvent ".} =
  var nimfunc = cast[ptr QMdiAreachildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: childEvent)


  nimfunc[](slotval1)
proc QMdiArearesizeEvent*(self: gen_qmdiarea_types.QMdiArea, resizeEvent: gen_qevent_types.QResizeEvent): void =
  fQMdiArea_virtualbase_resizeEvent(self.h, resizeEvent.h)

type QMdiArearesizeEventProc* = proc(resizeEvent: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiArearesizeEventProc) =
  # TODO check subclass
  var tmp = new QMdiArearesizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_resizeEvent(self: ptr cQMdiArea, slot: int, resizeEvent: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_resizeEvent ".} =
  var nimfunc = cast[ptr QMdiArearesizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: resizeEvent)


  nimfunc[](slotval1)
proc QMdiAreatimerEvent*(self: gen_qmdiarea_types.QMdiArea, timerEvent: gen_qcoreevent_types.QTimerEvent): void =
  fQMdiArea_virtualbase_timerEvent(self.h, timerEvent.h)

type QMdiAreatimerEventProc* = proc(timerEvent: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreatimerEventProc) =
  # TODO check subclass
  var tmp = new QMdiAreatimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_timerEvent(self: ptr cQMdiArea, slot: int, timerEvent: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_timerEvent ".} =
  var nimfunc = cast[ptr QMdiAreatimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: timerEvent)


  nimfunc[](slotval1)
proc QMdiAreashowEvent*(self: gen_qmdiarea_types.QMdiArea, showEvent: gen_qevent_types.QShowEvent): void =
  fQMdiArea_virtualbase_showEvent(self.h, showEvent.h)

type QMdiAreashowEventProc* = proc(showEvent: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreashowEventProc) =
  # TODO check subclass
  var tmp = new QMdiAreashowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_showEvent(self: ptr cQMdiArea, slot: int, showEvent: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_showEvent ".} =
  var nimfunc = cast[ptr QMdiAreashowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: showEvent)


  nimfunc[](slotval1)
proc QMdiAreaviewportEvent*(self: gen_qmdiarea_types.QMdiArea, event: gen_qcoreevent_types.QEvent): bool =
  fQMdiArea_virtualbase_viewportEvent(self.h, event.h)

type QMdiAreaviewportEventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onviewportEvent*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreaviewportEventProc) =
  # TODO check subclass
  var tmp = new QMdiAreaviewportEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_viewportEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_viewportEvent(self: ptr cQMdiArea, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QMdiArea_viewportEvent ".} =
  var nimfunc = cast[ptr QMdiAreaviewportEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMdiAreascrollContentsBy*(self: gen_qmdiarea_types.QMdiArea, dx: cint, dy: cint): void =
  fQMdiArea_virtualbase_scrollContentsBy(self.h, dx, dy)

type QMdiAreascrollContentsByProc* = proc(dx: cint, dy: cint): void
proc onscrollContentsBy*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreascrollContentsByProc) =
  # TODO check subclass
  var tmp = new QMdiAreascrollContentsByProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_scrollContentsBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_scrollContentsBy(self: ptr cQMdiArea, slot: int, dx: cint, dy: cint): void {.exportc: "miqt_exec_callback_QMdiArea_scrollContentsBy ".} =
  var nimfunc = cast[ptr QMdiAreascrollContentsByProc](cast[pointer](slot))
  let slotval1 = dx

  let slotval2 = dy


  nimfunc[](slotval1, slotval2)
proc QMdiAreamousePressEvent*(self: gen_qmdiarea_types.QMdiArea, param1: gen_qevent_types.QMouseEvent): void =
  fQMdiArea_virtualbase_mousePressEvent(self.h, param1.h)

type QMdiAreamousePressEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreamousePressEventProc) =
  # TODO check subclass
  var tmp = new QMdiAreamousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_mousePressEvent(self: ptr cQMdiArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_mousePressEvent ".} =
  var nimfunc = cast[ptr QMdiAreamousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QMdiAreamouseReleaseEvent*(self: gen_qmdiarea_types.QMdiArea, param1: gen_qevent_types.QMouseEvent): void =
  fQMdiArea_virtualbase_mouseReleaseEvent(self.h, param1.h)

type QMdiAreamouseReleaseEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreamouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QMdiAreamouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_mouseReleaseEvent(self: ptr cQMdiArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QMdiAreamouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QMdiAreamouseDoubleClickEvent*(self: gen_qmdiarea_types.QMdiArea, param1: gen_qevent_types.QMouseEvent): void =
  fQMdiArea_virtualbase_mouseDoubleClickEvent(self.h, param1.h)

type QMdiAreamouseDoubleClickEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreamouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QMdiAreamouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_mouseDoubleClickEvent(self: ptr cQMdiArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QMdiAreamouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QMdiAreamouseMoveEvent*(self: gen_qmdiarea_types.QMdiArea, param1: gen_qevent_types.QMouseEvent): void =
  fQMdiArea_virtualbase_mouseMoveEvent(self.h, param1.h)

type QMdiAreamouseMoveEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreamouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QMdiAreamouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_mouseMoveEvent(self: ptr cQMdiArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QMdiAreamouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QMdiAreawheelEvent*(self: gen_qmdiarea_types.QMdiArea, param1: gen_qevent_types.QWheelEvent): void =
  fQMdiArea_virtualbase_wheelEvent(self.h, param1.h)

type QMdiAreawheelEventProc* = proc(param1: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreawheelEventProc) =
  # TODO check subclass
  var tmp = new QMdiAreawheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_wheelEvent(self: ptr cQMdiArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_wheelEvent ".} =
  var nimfunc = cast[ptr QMdiAreawheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1)


  nimfunc[](slotval1)
proc QMdiAreacontextMenuEvent*(self: gen_qmdiarea_types.QMdiArea, param1: gen_qevent_types.QContextMenuEvent): void =
  fQMdiArea_virtualbase_contextMenuEvent(self.h, param1.h)

type QMdiAreacontextMenuEventProc* = proc(param1: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreacontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QMdiAreacontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_contextMenuEvent(self: ptr cQMdiArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_contextMenuEvent ".} =
  var nimfunc = cast[ptr QMdiAreacontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)


  nimfunc[](slotval1)
proc QMdiAreadragEnterEvent*(self: gen_qmdiarea_types.QMdiArea, param1: gen_qevent_types.QDragEnterEvent): void =
  fQMdiArea_virtualbase_dragEnterEvent(self.h, param1.h)

type QMdiAreadragEnterEventProc* = proc(param1: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreadragEnterEventProc) =
  # TODO check subclass
  var tmp = new QMdiAreadragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_dragEnterEvent(self: ptr cQMdiArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_dragEnterEvent ".} =
  var nimfunc = cast[ptr QMdiAreadragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: param1)


  nimfunc[](slotval1)
proc QMdiAreadragMoveEvent*(self: gen_qmdiarea_types.QMdiArea, param1: gen_qevent_types.QDragMoveEvent): void =
  fQMdiArea_virtualbase_dragMoveEvent(self.h, param1.h)

type QMdiAreadragMoveEventProc* = proc(param1: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreadragMoveEventProc) =
  # TODO check subclass
  var tmp = new QMdiAreadragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_dragMoveEvent(self: ptr cQMdiArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_dragMoveEvent ".} =
  var nimfunc = cast[ptr QMdiAreadragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: param1)


  nimfunc[](slotval1)
proc QMdiAreadragLeaveEvent*(self: gen_qmdiarea_types.QMdiArea, param1: gen_qevent_types.QDragLeaveEvent): void =
  fQMdiArea_virtualbase_dragLeaveEvent(self.h, param1.h)

type QMdiAreadragLeaveEventProc* = proc(param1: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreadragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QMdiAreadragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_dragLeaveEvent(self: ptr cQMdiArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QMdiAreadragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: param1)


  nimfunc[](slotval1)
proc QMdiAreadropEvent*(self: gen_qmdiarea_types.QMdiArea, param1: gen_qevent_types.QDropEvent): void =
  fQMdiArea_virtualbase_dropEvent(self.h, param1.h)

type QMdiAreadropEventProc* = proc(param1: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreadropEventProc) =
  # TODO check subclass
  var tmp = new QMdiAreadropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_dropEvent(self: ptr cQMdiArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_dropEvent ".} =
  var nimfunc = cast[ptr QMdiAreadropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: param1)


  nimfunc[](slotval1)
proc QMdiAreakeyPressEvent*(self: gen_qmdiarea_types.QMdiArea, param1: gen_qevent_types.QKeyEvent): void =
  fQMdiArea_virtualbase_keyPressEvent(self.h, param1.h)

type QMdiAreakeyPressEventProc* = proc(param1: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreakeyPressEventProc) =
  # TODO check subclass
  var tmp = new QMdiAreakeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_keyPressEvent(self: ptr cQMdiArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_keyPressEvent ".} =
  var nimfunc = cast[ptr QMdiAreakeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)


  nimfunc[](slotval1)
proc QMdiAreaviewportSizeHint*(self: gen_qmdiarea_types.QMdiArea, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQMdiArea_virtualbase_viewportSizeHint(self.h))

type QMdiAreaviewportSizeHintProc* = proc(): gen_qsize_types.QSize
proc onviewportSizeHint*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreaviewportSizeHintProc) =
  # TODO check subclass
  var tmp = new QMdiAreaviewportSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_viewportSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_viewportSizeHint(self: ptr cQMdiArea, slot: int): pointer {.exportc: "miqt_exec_callback_QMdiArea_viewportSizeHint ".} =
  var nimfunc = cast[ptr QMdiAreaviewportSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QMdiAreachangeEvent*(self: gen_qmdiarea_types.QMdiArea, param1: gen_qcoreevent_types.QEvent): void =
  fQMdiArea_virtualbase_changeEvent(self.h, param1.h)

type QMdiAreachangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreachangeEventProc) =
  # TODO check subclass
  var tmp = new QMdiAreachangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_changeEvent(self: ptr cQMdiArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_changeEvent ".} =
  var nimfunc = cast[ptr QMdiAreachangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QMdiAreainitStyleOption*(self: gen_qmdiarea_types.QMdiArea, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fQMdiArea_virtualbase_initStyleOption(self.h, option.h)

type QMdiAreainitStyleOptionProc* = proc(option: gen_qstyleoption_types.QStyleOptionFrame): void
proc oninitStyleOption*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreainitStyleOptionProc) =
  # TODO check subclass
  var tmp = new QMdiAreainitStyleOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_initStyleOption(self: ptr cQMdiArea, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_initStyleOption ".} =
  var nimfunc = cast[ptr QMdiAreainitStyleOptionProc](cast[pointer](slot))
  let slotval1 = gen_qstyleoption_types.QStyleOptionFrame(h: option)


  nimfunc[](slotval1)
proc QMdiAreadevType*(self: gen_qmdiarea_types.QMdiArea, ): cint =
  fQMdiArea_virtualbase_devType(self.h)

type QMdiAreadevTypeProc* = proc(): cint
proc ondevType*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreadevTypeProc) =
  # TODO check subclass
  var tmp = new QMdiAreadevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_devType(self: ptr cQMdiArea, slot: int): cint {.exportc: "miqt_exec_callback_QMdiArea_devType ".} =
  var nimfunc = cast[ptr QMdiAreadevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QMdiAreasetVisible*(self: gen_qmdiarea_types.QMdiArea, visible: bool): void =
  fQMdiArea_virtualbase_setVisible(self.h, visible)

type QMdiAreasetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreasetVisibleProc) =
  # TODO check subclass
  var tmp = new QMdiAreasetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_setVisible(self: ptr cQMdiArea, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QMdiArea_setVisible ".} =
  var nimfunc = cast[ptr QMdiAreasetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QMdiAreaheightForWidth*(self: gen_qmdiarea_types.QMdiArea, param1: cint): cint =
  fQMdiArea_virtualbase_heightForWidth(self.h, param1)

type QMdiAreaheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreaheightForWidthProc) =
  # TODO check subclass
  var tmp = new QMdiAreaheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_heightForWidth(self: ptr cQMdiArea, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QMdiArea_heightForWidth ".} =
  var nimfunc = cast[ptr QMdiAreaheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMdiAreahasHeightForWidth*(self: gen_qmdiarea_types.QMdiArea, ): bool =
  fQMdiArea_virtualbase_hasHeightForWidth(self.h)

type QMdiAreahasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreahasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QMdiAreahasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_hasHeightForWidth(self: ptr cQMdiArea, slot: int): bool {.exportc: "miqt_exec_callback_QMdiArea_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QMdiAreahasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QMdiAreapaintEngine*(self: gen_qmdiarea_types.QMdiArea, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQMdiArea_virtualbase_paintEngine(self.h))

type QMdiAreapaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreapaintEngineProc) =
  # TODO check subclass
  var tmp = new QMdiAreapaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_paintEngine(self: ptr cQMdiArea, slot: int): pointer {.exportc: "miqt_exec_callback_QMdiArea_paintEngine ".} =
  var nimfunc = cast[ptr QMdiAreapaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QMdiAreakeyReleaseEvent*(self: gen_qmdiarea_types.QMdiArea, event: gen_qevent_types.QKeyEvent): void =
  fQMdiArea_virtualbase_keyReleaseEvent(self.h, event.h)

type QMdiAreakeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreakeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QMdiAreakeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_keyReleaseEvent(self: ptr cQMdiArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QMdiAreakeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QMdiAreafocusInEvent*(self: gen_qmdiarea_types.QMdiArea, event: gen_qevent_types.QFocusEvent): void =
  fQMdiArea_virtualbase_focusInEvent(self.h, event.h)

type QMdiAreafocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreafocusInEventProc) =
  # TODO check subclass
  var tmp = new QMdiAreafocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_focusInEvent(self: ptr cQMdiArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_focusInEvent ".} =
  var nimfunc = cast[ptr QMdiAreafocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QMdiAreafocusOutEvent*(self: gen_qmdiarea_types.QMdiArea, event: gen_qevent_types.QFocusEvent): void =
  fQMdiArea_virtualbase_focusOutEvent(self.h, event.h)

type QMdiAreafocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreafocusOutEventProc) =
  # TODO check subclass
  var tmp = new QMdiAreafocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_focusOutEvent(self: ptr cQMdiArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_focusOutEvent ".} =
  var nimfunc = cast[ptr QMdiAreafocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QMdiAreaenterEvent*(self: gen_qmdiarea_types.QMdiArea, event: gen_qevent_types.QEnterEvent): void =
  fQMdiArea_virtualbase_enterEvent(self.h, event.h)

type QMdiAreaenterEventProc* = proc(event: gen_qevent_types.QEnterEvent): void
proc onenterEvent*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreaenterEventProc) =
  # TODO check subclass
  var tmp = new QMdiAreaenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_enterEvent(self: ptr cQMdiArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_enterEvent ".} =
  var nimfunc = cast[ptr QMdiAreaenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)


  nimfunc[](slotval1)
proc QMdiArealeaveEvent*(self: gen_qmdiarea_types.QMdiArea, event: gen_qcoreevent_types.QEvent): void =
  fQMdiArea_virtualbase_leaveEvent(self.h, event.h)

type QMdiArealeaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiArealeaveEventProc) =
  # TODO check subclass
  var tmp = new QMdiArealeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_leaveEvent(self: ptr cQMdiArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_leaveEvent ".} =
  var nimfunc = cast[ptr QMdiArealeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QMdiAreamoveEvent*(self: gen_qmdiarea_types.QMdiArea, event: gen_qevent_types.QMoveEvent): void =
  fQMdiArea_virtualbase_moveEvent(self.h, event.h)

type QMdiAreamoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreamoveEventProc) =
  # TODO check subclass
  var tmp = new QMdiAreamoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_moveEvent(self: ptr cQMdiArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_moveEvent ".} =
  var nimfunc = cast[ptr QMdiAreamoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QMdiAreacloseEvent*(self: gen_qmdiarea_types.QMdiArea, event: gen_qevent_types.QCloseEvent): void =
  fQMdiArea_virtualbase_closeEvent(self.h, event.h)

type QMdiAreacloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreacloseEventProc) =
  # TODO check subclass
  var tmp = new QMdiAreacloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_closeEvent(self: ptr cQMdiArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_closeEvent ".} =
  var nimfunc = cast[ptr QMdiAreacloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QMdiAreatabletEvent*(self: gen_qmdiarea_types.QMdiArea, event: gen_qevent_types.QTabletEvent): void =
  fQMdiArea_virtualbase_tabletEvent(self.h, event.h)

type QMdiAreatabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreatabletEventProc) =
  # TODO check subclass
  var tmp = new QMdiAreatabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_tabletEvent(self: ptr cQMdiArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_tabletEvent ".} =
  var nimfunc = cast[ptr QMdiAreatabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QMdiAreaactionEvent*(self: gen_qmdiarea_types.QMdiArea, event: gen_qevent_types.QActionEvent): void =
  fQMdiArea_virtualbase_actionEvent(self.h, event.h)

type QMdiAreaactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreaactionEventProc) =
  # TODO check subclass
  var tmp = new QMdiAreaactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_actionEvent(self: ptr cQMdiArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_actionEvent ".} =
  var nimfunc = cast[ptr QMdiAreaactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QMdiAreahideEvent*(self: gen_qmdiarea_types.QMdiArea, event: gen_qevent_types.QHideEvent): void =
  fQMdiArea_virtualbase_hideEvent(self.h, event.h)

type QMdiAreahideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreahideEventProc) =
  # TODO check subclass
  var tmp = new QMdiAreahideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_hideEvent(self: ptr cQMdiArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_hideEvent ".} =
  var nimfunc = cast[ptr QMdiAreahideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QMdiAreanativeEvent*(self: gen_qmdiarea_types.QMdiArea, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQMdiArea_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QMdiAreanativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreanativeEventProc) =
  # TODO check subclass
  var tmp = new QMdiAreanativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_nativeEvent(self: ptr cQMdiArea, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QMdiArea_nativeEvent ".} =
  var nimfunc = cast[ptr QMdiAreanativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QMdiAreametric*(self: gen_qmdiarea_types.QMdiArea, param1: cint): cint =
  fQMdiArea_virtualbase_metric(self.h, cint(param1))

type QMdiAreametricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreametricProc) =
  # TODO check subclass
  var tmp = new QMdiAreametricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_metric(self: ptr cQMdiArea, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QMdiArea_metric ".} =
  var nimfunc = cast[ptr QMdiAreametricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMdiAreainitPainter*(self: gen_qmdiarea_types.QMdiArea, painter: gen_qpainter_types.QPainter): void =
  fQMdiArea_virtualbase_initPainter(self.h, painter.h)

type QMdiAreainitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreainitPainterProc) =
  # TODO check subclass
  var tmp = new QMdiAreainitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_initPainter(self: ptr cQMdiArea, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_initPainter ".} =
  var nimfunc = cast[ptr QMdiAreainitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QMdiArearedirected*(self: gen_qmdiarea_types.QMdiArea, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQMdiArea_virtualbase_redirected(self.h, offset.h))

type QMdiArearedirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiArearedirectedProc) =
  # TODO check subclass
  var tmp = new QMdiArearedirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_redirected(self: ptr cQMdiArea, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QMdiArea_redirected ".} =
  var nimfunc = cast[ptr QMdiArearedirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QMdiAreasharedPainter*(self: gen_qmdiarea_types.QMdiArea, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQMdiArea_virtualbase_sharedPainter(self.h))

type QMdiAreasharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreasharedPainterProc) =
  # TODO check subclass
  var tmp = new QMdiAreasharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_sharedPainter(self: ptr cQMdiArea, slot: int): pointer {.exportc: "miqt_exec_callback_QMdiArea_sharedPainter ".} =
  var nimfunc = cast[ptr QMdiAreasharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QMdiAreainputMethodEvent*(self: gen_qmdiarea_types.QMdiArea, param1: gen_qevent_types.QInputMethodEvent): void =
  fQMdiArea_virtualbase_inputMethodEvent(self.h, param1.h)

type QMdiAreainputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreainputMethodEventProc) =
  # TODO check subclass
  var tmp = new QMdiAreainputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_inputMethodEvent(self: ptr cQMdiArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_inputMethodEvent ".} =
  var nimfunc = cast[ptr QMdiAreainputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QMdiAreainputMethodQuery*(self: gen_qmdiarea_types.QMdiArea, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQMdiArea_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QMdiAreainputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreainputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QMdiAreainputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_inputMethodQuery(self: ptr cQMdiArea, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QMdiArea_inputMethodQuery ".} =
  var nimfunc = cast[ptr QMdiAreainputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QMdiAreafocusNextPrevChild*(self: gen_qmdiarea_types.QMdiArea, next: bool): bool =
  fQMdiArea_virtualbase_focusNextPrevChild(self.h, next)

type QMdiAreafocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreafocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QMdiAreafocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_focusNextPrevChild(self: ptr cQMdiArea, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QMdiArea_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QMdiAreafocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMdiAreacustomEvent*(self: gen_qmdiarea_types.QMdiArea, event: gen_qcoreevent_types.QEvent): void =
  fQMdiArea_virtualbase_customEvent(self.h, event.h)

type QMdiAreacustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreacustomEventProc) =
  # TODO check subclass
  var tmp = new QMdiAreacustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_customEvent(self: ptr cQMdiArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_customEvent ".} =
  var nimfunc = cast[ptr QMdiAreacustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QMdiAreaconnectNotify*(self: gen_qmdiarea_types.QMdiArea, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQMdiArea_virtualbase_connectNotify(self.h, signal.h)

type QMdiAreaconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreaconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QMdiAreaconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_connectNotify(self: ptr cQMdiArea, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_connectNotify ".} =
  var nimfunc = cast[ptr QMdiAreaconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QMdiAreadisconnectNotify*(self: gen_qmdiarea_types.QMdiArea, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQMdiArea_virtualbase_disconnectNotify(self.h, signal.h)

type QMdiAreadisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qmdiarea_types.QMdiArea, slot: QMdiAreadisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QMdiAreadisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiArea_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiArea_disconnectNotify(self: ptr cQMdiArea, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMdiArea_disconnectNotify ".} =
  var nimfunc = cast[ptr QMdiAreadisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qmdiarea_types.QMdiArea): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMdiArea_staticMetaObject())
proc delete*(self: gen_qmdiarea_types.QMdiArea) =
  fcQMdiArea_delete(self.h)
