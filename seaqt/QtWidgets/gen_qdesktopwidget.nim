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


{.compile("gen_qdesktopwidget.cpp", QtWidgetsCFlags).}


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

proc fcQDesktopWidget_metaObject(self: pointer): pointer {.importc: "QDesktopWidget_metaObject".}
proc fcQDesktopWidget_metacast(self: pointer, param1: cstring): pointer {.importc: "QDesktopWidget_metacast".}
proc fcQDesktopWidget_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDesktopWidget_metacall".}
proc fcQDesktopWidget_tr(s: cstring): struct_miqt_string {.importc: "QDesktopWidget_tr".}
proc fcQDesktopWidget_trUtf8(s: cstring): struct_miqt_string {.importc: "QDesktopWidget_trUtf8".}
proc fcQDesktopWidget_screenNumber(self: pointer): cint {.importc: "QDesktopWidget_screenNumber".}
proc fcQDesktopWidget_screenGeometry(self: pointer, widget: pointer): pointer {.importc: "QDesktopWidget_screenGeometry".}
proc fcQDesktopWidget_availableGeometry(self: pointer, widget: pointer): pointer {.importc: "QDesktopWidget_availableGeometry".}
proc fcQDesktopWidget_isVirtualDesktop(self: pointer): bool {.importc: "QDesktopWidget_isVirtualDesktop".}
proc fcQDesktopWidget_numScreens(self: pointer): cint {.importc: "QDesktopWidget_numScreens".}
proc fcQDesktopWidget_screenCount(self: pointer): cint {.importc: "QDesktopWidget_screenCount".}
proc fcQDesktopWidget_primaryScreen(self: pointer): cint {.importc: "QDesktopWidget_primaryScreen".}
proc fcQDesktopWidget_screenNumberWithQPoint(self: pointer, param1: pointer): cint {.importc: "QDesktopWidget_screenNumberWithQPoint".}
proc fcQDesktopWidget_screen(self: pointer): pointer {.importc: "QDesktopWidget_screen".}
proc fcQDesktopWidget_screenGeometry2(self: pointer): pointer {.importc: "QDesktopWidget_screenGeometry2".}
proc fcQDesktopWidget_screenGeometryWithPoint(self: pointer, point: pointer): pointer {.importc: "QDesktopWidget_screenGeometryWithPoint".}
proc fcQDesktopWidget_availableGeometry2(self: pointer): pointer {.importc: "QDesktopWidget_availableGeometry2".}
proc fcQDesktopWidget_availableGeometryWithPoint(self: pointer, point: pointer): pointer {.importc: "QDesktopWidget_availableGeometryWithPoint".}
proc fcQDesktopWidget_resized(self: pointer, param1: cint): void {.importc: "QDesktopWidget_resized".}
proc fcQDesktopWidget_connect_resized(self: pointer, slot: int, callback: proc (slot: int, param1: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDesktopWidget_connect_resized".}
proc fcQDesktopWidget_workAreaResized(self: pointer, param1: cint): void {.importc: "QDesktopWidget_workAreaResized".}
proc fcQDesktopWidget_connect_workAreaResized(self: pointer, slot: int, callback: proc (slot: int, param1: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDesktopWidget_connect_workAreaResized".}
proc fcQDesktopWidget_screenCountChanged(self: pointer, param1: cint): void {.importc: "QDesktopWidget_screenCountChanged".}
proc fcQDesktopWidget_connect_screenCountChanged(self: pointer, slot: int, callback: proc (slot: int, param1: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDesktopWidget_connect_screenCountChanged".}
proc fcQDesktopWidget_primaryScreenChanged(self: pointer): void {.importc: "QDesktopWidget_primaryScreenChanged".}
proc fcQDesktopWidget_connect_primaryScreenChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDesktopWidget_connect_primaryScreenChanged".}
proc fcQDesktopWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDesktopWidget_tr2".}
proc fcQDesktopWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDesktopWidget_tr3".}
proc fcQDesktopWidget_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QDesktopWidget_trUtf82".}
proc fcQDesktopWidget_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDesktopWidget_trUtf83".}
proc fcQDesktopWidget_screenNumber1(self: pointer, widget: pointer): cint {.importc: "QDesktopWidget_screenNumber1".}
proc fcQDesktopWidget_screen1(self: pointer, screen: cint): pointer {.importc: "QDesktopWidget_screen1".}
proc fcQDesktopWidget_screenGeometry1(self: pointer, screen: cint): pointer {.importc: "QDesktopWidget_screenGeometry1".}
proc fcQDesktopWidget_availableGeometry1(self: pointer, screen: cint): pointer {.importc: "QDesktopWidget_availableGeometry1".}
proc fcQDesktopWidget_vtbl(self: pointer): pointer {.importc: "QDesktopWidget_vtbl".}
proc fcQDesktopWidget_vdata(self: pointer): pointer {.importc: "QDesktopWidget_vdata".}

type cQDesktopWidgetVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
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
  paintEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
  nativeEvent*: proc(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
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
proc fcQDesktopWidget_virtualbase_metaObject(self: pointer): pointer {.importc: "QDesktopWidget_virtualbase_metaObject".}
proc fcQDesktopWidget_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QDesktopWidget_virtualbase_metacast".}
proc fcQDesktopWidget_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDesktopWidget_virtualbase_metacall".}
proc fcQDesktopWidget_virtualbase_resizeEvent(self: pointer, e: pointer): void {.importc: "QDesktopWidget_virtualbase_resizeEvent".}
proc fcQDesktopWidget_virtualbase_devType(self: pointer): cint {.importc: "QDesktopWidget_virtualbase_devType".}
proc fcQDesktopWidget_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QDesktopWidget_virtualbase_setVisible".}
proc fcQDesktopWidget_virtualbase_sizeHint(self: pointer): pointer {.importc: "QDesktopWidget_virtualbase_sizeHint".}
proc fcQDesktopWidget_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QDesktopWidget_virtualbase_minimumSizeHint".}
proc fcQDesktopWidget_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QDesktopWidget_virtualbase_heightForWidth".}
proc fcQDesktopWidget_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QDesktopWidget_virtualbase_hasHeightForWidth".}
proc fcQDesktopWidget_virtualbase_paintEngine(self: pointer): pointer {.importc: "QDesktopWidget_virtualbase_paintEngine".}
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
proc fcQDesktopWidget_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QDesktopWidget_virtualbase_sharedPainter".}
proc fcQDesktopWidget_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QDesktopWidget_virtualbase_inputMethodEvent".}
proc fcQDesktopWidget_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QDesktopWidget_virtualbase_inputMethodQuery".}
proc fcQDesktopWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QDesktopWidget_virtualbase_focusNextPrevChild".}
proc fcQDesktopWidget_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QDesktopWidget_virtualbase_eventFilter".}
proc fcQDesktopWidget_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QDesktopWidget_virtualbase_timerEvent".}
proc fcQDesktopWidget_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QDesktopWidget_virtualbase_childEvent".}
proc fcQDesktopWidget_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QDesktopWidget_virtualbase_customEvent".}
proc fcQDesktopWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QDesktopWidget_virtualbase_connectNotify".}
proc fcQDesktopWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QDesktopWidget_virtualbase_disconnectNotify".}
proc fcQDesktopWidget_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QDesktopWidget_protectedbase_updateMicroFocus".}
proc fcQDesktopWidget_protectedbase_create(self: pointer): void {.importc: "QDesktopWidget_protectedbase_create".}
proc fcQDesktopWidget_protectedbase_destroy(self: pointer): void {.importc: "QDesktopWidget_protectedbase_destroy".}
proc fcQDesktopWidget_protectedbase_focusNextChild(self: pointer): bool {.importc: "QDesktopWidget_protectedbase_focusNextChild".}
proc fcQDesktopWidget_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QDesktopWidget_protectedbase_focusPreviousChild".}
proc fcQDesktopWidget_protectedbase_sender(self: pointer): pointer {.importc: "QDesktopWidget_protectedbase_sender".}
proc fcQDesktopWidget_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QDesktopWidget_protectedbase_senderSignalIndex".}
proc fcQDesktopWidget_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QDesktopWidget_protectedbase_receivers".}
proc fcQDesktopWidget_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QDesktopWidget_protectedbase_isSignalConnected".}
proc fcQDesktopWidget_new(vtbl, vdata: pointer): ptr cQDesktopWidget {.importc: "QDesktopWidget_new".}
proc fcQDesktopWidget_staticMetaObject(): pointer {.importc: "QDesktopWidget_staticMetaObject".}

proc metaObject*(self: gen_qdesktopwidget_types.QDesktopWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDesktopWidget_metaObject(self.h), owned: false)

proc metacast*(self: gen_qdesktopwidget_types.QDesktopWidget, param1: cstring): pointer =
  fcQDesktopWidget_metacast(self.h, param1)

proc metacall*(self: gen_qdesktopwidget_types.QDesktopWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQDesktopWidget_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qdesktopwidget_types.QDesktopWidget, s: cstring): string =
  let v_ms = fcQDesktopWidget_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qdesktopwidget_types.QDesktopWidget, s: cstring): string =
  let v_ms = fcQDesktopWidget_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc screenNumber*(self: gen_qdesktopwidget_types.QDesktopWidget): cint =
  fcQDesktopWidget_screenNumber(self.h)

proc screenGeometry*(self: gen_qdesktopwidget_types.QDesktopWidget, widget: gen_qwidget_types.QWidget): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQDesktopWidget_screenGeometry(self.h, widget.h), owned: true)

proc availableGeometry*(self: gen_qdesktopwidget_types.QDesktopWidget, widget: gen_qwidget_types.QWidget): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQDesktopWidget_availableGeometry(self.h, widget.h), owned: true)

proc isVirtualDesktop*(self: gen_qdesktopwidget_types.QDesktopWidget): bool =
  fcQDesktopWidget_isVirtualDesktop(self.h)

proc numScreens*(self: gen_qdesktopwidget_types.QDesktopWidget): cint =
  fcQDesktopWidget_numScreens(self.h)

proc screenCount*(self: gen_qdesktopwidget_types.QDesktopWidget): cint =
  fcQDesktopWidget_screenCount(self.h)

proc primaryScreen*(self: gen_qdesktopwidget_types.QDesktopWidget): cint =
  fcQDesktopWidget_primaryScreen(self.h)

proc screenNumber*(self: gen_qdesktopwidget_types.QDesktopWidget, param1: gen_qpoint_types.QPoint): cint =
  fcQDesktopWidget_screenNumberWithQPoint(self.h, param1.h)

proc screen*(self: gen_qdesktopwidget_types.QDesktopWidget): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQDesktopWidget_screen(self.h), owned: false)

proc screenGeometry*(self: gen_qdesktopwidget_types.QDesktopWidget): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQDesktopWidget_screenGeometry2(self.h), owned: true)

proc screenGeometry*(self: gen_qdesktopwidget_types.QDesktopWidget, point: gen_qpoint_types.QPoint): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQDesktopWidget_screenGeometryWithPoint(self.h, point.h), owned: true)

proc availableGeometry*(self: gen_qdesktopwidget_types.QDesktopWidget): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQDesktopWidget_availableGeometry2(self.h), owned: true)

