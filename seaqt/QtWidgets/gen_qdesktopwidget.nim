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

proc fcQDesktopWidget_new(): ptr cQDesktopWidget {.importc: "QDesktopWidget_new".}
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
proc fcQDesktopWidget_connect_resized(self: pointer, slot: int) {.importc: "QDesktopWidget_connect_resized".}
proc fcQDesktopWidget_workAreaResized(self: pointer, param1: cint): void {.importc: "QDesktopWidget_workAreaResized".}
proc fcQDesktopWidget_connect_workAreaResized(self: pointer, slot: int) {.importc: "QDesktopWidget_connect_workAreaResized".}
proc fcQDesktopWidget_screenCountChanged(self: pointer, param1: cint): void {.importc: "QDesktopWidget_screenCountChanged".}
proc fcQDesktopWidget_connect_screenCountChanged(self: pointer, slot: int) {.importc: "QDesktopWidget_connect_screenCountChanged".}
proc fcQDesktopWidget_primaryScreenChanged(self: pointer, ): void {.importc: "QDesktopWidget_primaryScreenChanged".}
proc fcQDesktopWidget_connect_primaryScreenChanged(self: pointer, slot: int) {.importc: "QDesktopWidget_connect_primaryScreenChanged".}
proc fcQDesktopWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDesktopWidget_tr2".}
proc fcQDesktopWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDesktopWidget_tr3".}
proc fcQDesktopWidget_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QDesktopWidget_trUtf82".}
proc fcQDesktopWidget_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDesktopWidget_trUtf83".}
proc fcQDesktopWidget_screenNumber1(self: pointer, widget: pointer): cint {.importc: "QDesktopWidget_screenNumber1".}
proc fcQDesktopWidget_screen1(self: pointer, screen: cint): pointer {.importc: "QDesktopWidget_screen1".}
proc fcQDesktopWidget_screenGeometry1(self: pointer, screen: cint): pointer {.importc: "QDesktopWidget_screenGeometry1".}
proc fcQDesktopWidget_availableGeometry1(self: pointer, screen: cint): pointer {.importc: "QDesktopWidget_availableGeometry1".}
proc fQDesktopWidget_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QDesktopWidget_virtualbase_metaObject".}
proc fcQDesktopWidget_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_metaObject".}
proc fQDesktopWidget_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QDesktopWidget_virtualbase_metacast".}
proc fcQDesktopWidget_override_virtual_metacast(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_metacast".}
proc fQDesktopWidget_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QDesktopWidget_virtualbase_metacall".}
proc fcQDesktopWidget_override_virtual_metacall(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_metacall".}
proc fQDesktopWidget_virtualbase_resizeEvent(self: pointer, e: pointer): void{.importc: "QDesktopWidget_virtualbase_resizeEvent".}
proc fcQDesktopWidget_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_resizeEvent".}
proc fQDesktopWidget_virtualbase_devType(self: pointer, ): cint{.importc: "QDesktopWidget_virtualbase_devType".}
proc fcQDesktopWidget_override_virtual_devType(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_devType".}
proc fQDesktopWidget_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QDesktopWidget_virtualbase_setVisible".}
proc fcQDesktopWidget_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_setVisible".}
proc fQDesktopWidget_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QDesktopWidget_virtualbase_sizeHint".}
proc fcQDesktopWidget_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_sizeHint".}
proc fQDesktopWidget_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QDesktopWidget_virtualbase_minimumSizeHint".}
proc fcQDesktopWidget_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_minimumSizeHint".}
proc fQDesktopWidget_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QDesktopWidget_virtualbase_heightForWidth".}
proc fcQDesktopWidget_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_heightForWidth".}
proc fQDesktopWidget_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QDesktopWidget_virtualbase_hasHeightForWidth".}
proc fcQDesktopWidget_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_hasHeightForWidth".}
proc fQDesktopWidget_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QDesktopWidget_virtualbase_paintEngine".}
proc fcQDesktopWidget_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_paintEngine".}
proc fQDesktopWidget_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QDesktopWidget_virtualbase_event".}
proc fcQDesktopWidget_override_virtual_event(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_event".}
proc fQDesktopWidget_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_mousePressEvent".}
proc fcQDesktopWidget_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_mousePressEvent".}
proc fQDesktopWidget_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_mouseReleaseEvent".}
proc fcQDesktopWidget_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_mouseReleaseEvent".}
proc fQDesktopWidget_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_mouseDoubleClickEvent".}
proc fcQDesktopWidget_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_mouseDoubleClickEvent".}
proc fQDesktopWidget_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_mouseMoveEvent".}
proc fcQDesktopWidget_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_mouseMoveEvent".}
proc fQDesktopWidget_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_wheelEvent".}
proc fcQDesktopWidget_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_wheelEvent".}
proc fQDesktopWidget_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_keyPressEvent".}
proc fcQDesktopWidget_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_keyPressEvent".}
proc fQDesktopWidget_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_keyReleaseEvent".}
proc fcQDesktopWidget_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_keyReleaseEvent".}
proc fQDesktopWidget_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_focusInEvent".}
proc fcQDesktopWidget_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_focusInEvent".}
proc fQDesktopWidget_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_focusOutEvent".}
proc fcQDesktopWidget_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_focusOutEvent".}
proc fQDesktopWidget_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_enterEvent".}
proc fcQDesktopWidget_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_enterEvent".}
proc fQDesktopWidget_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_leaveEvent".}
proc fcQDesktopWidget_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_leaveEvent".}
proc fQDesktopWidget_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_paintEvent".}
proc fcQDesktopWidget_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_paintEvent".}
proc fQDesktopWidget_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_moveEvent".}
proc fcQDesktopWidget_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_moveEvent".}
proc fQDesktopWidget_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_closeEvent".}
proc fcQDesktopWidget_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_closeEvent".}
proc fQDesktopWidget_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_contextMenuEvent".}
proc fcQDesktopWidget_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_contextMenuEvent".}
proc fQDesktopWidget_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_tabletEvent".}
proc fcQDesktopWidget_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_tabletEvent".}
proc fQDesktopWidget_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_actionEvent".}
proc fcQDesktopWidget_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_actionEvent".}
proc fQDesktopWidget_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_dragEnterEvent".}
proc fcQDesktopWidget_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_dragEnterEvent".}
proc fQDesktopWidget_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_dragMoveEvent".}
proc fcQDesktopWidget_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_dragMoveEvent".}
proc fQDesktopWidget_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_dragLeaveEvent".}
proc fcQDesktopWidget_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_dragLeaveEvent".}
proc fQDesktopWidget_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_dropEvent".}
proc fcQDesktopWidget_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_dropEvent".}
proc fQDesktopWidget_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_showEvent".}
proc fcQDesktopWidget_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_showEvent".}
proc fQDesktopWidget_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_hideEvent".}
proc fcQDesktopWidget_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_hideEvent".}
proc fQDesktopWidget_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QDesktopWidget_virtualbase_nativeEvent".}
proc fcQDesktopWidget_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_nativeEvent".}
proc fQDesktopWidget_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QDesktopWidget_virtualbase_changeEvent".}
proc fcQDesktopWidget_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_changeEvent".}
proc fQDesktopWidget_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QDesktopWidget_virtualbase_metric".}
proc fcQDesktopWidget_override_virtual_metric(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_metric".}
proc fQDesktopWidget_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QDesktopWidget_virtualbase_initPainter".}
proc fcQDesktopWidget_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_initPainter".}
proc fQDesktopWidget_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QDesktopWidget_virtualbase_redirected".}
proc fcQDesktopWidget_override_virtual_redirected(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_redirected".}
proc fQDesktopWidget_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QDesktopWidget_virtualbase_sharedPainter".}
proc fcQDesktopWidget_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_sharedPainter".}
proc fQDesktopWidget_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QDesktopWidget_virtualbase_inputMethodEvent".}
proc fcQDesktopWidget_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_inputMethodEvent".}
proc fQDesktopWidget_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QDesktopWidget_virtualbase_inputMethodQuery".}
proc fcQDesktopWidget_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_inputMethodQuery".}
proc fQDesktopWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QDesktopWidget_virtualbase_focusNextPrevChild".}
proc fcQDesktopWidget_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_focusNextPrevChild".}
proc fQDesktopWidget_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QDesktopWidget_virtualbase_eventFilter".}
proc fcQDesktopWidget_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_eventFilter".}
proc fQDesktopWidget_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_timerEvent".}
proc fcQDesktopWidget_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_timerEvent".}
proc fQDesktopWidget_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_childEvent".}
proc fcQDesktopWidget_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_childEvent".}
proc fQDesktopWidget_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QDesktopWidget_virtualbase_customEvent".}
proc fcQDesktopWidget_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_customEvent".}
proc fQDesktopWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QDesktopWidget_virtualbase_connectNotify".}
proc fcQDesktopWidget_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_connectNotify".}
proc fQDesktopWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QDesktopWidget_virtualbase_disconnectNotify".}
proc fcQDesktopWidget_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QDesktopWidget_override_virtual_disconnectNotify".}
proc fcQDesktopWidget_staticMetaObject(): pointer {.importc: "QDesktopWidget_staticMetaObject".}
proc fcQDesktopWidget_delete(self: pointer) {.importc: "QDesktopWidget_delete".}


func init*(T: type gen_qdesktopwidget_types.QDesktopWidget, h: ptr cQDesktopWidget): gen_qdesktopwidget_types.QDesktopWidget =
  T(h: h)
proc create*(T: type gen_qdesktopwidget_types.QDesktopWidget, ): gen_qdesktopwidget_types.QDesktopWidget =
  gen_qdesktopwidget_types.QDesktopWidget.init(fcQDesktopWidget_new())

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
proc miqt_exec_callback_QDesktopWidget_resized(slot: int, param1: cint) {.exportc.} =
  let nimfunc = cast[ptr QDesktopWidgetresizedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc onresized*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetresizedSlot) =
  var tmp = new QDesktopWidgetresizedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_connect_resized(self.h, cast[int](addr tmp[]))

proc workAreaResized*(self: gen_qdesktopwidget_types.QDesktopWidget, param1: cint): void =
  fcQDesktopWidget_workAreaResized(self.h, param1)

type QDesktopWidgetworkAreaResizedSlot* = proc(param1: cint)
proc miqt_exec_callback_QDesktopWidget_workAreaResized(slot: int, param1: cint) {.exportc.} =
  let nimfunc = cast[ptr QDesktopWidgetworkAreaResizedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc onworkAreaResized*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetworkAreaResizedSlot) =
  var tmp = new QDesktopWidgetworkAreaResizedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_connect_workAreaResized(self.h, cast[int](addr tmp[]))

proc screenCountChanged*(self: gen_qdesktopwidget_types.QDesktopWidget, param1: cint): void =
  fcQDesktopWidget_screenCountChanged(self.h, param1)

type QDesktopWidgetscreenCountChangedSlot* = proc(param1: cint)
proc miqt_exec_callback_QDesktopWidget_screenCountChanged(slot: int, param1: cint) {.exportc.} =
  let nimfunc = cast[ptr QDesktopWidgetscreenCountChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc onscreenCountChanged*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetscreenCountChangedSlot) =
  var tmp = new QDesktopWidgetscreenCountChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_connect_screenCountChanged(self.h, cast[int](addr tmp[]))

proc primaryScreenChanged*(self: gen_qdesktopwidget_types.QDesktopWidget, ): void =
  fcQDesktopWidget_primaryScreenChanged(self.h)

type QDesktopWidgetprimaryScreenChangedSlot* = proc()
proc miqt_exec_callback_QDesktopWidget_primaryScreenChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QDesktopWidgetprimaryScreenChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onprimaryScreenChanged*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetprimaryScreenChangedSlot) =
  var tmp = new QDesktopWidgetprimaryScreenChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_connect_primaryScreenChanged(self.h, cast[int](addr tmp[]))

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

proc QDesktopWidgetmetaObject*(self: gen_qdesktopwidget_types.QDesktopWidget, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQDesktopWidget_virtualbase_metaObject(self.h))

type QDesktopWidgetmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetmetaObjectProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgetmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_metaObject(self: ptr cQDesktopWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QDesktopWidget_metaObject ".} =
  var nimfunc = cast[ptr QDesktopWidgetmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QDesktopWidgetmetacast*(self: gen_qdesktopwidget_types.QDesktopWidget, param1: cstring): pointer =
  fQDesktopWidget_virtualbase_metacast(self.h, param1)

type QDesktopWidgetmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetmetacastProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgetmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_metacast(self: ptr cQDesktopWidget, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QDesktopWidget_metacast ".} =
  var nimfunc = cast[ptr QDesktopWidgetmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDesktopWidgetmetacall*(self: gen_qdesktopwidget_types.QDesktopWidget, param1: cint, param2: cint, param3: pointer): cint =
  fQDesktopWidget_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QDesktopWidgetmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetmetacallProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgetmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_metacall(self: ptr cQDesktopWidget, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QDesktopWidget_metacall ".} =
  var nimfunc = cast[ptr QDesktopWidgetmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QDesktopWidgetresizeEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, e: gen_qevent_types.QResizeEvent): void =
  fQDesktopWidget_virtualbase_resizeEvent(self.h, e.h)

type QDesktopWidgetresizeEventProc* = proc(e: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetresizeEventProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgetresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_resizeEvent(self: ptr cQDesktopWidget, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_resizeEvent ".} =
  var nimfunc = cast[ptr QDesktopWidgetresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: e)


  nimfunc[](slotval1)
proc QDesktopWidgetdevType*(self: gen_qdesktopwidget_types.QDesktopWidget, ): cint =
  fQDesktopWidget_virtualbase_devType(self.h)

type QDesktopWidgetdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetdevTypeProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgetdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_devType(self: ptr cQDesktopWidget, slot: int): cint {.exportc: "miqt_exec_callback_QDesktopWidget_devType ".} =
  var nimfunc = cast[ptr QDesktopWidgetdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QDesktopWidgetsetVisible*(self: gen_qdesktopwidget_types.QDesktopWidget, visible: bool): void =
  fQDesktopWidget_virtualbase_setVisible(self.h, visible)

type QDesktopWidgetsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetsetVisibleProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgetsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_setVisible(self: ptr cQDesktopWidget, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QDesktopWidget_setVisible ".} =
  var nimfunc = cast[ptr QDesktopWidgetsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QDesktopWidgetsizeHint*(self: gen_qdesktopwidget_types.QDesktopWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQDesktopWidget_virtualbase_sizeHint(self.h))

type QDesktopWidgetsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetsizeHintProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgetsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_sizeHint(self: ptr cQDesktopWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QDesktopWidget_sizeHint ".} =
  var nimfunc = cast[ptr QDesktopWidgetsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QDesktopWidgetminimumSizeHint*(self: gen_qdesktopwidget_types.QDesktopWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQDesktopWidget_virtualbase_minimumSizeHint(self.h))

type QDesktopWidgetminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgetminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_minimumSizeHint(self: ptr cQDesktopWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QDesktopWidget_minimumSizeHint ".} =
  var nimfunc = cast[ptr QDesktopWidgetminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QDesktopWidgetheightForWidth*(self: gen_qdesktopwidget_types.QDesktopWidget, param1: cint): cint =
  fQDesktopWidget_virtualbase_heightForWidth(self.h, param1)

type QDesktopWidgetheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetheightForWidthProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgetheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_heightForWidth(self: ptr cQDesktopWidget, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QDesktopWidget_heightForWidth ".} =
  var nimfunc = cast[ptr QDesktopWidgetheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDesktopWidgethasHeightForWidth*(self: gen_qdesktopwidget_types.QDesktopWidget, ): bool =
  fQDesktopWidget_virtualbase_hasHeightForWidth(self.h)

type QDesktopWidgethasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgethasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgethasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_hasHeightForWidth(self: ptr cQDesktopWidget, slot: int): bool {.exportc: "miqt_exec_callback_QDesktopWidget_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QDesktopWidgethasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QDesktopWidgetpaintEngine*(self: gen_qdesktopwidget_types.QDesktopWidget, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQDesktopWidget_virtualbase_paintEngine(self.h))

type QDesktopWidgetpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetpaintEngineProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgetpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_paintEngine(self: ptr cQDesktopWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QDesktopWidget_paintEngine ".} =
  var nimfunc = cast[ptr QDesktopWidgetpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QDesktopWidgetevent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qcoreevent_types.QEvent): bool =
  fQDesktopWidget_virtualbase_event(self.h, event.h)

type QDesktopWidgeteventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgeteventProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgeteventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_event(self: ptr cQDesktopWidget, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QDesktopWidget_event ".} =
  var nimfunc = cast[ptr QDesktopWidgeteventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDesktopWidgetmousePressEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QMouseEvent): void =
  fQDesktopWidget_virtualbase_mousePressEvent(self.h, event.h)

type QDesktopWidgetmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetmousePressEventProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgetmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_mousePressEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_mousePressEvent ".} =
  var nimfunc = cast[ptr QDesktopWidgetmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QDesktopWidgetmouseReleaseEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QMouseEvent): void =
  fQDesktopWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

type QDesktopWidgetmouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgetmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_mouseReleaseEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QDesktopWidgetmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QDesktopWidgetmouseDoubleClickEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QMouseEvent): void =
  fQDesktopWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QDesktopWidgetmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgetmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_mouseDoubleClickEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QDesktopWidgetmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QDesktopWidgetmouseMoveEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QMouseEvent): void =
  fQDesktopWidget_virtualbase_mouseMoveEvent(self.h, event.h)

type QDesktopWidgetmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgetmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_mouseMoveEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QDesktopWidgetmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QDesktopWidgetwheelEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QWheelEvent): void =
  fQDesktopWidget_virtualbase_wheelEvent(self.h, event.h)

type QDesktopWidgetwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetwheelEventProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgetwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_wheelEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_wheelEvent ".} =
  var nimfunc = cast[ptr QDesktopWidgetwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QDesktopWidgetkeyPressEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QKeyEvent): void =
  fQDesktopWidget_virtualbase_keyPressEvent(self.h, event.h)

type QDesktopWidgetkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgetkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_keyPressEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_keyPressEvent ".} =
  var nimfunc = cast[ptr QDesktopWidgetkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QDesktopWidgetkeyReleaseEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QKeyEvent): void =
  fQDesktopWidget_virtualbase_keyReleaseEvent(self.h, event.h)

type QDesktopWidgetkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgetkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_keyReleaseEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QDesktopWidgetkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QDesktopWidgetfocusInEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QFocusEvent): void =
  fQDesktopWidget_virtualbase_focusInEvent(self.h, event.h)

type QDesktopWidgetfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetfocusInEventProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgetfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_focusInEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_focusInEvent ".} =
  var nimfunc = cast[ptr QDesktopWidgetfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QDesktopWidgetfocusOutEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QFocusEvent): void =
  fQDesktopWidget_virtualbase_focusOutEvent(self.h, event.h)

type QDesktopWidgetfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgetfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_focusOutEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_focusOutEvent ".} =
  var nimfunc = cast[ptr QDesktopWidgetfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QDesktopWidgetenterEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qcoreevent_types.QEvent): void =
  fQDesktopWidget_virtualbase_enterEvent(self.h, event.h)

type QDesktopWidgetenterEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onenterEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetenterEventProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgetenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_enterEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_enterEvent ".} =
  var nimfunc = cast[ptr QDesktopWidgetenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QDesktopWidgetleaveEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qcoreevent_types.QEvent): void =
  fQDesktopWidget_virtualbase_leaveEvent(self.h, event.h)

type QDesktopWidgetleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetleaveEventProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgetleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_leaveEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_leaveEvent ".} =
  var nimfunc = cast[ptr QDesktopWidgetleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QDesktopWidgetpaintEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QPaintEvent): void =
  fQDesktopWidget_virtualbase_paintEvent(self.h, event.h)

type QDesktopWidgetpaintEventProc* = proc(event: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetpaintEventProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgetpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_paintEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_paintEvent ".} =
  var nimfunc = cast[ptr QDesktopWidgetpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)


  nimfunc[](slotval1)
proc QDesktopWidgetmoveEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QMoveEvent): void =
  fQDesktopWidget_virtualbase_moveEvent(self.h, event.h)

type QDesktopWidgetmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetmoveEventProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgetmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_moveEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_moveEvent ".} =
  var nimfunc = cast[ptr QDesktopWidgetmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QDesktopWidgetcloseEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QCloseEvent): void =
  fQDesktopWidget_virtualbase_closeEvent(self.h, event.h)

type QDesktopWidgetcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetcloseEventProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgetcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_closeEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_closeEvent ".} =
  var nimfunc = cast[ptr QDesktopWidgetcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QDesktopWidgetcontextMenuEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QContextMenuEvent): void =
  fQDesktopWidget_virtualbase_contextMenuEvent(self.h, event.h)

type QDesktopWidgetcontextMenuEventProc* = proc(event: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgetcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_contextMenuEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_contextMenuEvent ".} =
  var nimfunc = cast[ptr QDesktopWidgetcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QDesktopWidgettabletEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QTabletEvent): void =
  fQDesktopWidget_virtualbase_tabletEvent(self.h, event.h)

type QDesktopWidgettabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgettabletEventProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgettabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_tabletEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_tabletEvent ".} =
  var nimfunc = cast[ptr QDesktopWidgettabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QDesktopWidgetactionEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QActionEvent): void =
  fQDesktopWidget_virtualbase_actionEvent(self.h, event.h)

type QDesktopWidgetactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetactionEventProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgetactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_actionEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_actionEvent ".} =
  var nimfunc = cast[ptr QDesktopWidgetactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QDesktopWidgetdragEnterEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QDragEnterEvent): void =
  fQDesktopWidget_virtualbase_dragEnterEvent(self.h, event.h)

type QDesktopWidgetdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgetdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_dragEnterEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_dragEnterEvent ".} =
  var nimfunc = cast[ptr QDesktopWidgetdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QDesktopWidgetdragMoveEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QDragMoveEvent): void =
  fQDesktopWidget_virtualbase_dragMoveEvent(self.h, event.h)

type QDesktopWidgetdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgetdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_dragMoveEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_dragMoveEvent ".} =
  var nimfunc = cast[ptr QDesktopWidgetdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QDesktopWidgetdragLeaveEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QDragLeaveEvent): void =
  fQDesktopWidget_virtualbase_dragLeaveEvent(self.h, event.h)

type QDesktopWidgetdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgetdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_dragLeaveEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QDesktopWidgetdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QDesktopWidgetdropEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QDropEvent): void =
  fQDesktopWidget_virtualbase_dropEvent(self.h, event.h)

type QDesktopWidgetdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetdropEventProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgetdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_dropEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_dropEvent ".} =
  var nimfunc = cast[ptr QDesktopWidgetdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QDesktopWidgetshowEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QShowEvent): void =
  fQDesktopWidget_virtualbase_showEvent(self.h, event.h)

type QDesktopWidgetshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetshowEventProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgetshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_showEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_showEvent ".} =
  var nimfunc = cast[ptr QDesktopWidgetshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QDesktopWidgethideEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qevent_types.QHideEvent): void =
  fQDesktopWidget_virtualbase_hideEvent(self.h, event.h)

type QDesktopWidgethideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgethideEventProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgethideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_hideEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_hideEvent ".} =
  var nimfunc = cast[ptr QDesktopWidgethideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QDesktopWidgetnativeEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fQDesktopWidget_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QDesktopWidgetnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetnativeEventProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgetnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_nativeEvent(self: ptr cQDesktopWidget, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QDesktopWidget_nativeEvent ".} =
  var nimfunc = cast[ptr QDesktopWidgetnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QDesktopWidgetchangeEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, param1: gen_qcoreevent_types.QEvent): void =
  fQDesktopWidget_virtualbase_changeEvent(self.h, param1.h)

type QDesktopWidgetchangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetchangeEventProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgetchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_changeEvent(self: ptr cQDesktopWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_changeEvent ".} =
  var nimfunc = cast[ptr QDesktopWidgetchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QDesktopWidgetmetric*(self: gen_qdesktopwidget_types.QDesktopWidget, param1: cint): cint =
  fQDesktopWidget_virtualbase_metric(self.h, cint(param1))

type QDesktopWidgetmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetmetricProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgetmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_metric(self: ptr cQDesktopWidget, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QDesktopWidget_metric ".} =
  var nimfunc = cast[ptr QDesktopWidgetmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDesktopWidgetinitPainter*(self: gen_qdesktopwidget_types.QDesktopWidget, painter: gen_qpainter_types.QPainter): void =
  fQDesktopWidget_virtualbase_initPainter(self.h, painter.h)

type QDesktopWidgetinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetinitPainterProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgetinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_initPainter(self: ptr cQDesktopWidget, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_initPainter ".} =
  var nimfunc = cast[ptr QDesktopWidgetinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QDesktopWidgetredirected*(self: gen_qdesktopwidget_types.QDesktopWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQDesktopWidget_virtualbase_redirected(self.h, offset.h))

type QDesktopWidgetredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetredirectedProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgetredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_redirected(self: ptr cQDesktopWidget, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QDesktopWidget_redirected ".} =
  var nimfunc = cast[ptr QDesktopWidgetredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QDesktopWidgetsharedPainter*(self: gen_qdesktopwidget_types.QDesktopWidget, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQDesktopWidget_virtualbase_sharedPainter(self.h))

type QDesktopWidgetsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetsharedPainterProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgetsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_sharedPainter(self: ptr cQDesktopWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QDesktopWidget_sharedPainter ".} =
  var nimfunc = cast[ptr QDesktopWidgetsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QDesktopWidgetinputMethodEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, param1: gen_qevent_types.QInputMethodEvent): void =
  fQDesktopWidget_virtualbase_inputMethodEvent(self.h, param1.h)

type QDesktopWidgetinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgetinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_inputMethodEvent(self: ptr cQDesktopWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_inputMethodEvent ".} =
  var nimfunc = cast[ptr QDesktopWidgetinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QDesktopWidgetinputMethodQuery*(self: gen_qdesktopwidget_types.QDesktopWidget, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQDesktopWidget_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QDesktopWidgetinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgetinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_inputMethodQuery(self: ptr cQDesktopWidget, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QDesktopWidget_inputMethodQuery ".} =
  var nimfunc = cast[ptr QDesktopWidgetinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QDesktopWidgetfocusNextPrevChild*(self: gen_qdesktopwidget_types.QDesktopWidget, next: bool): bool =
  fQDesktopWidget_virtualbase_focusNextPrevChild(self.h, next)

type QDesktopWidgetfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgetfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_focusNextPrevChild(self: ptr cQDesktopWidget, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QDesktopWidget_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QDesktopWidgetfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDesktopWidgeteventFilter*(self: gen_qdesktopwidget_types.QDesktopWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQDesktopWidget_virtualbase_eventFilter(self.h, watched.h, event.h)

type QDesktopWidgeteventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgeteventFilterProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgeteventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_eventFilter(self: ptr cQDesktopWidget, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QDesktopWidget_eventFilter ".} =
  var nimfunc = cast[ptr QDesktopWidgeteventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QDesktopWidgettimerEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qcoreevent_types.QTimerEvent): void =
  fQDesktopWidget_virtualbase_timerEvent(self.h, event.h)

type QDesktopWidgettimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgettimerEventProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgettimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_timerEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_timerEvent ".} =
  var nimfunc = cast[ptr QDesktopWidgettimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QDesktopWidgetchildEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qcoreevent_types.QChildEvent): void =
  fQDesktopWidget_virtualbase_childEvent(self.h, event.h)

type QDesktopWidgetchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetchildEventProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgetchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_childEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_childEvent ".} =
  var nimfunc = cast[ptr QDesktopWidgetchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QDesktopWidgetcustomEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, event: gen_qcoreevent_types.QEvent): void =
  fQDesktopWidget_virtualbase_customEvent(self.h, event.h)

type QDesktopWidgetcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetcustomEventProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgetcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_customEvent(self: ptr cQDesktopWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_customEvent ".} =
  var nimfunc = cast[ptr QDesktopWidgetcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QDesktopWidgetconnectNotify*(self: gen_qdesktopwidget_types.QDesktopWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQDesktopWidget_virtualbase_connectNotify(self.h, signal.h)

type QDesktopWidgetconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgetconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_connectNotify(self: ptr cQDesktopWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_connectNotify ".} =
  var nimfunc = cast[ptr QDesktopWidgetconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QDesktopWidgetdisconnectNotify*(self: gen_qdesktopwidget_types.QDesktopWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQDesktopWidget_virtualbase_disconnectNotify(self.h, signal.h)

type QDesktopWidgetdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qdesktopwidget_types.QDesktopWidget, slot: QDesktopWidgetdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QDesktopWidgetdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDesktopWidget_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDesktopWidget_disconnectNotify(self: ptr cQDesktopWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDesktopWidget_disconnectNotify ".} =
  var nimfunc = cast[ptr QDesktopWidgetdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qdesktopwidget_types.QDesktopWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDesktopWidget_staticMetaObject())
proc delete*(self: gen_qdesktopwidget_types.QDesktopWidget) =
  fcQDesktopWidget_delete(self.h)
