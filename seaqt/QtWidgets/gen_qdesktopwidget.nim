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
{.compile("gen_qdesktopwidget.cpp", cflags).}


import ./gen_qdesktopwidget_types
export gen_qdesktopwidget_types

import
  ../QtCore/gen_qcoreevent_types,
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
  ./gen_qwidget
export
  gen_qcoreevent_types,
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
  gen_qwidget

type cQDesktopWidget*{.exportc: "QDesktopWidget", incompleteStruct.} = object

proc fcQDesktopWidget_metaObject(self: pointer, ): pointer {.importc: "QDesktopWidget_metaObject".}
proc fcQDesktopWidget_metacast(self: pointer, param1: cstring): pointer {.importc: "QDesktopWidget_metacast".}
proc fcQDesktopWidget_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDesktopWidget_metacall".}
proc fcQDesktopWidget_tr(s: cstring): struct_miqt_string {.importc: "QDesktopWidget_tr".}
proc fcQDesktopWidget_trUtf8(s: cstring): struct_miqt_string {.importc: "QDesktopWidget_trUtf8".}
proc fcQDesktopWidget_screenNumber(self: pointer, ): cint {.importc: "QDesktopWidget_screenNumber".}
proc fcQDesktopWidget_screenGeometry(self: pointer, widget: pointer): pointer {.importc: "QDesktopWidget_screenGeometry".}
proc fcQDesktopWidget_availableGeometry(self: pointer, widget: pointer): pointer {.importc: "QDesktopWidget_availableGeometry".}
proc fcQDesktopWidget_isVirtualDesktop(self: pointer, ): bool {.importc: "QDesktopWidget_isVirtualDesktop".}
proc fcQDesktopWidget_numScreens(self: pointer, ): cint {.importc: "QDesktopWidget_numScreens".}
proc fcQDesktopWidget_screenCount(self: pointer, ): cint {.importc: "QDesktopWidget_screenCount".}
proc fcQDesktopWidget_primaryScreen(self: pointer, ): cint {.importc: "QDesktopWidget_primaryScreen".}
proc fcQDesktopWidget_screenNumberWithQPoint(self: pointer, param1: pointer): cint {.importc: "QDesktopWidget_screenNumberWithQPoint".}
proc fcQDesktopWidget_screen(self: pointer, ): pointer {.importc: "QDesktopWidget_screen".}
proc fcQDesktopWidget_screenGeometry2(self: pointer, ): pointer {.importc: "QDesktopWidget_screenGeometry2".}
proc fcQDesktopWidget_screenGeometryWithPoint(self: pointer, point: pointer): pointer {.importc: "QDesktopWidget_screenGeometryWithPoint".}
proc fcQDesktopWidget_availableGeometry2(self: pointer, ): pointer {.importc: "QDesktopWidget_availableGeometry2".}
proc fcQDesktopWidget_availableGeometryWithPoint(self: pointer, point: pointer): pointer {.importc: "QDesktopWidget_availableGeometryWithPoint".}
proc fcQDesktopWidget_resized(self: pointer, param1: cint): void {.importc: "QDesktopWidget_resized".}
proc fcQDesktopWidget_connect_resized(self: pointer, slot: int, callback: proc (slot: int, param1: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDesktopWidget_connect_resized".}
proc fcQDesktopWidget_workAreaResized(self: pointer, param1: cint): void {.importc: "QDesktopWidget_workAreaResized".}
proc fcQDesktopWidget_connect_workAreaResized(self: pointer, slot: int, callback: proc (slot: int, param1: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDesktopWidget_connect_workAreaResized".}
proc fcQDesktopWidget_screenCountChanged(self: pointer, param1: cint): void {.importc: "QDesktopWidget_screenCountChanged".}
proc fcQDesktopWidget_connect_screenCountChanged(self: pointer, slot: int, callback: proc (slot: int, param1: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDesktopWidget_connect_screenCountChanged".}
proc fcQDesktopWidget_primaryScreenChanged(self: pointer, ): void {.importc: "QDesktopWidget_primaryScreenChanged".}
proc fcQDesktopWidget_connect_primaryScreenChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDesktopWidget_connect_primaryScreenChanged".}
proc fcQDesktopWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDesktopWidget_tr2".}
proc fcQDesktopWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDesktopWidget_tr3".}
proc fcQDesktopWidget_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QDesktopWidget_trUtf82".}
proc fcQDesktopWidget_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDesktopWidget_trUtf83".}
proc fcQDesktopWidget_screenNumber1(self: pointer, widget: pointer): cint {.importc: "QDesktopWidget_screenNumber1".}
proc fcQDesktopWidget_screen1(self: pointer, screen: cint): pointer {.importc: "QDesktopWidget_screen1".}
proc fcQDesktopWidget_screenGeometry1(self: pointer, screen: cint): pointer {.importc: "QDesktopWidget_screenGeometry1".}
proc fcQDesktopWidget_availableGeometry1(self: pointer, screen: cint): pointer {.importc: "QDesktopWidget_availableGeometry1".}
type cQDesktopWidgetVTable = object
  destructor*: proc(vtbl: ptr cQDesktopWidgetVTable, self: ptr cQDesktopWidget) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
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
  paintEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
proc fcQDesktopWidget_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QDesktopWidget_virtualbase_metaObject".}
proc fcQDesktopWidget_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QDesktopWidget_virtualbase_metacast".}
proc fcQDesktopWidget_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDesktopWidget_virtualbase_metacall".}
proc fcQDesktopWidget_virtualbase_resizeEvent(self: pointer, e: pointer): void {.importc: "QDesktopWidget_virtualbase_resizeEvent".}
proc fcQDesktopWidget_virtualbase_devType(self: pointer, ): cint {.importc: "QDesktopWidget_virtualbase_devType".}
proc fcQDesktopWidget_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QDesktopWidget_virtualbase_setVisible".}
proc fcQDesktopWidget_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QDesktopWidget_virtualbase_sizeHint".}
proc fcQDesktopWidget_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QDesktopWidget_virtualbase_minimumSizeHint".}
proc fcQDesktopWidget_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QDesktopWidget_virtualbase_heightForWidth".}
proc fcQDesktopWidget_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QDesktopWidget_virtualbase_hasHeightForWidth".}
proc fcQDesktopWidget_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QDesktopWidget_virtualbase_paintEngine".}
proc fcQDesktopWidget_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QDesktopWidget_virtualbase_event".}
proc fcQDesktopWidget_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QDesktopWidget_virtualbase_mousePressEvent".}
proc fcQDesktopWidget_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QDesktopWidget_virtualbase_mouseReleaseEvent".}
proc fcQDesktopWidget_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QDesktopWidget_virtualbase_mouseDoubleClickEvent".}
proc fcQDesktopWidget_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QDesktopWidget_virtualbase_mouseMoveEvent".}
proc fcQDesktopWidget_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QDesktopWidget_virtualbase_wheelEvent".}
proc fcQDesktopWidget_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QDesktopWidget_virtualbase_keyPressEvent".}
proc fcQDesktopWidget_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QDesktopWidget_virtualbase_keyReleaseEvent".}
proc fcQDesktopWidget_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QDesktopWidget_virtualbase_focusInEvent".}
proc fcQDesktopWidget_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QDesktopWidget_virtualbase_focusOutEvent".}
proc fcQDesktopWidget_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QDesktopWidget_virtualbase_enterEvent".}
proc fcQDesktopWidget_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QDesktopWidget_virtualbase_leaveEvent".}
proc fcQDesktopWidget_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QDesktopWidget_virtualbase_paintEvent".}
proc fcQDesktopWidget_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QDesktopWidget_virtualbase_moveEvent".}
proc fcQDesktopWidget_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QDesktopWidget_virtualbase_closeEvent".}
proc fcQDesktopWidget_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QDesktopWidget_virtualbase_contextMenuEvent".}
proc fcQDesktopWidget_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QDesktopWidget_virtualbase_tabletEvent".}
proc fcQDesktopWidget_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QDesktopWidget_virtualbase_actionEvent".}
proc fcQDesktopWidget_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QDesktopWidget_virtualbase_dragEnterEvent".}
proc fcQDesktopWidget_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QDesktopWidget_virtualbase_dragMoveEvent".}
proc fcQDesktopWidget_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QDesktopWidget_virtualbase_dragLeaveEvent".}
proc fcQDesktopWidget_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QDesktopWidget_virtualbase_dropEvent".}
proc fcQDesktopWidget_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QDesktopWidget_virtualbase_showEvent".}
proc fcQDesktopWidget_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QDesktopWidget_virtualbase_hideEvent".}
proc fcQDesktopWidget_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QDesktopWidget_virtualbase_nativeEvent".}
proc fcQDesktopWidget_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QDesktopWidget_virtualbase_changeEvent".}
proc fcQDesktopWidget_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QDesktopWidget_virtualbase_metric".}
proc fcQDesktopWidget_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QDesktopWidget_virtualbase_initPainter".}
proc fcQDesktopWidget_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QDesktopWidget_virtualbase_redirected".}
proc fcQDesktopWidget_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QDesktopWidget_virtualbase_sharedPainter".}
proc fcQDesktopWidget_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QDesktopWidget_virtualbase_inputMethodEvent".}
proc fcQDesktopWidget_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QDesktopWidget_virtualbase_inputMethodQuery".}
proc fcQDesktopWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QDesktopWidget_virtualbase_focusNextPrevChild".}
proc fcQDesktopWidget_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QDesktopWidget_virtualbase_eventFilter".}
proc fcQDesktopWidget_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QDesktopWidget_virtualbase_timerEvent".}
proc fcQDesktopWidget_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QDesktopWidget_virtualbase_childEvent".}
proc fcQDesktopWidget_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QDesktopWidget_virtualbase_customEvent".}
proc fcQDesktopWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QDesktopWidget_virtualbase_connectNotify".}
proc fcQDesktopWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QDesktopWidget_virtualbase_disconnectNotify".}
proc fcQDesktopWidget_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QDesktopWidget_protectedbase_updateMicroFocus".}
proc fcQDesktopWidget_protectedbase_create(self: pointer, ): void {.importc: "QDesktopWidget_protectedbase_create".}
proc fcQDesktopWidget_protectedbase_destroy(self: pointer, ): void {.importc: "QDesktopWidget_protectedbase_destroy".}
proc fcQDesktopWidget_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QDesktopWidget_protectedbase_focusNextChild".}
proc fcQDesktopWidget_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QDesktopWidget_protectedbase_focusPreviousChild".}
proc fcQDesktopWidget_protectedbase_sender(self: pointer, ): pointer {.importc: "QDesktopWidget_protectedbase_sender".}
proc fcQDesktopWidget_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QDesktopWidget_protectedbase_senderSignalIndex".}
proc fcQDesktopWidget_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QDesktopWidget_protectedbase_receivers".}
proc fcQDesktopWidget_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QDesktopWidget_protectedbase_isSignalConnected".}
proc fcQDesktopWidget_new(vtbl: pointer, ): ptr cQDesktopWidget {.importc: "QDesktopWidget_new".}
proc fcQDesktopWidget_staticMetaObject(): pointer {.importc: "QDesktopWidget_staticMetaObject".}
proc fcQDesktopWidget_delete(self: pointer) {.importc: "QDesktopWidget_delete".}

proc metaObject*(self: gen_qdesktopwidget_types.QDesktopWidget, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDesktopWidget_metaObject(self.h))

proc metacast*(self: gen_qdesktopwidget_types.QDesktopWidget, param1: cstring): pointer =
  fcQDesktopWidget_metacast(self.h, param1)

proc metacall*(self: gen_qdesktopwidget_types.QDesktopWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQDesktopWidget_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qdesktopwidget_types.QDesktopWidget, s: cstring): string =
  let v_ms = fcQDesktopWidget_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qdesktopwidget_types.QDesktopWidget, s: cstring): string =
  let v_ms = fcQDesktopWidget_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc screenNumber*(self: gen_qdesktopwidget_types.QDesktopWidget, ): cint =
  fcQDesktopWidget_screenNumber(self.h)

proc screenGeometry*(self: gen_qdesktopwidget_types.QDesktopWidget, widget: gen_qwidget_types.QWidget): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQDesktopWidget_screenGeometry(self.h, widget.h))

proc availableGeometry*(self: gen_qdesktopwidget_types.QDesktopWidget, widget: gen_qwidget_types.QWidget): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQDesktopWidget_availableGeometry(self.h, widget.h))

proc isVirtualDesktop*(self: gen_qdesktopwidget_types.QDesktopWidget, ): bool =
  fcQDesktopWidget_isVirtualDesktop(self.h)

proc numScreens*(self: gen_qdesktopwidget_types.QDesktopWidget, ): cint =
  fcQDesktopWidget_numScreens(self.h)

proc screenCount*(self: gen_qdesktopwidget_types.QDesktopWidget, ): cint =
  fcQDesktopWidget_screenCount(self.h)

proc primaryScreen*(self: gen_qdesktopwidget_types.QDesktopWidget, ): cint =
  fcQDesktopWidget_primaryScreen(self.h)

proc screenNumber*(self: gen_qdesktopwidget_types.QDesktopWidget, param1: gen_qpoint_types.QPoint): cint =
  fcQDesktopWidget_screenNumberWithQPoint(self.h, param1.h)

proc screen*(self: gen_qdesktopwidget_types.QDesktopWidget, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQDesktopWidget_screen(self.h))

proc screenGeometry*(self: gen_qdesktopwidget_types.QDesktopWidget, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQDesktopWidget_screenGeometry2(self.h))

proc screenGeometry*(self: gen_qdesktopwidget_types.QDesktopWidget, point: gen_qpoint_types.QPoint): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQDesktopWidget_screenGeometryWithPoint(self.h, point.h))

proc availableGeometry*(self: gen_qdesktopwidget_types.QDesktopWidget, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQDesktopWidget_availableGeometry2(self.h))

proc availableGeometry*(self: gen_qdesktopwidget_types.QDesktopWidget, point: gen_qpoint_types.QPoint): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQDesktopWidget_availableGeometryWithPoint(self.h, point.h))

proc resized*(self: gen_qdesktopwidget_types.QDesktopWidget, param1: cint): void =
  fcQDesktopWidget_resized(self.h, param1)

type QDesktopWidgetresizedSlot* = proc(param1: cint)
proc miqt_exec_callback_cQDesktopWidget_resized(slot: int, param1: cint) {.cdecl.} =
  let nimfunc = cast[ptr QDesktopWidgetresizedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc miqt_exec_callback_cQDesktopWidget_resized_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDesktopWidgetresizedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onresized*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetresizedSlot) =
  var tmp = new QDesktopWidgetresizedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_connect_resized(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQDesktopWidget_resized, miqt_exec_callback_cQDesktopWidget_resized_release)

proc workAreaResized*(self: gen_qdesktopwidget_types.QDesktopWidget, param1: cint): void =
  fcQDesktopWidget_workAreaResized(self.h, param1)

type QDesktopWidgetworkAreaResizedSlot* = proc(param1: cint)
proc miqt_exec_callback_cQDesktopWidget_workAreaResized(slot: int, param1: cint) {.cdecl.} =
  let nimfunc = cast[ptr QDesktopWidgetworkAreaResizedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc miqt_exec_callback_cQDesktopWidget_workAreaResized_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDesktopWidgetworkAreaResizedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onworkAreaResized*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetworkAreaResizedSlot) =
  var tmp = new QDesktopWidgetworkAreaResizedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_connect_workAreaResized(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQDesktopWidget_workAreaResized, miqt_exec_callback_cQDesktopWidget_workAreaResized_release)

proc screenCountChanged*(self: gen_qdesktopwidget_types.QDesktopWidget, param1: cint): void =
  fcQDesktopWidget_screenCountChanged(self.h, param1)

type QDesktopWidgetscreenCountChangedSlot* = proc(param1: cint)
proc miqt_exec_callback_cQDesktopWidget_screenCountChanged(slot: int, param1: cint) {.cdecl.} =
  let nimfunc = cast[ptr QDesktopWidgetscreenCountChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc miqt_exec_callback_cQDesktopWidget_screenCountChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDesktopWidgetscreenCountChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onscreenCountChanged*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetscreenCountChangedSlot) =
  var tmp = new QDesktopWidgetscreenCountChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_connect_screenCountChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQDesktopWidget_screenCountChanged, miqt_exec_callback_cQDesktopWidget_screenCountChanged_release)