proc availableGeometry*(self: gen_qdesktopwidget_types.QDesktopWidget, point: gen_qpoint_types.QPoint): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQDesktopWidget_availableGeometryWithPoint(self.h, point.h), owned: true)

proc resized*(self: gen_qdesktopwidget_types.QDesktopWidget, param1: cint): void =
  fcQDesktopWidget_resized(self.h, param1)

type QDesktopWidgetresizedSlot* = proc(param1: cint)
proc fcQDesktopWidget_slot_callback_resized(slot: int, param1: cint) {.cdecl.} =
  let nimfunc = cast[ptr QDesktopWidgetresizedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc fcQDesktopWidget_slot_callback_resized_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDesktopWidgetresizedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onResized*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetresizedSlot) =
  var tmp = new QDesktopWidgetresizedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_connect_resized(self.h, cast[int](addr tmp[]), fcQDesktopWidget_slot_callback_resized, fcQDesktopWidget_slot_callback_resized_release)

proc workAreaResized*(self: gen_qdesktopwidget_types.QDesktopWidget, param1: cint): void =
  fcQDesktopWidget_workAreaResized(self.h, param1)

type QDesktopWidgetworkAreaResizedSlot* = proc(param1: cint)
proc fcQDesktopWidget_slot_callback_workAreaResized(slot: int, param1: cint) {.cdecl.} =
  let nimfunc = cast[ptr QDesktopWidgetworkAreaResizedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc fcQDesktopWidget_slot_callback_workAreaResized_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDesktopWidgetworkAreaResizedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onWorkAreaResized*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetworkAreaResizedSlot) =
  var tmp = new QDesktopWidgetworkAreaResizedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_connect_workAreaResized(self.h, cast[int](addr tmp[]), fcQDesktopWidget_slot_callback_workAreaResized, fcQDesktopWidget_slot_callback_workAreaResized_release)

