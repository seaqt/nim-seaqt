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
{.compile("gen_qmdisubwindow.cpp", cflags).}


type QMdiSubWindowSubWindowOptionEnum* = distinct cint
template AllowOutsideAreaHorizontally*(_: type QMdiSubWindowSubWindowOptionEnum): untyped = 1
template AllowOutsideAreaVertically*(_: type QMdiSubWindowSubWindowOptionEnum): untyped = 2
template RubberBandResize*(_: type QMdiSubWindowSubWindowOptionEnum): untyped = 4
template RubberBandMove*(_: type QMdiSubWindowSubWindowOptionEnum): untyped = 8


import ./gen_qmdisubwindow_types
export gen_qmdisubwindow_types

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
  ./gen_qmdiarea_types,
  ./gen_qmenu_types,
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
  gen_qmdiarea_types,
  gen_qmenu_types,
  gen_qwidget

type cQMdiSubWindow*{.exportc: "QMdiSubWindow", incompleteStruct.} = object

proc fcQMdiSubWindow_new(parent: pointer): ptr cQMdiSubWindow {.importc: "QMdiSubWindow_new".}
proc fcQMdiSubWindow_new2(): ptr cQMdiSubWindow {.importc: "QMdiSubWindow_new2".}
proc fcQMdiSubWindow_new3(parent: pointer, flags: cint): ptr cQMdiSubWindow {.importc: "QMdiSubWindow_new3".}
proc fcQMdiSubWindow_metaObject(self: pointer, ): pointer {.importc: "QMdiSubWindow_metaObject".}
proc fcQMdiSubWindow_metacast(self: pointer, param1: cstring): pointer {.importc: "QMdiSubWindow_metacast".}
proc fcQMdiSubWindow_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMdiSubWindow_metacall".}
proc fcQMdiSubWindow_tr(s: cstring): struct_miqt_string {.importc: "QMdiSubWindow_tr".}
proc fcQMdiSubWindow_trUtf8(s: cstring): struct_miqt_string {.importc: "QMdiSubWindow_trUtf8".}
proc fcQMdiSubWindow_sizeHint(self: pointer, ): pointer {.importc: "QMdiSubWindow_sizeHint".}
proc fcQMdiSubWindow_minimumSizeHint(self: pointer, ): pointer {.importc: "QMdiSubWindow_minimumSizeHint".}
proc fcQMdiSubWindow_setWidget(self: pointer, widget: pointer): void {.importc: "QMdiSubWindow_setWidget".}
proc fcQMdiSubWindow_widget(self: pointer, ): pointer {.importc: "QMdiSubWindow_widget".}
proc fcQMdiSubWindow_maximizedButtonsWidget(self: pointer, ): pointer {.importc: "QMdiSubWindow_maximizedButtonsWidget".}
proc fcQMdiSubWindow_maximizedSystemMenuIconWidget(self: pointer, ): pointer {.importc: "QMdiSubWindow_maximizedSystemMenuIconWidget".}
proc fcQMdiSubWindow_isShaded(self: pointer, ): bool {.importc: "QMdiSubWindow_isShaded".}
proc fcQMdiSubWindow_setOption(self: pointer, option: cint): void {.importc: "QMdiSubWindow_setOption".}
proc fcQMdiSubWindow_testOption(self: pointer, param1: cint): bool {.importc: "QMdiSubWindow_testOption".}
proc fcQMdiSubWindow_setKeyboardSingleStep(self: pointer, step: cint): void {.importc: "QMdiSubWindow_setKeyboardSingleStep".}
proc fcQMdiSubWindow_keyboardSingleStep(self: pointer, ): cint {.importc: "QMdiSubWindow_keyboardSingleStep".}
proc fcQMdiSubWindow_setKeyboardPageStep(self: pointer, step: cint): void {.importc: "QMdiSubWindow_setKeyboardPageStep".}
proc fcQMdiSubWindow_keyboardPageStep(self: pointer, ): cint {.importc: "QMdiSubWindow_keyboardPageStep".}
proc fcQMdiSubWindow_setSystemMenu(self: pointer, systemMenu: pointer): void {.importc: "QMdiSubWindow_setSystemMenu".}
proc fcQMdiSubWindow_systemMenu(self: pointer, ): pointer {.importc: "QMdiSubWindow_systemMenu".}
proc fcQMdiSubWindow_mdiArea(self: pointer, ): pointer {.importc: "QMdiSubWindow_mdiArea".}
proc fcQMdiSubWindow_windowStateChanged(self: pointer, oldState: cint, newState: cint): void {.importc: "QMdiSubWindow_windowStateChanged".}
proc fcQMdiSubWindow_connect_windowStateChanged(self: pointer, slot: int) {.importc: "QMdiSubWindow_connect_windowStateChanged".}
proc fcQMdiSubWindow_aboutToActivate(self: pointer, ): void {.importc: "QMdiSubWindow_aboutToActivate".}
proc fcQMdiSubWindow_connect_aboutToActivate(self: pointer, slot: int) {.importc: "QMdiSubWindow_connect_aboutToActivate".}
proc fcQMdiSubWindow_showSystemMenu(self: pointer, ): void {.importc: "QMdiSubWindow_showSystemMenu".}
proc fcQMdiSubWindow_showShaded(self: pointer, ): void {.importc: "QMdiSubWindow_showShaded".}
proc fcQMdiSubWindow_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMdiSubWindow_tr2".}
proc fcQMdiSubWindow_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMdiSubWindow_tr3".}
proc fcQMdiSubWindow_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QMdiSubWindow_trUtf82".}
proc fcQMdiSubWindow_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMdiSubWindow_trUtf83".}
proc fcQMdiSubWindow_setOption2(self: pointer, option: cint, on: bool): void {.importc: "QMdiSubWindow_setOption2".}
proc fQMdiSubWindow_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QMdiSubWindow_virtualbase_metaObject".}
proc fcQMdiSubWindow_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_metaObject".}
proc fQMdiSubWindow_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QMdiSubWindow_virtualbase_metacast".}
proc fcQMdiSubWindow_override_virtual_metacast(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_metacast".}
proc fQMdiSubWindow_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QMdiSubWindow_virtualbase_metacall".}
proc fcQMdiSubWindow_override_virtual_metacall(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_metacall".}
proc fQMdiSubWindow_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QMdiSubWindow_virtualbase_sizeHint".}
proc fcQMdiSubWindow_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_sizeHint".}
proc fQMdiSubWindow_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QMdiSubWindow_virtualbase_minimumSizeHint".}
proc fcQMdiSubWindow_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_minimumSizeHint".}
proc fQMdiSubWindow_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool{.importc: "QMdiSubWindow_virtualbase_eventFilter".}
proc fcQMdiSubWindow_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_eventFilter".}
proc fQMdiSubWindow_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QMdiSubWindow_virtualbase_event".}
proc fcQMdiSubWindow_override_virtual_event(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_event".}
proc fQMdiSubWindow_virtualbase_showEvent(self: pointer, showEvent: pointer): void{.importc: "QMdiSubWindow_virtualbase_showEvent".}
proc fcQMdiSubWindow_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_showEvent".}
proc fQMdiSubWindow_virtualbase_hideEvent(self: pointer, hideEvent: pointer): void{.importc: "QMdiSubWindow_virtualbase_hideEvent".}
proc fcQMdiSubWindow_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_hideEvent".}
proc fQMdiSubWindow_virtualbase_changeEvent(self: pointer, changeEvent: pointer): void{.importc: "QMdiSubWindow_virtualbase_changeEvent".}
proc fcQMdiSubWindow_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_changeEvent".}
proc fQMdiSubWindow_virtualbase_closeEvent(self: pointer, closeEvent: pointer): void{.importc: "QMdiSubWindow_virtualbase_closeEvent".}
proc fcQMdiSubWindow_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_closeEvent".}
proc fQMdiSubWindow_virtualbase_leaveEvent(self: pointer, leaveEvent: pointer): void{.importc: "QMdiSubWindow_virtualbase_leaveEvent".}
proc fcQMdiSubWindow_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_leaveEvent".}
proc fQMdiSubWindow_virtualbase_resizeEvent(self: pointer, resizeEvent: pointer): void{.importc: "QMdiSubWindow_virtualbase_resizeEvent".}
proc fcQMdiSubWindow_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_resizeEvent".}
proc fQMdiSubWindow_virtualbase_timerEvent(self: pointer, timerEvent: pointer): void{.importc: "QMdiSubWindow_virtualbase_timerEvent".}
proc fcQMdiSubWindow_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_timerEvent".}
proc fQMdiSubWindow_virtualbase_moveEvent(self: pointer, moveEvent: pointer): void{.importc: "QMdiSubWindow_virtualbase_moveEvent".}
proc fcQMdiSubWindow_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_moveEvent".}
proc fQMdiSubWindow_virtualbase_paintEvent(self: pointer, paintEvent: pointer): void{.importc: "QMdiSubWindow_virtualbase_paintEvent".}
proc fcQMdiSubWindow_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_paintEvent".}
proc fQMdiSubWindow_virtualbase_mousePressEvent(self: pointer, mouseEvent: pointer): void{.importc: "QMdiSubWindow_virtualbase_mousePressEvent".}
proc fcQMdiSubWindow_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_mousePressEvent".}
proc fQMdiSubWindow_virtualbase_mouseDoubleClickEvent(self: pointer, mouseEvent: pointer): void{.importc: "QMdiSubWindow_virtualbase_mouseDoubleClickEvent".}
proc fcQMdiSubWindow_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_mouseDoubleClickEvent".}
proc fQMdiSubWindow_virtualbase_mouseReleaseEvent(self: pointer, mouseEvent: pointer): void{.importc: "QMdiSubWindow_virtualbase_mouseReleaseEvent".}
proc fcQMdiSubWindow_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_mouseReleaseEvent".}
proc fQMdiSubWindow_virtualbase_mouseMoveEvent(self: pointer, mouseEvent: pointer): void{.importc: "QMdiSubWindow_virtualbase_mouseMoveEvent".}
proc fcQMdiSubWindow_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_mouseMoveEvent".}
proc fQMdiSubWindow_virtualbase_keyPressEvent(self: pointer, keyEvent: pointer): void{.importc: "QMdiSubWindow_virtualbase_keyPressEvent".}
proc fcQMdiSubWindow_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_keyPressEvent".}
proc fQMdiSubWindow_virtualbase_contextMenuEvent(self: pointer, contextMenuEvent: pointer): void{.importc: "QMdiSubWindow_virtualbase_contextMenuEvent".}
proc fcQMdiSubWindow_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_contextMenuEvent".}
proc fQMdiSubWindow_virtualbase_focusInEvent(self: pointer, focusInEvent: pointer): void{.importc: "QMdiSubWindow_virtualbase_focusInEvent".}
proc fcQMdiSubWindow_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_focusInEvent".}
proc fQMdiSubWindow_virtualbase_focusOutEvent(self: pointer, focusOutEvent: pointer): void{.importc: "QMdiSubWindow_virtualbase_focusOutEvent".}
proc fcQMdiSubWindow_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_focusOutEvent".}
proc fQMdiSubWindow_virtualbase_childEvent(self: pointer, childEvent: pointer): void{.importc: "QMdiSubWindow_virtualbase_childEvent".}
proc fcQMdiSubWindow_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_childEvent".}
proc fQMdiSubWindow_virtualbase_devType(self: pointer, ): cint{.importc: "QMdiSubWindow_virtualbase_devType".}
proc fcQMdiSubWindow_override_virtual_devType(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_devType".}
proc fQMdiSubWindow_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QMdiSubWindow_virtualbase_setVisible".}
proc fcQMdiSubWindow_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_setVisible".}
proc fQMdiSubWindow_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QMdiSubWindow_virtualbase_heightForWidth".}
proc fcQMdiSubWindow_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_heightForWidth".}
proc fQMdiSubWindow_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QMdiSubWindow_virtualbase_hasHeightForWidth".}
proc fcQMdiSubWindow_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_hasHeightForWidth".}
proc fQMdiSubWindow_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QMdiSubWindow_virtualbase_paintEngine".}
proc fcQMdiSubWindow_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_paintEngine".}
proc fQMdiSubWindow_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QMdiSubWindow_virtualbase_wheelEvent".}
proc fcQMdiSubWindow_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_wheelEvent".}
proc fQMdiSubWindow_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QMdiSubWindow_virtualbase_keyReleaseEvent".}
proc fcQMdiSubWindow_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_keyReleaseEvent".}
proc fQMdiSubWindow_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QMdiSubWindow_virtualbase_enterEvent".}
proc fcQMdiSubWindow_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_enterEvent".}
proc fQMdiSubWindow_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QMdiSubWindow_virtualbase_tabletEvent".}
proc fcQMdiSubWindow_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_tabletEvent".}
proc fQMdiSubWindow_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QMdiSubWindow_virtualbase_actionEvent".}
proc fcQMdiSubWindow_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_actionEvent".}
proc fQMdiSubWindow_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QMdiSubWindow_virtualbase_dragEnterEvent".}
proc fcQMdiSubWindow_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_dragEnterEvent".}
proc fQMdiSubWindow_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QMdiSubWindow_virtualbase_dragMoveEvent".}
proc fcQMdiSubWindow_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_dragMoveEvent".}
proc fQMdiSubWindow_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QMdiSubWindow_virtualbase_dragLeaveEvent".}
proc fcQMdiSubWindow_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_dragLeaveEvent".}
proc fQMdiSubWindow_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QMdiSubWindow_virtualbase_dropEvent".}
proc fcQMdiSubWindow_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_dropEvent".}
proc fQMdiSubWindow_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QMdiSubWindow_virtualbase_nativeEvent".}
proc fcQMdiSubWindow_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_nativeEvent".}
proc fQMdiSubWindow_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QMdiSubWindow_virtualbase_metric".}
proc fcQMdiSubWindow_override_virtual_metric(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_metric".}
proc fQMdiSubWindow_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QMdiSubWindow_virtualbase_initPainter".}
proc fcQMdiSubWindow_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_initPainter".}
proc fQMdiSubWindow_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QMdiSubWindow_virtualbase_redirected".}
proc fcQMdiSubWindow_override_virtual_redirected(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_redirected".}
proc fQMdiSubWindow_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QMdiSubWindow_virtualbase_sharedPainter".}
proc fcQMdiSubWindow_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_sharedPainter".}
proc fQMdiSubWindow_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QMdiSubWindow_virtualbase_inputMethodEvent".}
proc fcQMdiSubWindow_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_inputMethodEvent".}
proc fQMdiSubWindow_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QMdiSubWindow_virtualbase_inputMethodQuery".}
proc fcQMdiSubWindow_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_inputMethodQuery".}
proc fQMdiSubWindow_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QMdiSubWindow_virtualbase_focusNextPrevChild".}
proc fcQMdiSubWindow_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_focusNextPrevChild".}
proc fQMdiSubWindow_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QMdiSubWindow_virtualbase_customEvent".}
proc fcQMdiSubWindow_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_customEvent".}
proc fQMdiSubWindow_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QMdiSubWindow_virtualbase_connectNotify".}
proc fcQMdiSubWindow_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_connectNotify".}
proc fQMdiSubWindow_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QMdiSubWindow_virtualbase_disconnectNotify".}
proc fcQMdiSubWindow_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QMdiSubWindow_override_virtual_disconnectNotify".}
proc fcQMdiSubWindow_staticMetaObject(): pointer {.importc: "QMdiSubWindow_staticMetaObject".}
proc fcQMdiSubWindow_delete(self: pointer) {.importc: "QMdiSubWindow_delete".}


func init*(T: type gen_qmdisubwindow_types.QMdiSubWindow, h: ptr cQMdiSubWindow): gen_qmdisubwindow_types.QMdiSubWindow =
  T(h: h)
proc create*(T: type gen_qmdisubwindow_types.QMdiSubWindow, parent: gen_qwidget_types.QWidget): gen_qmdisubwindow_types.QMdiSubWindow =
  gen_qmdisubwindow_types.QMdiSubWindow.init(fcQMdiSubWindow_new(parent.h))

proc create*(T: type gen_qmdisubwindow_types.QMdiSubWindow, ): gen_qmdisubwindow_types.QMdiSubWindow =
  gen_qmdisubwindow_types.QMdiSubWindow.init(fcQMdiSubWindow_new2())

proc create*(T: type gen_qmdisubwindow_types.QMdiSubWindow, parent: gen_qwidget_types.QWidget, flags: cint): gen_qmdisubwindow_types.QMdiSubWindow =
  gen_qmdisubwindow_types.QMdiSubWindow.init(fcQMdiSubWindow_new3(parent.h, cint(flags)))

proc metaObject*(self: gen_qmdisubwindow_types.QMdiSubWindow, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMdiSubWindow_metaObject(self.h))

proc metacast*(self: gen_qmdisubwindow_types.QMdiSubWindow, param1: cstring): pointer =
  fcQMdiSubWindow_metacast(self.h, param1)

proc metacall*(self: gen_qmdisubwindow_types.QMdiSubWindow, param1: cint, param2: cint, param3: pointer): cint =
  fcQMdiSubWindow_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qmdisubwindow_types.QMdiSubWindow, s: cstring): string =
  let v_ms = fcQMdiSubWindow_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmdisubwindow_types.QMdiSubWindow, s: cstring): string =
  let v_ms = fcQMdiSubWindow_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sizeHint*(self: gen_qmdisubwindow_types.QMdiSubWindow, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQMdiSubWindow_sizeHint(self.h))

proc minimumSizeHint*(self: gen_qmdisubwindow_types.QMdiSubWindow, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQMdiSubWindow_minimumSizeHint(self.h))

proc setWidget*(self: gen_qmdisubwindow_types.QMdiSubWindow, widget: gen_qwidget_types.QWidget): void =
  fcQMdiSubWindow_setWidget(self.h, widget.h)

proc widget*(self: gen_qmdisubwindow_types.QMdiSubWindow, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQMdiSubWindow_widget(self.h))

proc maximizedButtonsWidget*(self: gen_qmdisubwindow_types.QMdiSubWindow, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQMdiSubWindow_maximizedButtonsWidget(self.h))

proc maximizedSystemMenuIconWidget*(self: gen_qmdisubwindow_types.QMdiSubWindow, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQMdiSubWindow_maximizedSystemMenuIconWidget(self.h))

proc isShaded*(self: gen_qmdisubwindow_types.QMdiSubWindow, ): bool =
  fcQMdiSubWindow_isShaded(self.h)

proc setOption*(self: gen_qmdisubwindow_types.QMdiSubWindow, option: cint): void =
  fcQMdiSubWindow_setOption(self.h, cint(option))

proc testOption*(self: gen_qmdisubwindow_types.QMdiSubWindow, param1: cint): bool =
  fcQMdiSubWindow_testOption(self.h, cint(param1))

proc setKeyboardSingleStep*(self: gen_qmdisubwindow_types.QMdiSubWindow, step: cint): void =
  fcQMdiSubWindow_setKeyboardSingleStep(self.h, step)

proc keyboardSingleStep*(self: gen_qmdisubwindow_types.QMdiSubWindow, ): cint =
  fcQMdiSubWindow_keyboardSingleStep(self.h)

proc setKeyboardPageStep*(self: gen_qmdisubwindow_types.QMdiSubWindow, step: cint): void =
  fcQMdiSubWindow_setKeyboardPageStep(self.h, step)

proc keyboardPageStep*(self: gen_qmdisubwindow_types.QMdiSubWindow, ): cint =
  fcQMdiSubWindow_keyboardPageStep(self.h)

proc setSystemMenu*(self: gen_qmdisubwindow_types.QMdiSubWindow, systemMenu: gen_qmenu_types.QMenu): void =
  fcQMdiSubWindow_setSystemMenu(self.h, systemMenu.h)

proc systemMenu*(self: gen_qmdisubwindow_types.QMdiSubWindow, ): gen_qmenu_types.QMenu =
  gen_qmenu_types.QMenu(h: fcQMdiSubWindow_systemMenu(self.h))

proc mdiArea*(self: gen_qmdisubwindow_types.QMdiSubWindow, ): gen_qmdiarea_types.QMdiArea =
  gen_qmdiarea_types.QMdiArea(h: fcQMdiSubWindow_mdiArea(self.h))

proc windowStateChanged*(self: gen_qmdisubwindow_types.QMdiSubWindow, oldState: cint, newState: cint): void =
  fcQMdiSubWindow_windowStateChanged(self.h, cint(oldState), cint(newState))

type QMdiSubWindowwindowStateChangedSlot* = proc(oldState: cint, newState: cint)
proc miqt_exec_callback_QMdiSubWindow_windowStateChanged(slot: int, oldState: cint, newState: cint) {.exportc.} =
  let nimfunc = cast[ptr QMdiSubWindowwindowStateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(oldState)

  let slotval2 = cint(newState)

  nimfunc[](slotval1, slotval2)

proc onwindowStateChanged*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowwindowStateChangedSlot) =
  var tmp = new QMdiSubWindowwindowStateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_connect_windowStateChanged(self.h, cast[int](addr tmp[]))

proc aboutToActivate*(self: gen_qmdisubwindow_types.QMdiSubWindow, ): void =
  fcQMdiSubWindow_aboutToActivate(self.h)

type QMdiSubWindowaboutToActivateSlot* = proc()
proc miqt_exec_callback_QMdiSubWindow_aboutToActivate(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QMdiSubWindowaboutToActivateSlot](cast[pointer](slot))
  nimfunc[]()

proc onaboutToActivate*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowaboutToActivateSlot) =
  var tmp = new QMdiSubWindowaboutToActivateSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_connect_aboutToActivate(self.h, cast[int](addr tmp[]))

proc showSystemMenu*(self: gen_qmdisubwindow_types.QMdiSubWindow, ): void =
  fcQMdiSubWindow_showSystemMenu(self.h)

proc showShaded*(self: gen_qmdisubwindow_types.QMdiSubWindow, ): void =
  fcQMdiSubWindow_showShaded(self.h)

proc tr*(_: type gen_qmdisubwindow_types.QMdiSubWindow, s: cstring, c: cstring): string =
  let v_ms = fcQMdiSubWindow_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qmdisubwindow_types.QMdiSubWindow, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMdiSubWindow_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmdisubwindow_types.QMdiSubWindow, s: cstring, c: cstring): string =
  let v_ms = fcQMdiSubWindow_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmdisubwindow_types.QMdiSubWindow, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMdiSubWindow_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setOption*(self: gen_qmdisubwindow_types.QMdiSubWindow, option: cint, on: bool): void =
  fcQMdiSubWindow_setOption2(self.h, cint(option), on)

proc QMdiSubWindowmetaObject*(self: gen_qmdisubwindow_types.QMdiSubWindow, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQMdiSubWindow_virtualbase_metaObject(self.h))

type QMdiSubWindowmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowmetaObjectProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindowmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_metaObject(self: ptr cQMdiSubWindow, slot: int): pointer {.exportc: "miqt_exec_callback_QMdiSubWindow_metaObject ".} =
  var nimfunc = cast[ptr QMdiSubWindowmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QMdiSubWindowmetacast*(self: gen_qmdisubwindow_types.QMdiSubWindow, param1: cstring): pointer =
  fQMdiSubWindow_virtualbase_metacast(self.h, param1)

type QMdiSubWindowmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowmetacastProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindowmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_metacast(self: ptr cQMdiSubWindow, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QMdiSubWindow_metacast ".} =
  var nimfunc = cast[ptr QMdiSubWindowmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMdiSubWindowmetacall*(self: gen_qmdisubwindow_types.QMdiSubWindow, param1: cint, param2: cint, param3: pointer): cint =
  fQMdiSubWindow_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QMdiSubWindowmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowmetacallProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindowmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_metacall(self: ptr cQMdiSubWindow, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QMdiSubWindow_metacall ".} =
  var nimfunc = cast[ptr QMdiSubWindowmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QMdiSubWindowsizeHint*(self: gen_qmdisubwindow_types.QMdiSubWindow, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQMdiSubWindow_virtualbase_sizeHint(self.h))

type QMdiSubWindowsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowsizeHintProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindowsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_sizeHint(self: ptr cQMdiSubWindow, slot: int): pointer {.exportc: "miqt_exec_callback_QMdiSubWindow_sizeHint ".} =
  var nimfunc = cast[ptr QMdiSubWindowsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QMdiSubWindowminimumSizeHint*(self: gen_qmdisubwindow_types.QMdiSubWindow, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQMdiSubWindow_virtualbase_minimumSizeHint(self.h))

type QMdiSubWindowminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindowminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_minimumSizeHint(self: ptr cQMdiSubWindow, slot: int): pointer {.exportc: "miqt_exec_callback_QMdiSubWindow_minimumSizeHint ".} =
  var nimfunc = cast[ptr QMdiSubWindowminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QMdiSubWindoweventFilter*(self: gen_qmdisubwindow_types.QMdiSubWindow, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQMdiSubWindow_virtualbase_eventFilter(self.h, objectVal.h, event.h)

type QMdiSubWindoweventFilterProc* = proc(objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindoweventFilterProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindoweventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_eventFilter(self: ptr cQMdiSubWindow, slot: int, objectVal: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QMdiSubWindow_eventFilter ".} =
  var nimfunc = cast[ptr QMdiSubWindoweventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: objectVal)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QMdiSubWindowevent*(self: gen_qmdisubwindow_types.QMdiSubWindow, event: gen_qcoreevent_types.QEvent): bool =
  fQMdiSubWindow_virtualbase_event(self.h, event.h)

type QMdiSubWindoweventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindoweventProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindoweventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_event(self: ptr cQMdiSubWindow, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QMdiSubWindow_event ".} =
  var nimfunc = cast[ptr QMdiSubWindoweventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMdiSubWindowshowEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, showEvent: gen_qevent_types.QShowEvent): void =
  fQMdiSubWindow_virtualbase_showEvent(self.h, showEvent.h)

type QMdiSubWindowshowEventProc* = proc(showEvent: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowshowEventProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindowshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_showEvent(self: ptr cQMdiSubWindow, slot: int, showEvent: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_showEvent ".} =
  var nimfunc = cast[ptr QMdiSubWindowshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: showEvent)


  nimfunc[](slotval1)
proc QMdiSubWindowhideEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, hideEvent: gen_qevent_types.QHideEvent): void =
  fQMdiSubWindow_virtualbase_hideEvent(self.h, hideEvent.h)

type QMdiSubWindowhideEventProc* = proc(hideEvent: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowhideEventProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindowhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_hideEvent(self: ptr cQMdiSubWindow, slot: int, hideEvent: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_hideEvent ".} =
  var nimfunc = cast[ptr QMdiSubWindowhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: hideEvent)


  nimfunc[](slotval1)
proc QMdiSubWindowchangeEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, changeEvent: gen_qcoreevent_types.QEvent): void =
  fQMdiSubWindow_virtualbase_changeEvent(self.h, changeEvent.h)

type QMdiSubWindowchangeEventProc* = proc(changeEvent: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowchangeEventProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindowchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_changeEvent(self: ptr cQMdiSubWindow, slot: int, changeEvent: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_changeEvent ".} =
  var nimfunc = cast[ptr QMdiSubWindowchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: changeEvent)


  nimfunc[](slotval1)
proc QMdiSubWindowcloseEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, closeEvent: gen_qevent_types.QCloseEvent): void =
  fQMdiSubWindow_virtualbase_closeEvent(self.h, closeEvent.h)

type QMdiSubWindowcloseEventProc* = proc(closeEvent: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowcloseEventProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindowcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_closeEvent(self: ptr cQMdiSubWindow, slot: int, closeEvent: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_closeEvent ".} =
  var nimfunc = cast[ptr QMdiSubWindowcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: closeEvent)


  nimfunc[](slotval1)
proc QMdiSubWindowleaveEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, leaveEvent: gen_qcoreevent_types.QEvent): void =
  fQMdiSubWindow_virtualbase_leaveEvent(self.h, leaveEvent.h)

type QMdiSubWindowleaveEventProc* = proc(leaveEvent: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowleaveEventProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindowleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_leaveEvent(self: ptr cQMdiSubWindow, slot: int, leaveEvent: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_leaveEvent ".} =
  var nimfunc = cast[ptr QMdiSubWindowleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: leaveEvent)


  nimfunc[](slotval1)
proc QMdiSubWindowresizeEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, resizeEvent: gen_qevent_types.QResizeEvent): void =
  fQMdiSubWindow_virtualbase_resizeEvent(self.h, resizeEvent.h)

type QMdiSubWindowresizeEventProc* = proc(resizeEvent: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowresizeEventProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindowresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_resizeEvent(self: ptr cQMdiSubWindow, slot: int, resizeEvent: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_resizeEvent ".} =
  var nimfunc = cast[ptr QMdiSubWindowresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: resizeEvent)


  nimfunc[](slotval1)
proc QMdiSubWindowtimerEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, timerEvent: gen_qcoreevent_types.QTimerEvent): void =
  fQMdiSubWindow_virtualbase_timerEvent(self.h, timerEvent.h)

type QMdiSubWindowtimerEventProc* = proc(timerEvent: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowtimerEventProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindowtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_timerEvent(self: ptr cQMdiSubWindow, slot: int, timerEvent: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_timerEvent ".} =
  var nimfunc = cast[ptr QMdiSubWindowtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: timerEvent)


  nimfunc[](slotval1)
proc QMdiSubWindowmoveEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, moveEvent: gen_qevent_types.QMoveEvent): void =
  fQMdiSubWindow_virtualbase_moveEvent(self.h, moveEvent.h)

type QMdiSubWindowmoveEventProc* = proc(moveEvent: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowmoveEventProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindowmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_moveEvent(self: ptr cQMdiSubWindow, slot: int, moveEvent: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_moveEvent ".} =
  var nimfunc = cast[ptr QMdiSubWindowmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: moveEvent)


  nimfunc[](slotval1)
proc QMdiSubWindowpaintEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, paintEvent: gen_qevent_types.QPaintEvent): void =
  fQMdiSubWindow_virtualbase_paintEvent(self.h, paintEvent.h)

type QMdiSubWindowpaintEventProc* = proc(paintEvent: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowpaintEventProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindowpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_paintEvent(self: ptr cQMdiSubWindow, slot: int, paintEvent: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_paintEvent ".} =
  var nimfunc = cast[ptr QMdiSubWindowpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: paintEvent)


  nimfunc[](slotval1)
proc QMdiSubWindowmousePressEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, mouseEvent: gen_qevent_types.QMouseEvent): void =
  fQMdiSubWindow_virtualbase_mousePressEvent(self.h, mouseEvent.h)

type QMdiSubWindowmousePressEventProc* = proc(mouseEvent: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowmousePressEventProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindowmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_mousePressEvent(self: ptr cQMdiSubWindow, slot: int, mouseEvent: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_mousePressEvent ".} =
  var nimfunc = cast[ptr QMdiSubWindowmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: mouseEvent)


  nimfunc[](slotval1)
proc QMdiSubWindowmouseDoubleClickEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, mouseEvent: gen_qevent_types.QMouseEvent): void =
  fQMdiSubWindow_virtualbase_mouseDoubleClickEvent(self.h, mouseEvent.h)

type QMdiSubWindowmouseDoubleClickEventProc* = proc(mouseEvent: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindowmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_mouseDoubleClickEvent(self: ptr cQMdiSubWindow, slot: int, mouseEvent: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QMdiSubWindowmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: mouseEvent)


  nimfunc[](slotval1)
proc QMdiSubWindowmouseReleaseEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, mouseEvent: gen_qevent_types.QMouseEvent): void =
  fQMdiSubWindow_virtualbase_mouseReleaseEvent(self.h, mouseEvent.h)

type QMdiSubWindowmouseReleaseEventProc* = proc(mouseEvent: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindowmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_mouseReleaseEvent(self: ptr cQMdiSubWindow, slot: int, mouseEvent: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QMdiSubWindowmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: mouseEvent)


  nimfunc[](slotval1)
proc QMdiSubWindowmouseMoveEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, mouseEvent: gen_qevent_types.QMouseEvent): void =
  fQMdiSubWindow_virtualbase_mouseMoveEvent(self.h, mouseEvent.h)

type QMdiSubWindowmouseMoveEventProc* = proc(mouseEvent: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindowmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_mouseMoveEvent(self: ptr cQMdiSubWindow, slot: int, mouseEvent: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QMdiSubWindowmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: mouseEvent)


  nimfunc[](slotval1)
proc QMdiSubWindowkeyPressEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, keyEvent: gen_qevent_types.QKeyEvent): void =
  fQMdiSubWindow_virtualbase_keyPressEvent(self.h, keyEvent.h)

type QMdiSubWindowkeyPressEventProc* = proc(keyEvent: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindowkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_keyPressEvent(self: ptr cQMdiSubWindow, slot: int, keyEvent: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_keyPressEvent ".} =
  var nimfunc = cast[ptr QMdiSubWindowkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: keyEvent)


  nimfunc[](slotval1)
proc QMdiSubWindowcontextMenuEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, contextMenuEvent: gen_qevent_types.QContextMenuEvent): void =
  fQMdiSubWindow_virtualbase_contextMenuEvent(self.h, contextMenuEvent.h)

type QMdiSubWindowcontextMenuEventProc* = proc(contextMenuEvent: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindowcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_contextMenuEvent(self: ptr cQMdiSubWindow, slot: int, contextMenuEvent: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_contextMenuEvent ".} =
  var nimfunc = cast[ptr QMdiSubWindowcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: contextMenuEvent)


  nimfunc[](slotval1)
proc QMdiSubWindowfocusInEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, focusInEvent: gen_qevent_types.QFocusEvent): void =
  fQMdiSubWindow_virtualbase_focusInEvent(self.h, focusInEvent.h)

type QMdiSubWindowfocusInEventProc* = proc(focusInEvent: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowfocusInEventProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindowfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_focusInEvent(self: ptr cQMdiSubWindow, slot: int, focusInEvent: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_focusInEvent ".} =
  var nimfunc = cast[ptr QMdiSubWindowfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: focusInEvent)


  nimfunc[](slotval1)
proc QMdiSubWindowfocusOutEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, focusOutEvent: gen_qevent_types.QFocusEvent): void =
  fQMdiSubWindow_virtualbase_focusOutEvent(self.h, focusOutEvent.h)

type QMdiSubWindowfocusOutEventProc* = proc(focusOutEvent: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindowfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_focusOutEvent(self: ptr cQMdiSubWindow, slot: int, focusOutEvent: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_focusOutEvent ".} =
  var nimfunc = cast[ptr QMdiSubWindowfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: focusOutEvent)


  nimfunc[](slotval1)
proc QMdiSubWindowchildEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, childEvent: gen_qcoreevent_types.QChildEvent): void =
  fQMdiSubWindow_virtualbase_childEvent(self.h, childEvent.h)

type QMdiSubWindowchildEventProc* = proc(childEvent: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowchildEventProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindowchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_childEvent(self: ptr cQMdiSubWindow, slot: int, childEvent: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_childEvent ".} =
  var nimfunc = cast[ptr QMdiSubWindowchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: childEvent)


  nimfunc[](slotval1)
proc QMdiSubWindowdevType*(self: gen_qmdisubwindow_types.QMdiSubWindow, ): cint =
  fQMdiSubWindow_virtualbase_devType(self.h)

type QMdiSubWindowdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowdevTypeProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindowdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_devType(self: ptr cQMdiSubWindow, slot: int): cint {.exportc: "miqt_exec_callback_QMdiSubWindow_devType ".} =
  var nimfunc = cast[ptr QMdiSubWindowdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QMdiSubWindowsetVisible*(self: gen_qmdisubwindow_types.QMdiSubWindow, visible: bool): void =
  fQMdiSubWindow_virtualbase_setVisible(self.h, visible)

type QMdiSubWindowsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowsetVisibleProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindowsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_setVisible(self: ptr cQMdiSubWindow, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QMdiSubWindow_setVisible ".} =
  var nimfunc = cast[ptr QMdiSubWindowsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QMdiSubWindowheightForWidth*(self: gen_qmdisubwindow_types.QMdiSubWindow, param1: cint): cint =
  fQMdiSubWindow_virtualbase_heightForWidth(self.h, param1)

type QMdiSubWindowheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowheightForWidthProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindowheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_heightForWidth(self: ptr cQMdiSubWindow, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QMdiSubWindow_heightForWidth ".} =
  var nimfunc = cast[ptr QMdiSubWindowheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMdiSubWindowhasHeightForWidth*(self: gen_qmdisubwindow_types.QMdiSubWindow, ): bool =
  fQMdiSubWindow_virtualbase_hasHeightForWidth(self.h)

type QMdiSubWindowhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindowhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_hasHeightForWidth(self: ptr cQMdiSubWindow, slot: int): bool {.exportc: "miqt_exec_callback_QMdiSubWindow_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QMdiSubWindowhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QMdiSubWindowpaintEngine*(self: gen_qmdisubwindow_types.QMdiSubWindow, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQMdiSubWindow_virtualbase_paintEngine(self.h))

type QMdiSubWindowpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowpaintEngineProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindowpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_paintEngine(self: ptr cQMdiSubWindow, slot: int): pointer {.exportc: "miqt_exec_callback_QMdiSubWindow_paintEngine ".} =
  var nimfunc = cast[ptr QMdiSubWindowpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QMdiSubWindowwheelEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, event: gen_qevent_types.QWheelEvent): void =
  fQMdiSubWindow_virtualbase_wheelEvent(self.h, event.h)

type QMdiSubWindowwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowwheelEventProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindowwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_wheelEvent(self: ptr cQMdiSubWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_wheelEvent ".} =
  var nimfunc = cast[ptr QMdiSubWindowwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QMdiSubWindowkeyReleaseEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, event: gen_qevent_types.QKeyEvent): void =
  fQMdiSubWindow_virtualbase_keyReleaseEvent(self.h, event.h)

type QMdiSubWindowkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindowkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_keyReleaseEvent(self: ptr cQMdiSubWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QMdiSubWindowkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QMdiSubWindowenterEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, event: gen_qcoreevent_types.QEvent): void =
  fQMdiSubWindow_virtualbase_enterEvent(self.h, event.h)

type QMdiSubWindowenterEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onenterEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowenterEventProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindowenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_enterEvent(self: ptr cQMdiSubWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_enterEvent ".} =
  var nimfunc = cast[ptr QMdiSubWindowenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QMdiSubWindowtabletEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, event: gen_qevent_types.QTabletEvent): void =
  fQMdiSubWindow_virtualbase_tabletEvent(self.h, event.h)

type QMdiSubWindowtabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowtabletEventProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindowtabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_tabletEvent(self: ptr cQMdiSubWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_tabletEvent ".} =
  var nimfunc = cast[ptr QMdiSubWindowtabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QMdiSubWindowactionEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, event: gen_qevent_types.QActionEvent): void =
  fQMdiSubWindow_virtualbase_actionEvent(self.h, event.h)

type QMdiSubWindowactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowactionEventProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindowactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_actionEvent(self: ptr cQMdiSubWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_actionEvent ".} =
  var nimfunc = cast[ptr QMdiSubWindowactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QMdiSubWindowdragEnterEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, event: gen_qevent_types.QDragEnterEvent): void =
  fQMdiSubWindow_virtualbase_dragEnterEvent(self.h, event.h)

type QMdiSubWindowdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindowdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_dragEnterEvent(self: ptr cQMdiSubWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_dragEnterEvent ".} =
  var nimfunc = cast[ptr QMdiSubWindowdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QMdiSubWindowdragMoveEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, event: gen_qevent_types.QDragMoveEvent): void =
  fQMdiSubWindow_virtualbase_dragMoveEvent(self.h, event.h)

type QMdiSubWindowdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindowdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_dragMoveEvent(self: ptr cQMdiSubWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_dragMoveEvent ".} =
  var nimfunc = cast[ptr QMdiSubWindowdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QMdiSubWindowdragLeaveEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, event: gen_qevent_types.QDragLeaveEvent): void =
  fQMdiSubWindow_virtualbase_dragLeaveEvent(self.h, event.h)

type QMdiSubWindowdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindowdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_dragLeaveEvent(self: ptr cQMdiSubWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QMdiSubWindowdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QMdiSubWindowdropEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, event: gen_qevent_types.QDropEvent): void =
  fQMdiSubWindow_virtualbase_dropEvent(self.h, event.h)

type QMdiSubWindowdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowdropEventProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindowdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_dropEvent(self: ptr cQMdiSubWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_dropEvent ".} =
  var nimfunc = cast[ptr QMdiSubWindowdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QMdiSubWindownativeEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fQMdiSubWindow_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QMdiSubWindownativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindownativeEventProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindownativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_nativeEvent(self: ptr cQMdiSubWindow, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QMdiSubWindow_nativeEvent ".} =
  var nimfunc = cast[ptr QMdiSubWindownativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QMdiSubWindowmetric*(self: gen_qmdisubwindow_types.QMdiSubWindow, param1: cint): cint =
  fQMdiSubWindow_virtualbase_metric(self.h, cint(param1))

type QMdiSubWindowmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowmetricProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindowmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_metric(self: ptr cQMdiSubWindow, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QMdiSubWindow_metric ".} =
  var nimfunc = cast[ptr QMdiSubWindowmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMdiSubWindowinitPainter*(self: gen_qmdisubwindow_types.QMdiSubWindow, painter: gen_qpainter_types.QPainter): void =
  fQMdiSubWindow_virtualbase_initPainter(self.h, painter.h)

type QMdiSubWindowinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowinitPainterProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindowinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_initPainter(self: ptr cQMdiSubWindow, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_initPainter ".} =
  var nimfunc = cast[ptr QMdiSubWindowinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QMdiSubWindowredirected*(self: gen_qmdisubwindow_types.QMdiSubWindow, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQMdiSubWindow_virtualbase_redirected(self.h, offset.h))

type QMdiSubWindowredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowredirectedProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindowredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_redirected(self: ptr cQMdiSubWindow, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QMdiSubWindow_redirected ".} =
  var nimfunc = cast[ptr QMdiSubWindowredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QMdiSubWindowsharedPainter*(self: gen_qmdisubwindow_types.QMdiSubWindow, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQMdiSubWindow_virtualbase_sharedPainter(self.h))

type QMdiSubWindowsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowsharedPainterProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindowsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_sharedPainter(self: ptr cQMdiSubWindow, slot: int): pointer {.exportc: "miqt_exec_callback_QMdiSubWindow_sharedPainter ".} =
  var nimfunc = cast[ptr QMdiSubWindowsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QMdiSubWindowinputMethodEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, param1: gen_qevent_types.QInputMethodEvent): void =
  fQMdiSubWindow_virtualbase_inputMethodEvent(self.h, param1.h)

type QMdiSubWindowinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindowinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_inputMethodEvent(self: ptr cQMdiSubWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_inputMethodEvent ".} =
  var nimfunc = cast[ptr QMdiSubWindowinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QMdiSubWindowinputMethodQuery*(self: gen_qmdisubwindow_types.QMdiSubWindow, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQMdiSubWindow_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QMdiSubWindowinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindowinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_inputMethodQuery(self: ptr cQMdiSubWindow, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QMdiSubWindow_inputMethodQuery ".} =
  var nimfunc = cast[ptr QMdiSubWindowinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QMdiSubWindowfocusNextPrevChild*(self: gen_qmdisubwindow_types.QMdiSubWindow, next: bool): bool =
  fQMdiSubWindow_virtualbase_focusNextPrevChild(self.h, next)

type QMdiSubWindowfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindowfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_focusNextPrevChild(self: ptr cQMdiSubWindow, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QMdiSubWindow_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QMdiSubWindowfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMdiSubWindowcustomEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, event: gen_qcoreevent_types.QEvent): void =
  fQMdiSubWindow_virtualbase_customEvent(self.h, event.h)

type QMdiSubWindowcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowcustomEventProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindowcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_customEvent(self: ptr cQMdiSubWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_customEvent ".} =
  var nimfunc = cast[ptr QMdiSubWindowcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QMdiSubWindowconnectNotify*(self: gen_qmdisubwindow_types.QMdiSubWindow, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQMdiSubWindow_virtualbase_connectNotify(self.h, signal.h)

type QMdiSubWindowconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindowconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_connectNotify(self: ptr cQMdiSubWindow, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_connectNotify ".} =
  var nimfunc = cast[ptr QMdiSubWindowconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QMdiSubWindowdisconnectNotify*(self: gen_qmdisubwindow_types.QMdiSubWindow, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQMdiSubWindow_virtualbase_disconnectNotify(self.h, signal.h)

type QMdiSubWindowdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QMdiSubWindowdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMdiSubWindow_disconnectNotify(self: ptr cQMdiSubWindow, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMdiSubWindow_disconnectNotify ".} =
  var nimfunc = cast[ptr QMdiSubWindowdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qmdisubwindow_types.QMdiSubWindow): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMdiSubWindow_staticMetaObject())
proc delete*(self: gen_qmdisubwindow_types.QMdiSubWindow) =
  fcQMdiSubWindow_delete(self.h)