proc primaryScreenChanged*(self: gen_qdesktopwidget_types.QDesktopWidget, ): void =
  fcQDesktopWidget_primaryScreenChanged(self.h)

type QDesktopWidgetprimaryScreenChangedSlot* = proc()
proc miqt_exec_callback_cQDesktopWidget_primaryScreenChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QDesktopWidgetprimaryScreenChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQDesktopWidget_primaryScreenChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDesktopWidgetprimaryScreenChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onprimaryScreenChanged*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetprimaryScreenChangedSlot) =
  var tmp = new QDesktopWidgetprimaryScreenChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_connect_primaryScreenChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQDesktopWidget_primaryScreenChanged, miqt_exec_callback_cQDesktopWidget_primaryScreenChanged_release)

proc tr*(_: type gen_qdesktopwidget_types.QDesktopWidget, s: cstring, c: cstring): string =
  let v_ms = fcQDesktopWidget_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qdesktopwidget_types.QDesktopWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDesktopWidget_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qdesktopwidget_types.QDesktopWidget, s: cstring, c: cstring): string =
  let v_ms = fcQDesktopWidget_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qdesktopwidget_types.QDesktopWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDesktopWidget_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc screenNumber*(self: gen_qdesktopwidget_types.QDesktopWidget, widget: gen_qwidget_types.QWidget): cint =
  fcQDesktopWidget_screenNumber1(self.h, widget.h)