proc screenCountChanged*(self: gen_qdesktopwidget_types.QDesktopWidget, param1: cint): void =
  fcQDesktopWidget_screenCountChanged(self.h, param1)

type QDesktopWidgetscreenCountChangedSlot* = proc(param1: cint)
proc fcQDesktopWidget_slot_callback_screenCountChanged(slot: int, param1: cint) {.cdecl.} =
  let nimfunc = cast[ptr QDesktopWidgetscreenCountChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc fcQDesktopWidget_slot_callback_screenCountChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDesktopWidgetscreenCountChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onScreenCountChanged*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetscreenCountChangedSlot) =
  var tmp = new QDesktopWidgetscreenCountChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_connect_screenCountChanged(self.h, cast[int](addr tmp[]), fcQDesktopWidget_slot_callback_screenCountChanged, fcQDesktopWidget_slot_callback_screenCountChanged_release)

proc primaryScreenChanged*(self: gen_qdesktopwidget_types.QDesktopWidget): void =
  fcQDesktopWidget_primaryScreenChanged(self.h)

type QDesktopWidgetprimaryScreenChangedSlot* = proc()
proc fcQDesktopWidget_slot_callback_primaryScreenChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QDesktopWidgetprimaryScreenChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQDesktopWidget_slot_callback_primaryScreenChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDesktopWidgetprimaryScreenChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onPrimaryScreenChanged*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetprimaryScreenChangedSlot) =
  var tmp = new QDesktopWidgetprimaryScreenChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_connect_primaryScreenChanged(self.h, cast[int](addr tmp[]), fcQDesktopWidget_slot_callback_primaryScreenChanged, fcQDesktopWidget_slot_callback_primaryScreenChanged_release)

proc tr*(_: type gen_qdesktopwidget_types.QDesktopWidget, s: cstring, c: cstring): string =
  let v_ms = fcQDesktopWidget_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qdesktopwidget_types.QDesktopWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDesktopWidget_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qdesktopwidget_types.QDesktopWidget, s: cstring, c: cstring): string =
  let v_ms = fcQDesktopWidget_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qdesktopwidget_types.QDesktopWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDesktopWidget_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc screenNumber*(self: gen_qdesktopwidget_types.QDesktopWidget, widget: gen_qwidget_types.QWidget): cint =
  fcQDesktopWidget_screenNumber1(self.h, widget.h)