proc screen*(self: gen_qdesktopwidget_types.QDesktopWidget, screen: cint): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQDesktopWidget_screen1(self.h, screen))

proc screenGeometry*(self: gen_qdesktopwidget_types.QDesktopWidget, screen: cint): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQDesktopWidget_screenGeometry1(self.h, screen))

proc availableGeometry*(self: gen_qdesktopwidget_types.QDesktopWidget, screen: cint): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQDesktopWidget_availableGeometry1(self.h, screen))

type QDesktopWidgetmetaObjectProc* = proc(self: QDesktopWidget): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QDesktopWidgetmetacastProc* = proc(self: QDesktopWidget, param1: cstring): pointer {.raises: [], gcsafe.}
type QDesktopWidgetmetacallProc* = proc(self: QDesktopWidget, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QDesktopWidgetresizeEventProc* = proc(self: QDesktopWidget, e: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QDesktopWidgetdevTypeProc* = proc(self: QDesktopWidget): cint {.raises: [], gcsafe.}
type QDesktopWidgetsetVisibleProc* = proc(self: QDesktopWidget, visible: bool): void {.raises: [], gcsafe.}
type QDesktopWidgetsizeHintProc* = proc(self: QDesktopWidget): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QDesktopWidgetminimumSizeHintProc* = proc(self: QDesktopWidget): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QDesktopWidgetheightForWidthProc* = proc(self: QDesktopWidget, param1: cint): cint {.raises: [], gcsafe.}
type QDesktopWidgethasHeightForWidthProc* = proc(self: QDesktopWidget): bool {.raises: [], gcsafe.}
type QDesktopWidgetpaintEngineProc* = proc(self: QDesktopWidget): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QDesktopWidgeteventProc* = proc(self: QDesktopWidget, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QDesktopWidgetmousePressEventProc* = proc(self: QDesktopWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDesktopWidgetmouseReleaseEventProc* = proc(self: QDesktopWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDesktopWidgetmouseDoubleClickEventProc* = proc(self: QDesktopWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDesktopWidgetmouseMoveEventProc* = proc(self: QDesktopWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDesktopWidgetwheelEventProc* = proc(self: QDesktopWidget, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QDesktopWidgetkeyPressEventProc* = proc(self: QDesktopWidget, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QDesktopWidgetkeyReleaseEventProc* = proc(self: QDesktopWidget, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QDesktopWidgetfocusInEventProc* = proc(self: QDesktopWidget, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QDesktopWidgetfocusOutEventProc* = proc(self: QDesktopWidget, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QDesktopWidgetenterEventProc* = proc(self: QDesktopWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDesktopWidgetleaveEventProc* = proc(self: QDesktopWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDesktopWidgetpaintEventProc* = proc(self: QDesktopWidget, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QDesktopWidgetmoveEventProc* = proc(self: QDesktopWidget, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QDesktopWidgetcloseEventProc* = proc(self: QDesktopWidget, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QDesktopWidgetcontextMenuEventProc* = proc(self: QDesktopWidget, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QDesktopWidgettabletEventProc* = proc(self: QDesktopWidget, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QDesktopWidgetactionEventProc* = proc(self: QDesktopWidget, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QDesktopWidgetdragEnterEventProc* = proc(self: QDesktopWidget, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QDesktopWidgetdragMoveEventProc* = proc(self: QDesktopWidget, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QDesktopWidgetdragLeaveEventProc* = proc(self: QDesktopWidget, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QDesktopWidgetdropEventProc* = proc(self: QDesktopWidget, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QDesktopWidgetshowEventProc* = proc(self: QDesktopWidget, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QDesktopWidgethideEventProc* = proc(self: QDesktopWidget, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QDesktopWidgetnativeEventProc* = proc(self: QDesktopWidget, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QDesktopWidgetchangeEventProc* = proc(self: QDesktopWidget, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDesktopWidgetmetricProc* = proc(self: QDesktopWidget, param1: cint): cint {.raises: [], gcsafe.}
type QDesktopWidgetinitPainterProc* = proc(self: QDesktopWidget, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QDesktopWidgetredirectedProc* = proc(self: QDesktopWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QDesktopWidgetsharedPainterProc* = proc(self: QDesktopWidget): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QDesktopWidgetinputMethodEventProc* = proc(self: QDesktopWidget, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QDesktopWidgetinputMethodQueryProc* = proc(self: QDesktopWidget, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QDesktopWidgetfocusNextPrevChildProc* = proc(self: QDesktopWidget, next: bool): bool {.raises: [], gcsafe.}
type QDesktopWidgeteventFilterProc* = proc(self: QDesktopWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QDesktopWidgettimerEventProc* = proc(self: QDesktopWidget, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QDesktopWidgetchildEventProc* = proc(self: QDesktopWidget, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QDesktopWidgetcustomEventProc* = proc(self: QDesktopWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDesktopWidgetconnectNotifyProc* = proc(self: QDesktopWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QDesktopWidgetdisconnectNotifyProc* = proc(self: QDesktopWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QDesktopWidgetVTable* = object
  vtbl: cQDesktopWidgetVTable
  metaObject*: QDesktopWidgetmetaObjectProc
  metacast*: QDesktopWidgetmetacastProc
  metacall*: QDesktopWidgetmetacallProc
  resizeEvent*: QDesktopWidgetresizeEventProc
  devType*: QDesktopWidgetdevTypeProc
  setVisible*: QDesktopWidgetsetVisibleProc
  sizeHint*: QDesktopWidgetsizeHintProc
  minimumSizeHint*: QDesktopWidgetminimumSizeHintProc
  heightForWidth*: QDesktopWidgetheightForWidthProc
  hasHeightForWidth*: QDesktopWidgethasHeightForWidthProc
  paintEngine*: QDesktopWidgetpaintEngineProc
  event*: QDesktopWidgeteventProc
  mousePressEvent*: QDesktopWidgetmousePressEventProc
  mouseReleaseEvent*: QDesktopWidgetmouseReleaseEventProc
  mouseDoubleClickEvent*: QDesktopWidgetmouseDoubleClickEventProc
  mouseMoveEvent*: QDesktopWidgetmouseMoveEventProc
  wheelEvent*: QDesktopWidgetwheelEventProc
  keyPressEvent*: QDesktopWidgetkeyPressEventProc
  keyReleaseEvent*: QDesktopWidgetkeyReleaseEventProc
  focusInEvent*: QDesktopWidgetfocusInEventProc
  focusOutEvent*: QDesktopWidgetfocusOutEventProc
  enterEvent*: QDesktopWidgetenterEventProc
  leaveEvent*: QDesktopWidgetleaveEventProc
  paintEvent*: QDesktopWidgetpaintEventProc
  moveEvent*: QDesktopWidgetmoveEventProc
  closeEvent*: QDesktopWidgetcloseEventProc
  contextMenuEvent*: QDesktopWidgetcontextMenuEventProc
  tabletEvent*: QDesktopWidgettabletEventProc
  actionEvent*: QDesktopWidgetactionEventProc
  dragEnterEvent*: QDesktopWidgetdragEnterEventProc
  dragMoveEvent*: QDesktopWidgetdragMoveEventProc
  dragLeaveEvent*: QDesktopWidgetdragLeaveEventProc
  dropEvent*: QDesktopWidgetdropEventProc
  showEvent*: QDesktopWidgetshowEventProc
  hideEvent*: QDesktopWidgethideEventProc
  nativeEvent*: QDesktopWidgetnativeEventProc
  changeEvent*: QDesktopWidgetchangeEventProc
  metric*: QDesktopWidgetmetricProc
  initPainter*: QDesktopWidgetinitPainterProc
  redirected*: QDesktopWidgetredirectedProc
  sharedPainter*: QDesktopWidgetsharedPainterProc
  inputMethodEvent*: QDesktopWidgetinputMethodEventProc
  inputMethodQuery*: QDesktopWidgetinputMethodQueryProc
  focusNextPrevChild*: QDesktopWidgetfocusNextPrevChildProc
  eventFilter*: QDesktopWidgeteventFilterProc
  timerEvent*: QDesktopWidgettimerEventProc
  childEvent*: QDesktopWidgetchildEventProc
  customEvent*: QDesktopWidgetcustomEventProc
  connectNotify*: QDesktopWidgetconnectNotifyProc
  disconnectNotify*: QDesktopWidgetdisconnectNotifyProc
proc QDesktopWidgetmetaObject*(self: gen_qdesktopwidget_types.QDesktopWidget, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDesktopWidget_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQDesktopWidget_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QDesktopWidgetmetacast*(self: gen_qdesktopwidget_types.QDesktopWidget, param1: cstring): pointer =
  fcQDesktopWidget_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQDesktopWidget_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QDesktopWidgetmetacall*(self: gen_qdesktopwidget_types.QDesktopWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQDesktopWidget_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQDesktopWidget_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QDesktopWidgetresizeEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, e: gen_qevent_types.QResizeEvent): void =
  fcQDesktopWidget_virtualbase_resizeEvent(self.h, e.h)

proc miqt_exec_callback_cQDesktopWidget_resizeEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: e)
  vtbl[].resizeEvent(self, slotval1)

proc QDesktopWidgetdevType*(self: gen_qdesktopwidget_types.QDesktopWidget, ): cint =
  fcQDesktopWidget_virtualbase_devType(self.h)

proc miqt_exec_callback_cQDesktopWidget_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QDesktopWidgetsetVisible*(self: gen_qdesktopwidget_types.QDesktopWidget, visible: bool): void =
  fcQDesktopWidget_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQDesktopWidget_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QDesktopWidgetsizeHint*(self: gen_qdesktopwidget_types.QDesktopWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDesktopWidget_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQDesktopWidget_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QDesktopWidgetminimumSizeHint*(self: gen_qdesktopwidget_types.QDesktopWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDesktopWidget_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQDesktopWidget_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QDesktopWidgetheightForWidth*(self: gen_qdesktopwidget_types.QDesktopWidget, param1: cint): cint =
  fcQDesktopWidget_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQDesktopWidget_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QDesktopWidgethasHeightForWidth*(self: gen_qdesktopwidget_types.QDesktopWidget, ): bool =
  fcQDesktopWidget_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQDesktopWidget_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QDesktopWidgetpaintEngine*(self: gen_qdesktopwidget_types.QDesktopWidget, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQDesktopWidget_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQDesktopWidget_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QDesktopWidgetevent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qcoreevent_types.QEvent): bool =
  fcQDesktopWidget_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQDesktopWidget_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QDesktopWidgetmousePressEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQDesktopWidget_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQDesktopWidget_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QDesktopWidgetmouseReleaseEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQDesktopWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQDesktopWidget_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QDesktopWidgetmouseDoubleClickEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQDesktopWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQDesktopWidget_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QDesktopWidgetmouseMoveEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQDesktopWidget_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQDesktopWidget_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QDesktopWidgetwheelEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QWheelEvent): void =
  fcQDesktopWidget_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQDesktopWidget_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QDesktopWidgetkeyPressEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQDesktopWidget_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQDesktopWidget_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyPressEvent(self, slotval1)

proc QDesktopWidgetkeyReleaseEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQDesktopWidget_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQDesktopWidget_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QDesktopWidgetfocusInEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQDesktopWidget_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQDesktopWidget_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QDesktopWidgetfocusOutEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQDesktopWidget_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQDesktopWidget_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QDesktopWidgetenterEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQDesktopWidget_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQDesktopWidget_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QDesktopWidgetleaveEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQDesktopWidget_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQDesktopWidget_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QDesktopWidgetpaintEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QPaintEvent): void =
  fcQDesktopWidget_virtualbase_paintEvent(self.h, event.h)

proc miqt_exec_callback_cQDesktopWidget_paintEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)
  vtbl[].paintEvent(self, slotval1)

proc QDesktopWidgetmoveEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QMoveEvent): void =
  fcQDesktopWidget_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQDesktopWidget_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QDesktopWidgetcloseEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QCloseEvent): void =
  fcQDesktopWidget_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQDesktopWidget_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QDesktopWidgetcontextMenuEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QContextMenuEvent): void =
  fcQDesktopWidget_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQDesktopWidget_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)
  vtbl[].contextMenuEvent(self, slotval1)

proc QDesktopWidgettabletEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QTabletEvent): void =
  fcQDesktopWidget_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQDesktopWidget_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QDesktopWidgetactionEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QActionEvent): void =
  fcQDesktopWidget_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQDesktopWidget_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QDesktopWidgetdragEnterEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QDragEnterEvent): void =
  fcQDesktopWidget_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQDesktopWidget_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QDesktopWidgetdragMoveEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QDragMoveEvent): void =
  fcQDesktopWidget_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQDesktopWidget_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QDesktopWidgetdragLeaveEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQDesktopWidget_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQDesktopWidget_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QDesktopWidgetdropEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QDropEvent): void =
  fcQDesktopWidget_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQDesktopWidget_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QDesktopWidgetshowEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QShowEvent): void =
  fcQDesktopWidget_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQDesktopWidget_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  vtbl[].showEvent(self, slotval1)

proc QDesktopWidgethideEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QHideEvent): void =
  fcQDesktopWidget_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQDesktopWidget_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QDesktopWidgetnativeEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fcQDesktopWidget_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQDesktopWidget_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QDesktopWidgetchangeEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, param1: gen_qcoreevent_types.QEvent): void =
  fcQDesktopWidget_virtualbase_changeEvent(self.h, param1.h)

proc miqt_exec_callback_cQDesktopWidget_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  vtbl[].changeEvent(self, slotval1)

proc QDesktopWidgetmetric*(self: gen_qdesktopwidget_types.QDesktopWidget, param1: cint): cint =
  fcQDesktopWidget_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQDesktopWidget_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QDesktopWidgetinitPainter*(self: gen_qdesktopwidget_types.QDesktopWidget, painter: gen_qpainter_types.QPainter): void =
  fcQDesktopWidget_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQDesktopWidget_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QDesktopWidgetredirected*(self: gen_qdesktopwidget_types.QDesktopWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQDesktopWidget_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQDesktopWidget_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QDesktopWidgetsharedPainter*(self: gen_qdesktopwidget_types.QDesktopWidget, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQDesktopWidget_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQDesktopWidget_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QDesktopWidgetinputMethodEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQDesktopWidget_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQDesktopWidget_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QDesktopWidgetinputMethodQuery*(self: gen_qdesktopwidget_types.QDesktopWidget, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQDesktopWidget_virtualbase_inputMethodQuery(self.h, cint(param1)))

proc miqt_exec_callback_cQDesktopWidget_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QDesktopWidgetfocusNextPrevChild*(self: gen_qdesktopwidget_types.QDesktopWidget, next: bool): bool =
  fcQDesktopWidget_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQDesktopWidget_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QDesktopWidgeteventFilter*(self: gen_qdesktopwidget_types.QDesktopWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQDesktopWidget_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQDesktopWidget_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QDesktopWidgettimerEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQDesktopWidget_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQDesktopWidget_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QDesktopWidgetchildEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qcoreevent_types.QChildEvent): void =
  fcQDesktopWidget_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQDesktopWidget_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QDesktopWidgetcustomEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQDesktopWidget_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQDesktopWidget_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QDesktopWidgetconnectNotify*(self: gen_qdesktopwidget_types.QDesktopWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDesktopWidget_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQDesktopWidget_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QDesktopWidgetdisconnectNotify*(self: gen_qdesktopwidget_types.QDesktopWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDesktopWidget_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQDesktopWidget_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](vtbl)
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc updateMicroFocus*(self: gen_qdesktopwidget_types.QDesktopWidget, ): void =
  fcQDesktopWidget_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qdesktopwidget_types.QDesktopWidget, ): void =
  fcQDesktopWidget_protectedbase_create(self.h)

proc destroy*(self: gen_qdesktopwidget_types.QDesktopWidget, ): void =
  fcQDesktopWidget_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qdesktopwidget_types.QDesktopWidget, ): bool =
  fcQDesktopWidget_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qdesktopwidget_types.QDesktopWidget, ): bool =
  fcQDesktopWidget_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qdesktopwidget_types.QDesktopWidget, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQDesktopWidget_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qdesktopwidget_types.QDesktopWidget, ): cint =
  fcQDesktopWidget_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qdesktopwidget_types.QDesktopWidget, signal: cstring): cint =
  fcQDesktopWidget_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qdesktopwidget_types.QDesktopWidget, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQDesktopWidget_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qdesktopwidget_types.QDesktopWidget,
    vtbl: ref QDesktopWidgetVTable = nil): gen_qdesktopwidget_types.QDesktopWidget =
  let vtbl = if vtbl == nil: new QDesktopWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQDesktopWidgetVTable, _: ptr cQDesktopWidget) {.cdecl.} =
    let vtbl = cast[ref QDesktopWidgetVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQDesktopWidget_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQDesktopWidget_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQDesktopWidget_metacall
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQDesktopWidget_resizeEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQDesktopWidget_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQDesktopWidget_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQDesktopWidget_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQDesktopWidget_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQDesktopWidget_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQDesktopWidget_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQDesktopWidget_paintEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQDesktopWidget_event
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQDesktopWidget_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQDesktopWidget_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQDesktopWidget_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQDesktopWidget_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQDesktopWidget_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQDesktopWidget_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQDesktopWidget_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQDesktopWidget_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQDesktopWidget_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQDesktopWidget_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQDesktopWidget_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQDesktopWidget_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQDesktopWidget_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQDesktopWidget_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQDesktopWidget_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQDesktopWidget_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQDesktopWidget_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQDesktopWidget_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQDesktopWidget_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQDesktopWidget_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQDesktopWidget_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQDesktopWidget_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQDesktopWidget_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQDesktopWidget_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQDesktopWidget_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQDesktopWidget_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQDesktopWidget_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQDesktopWidget_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQDesktopWidget_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQDesktopWidget_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQDesktopWidget_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQDesktopWidget_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQDesktopWidget_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQDesktopWidget_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQDesktopWidget_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQDesktopWidget_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQDesktopWidget_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQDesktopWidget_disconnectNotify
  gen_qdesktopwidget_types.QDesktopWidget(h: fcQDesktopWidget_new(addr(vtbl[]), ))

proc staticMetaObject*(_: type gen_qdesktopwidget_types.QDesktopWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDesktopWidget_staticMetaObject())
proc delete*(self: gen_qdesktopwidget_types.QDesktopWidget) =
  fcQDesktopWidget_delete(self.h)