proc screen*(self: gen_qdesktopwidget_types.QDesktopWidget, screen: cint): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQDesktopWidget_screen1(self.h, screen), owned: false)

proc screenGeometry*(self: gen_qdesktopwidget_types.QDesktopWidget, screen: cint): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQDesktopWidget_screenGeometry1(self.h, screen), owned: true)

proc availableGeometry*(self: gen_qdesktopwidget_types.QDesktopWidget, screen: cint): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQDesktopWidget_availableGeometry1(self.h, screen), owned: true)

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
type QDesktopWidgetnativeEventProc* = proc(self: QDesktopWidget, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
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

type QDesktopWidgetVTable* {.inheritable, pure.} = object
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

proc QDesktopWidgetmetaObject*(self: gen_qdesktopwidget_types.QDesktopWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDesktopWidget_virtualbase_metaObject(self.h), owned: false)

proc QDesktopWidgetmetacast*(self: gen_qdesktopwidget_types.QDesktopWidget, param1: cstring): pointer =
  fcQDesktopWidget_virtualbase_metacast(self.h, param1)

proc QDesktopWidgetmetacall*(self: gen_qdesktopwidget_types.QDesktopWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQDesktopWidget_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QDesktopWidgetresizeEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, e: gen_qevent_types.QResizeEvent): void =
  fcQDesktopWidget_virtualbase_resizeEvent(self.h, e.h)

proc QDesktopWidgetdevType*(self: gen_qdesktopwidget_types.QDesktopWidget): cint =
  fcQDesktopWidget_virtualbase_devType(self.h)

proc QDesktopWidgetsetVisible*(self: gen_qdesktopwidget_types.QDesktopWidget, visible: bool): void =
  fcQDesktopWidget_virtualbase_setVisible(self.h, visible)

proc QDesktopWidgetsizeHint*(self: gen_qdesktopwidget_types.QDesktopWidget): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDesktopWidget_virtualbase_sizeHint(self.h), owned: true)

proc QDesktopWidgetminimumSizeHint*(self: gen_qdesktopwidget_types.QDesktopWidget): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDesktopWidget_virtualbase_minimumSizeHint(self.h), owned: true)

proc QDesktopWidgetheightForWidth*(self: gen_qdesktopwidget_types.QDesktopWidget, param1: cint): cint =
  fcQDesktopWidget_virtualbase_heightForWidth(self.h, param1)

proc QDesktopWidgethasHeightForWidth*(self: gen_qdesktopwidget_types.QDesktopWidget): bool =
  fcQDesktopWidget_virtualbase_hasHeightForWidth(self.h)

proc QDesktopWidgetpaintEngine*(self: gen_qdesktopwidget_types.QDesktopWidget): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQDesktopWidget_virtualbase_paintEngine(self.h), owned: false)

proc QDesktopWidgetevent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qcoreevent_types.QEvent): bool =
  fcQDesktopWidget_virtualbase_event(self.h, event.h)

proc QDesktopWidgetmousePressEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQDesktopWidget_virtualbase_mousePressEvent(self.h, event.h)

proc QDesktopWidgetmouseReleaseEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQDesktopWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

proc QDesktopWidgetmouseDoubleClickEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQDesktopWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc QDesktopWidgetmouseMoveEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQDesktopWidget_virtualbase_mouseMoveEvent(self.h, event.h)

proc QDesktopWidgetwheelEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QWheelEvent): void =
  fcQDesktopWidget_virtualbase_wheelEvent(self.h, event.h)

proc QDesktopWidgetkeyPressEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQDesktopWidget_virtualbase_keyPressEvent(self.h, event.h)

proc QDesktopWidgetkeyReleaseEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQDesktopWidget_virtualbase_keyReleaseEvent(self.h, event.h)

proc QDesktopWidgetfocusInEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQDesktopWidget_virtualbase_focusInEvent(self.h, event.h)

proc QDesktopWidgetfocusOutEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQDesktopWidget_virtualbase_focusOutEvent(self.h, event.h)

proc QDesktopWidgetenterEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQDesktopWidget_virtualbase_enterEvent(self.h, event.h)

proc QDesktopWidgetleaveEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQDesktopWidget_virtualbase_leaveEvent(self.h, event.h)

proc QDesktopWidgetpaintEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QPaintEvent): void =
  fcQDesktopWidget_virtualbase_paintEvent(self.h, event.h)

proc QDesktopWidgetmoveEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QMoveEvent): void =
  fcQDesktopWidget_virtualbase_moveEvent(self.h, event.h)

proc QDesktopWidgetcloseEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QCloseEvent): void =
  fcQDesktopWidget_virtualbase_closeEvent(self.h, event.h)

proc QDesktopWidgetcontextMenuEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QContextMenuEvent): void =
  fcQDesktopWidget_virtualbase_contextMenuEvent(self.h, event.h)

proc QDesktopWidgettabletEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QTabletEvent): void =
  fcQDesktopWidget_virtualbase_tabletEvent(self.h, event.h)

proc QDesktopWidgetactionEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QActionEvent): void =
  fcQDesktopWidget_virtualbase_actionEvent(self.h, event.h)

proc QDesktopWidgetdragEnterEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QDragEnterEvent): void =
  fcQDesktopWidget_virtualbase_dragEnterEvent(self.h, event.h)

proc QDesktopWidgetdragMoveEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QDragMoveEvent): void =
  fcQDesktopWidget_virtualbase_dragMoveEvent(self.h, event.h)

proc QDesktopWidgetdragLeaveEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQDesktopWidget_virtualbase_dragLeaveEvent(self.h, event.h)

proc QDesktopWidgetdropEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QDropEvent): void =
  fcQDesktopWidget_virtualbase_dropEvent(self.h, event.h)

proc QDesktopWidgetshowEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QShowEvent): void =
  fcQDesktopWidget_virtualbase_showEvent(self.h, event.h)

proc QDesktopWidgethideEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QHideEvent): void =
  fcQDesktopWidget_virtualbase_hideEvent(self.h, event.h)

proc QDesktopWidgetnativeEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool =
  fcQDesktopWidget_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc QDesktopWidgetchangeEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, param1: gen_qcoreevent_types.QEvent): void =
  fcQDesktopWidget_virtualbase_changeEvent(self.h, param1.h)

proc QDesktopWidgetmetric*(self: gen_qdesktopwidget_types.QDesktopWidget, param1: cint): cint =
  fcQDesktopWidget_virtualbase_metric(self.h, cint(param1))

proc QDesktopWidgetinitPainter*(self: gen_qdesktopwidget_types.QDesktopWidget, painter: gen_qpainter_types.QPainter): void =
  fcQDesktopWidget_virtualbase_initPainter(self.h, painter.h)

proc QDesktopWidgetredirected*(self: gen_qdesktopwidget_types.QDesktopWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQDesktopWidget_virtualbase_redirected(self.h, offset.h), owned: false)

proc QDesktopWidgetsharedPainter*(self: gen_qdesktopwidget_types.QDesktopWidget): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQDesktopWidget_virtualbase_sharedPainter(self.h), owned: false)

proc QDesktopWidgetinputMethodEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQDesktopWidget_virtualbase_inputMethodEvent(self.h, param1.h)

proc QDesktopWidgetinputMethodQuery*(self: gen_qdesktopwidget_types.QDesktopWidget, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQDesktopWidget_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc QDesktopWidgetfocusNextPrevChild*(self: gen_qdesktopwidget_types.QDesktopWidget, next: bool): bool =
  fcQDesktopWidget_virtualbase_focusNextPrevChild(self.h, next)

proc QDesktopWidgeteventFilter*(self: gen_qdesktopwidget_types.QDesktopWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQDesktopWidget_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QDesktopWidgettimerEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQDesktopWidget_virtualbase_timerEvent(self.h, event.h)

proc QDesktopWidgetchildEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qcoreevent_types.QChildEvent): void =
  fcQDesktopWidget_virtualbase_childEvent(self.h, event.h)

proc QDesktopWidgetcustomEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQDesktopWidget_virtualbase_customEvent(self.h, event.h)

proc QDesktopWidgetconnectNotify*(self: gen_qdesktopwidget_types.QDesktopWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDesktopWidget_virtualbase_connectNotify(self.h, signal.h)

proc QDesktopWidgetdisconnectNotify*(self: gen_qdesktopwidget_types.QDesktopWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDesktopWidget_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQDesktopWidget_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesktopWidget_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQDesktopWidget_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDesktopWidget_vtable_callback_resizeEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: e, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc fcQDesktopWidget_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc fcQDesktopWidget_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc fcQDesktopWidget_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesktopWidget_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesktopWidget_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc fcQDesktopWidget_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc fcQDesktopWidget_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesktopWidget_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQDesktopWidget_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc fcQDesktopWidget_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc fcQDesktopWidget_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc fcQDesktopWidget_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc fcQDesktopWidget_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc fcQDesktopWidget_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc fcQDesktopWidget_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc fcQDesktopWidget_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc fcQDesktopWidget_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc fcQDesktopWidget_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc fcQDesktopWidget_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc fcQDesktopWidget_vtable_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc fcQDesktopWidget_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc fcQDesktopWidget_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc fcQDesktopWidget_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc fcQDesktopWidget_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc fcQDesktopWidget_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc fcQDesktopWidget_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc fcQDesktopWidget_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc fcQDesktopWidget_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc fcQDesktopWidget_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc fcQDesktopWidget_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc fcQDesktopWidget_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc fcQDesktopWidget_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDesktopWidget_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc fcQDesktopWidget_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc fcQDesktopWidget_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc fcQDesktopWidget_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesktopWidget_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesktopWidget_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc fcQDesktopWidget_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesktopWidget_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc fcQDesktopWidget_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQDesktopWidget_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQDesktopWidget_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQDesktopWidget_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQDesktopWidget_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQDesktopWidget_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
  let self = QDesktopWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQDesktopWidget* {.inheritable.} = ref object of QDesktopWidget
  vtbl*: cQDesktopWidgetVTable

method metaObject*(self: VirtualQDesktopWidget): gen_qobjectdefs_types.QMetaObject {.base.} =
  QDesktopWidgetmetaObject(self[])
method metacast*(self: VirtualQDesktopWidget, param1: cstring): pointer {.base.} =
  QDesktopWidgetmetacast(self[], param1)
method metacall*(self: VirtualQDesktopWidget, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QDesktopWidgetmetacall(self[], param1, param2, param3)
method resizeEvent*(self: VirtualQDesktopWidget, e: gen_qevent_types.QResizeEvent): void {.base.} =
  QDesktopWidgetresizeEvent(self[], e)
method devType*(self: VirtualQDesktopWidget): cint {.base.} =
  QDesktopWidgetdevType(self[])
method setVisible*(self: VirtualQDesktopWidget, visible: bool): void {.base.} =
  QDesktopWidgetsetVisible(self[], visible)
method sizeHint*(self: VirtualQDesktopWidget): gen_qsize_types.QSize {.base.} =
  QDesktopWidgetsizeHint(self[])
method minimumSizeHint*(self: VirtualQDesktopWidget): gen_qsize_types.QSize {.base.} =
  QDesktopWidgetminimumSizeHint(self[])
method heightForWidth*(self: VirtualQDesktopWidget, param1: cint): cint {.base.} =
  QDesktopWidgetheightForWidth(self[], param1)
method hasHeightForWidth*(self: VirtualQDesktopWidget): bool {.base.} =
  QDesktopWidgethasHeightForWidth(self[])
method paintEngine*(self: VirtualQDesktopWidget): gen_qpaintengine_types.QPaintEngine {.base.} =
  QDesktopWidgetpaintEngine(self[])
method event*(self: VirtualQDesktopWidget, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QDesktopWidgetevent(self[], event)
method mousePressEvent*(self: VirtualQDesktopWidget, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QDesktopWidgetmousePressEvent(self[], event)
method mouseReleaseEvent*(self: VirtualQDesktopWidget, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QDesktopWidgetmouseReleaseEvent(self[], event)
method mouseDoubleClickEvent*(self: VirtualQDesktopWidget, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QDesktopWidgetmouseDoubleClickEvent(self[], event)
method mouseMoveEvent*(self: VirtualQDesktopWidget, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QDesktopWidgetmouseMoveEvent(self[], event)
method wheelEvent*(self: VirtualQDesktopWidget, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QDesktopWidgetwheelEvent(self[], event)
method keyPressEvent*(self: VirtualQDesktopWidget, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QDesktopWidgetkeyPressEvent(self[], event)
method keyReleaseEvent*(self: VirtualQDesktopWidget, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QDesktopWidgetkeyReleaseEvent(self[], event)
method focusInEvent*(self: VirtualQDesktopWidget, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QDesktopWidgetfocusInEvent(self[], event)
method focusOutEvent*(self: VirtualQDesktopWidget, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QDesktopWidgetfocusOutEvent(self[], event)
method enterEvent*(self: VirtualQDesktopWidget, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QDesktopWidgetenterEvent(self[], event)
method leaveEvent*(self: VirtualQDesktopWidget, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QDesktopWidgetleaveEvent(self[], event)
method paintEvent*(self: VirtualQDesktopWidget, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QDesktopWidgetpaintEvent(self[], event)
method moveEvent*(self: VirtualQDesktopWidget, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QDesktopWidgetmoveEvent(self[], event)
method closeEvent*(self: VirtualQDesktopWidget, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QDesktopWidgetcloseEvent(self[], event)
method contextMenuEvent*(self: VirtualQDesktopWidget, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QDesktopWidgetcontextMenuEvent(self[], event)
method tabletEvent*(self: VirtualQDesktopWidget, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QDesktopWidgettabletEvent(self[], event)
method actionEvent*(self: VirtualQDesktopWidget, event: gen_qevent_types.QActionEvent): void {.base.} =
  QDesktopWidgetactionEvent(self[], event)
method dragEnterEvent*(self: VirtualQDesktopWidget, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QDesktopWidgetdragEnterEvent(self[], event)
method dragMoveEvent*(self: VirtualQDesktopWidget, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QDesktopWidgetdragMoveEvent(self[], event)
method dragLeaveEvent*(self: VirtualQDesktopWidget, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QDesktopWidgetdragLeaveEvent(self[], event)
method dropEvent*(self: VirtualQDesktopWidget, event: gen_qevent_types.QDropEvent): void {.base.} =
  QDesktopWidgetdropEvent(self[], event)
method showEvent*(self: VirtualQDesktopWidget, event: gen_qevent_types.QShowEvent): void {.base.} =
  QDesktopWidgetshowEvent(self[], event)
method hideEvent*(self: VirtualQDesktopWidget, event: gen_qevent_types.QHideEvent): void {.base.} =
  QDesktopWidgethideEvent(self[], event)
method nativeEvent*(self: VirtualQDesktopWidget, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.base.} =
  QDesktopWidgetnativeEvent(self[], eventType, message, resultVal)
method changeEvent*(self: VirtualQDesktopWidget, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QDesktopWidgetchangeEvent(self[], param1)
method metric*(self: VirtualQDesktopWidget, param1: cint): cint {.base.} =
  QDesktopWidgetmetric(self[], param1)
method initPainter*(self: VirtualQDesktopWidget, painter: gen_qpainter_types.QPainter): void {.base.} =
  QDesktopWidgetinitPainter(self[], painter)
method redirected*(self: VirtualQDesktopWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QDesktopWidgetredirected(self[], offset)
method sharedPainter*(self: VirtualQDesktopWidget): gen_qpainter_types.QPainter {.base.} =
  QDesktopWidgetsharedPainter(self[])
method inputMethodEvent*(self: VirtualQDesktopWidget, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QDesktopWidgetinputMethodEvent(self[], param1)
method inputMethodQuery*(self: VirtualQDesktopWidget, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QDesktopWidgetinputMethodQuery(self[], param1)
method focusNextPrevChild*(self: VirtualQDesktopWidget, next: bool): bool {.base.} =
  QDesktopWidgetfocusNextPrevChild(self[], next)
method eventFilter*(self: VirtualQDesktopWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QDesktopWidgeteventFilter(self[], watched, event)
method timerEvent*(self: VirtualQDesktopWidget, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QDesktopWidgettimerEvent(self[], event)
method childEvent*(self: VirtualQDesktopWidget, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QDesktopWidgetchildEvent(self[], event)
method customEvent*(self: VirtualQDesktopWidget, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QDesktopWidgetcustomEvent(self[], event)
method connectNotify*(self: VirtualQDesktopWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QDesktopWidgetconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQDesktopWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QDesktopWidgetdisconnectNotify(self[], signal)

proc fcQDesktopWidget_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesktopWidget_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQDesktopWidget_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDesktopWidget_method_callback_resizeEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: e, owned: false)
  inst.resizeEvent(slotval1)

proc fcQDesktopWidget_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

proc fcQDesktopWidget_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

proc fcQDesktopWidget_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesktopWidget_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesktopWidget_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

proc fcQDesktopWidget_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

proc fcQDesktopWidget_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesktopWidget_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQDesktopWidget_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

proc fcQDesktopWidget_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

proc fcQDesktopWidget_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

proc fcQDesktopWidget_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

proc fcQDesktopWidget_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

proc fcQDesktopWidget_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyPressEvent(slotval1)

proc fcQDesktopWidget_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

proc fcQDesktopWidget_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

proc fcQDesktopWidget_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

proc fcQDesktopWidget_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

proc fcQDesktopWidget_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

proc fcQDesktopWidget_method_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  inst.paintEvent(slotval1)

proc fcQDesktopWidget_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

proc fcQDesktopWidget_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

proc fcQDesktopWidget_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

proc fcQDesktopWidget_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

proc fcQDesktopWidget_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

proc fcQDesktopWidget_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

proc fcQDesktopWidget_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

proc fcQDesktopWidget_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

proc fcQDesktopWidget_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

proc fcQDesktopWidget_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

proc fcQDesktopWidget_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

proc fcQDesktopWidget_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDesktopWidget_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.changeEvent(slotval1)

proc fcQDesktopWidget_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

proc fcQDesktopWidget_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

proc fcQDesktopWidget_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesktopWidget_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesktopWidget_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

proc fcQDesktopWidget_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesktopWidget_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

proc fcQDesktopWidget_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQDesktopWidget_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQDesktopWidget_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQDesktopWidget_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQDesktopWidget_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQDesktopWidget_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesktopWidget](fcQDesktopWidget_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc updateMicroFocus*(self: gen_qdesktopwidget_types.QDesktopWidget): void =
  fcQDesktopWidget_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qdesktopwidget_types.QDesktopWidget): void =
  fcQDesktopWidget_protectedbase_create(self.h)

proc destroy*(self: gen_qdesktopwidget_types.QDesktopWidget): void =
  fcQDesktopWidget_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qdesktopwidget_types.QDesktopWidget): bool =
  fcQDesktopWidget_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qdesktopwidget_types.QDesktopWidget): bool =
  fcQDesktopWidget_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qdesktopwidget_types.QDesktopWidget): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQDesktopWidget_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qdesktopwidget_types.QDesktopWidget): cint =
  fcQDesktopWidget_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qdesktopwidget_types.QDesktopWidget, signal: cstring): cint =
  fcQDesktopWidget_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qdesktopwidget_types.QDesktopWidget, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQDesktopWidget_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qdesktopwidget_types.QDesktopWidget,
    vtbl: ref QDesktopWidgetVTable = nil): gen_qdesktopwidget_types.QDesktopWidget =
  let vtbl = if vtbl == nil: new QDesktopWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDesktopWidgetVTable](fcQDesktopWidget_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQDesktopWidget_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQDesktopWidget_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQDesktopWidget_vtable_callback_metacall
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQDesktopWidget_vtable_callback_resizeEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQDesktopWidget_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQDesktopWidget_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQDesktopWidget_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQDesktopWidget_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQDesktopWidget_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQDesktopWidget_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQDesktopWidget_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQDesktopWidget_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQDesktopWidget_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQDesktopWidget_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQDesktopWidget_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQDesktopWidget_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQDesktopWidget_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQDesktopWidget_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQDesktopWidget_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQDesktopWidget_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQDesktopWidget_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQDesktopWidget_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQDesktopWidget_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQDesktopWidget_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQDesktopWidget_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQDesktopWidget_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQDesktopWidget_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQDesktopWidget_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQDesktopWidget_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQDesktopWidget_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQDesktopWidget_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQDesktopWidget_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQDesktopWidget_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQDesktopWidget_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQDesktopWidget_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQDesktopWidget_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQDesktopWidget_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQDesktopWidget_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQDesktopWidget_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQDesktopWidget_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQDesktopWidget_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQDesktopWidget_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQDesktopWidget_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQDesktopWidget_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQDesktopWidget_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQDesktopWidget_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQDesktopWidget_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQDesktopWidget_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQDesktopWidget_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQDesktopWidget_vtable_callback_disconnectNotify
  gen_qdesktopwidget_types.QDesktopWidget(h: fcQDesktopWidget_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQDesktopWidget_mvtbl = cQDesktopWidgetVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQDesktopWidget()[])](self.fcQDesktopWidget_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQDesktopWidget_method_callback_metaObject,
  metacast: fcQDesktopWidget_method_callback_metacast,
  metacall: fcQDesktopWidget_method_callback_metacall,
  resizeEvent: fcQDesktopWidget_method_callback_resizeEvent,
  devType: fcQDesktopWidget_method_callback_devType,
  setVisible: fcQDesktopWidget_method_callback_setVisible,
  sizeHint: fcQDesktopWidget_method_callback_sizeHint,
  minimumSizeHint: fcQDesktopWidget_method_callback_minimumSizeHint,
  heightForWidth: fcQDesktopWidget_method_callback_heightForWidth,
  hasHeightForWidth: fcQDesktopWidget_method_callback_hasHeightForWidth,
  paintEngine: fcQDesktopWidget_method_callback_paintEngine,
  event: fcQDesktopWidget_method_callback_event,
  mousePressEvent: fcQDesktopWidget_method_callback_mousePressEvent,
  mouseReleaseEvent: fcQDesktopWidget_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: fcQDesktopWidget_method_callback_mouseDoubleClickEvent,
  mouseMoveEvent: fcQDesktopWidget_method_callback_mouseMoveEvent,
  wheelEvent: fcQDesktopWidget_method_callback_wheelEvent,
  keyPressEvent: fcQDesktopWidget_method_callback_keyPressEvent,
  keyReleaseEvent: fcQDesktopWidget_method_callback_keyReleaseEvent,
  focusInEvent: fcQDesktopWidget_method_callback_focusInEvent,
  focusOutEvent: fcQDesktopWidget_method_callback_focusOutEvent,
  enterEvent: fcQDesktopWidget_method_callback_enterEvent,
  leaveEvent: fcQDesktopWidget_method_callback_leaveEvent,
  paintEvent: fcQDesktopWidget_method_callback_paintEvent,
  moveEvent: fcQDesktopWidget_method_callback_moveEvent,
  closeEvent: fcQDesktopWidget_method_callback_closeEvent,
  contextMenuEvent: fcQDesktopWidget_method_callback_contextMenuEvent,
  tabletEvent: fcQDesktopWidget_method_callback_tabletEvent,
  actionEvent: fcQDesktopWidget_method_callback_actionEvent,
  dragEnterEvent: fcQDesktopWidget_method_callback_dragEnterEvent,
  dragMoveEvent: fcQDesktopWidget_method_callback_dragMoveEvent,
  dragLeaveEvent: fcQDesktopWidget_method_callback_dragLeaveEvent,
  dropEvent: fcQDesktopWidget_method_callback_dropEvent,
  showEvent: fcQDesktopWidget_method_callback_showEvent,
  hideEvent: fcQDesktopWidget_method_callback_hideEvent,
  nativeEvent: fcQDesktopWidget_method_callback_nativeEvent,
  changeEvent: fcQDesktopWidget_method_callback_changeEvent,
  metric: fcQDesktopWidget_method_callback_metric,
  initPainter: fcQDesktopWidget_method_callback_initPainter,
  redirected: fcQDesktopWidget_method_callback_redirected,
  sharedPainter: fcQDesktopWidget_method_callback_sharedPainter,
  inputMethodEvent: fcQDesktopWidget_method_callback_inputMethodEvent,
  inputMethodQuery: fcQDesktopWidget_method_callback_inputMethodQuery,
  focusNextPrevChild: fcQDesktopWidget_method_callback_focusNextPrevChild,
  eventFilter: fcQDesktopWidget_method_callback_eventFilter,
  timerEvent: fcQDesktopWidget_method_callback_timerEvent,
  childEvent: fcQDesktopWidget_method_callback_childEvent,
  customEvent: fcQDesktopWidget_method_callback_customEvent,
  connectNotify: fcQDesktopWidget_method_callback_connectNotify,
  disconnectNotify: fcQDesktopWidget_method_callback_disconnectNotify,
)
proc create*(T: type gen_qdesktopwidget_types.QDesktopWidget,
    inst: VirtualQDesktopWidget) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDesktopWidget_new(addr(cQDesktopWidget_mvtbl), addr(inst[]))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qdesktopwidget_types.QDesktopWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDesktopWidget_staticMetaObject())
