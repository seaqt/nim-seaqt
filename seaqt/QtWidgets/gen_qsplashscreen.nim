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
{.compile("gen_qsplashscreen.cpp", cflags).}


import ./gen_qsplashscreen_types
export gen_qsplashscreen_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qcolor_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qpaintdevice_types,
  ../QtGui/gen_qpaintengine_types,
  ../QtGui/gen_qpainter_types,
  ../QtGui/gen_qpixmap_types,
  ../QtGui/gen_qscreen_types,
  ./gen_qwidget
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qsize_types,
  gen_qvariant_types,
  gen_qcolor_types,
  gen_qevent_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qpixmap_types,
  gen_qscreen_types,
  gen_qwidget

type cQSplashScreen*{.exportc: "QSplashScreen", incompleteStruct.} = object

proc fcQSplashScreen_new(parent: pointer): ptr cQSplashScreen {.importc: "QSplashScreen_new".}
proc fcQSplashScreen_new2(): ptr cQSplashScreen {.importc: "QSplashScreen_new2".}
proc fcQSplashScreen_new3(screen: pointer): ptr cQSplashScreen {.importc: "QSplashScreen_new3".}
proc fcQSplashScreen_new4(pixmap: pointer): ptr cQSplashScreen {.importc: "QSplashScreen_new4".}
proc fcQSplashScreen_new5(pixmap: pointer, f: cint): ptr cQSplashScreen {.importc: "QSplashScreen_new5".}
proc fcQSplashScreen_new6(screen: pointer, pixmap: pointer): ptr cQSplashScreen {.importc: "QSplashScreen_new6".}
proc fcQSplashScreen_new7(screen: pointer, pixmap: pointer, f: cint): ptr cQSplashScreen {.importc: "QSplashScreen_new7".}
proc fcQSplashScreen_new8(parent: pointer, pixmap: pointer): ptr cQSplashScreen {.importc: "QSplashScreen_new8".}
proc fcQSplashScreen_new9(parent: pointer, pixmap: pointer, f: cint): ptr cQSplashScreen {.importc: "QSplashScreen_new9".}
proc fcQSplashScreen_metaObject(self: pointer, ): pointer {.importc: "QSplashScreen_metaObject".}
proc fcQSplashScreen_metacast(self: pointer, param1: cstring): pointer {.importc: "QSplashScreen_metacast".}
proc fcQSplashScreen_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSplashScreen_metacall".}
proc fcQSplashScreen_tr(s: cstring): struct_miqt_string {.importc: "QSplashScreen_tr".}
proc fcQSplashScreen_trUtf8(s: cstring): struct_miqt_string {.importc: "QSplashScreen_trUtf8".}
proc fcQSplashScreen_setPixmap(self: pointer, pixmap: pointer): void {.importc: "QSplashScreen_setPixmap".}
proc fcQSplashScreen_pixmap(self: pointer, ): pointer {.importc: "QSplashScreen_pixmap".}
proc fcQSplashScreen_finish(self: pointer, w: pointer): void {.importc: "QSplashScreen_finish".}
proc fcQSplashScreen_repaint(self: pointer, ): void {.importc: "QSplashScreen_repaint".}
proc fcQSplashScreen_message(self: pointer, ): struct_miqt_string {.importc: "QSplashScreen_message".}
proc fcQSplashScreen_showMessage(self: pointer, message: struct_miqt_string): void {.importc: "QSplashScreen_showMessage".}
proc fcQSplashScreen_clearMessage(self: pointer, ): void {.importc: "QSplashScreen_clearMessage".}
proc fcQSplashScreen_messageChanged(self: pointer, message: struct_miqt_string): void {.importc: "QSplashScreen_messageChanged".}
proc fcQSplashScreen_connect_messageChanged(self: pointer, slot: int) {.importc: "QSplashScreen_connect_messageChanged".}
proc fcQSplashScreen_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSplashScreen_tr2".}
proc fcQSplashScreen_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSplashScreen_tr3".}
proc fcQSplashScreen_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSplashScreen_trUtf82".}
proc fcQSplashScreen_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSplashScreen_trUtf83".}
proc fcQSplashScreen_showMessage2(self: pointer, message: struct_miqt_string, alignment: cint): void {.importc: "QSplashScreen_showMessage2".}
proc fcQSplashScreen_showMessage3(self: pointer, message: struct_miqt_string, alignment: cint, color: pointer): void {.importc: "QSplashScreen_showMessage3".}
proc fQSplashScreen_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QSplashScreen_virtualbase_metaObject".}
proc fcQSplashScreen_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_metaObject".}
proc fQSplashScreen_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QSplashScreen_virtualbase_metacast".}
proc fcQSplashScreen_override_virtual_metacast(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_metacast".}
proc fQSplashScreen_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QSplashScreen_virtualbase_metacall".}
proc fcQSplashScreen_override_virtual_metacall(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_metacall".}
proc fQSplashScreen_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QSplashScreen_virtualbase_event".}
proc fcQSplashScreen_override_virtual_event(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_event".}
proc fQSplashScreen_virtualbase_drawContents(self: pointer, painter: pointer): void{.importc: "QSplashScreen_virtualbase_drawContents".}
proc fcQSplashScreen_override_virtual_drawContents(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_drawContents".}
proc fQSplashScreen_virtualbase_mousePressEvent(self: pointer, param1: pointer): void{.importc: "QSplashScreen_virtualbase_mousePressEvent".}
proc fcQSplashScreen_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_mousePressEvent".}
proc fQSplashScreen_virtualbase_devType(self: pointer, ): cint{.importc: "QSplashScreen_virtualbase_devType".}
proc fcQSplashScreen_override_virtual_devType(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_devType".}
proc fQSplashScreen_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QSplashScreen_virtualbase_setVisible".}
proc fcQSplashScreen_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_setVisible".}
proc fQSplashScreen_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QSplashScreen_virtualbase_sizeHint".}
proc fcQSplashScreen_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_sizeHint".}
proc fQSplashScreen_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QSplashScreen_virtualbase_minimumSizeHint".}
proc fcQSplashScreen_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_minimumSizeHint".}
proc fQSplashScreen_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QSplashScreen_virtualbase_heightForWidth".}
proc fcQSplashScreen_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_heightForWidth".}
proc fQSplashScreen_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QSplashScreen_virtualbase_hasHeightForWidth".}
proc fcQSplashScreen_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_hasHeightForWidth".}
proc fQSplashScreen_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QSplashScreen_virtualbase_paintEngine".}
proc fcQSplashScreen_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_paintEngine".}
proc fQSplashScreen_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_mouseReleaseEvent".}
proc fcQSplashScreen_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_mouseReleaseEvent".}
proc fQSplashScreen_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_mouseDoubleClickEvent".}
proc fcQSplashScreen_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_mouseDoubleClickEvent".}
proc fQSplashScreen_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_mouseMoveEvent".}
proc fcQSplashScreen_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_mouseMoveEvent".}
proc fQSplashScreen_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_wheelEvent".}
proc fcQSplashScreen_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_wheelEvent".}
proc fQSplashScreen_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_keyPressEvent".}
proc fcQSplashScreen_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_keyPressEvent".}
proc fQSplashScreen_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_keyReleaseEvent".}
proc fcQSplashScreen_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_keyReleaseEvent".}
proc fQSplashScreen_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_focusInEvent".}
proc fcQSplashScreen_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_focusInEvent".}
proc fQSplashScreen_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_focusOutEvent".}
proc fcQSplashScreen_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_focusOutEvent".}
proc fQSplashScreen_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_enterEvent".}
proc fcQSplashScreen_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_enterEvent".}
proc fQSplashScreen_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_leaveEvent".}
proc fcQSplashScreen_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_leaveEvent".}
proc fQSplashScreen_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_paintEvent".}
proc fcQSplashScreen_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_paintEvent".}
proc fQSplashScreen_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_moveEvent".}
proc fcQSplashScreen_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_moveEvent".}
proc fQSplashScreen_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_resizeEvent".}
proc fcQSplashScreen_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_resizeEvent".}
proc fQSplashScreen_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_closeEvent".}
proc fcQSplashScreen_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_closeEvent".}
proc fQSplashScreen_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_contextMenuEvent".}
proc fcQSplashScreen_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_contextMenuEvent".}
proc fQSplashScreen_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_tabletEvent".}
proc fcQSplashScreen_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_tabletEvent".}
proc fQSplashScreen_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_actionEvent".}
proc fcQSplashScreen_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_actionEvent".}
proc fQSplashScreen_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_dragEnterEvent".}
proc fcQSplashScreen_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_dragEnterEvent".}
proc fQSplashScreen_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_dragMoveEvent".}
proc fcQSplashScreen_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_dragMoveEvent".}
proc fQSplashScreen_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_dragLeaveEvent".}
proc fcQSplashScreen_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_dragLeaveEvent".}
proc fQSplashScreen_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_dropEvent".}
proc fcQSplashScreen_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_dropEvent".}
proc fQSplashScreen_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_showEvent".}
proc fcQSplashScreen_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_showEvent".}
proc fQSplashScreen_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_hideEvent".}
proc fcQSplashScreen_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_hideEvent".}
proc fQSplashScreen_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QSplashScreen_virtualbase_nativeEvent".}
proc fcQSplashScreen_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_nativeEvent".}
proc fQSplashScreen_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QSplashScreen_virtualbase_changeEvent".}
proc fcQSplashScreen_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_changeEvent".}
proc fQSplashScreen_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QSplashScreen_virtualbase_metric".}
proc fcQSplashScreen_override_virtual_metric(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_metric".}
proc fQSplashScreen_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QSplashScreen_virtualbase_initPainter".}
proc fcQSplashScreen_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_initPainter".}
proc fQSplashScreen_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QSplashScreen_virtualbase_redirected".}
proc fcQSplashScreen_override_virtual_redirected(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_redirected".}
proc fQSplashScreen_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QSplashScreen_virtualbase_sharedPainter".}
proc fcQSplashScreen_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_sharedPainter".}
proc fQSplashScreen_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QSplashScreen_virtualbase_inputMethodEvent".}
proc fcQSplashScreen_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_inputMethodEvent".}
proc fQSplashScreen_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QSplashScreen_virtualbase_inputMethodQuery".}
proc fcQSplashScreen_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_inputMethodQuery".}
proc fQSplashScreen_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QSplashScreen_virtualbase_focusNextPrevChild".}
proc fcQSplashScreen_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_focusNextPrevChild".}
proc fQSplashScreen_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSplashScreen_virtualbase_eventFilter".}
proc fcQSplashScreen_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_eventFilter".}
proc fQSplashScreen_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_timerEvent".}
proc fcQSplashScreen_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_timerEvent".}
proc fQSplashScreen_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_childEvent".}
proc fcQSplashScreen_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_childEvent".}
proc fQSplashScreen_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSplashScreen_virtualbase_customEvent".}
proc fcQSplashScreen_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_customEvent".}
proc fQSplashScreen_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSplashScreen_virtualbase_connectNotify".}
proc fcQSplashScreen_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_connectNotify".}
proc fQSplashScreen_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSplashScreen_virtualbase_disconnectNotify".}
proc fcQSplashScreen_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSplashScreen_override_virtual_disconnectNotify".}
proc fcQSplashScreen_staticMetaObject(): pointer {.importc: "QSplashScreen_staticMetaObject".}
proc fcQSplashScreen_delete(self: pointer) {.importc: "QSplashScreen_delete".}


func init*(T: type gen_qsplashscreen_types.QSplashScreen, h: ptr cQSplashScreen): gen_qsplashscreen_types.QSplashScreen =
  T(h: h)
proc create*(T: type gen_qsplashscreen_types.QSplashScreen, parent: gen_qwidget_types.QWidget): gen_qsplashscreen_types.QSplashScreen =
  gen_qsplashscreen_types.QSplashScreen.init(fcQSplashScreen_new(parent.h))

proc create*(T: type gen_qsplashscreen_types.QSplashScreen, ): gen_qsplashscreen_types.QSplashScreen =
  gen_qsplashscreen_types.QSplashScreen.init(fcQSplashScreen_new2())

proc create*(T: type gen_qsplashscreen_types.QSplashScreen, screen: gen_qscreen_types.QScreen): gen_qsplashscreen_types.QSplashScreen =
  gen_qsplashscreen_types.QSplashScreen.init(fcQSplashScreen_new3(screen.h))

proc create*(T: type gen_qsplashscreen_types.QSplashScreen, pixmap: gen_qpixmap_types.QPixmap): gen_qsplashscreen_types.QSplashScreen =
  gen_qsplashscreen_types.QSplashScreen.init(fcQSplashScreen_new4(pixmap.h))

proc create*(T: type gen_qsplashscreen_types.QSplashScreen, pixmap: gen_qpixmap_types.QPixmap, f: cint): gen_qsplashscreen_types.QSplashScreen =
  gen_qsplashscreen_types.QSplashScreen.init(fcQSplashScreen_new5(pixmap.h, cint(f)))

proc create*(T: type gen_qsplashscreen_types.QSplashScreen, screen: gen_qscreen_types.QScreen, pixmap: gen_qpixmap_types.QPixmap): gen_qsplashscreen_types.QSplashScreen =
  gen_qsplashscreen_types.QSplashScreen.init(fcQSplashScreen_new6(screen.h, pixmap.h))

proc create*(T: type gen_qsplashscreen_types.QSplashScreen, screen: gen_qscreen_types.QScreen, pixmap: gen_qpixmap_types.QPixmap, f: cint): gen_qsplashscreen_types.QSplashScreen =
  gen_qsplashscreen_types.QSplashScreen.init(fcQSplashScreen_new7(screen.h, pixmap.h, cint(f)))

proc create*(T: type gen_qsplashscreen_types.QSplashScreen, parent: gen_qwidget_types.QWidget, pixmap: gen_qpixmap_types.QPixmap): gen_qsplashscreen_types.QSplashScreen =
  gen_qsplashscreen_types.QSplashScreen.init(fcQSplashScreen_new8(parent.h, pixmap.h))

proc create*(T: type gen_qsplashscreen_types.QSplashScreen, parent: gen_qwidget_types.QWidget, pixmap: gen_qpixmap_types.QPixmap, f: cint): gen_qsplashscreen_types.QSplashScreen =
  gen_qsplashscreen_types.QSplashScreen.init(fcQSplashScreen_new9(parent.h, pixmap.h, cint(f)))

proc metaObject*(self: gen_qsplashscreen_types.QSplashScreen, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSplashScreen_metaObject(self.h))

proc metacast*(self: gen_qsplashscreen_types.QSplashScreen, param1: cstring): pointer =
  fcQSplashScreen_metacast(self.h, param1)

proc metacall*(self: gen_qsplashscreen_types.QSplashScreen, param1: cint, param2: cint, param3: pointer): cint =
  fcQSplashScreen_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsplashscreen_types.QSplashScreen, s: cstring): string =
  let v_ms = fcQSplashScreen_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsplashscreen_types.QSplashScreen, s: cstring): string =
  let v_ms = fcQSplashScreen_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPixmap*(self: gen_qsplashscreen_types.QSplashScreen, pixmap: gen_qpixmap_types.QPixmap): void =
  fcQSplashScreen_setPixmap(self.h, pixmap.h)

proc pixmap*(self: gen_qsplashscreen_types.QSplashScreen, ): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQSplashScreen_pixmap(self.h))

proc finish*(self: gen_qsplashscreen_types.QSplashScreen, w: gen_qwidget_types.QWidget): void =
  fcQSplashScreen_finish(self.h, w.h)

proc repaint*(self: gen_qsplashscreen_types.QSplashScreen, ): void =
  fcQSplashScreen_repaint(self.h)

proc message*(self: gen_qsplashscreen_types.QSplashScreen, ): string =
  let v_ms = fcQSplashScreen_message(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc showMessage*(self: gen_qsplashscreen_types.QSplashScreen, message: string): void =
  fcQSplashScreen_showMessage(self.h, struct_miqt_string(data: message, len: csize_t(len(message))))

proc clearMessage*(self: gen_qsplashscreen_types.QSplashScreen, ): void =
  fcQSplashScreen_clearMessage(self.h)

proc messageChanged*(self: gen_qsplashscreen_types.QSplashScreen, message: string): void =
  fcQSplashScreen_messageChanged(self.h, struct_miqt_string(data: message, len: csize_t(len(message))))

type QSplashScreenmessageChangedSlot* = proc(message: string)
proc miqt_exec_callback_QSplashScreen_messageChanged(slot: int, message: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QSplashScreenmessageChangedSlot](cast[pointer](slot))
  let vmessage_ms = message
  let vmessagex_ret = string.fromBytes(toOpenArrayByte(vmessage_ms.data, 0, int(vmessage_ms.len)-1))
  c_free(vmessage_ms.data)
  let slotval1 = vmessagex_ret

  nimfunc[](slotval1)

proc onmessageChanged*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreenmessageChangedSlot) =
  var tmp = new QSplashScreenmessageChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_connect_messageChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qsplashscreen_types.QSplashScreen, s: cstring, c: cstring): string =
  let v_ms = fcQSplashScreen_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsplashscreen_types.QSplashScreen, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSplashScreen_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsplashscreen_types.QSplashScreen, s: cstring, c: cstring): string =
  let v_ms = fcQSplashScreen_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsplashscreen_types.QSplashScreen, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSplashScreen_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc showMessage*(self: gen_qsplashscreen_types.QSplashScreen, message: string, alignment: cint): void =
  fcQSplashScreen_showMessage2(self.h, struct_miqt_string(data: message, len: csize_t(len(message))), alignment)

proc showMessage*(self: gen_qsplashscreen_types.QSplashScreen, message: string, alignment: cint, color: gen_qcolor_types.QColor): void =
  fcQSplashScreen_showMessage3(self.h, struct_miqt_string(data: message, len: csize_t(len(message))), alignment, color.h)

proc QSplashScreenmetaObject*(self: gen_qsplashscreen_types.QSplashScreen, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQSplashScreen_virtualbase_metaObject(self.h))

type QSplashScreenmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreenmetaObjectProc) =
  # TODO check subclass
  var tmp = new QSplashScreenmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_metaObject(self: ptr cQSplashScreen, slot: int): pointer {.exportc: "miqt_exec_callback_QSplashScreen_metaObject ".} =
  var nimfunc = cast[ptr QSplashScreenmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSplashScreenmetacast*(self: gen_qsplashscreen_types.QSplashScreen, param1: cstring): pointer =
  fQSplashScreen_virtualbase_metacast(self.h, param1)

type QSplashScreenmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreenmetacastProc) =
  # TODO check subclass
  var tmp = new QSplashScreenmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_metacast(self: ptr cQSplashScreen, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QSplashScreen_metacast ".} =
  var nimfunc = cast[ptr QSplashScreenmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSplashScreenmetacall*(self: gen_qsplashscreen_types.QSplashScreen, param1: cint, param2: cint, param3: pointer): cint =
  fQSplashScreen_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSplashScreenmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreenmetacallProc) =
  # TODO check subclass
  var tmp = new QSplashScreenmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_metacall(self: ptr cQSplashScreen, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSplashScreen_metacall ".} =
  var nimfunc = cast[ptr QSplashScreenmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QSplashScreenevent*(self: gen_qsplashscreen_types.QSplashScreen, e: gen_qcoreevent_types.QEvent): bool =
  fQSplashScreen_virtualbase_event(self.h, e.h)

type QSplashScreeneventProc* = proc(e: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreeneventProc) =
  # TODO check subclass
  var tmp = new QSplashScreeneventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_event(self: ptr cQSplashScreen, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QSplashScreen_event ".} =
  var nimfunc = cast[ptr QSplashScreeneventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSplashScreendrawContents*(self: gen_qsplashscreen_types.QSplashScreen, painter: gen_qpainter_types.QPainter): void =
  fQSplashScreen_virtualbase_drawContents(self.h, painter.h)

type QSplashScreendrawContentsProc* = proc(painter: gen_qpainter_types.QPainter): void
proc ondrawContents*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreendrawContentsProc) =
  # TODO check subclass
  var tmp = new QSplashScreendrawContentsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_drawContents(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_drawContents(self: ptr cQSplashScreen, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_drawContents ".} =
  var nimfunc = cast[ptr QSplashScreendrawContentsProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QSplashScreenmousePressEvent*(self: gen_qsplashscreen_types.QSplashScreen, param1: gen_qevent_types.QMouseEvent): void =
  fQSplashScreen_virtualbase_mousePressEvent(self.h, param1.h)

type QSplashScreenmousePressEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreenmousePressEventProc) =
  # TODO check subclass
  var tmp = new QSplashScreenmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_mousePressEvent(self: ptr cQSplashScreen, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_mousePressEvent ".} =
  var nimfunc = cast[ptr QSplashScreenmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QSplashScreendevType*(self: gen_qsplashscreen_types.QSplashScreen, ): cint =
  fQSplashScreen_virtualbase_devType(self.h)

type QSplashScreendevTypeProc* = proc(): cint
proc ondevType*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreendevTypeProc) =
  # TODO check subclass
  var tmp = new QSplashScreendevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_devType(self: ptr cQSplashScreen, slot: int): cint {.exportc: "miqt_exec_callback_QSplashScreen_devType ".} =
  var nimfunc = cast[ptr QSplashScreendevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSplashScreensetVisible*(self: gen_qsplashscreen_types.QSplashScreen, visible: bool): void =
  fQSplashScreen_virtualbase_setVisible(self.h, visible)

type QSplashScreensetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreensetVisibleProc) =
  # TODO check subclass
  var tmp = new QSplashScreensetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_setVisible(self: ptr cQSplashScreen, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QSplashScreen_setVisible ".} =
  var nimfunc = cast[ptr QSplashScreensetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QSplashScreensizeHint*(self: gen_qsplashscreen_types.QSplashScreen, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQSplashScreen_virtualbase_sizeHint(self.h))

type QSplashScreensizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreensizeHintProc) =
  # TODO check subclass
  var tmp = new QSplashScreensizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_sizeHint(self: ptr cQSplashScreen, slot: int): pointer {.exportc: "miqt_exec_callback_QSplashScreen_sizeHint ".} =
  var nimfunc = cast[ptr QSplashScreensizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSplashScreenminimumSizeHint*(self: gen_qsplashscreen_types.QSplashScreen, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQSplashScreen_virtualbase_minimumSizeHint(self.h))

type QSplashScreenminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreenminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QSplashScreenminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_minimumSizeHint(self: ptr cQSplashScreen, slot: int): pointer {.exportc: "miqt_exec_callback_QSplashScreen_minimumSizeHint ".} =
  var nimfunc = cast[ptr QSplashScreenminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSplashScreenheightForWidth*(self: gen_qsplashscreen_types.QSplashScreen, param1: cint): cint =
  fQSplashScreen_virtualbase_heightForWidth(self.h, param1)

type QSplashScreenheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreenheightForWidthProc) =
  # TODO check subclass
  var tmp = new QSplashScreenheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_heightForWidth(self: ptr cQSplashScreen, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QSplashScreen_heightForWidth ".} =
  var nimfunc = cast[ptr QSplashScreenheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSplashScreenhasHeightForWidth*(self: gen_qsplashscreen_types.QSplashScreen, ): bool =
  fQSplashScreen_virtualbase_hasHeightForWidth(self.h)

type QSplashScreenhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreenhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QSplashScreenhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_hasHeightForWidth(self: ptr cQSplashScreen, slot: int): bool {.exportc: "miqt_exec_callback_QSplashScreen_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QSplashScreenhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSplashScreenpaintEngine*(self: gen_qsplashscreen_types.QSplashScreen, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQSplashScreen_virtualbase_paintEngine(self.h))

type QSplashScreenpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreenpaintEngineProc) =
  # TODO check subclass
  var tmp = new QSplashScreenpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_paintEngine(self: ptr cQSplashScreen, slot: int): pointer {.exportc: "miqt_exec_callback_QSplashScreen_paintEngine ".} =
  var nimfunc = cast[ptr QSplashScreenpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSplashScreenmouseReleaseEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QMouseEvent): void =
  fQSplashScreen_virtualbase_mouseReleaseEvent(self.h, event.h)

type QSplashScreenmouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreenmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QSplashScreenmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_mouseReleaseEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QSplashScreenmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QSplashScreenmouseDoubleClickEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QMouseEvent): void =
  fQSplashScreen_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QSplashScreenmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreenmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QSplashScreenmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_mouseDoubleClickEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QSplashScreenmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QSplashScreenmouseMoveEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QMouseEvent): void =
  fQSplashScreen_virtualbase_mouseMoveEvent(self.h, event.h)

type QSplashScreenmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreenmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QSplashScreenmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_mouseMoveEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QSplashScreenmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QSplashScreenwheelEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QWheelEvent): void =
  fQSplashScreen_virtualbase_wheelEvent(self.h, event.h)

type QSplashScreenwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreenwheelEventProc) =
  # TODO check subclass
  var tmp = new QSplashScreenwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_wheelEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_wheelEvent ".} =
  var nimfunc = cast[ptr QSplashScreenwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QSplashScreenkeyPressEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QKeyEvent): void =
  fQSplashScreen_virtualbase_keyPressEvent(self.h, event.h)

type QSplashScreenkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreenkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QSplashScreenkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_keyPressEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_keyPressEvent ".} =
  var nimfunc = cast[ptr QSplashScreenkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QSplashScreenkeyReleaseEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QKeyEvent): void =
  fQSplashScreen_virtualbase_keyReleaseEvent(self.h, event.h)

type QSplashScreenkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreenkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QSplashScreenkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_keyReleaseEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QSplashScreenkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QSplashScreenfocusInEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QFocusEvent): void =
  fQSplashScreen_virtualbase_focusInEvent(self.h, event.h)

type QSplashScreenfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreenfocusInEventProc) =
  # TODO check subclass
  var tmp = new QSplashScreenfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_focusInEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_focusInEvent ".} =
  var nimfunc = cast[ptr QSplashScreenfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QSplashScreenfocusOutEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QFocusEvent): void =
  fQSplashScreen_virtualbase_focusOutEvent(self.h, event.h)

type QSplashScreenfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreenfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QSplashScreenfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_focusOutEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_focusOutEvent ".} =
  var nimfunc = cast[ptr QSplashScreenfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QSplashScreenenterEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qcoreevent_types.QEvent): void =
  fQSplashScreen_virtualbase_enterEvent(self.h, event.h)

type QSplashScreenenterEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onenterEvent*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreenenterEventProc) =
  # TODO check subclass
  var tmp = new QSplashScreenenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_enterEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_enterEvent ".} =
  var nimfunc = cast[ptr QSplashScreenenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QSplashScreenleaveEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qcoreevent_types.QEvent): void =
  fQSplashScreen_virtualbase_leaveEvent(self.h, event.h)

type QSplashScreenleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreenleaveEventProc) =
  # TODO check subclass
  var tmp = new QSplashScreenleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_leaveEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_leaveEvent ".} =
  var nimfunc = cast[ptr QSplashScreenleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QSplashScreenpaintEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QPaintEvent): void =
  fQSplashScreen_virtualbase_paintEvent(self.h, event.h)

type QSplashScreenpaintEventProc* = proc(event: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreenpaintEventProc) =
  # TODO check subclass
  var tmp = new QSplashScreenpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_paintEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_paintEvent ".} =
  var nimfunc = cast[ptr QSplashScreenpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)


  nimfunc[](slotval1)
proc QSplashScreenmoveEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QMoveEvent): void =
  fQSplashScreen_virtualbase_moveEvent(self.h, event.h)

type QSplashScreenmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreenmoveEventProc) =
  # TODO check subclass
  var tmp = new QSplashScreenmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_moveEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_moveEvent ".} =
  var nimfunc = cast[ptr QSplashScreenmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QSplashScreenresizeEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QResizeEvent): void =
  fQSplashScreen_virtualbase_resizeEvent(self.h, event.h)

type QSplashScreenresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreenresizeEventProc) =
  # TODO check subclass
  var tmp = new QSplashScreenresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_resizeEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_resizeEvent ".} =
  var nimfunc = cast[ptr QSplashScreenresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QSplashScreencloseEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QCloseEvent): void =
  fQSplashScreen_virtualbase_closeEvent(self.h, event.h)

type QSplashScreencloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreencloseEventProc) =
  # TODO check subclass
  var tmp = new QSplashScreencloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_closeEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_closeEvent ".} =
  var nimfunc = cast[ptr QSplashScreencloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QSplashScreencontextMenuEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QContextMenuEvent): void =
  fQSplashScreen_virtualbase_contextMenuEvent(self.h, event.h)

type QSplashScreencontextMenuEventProc* = proc(event: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreencontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QSplashScreencontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_contextMenuEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_contextMenuEvent ".} =
  var nimfunc = cast[ptr QSplashScreencontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QSplashScreentabletEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QTabletEvent): void =
  fQSplashScreen_virtualbase_tabletEvent(self.h, event.h)

type QSplashScreentabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreentabletEventProc) =
  # TODO check subclass
  var tmp = new QSplashScreentabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_tabletEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_tabletEvent ".} =
  var nimfunc = cast[ptr QSplashScreentabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QSplashScreenactionEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QActionEvent): void =
  fQSplashScreen_virtualbase_actionEvent(self.h, event.h)

type QSplashScreenactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreenactionEventProc) =
  # TODO check subclass
  var tmp = new QSplashScreenactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_actionEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_actionEvent ".} =
  var nimfunc = cast[ptr QSplashScreenactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QSplashScreendragEnterEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QDragEnterEvent): void =
  fQSplashScreen_virtualbase_dragEnterEvent(self.h, event.h)

type QSplashScreendragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreendragEnterEventProc) =
  # TODO check subclass
  var tmp = new QSplashScreendragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_dragEnterEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_dragEnterEvent ".} =
  var nimfunc = cast[ptr QSplashScreendragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QSplashScreendragMoveEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QDragMoveEvent): void =
  fQSplashScreen_virtualbase_dragMoveEvent(self.h, event.h)

type QSplashScreendragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreendragMoveEventProc) =
  # TODO check subclass
  var tmp = new QSplashScreendragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_dragMoveEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_dragMoveEvent ".} =
  var nimfunc = cast[ptr QSplashScreendragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QSplashScreendragLeaveEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QDragLeaveEvent): void =
  fQSplashScreen_virtualbase_dragLeaveEvent(self.h, event.h)

type QSplashScreendragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreendragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QSplashScreendragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_dragLeaveEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QSplashScreendragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QSplashScreendropEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QDropEvent): void =
  fQSplashScreen_virtualbase_dropEvent(self.h, event.h)

type QSplashScreendropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreendropEventProc) =
  # TODO check subclass
  var tmp = new QSplashScreendropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_dropEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_dropEvent ".} =
  var nimfunc = cast[ptr QSplashScreendropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QSplashScreenshowEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QShowEvent): void =
  fQSplashScreen_virtualbase_showEvent(self.h, event.h)

type QSplashScreenshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreenshowEventProc) =
  # TODO check subclass
  var tmp = new QSplashScreenshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_showEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_showEvent ".} =
  var nimfunc = cast[ptr QSplashScreenshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QSplashScreenhideEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QHideEvent): void =
  fQSplashScreen_virtualbase_hideEvent(self.h, event.h)

type QSplashScreenhideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreenhideEventProc) =
  # TODO check subclass
  var tmp = new QSplashScreenhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_hideEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_hideEvent ".} =
  var nimfunc = cast[ptr QSplashScreenhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QSplashScreennativeEvent*(self: gen_qsplashscreen_types.QSplashScreen, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fQSplashScreen_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QSplashScreennativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreennativeEventProc) =
  # TODO check subclass
  var tmp = new QSplashScreennativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_nativeEvent(self: ptr cQSplashScreen, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QSplashScreen_nativeEvent ".} =
  var nimfunc = cast[ptr QSplashScreennativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QSplashScreenchangeEvent*(self: gen_qsplashscreen_types.QSplashScreen, param1: gen_qcoreevent_types.QEvent): void =
  fQSplashScreen_virtualbase_changeEvent(self.h, param1.h)

type QSplashScreenchangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreenchangeEventProc) =
  # TODO check subclass
  var tmp = new QSplashScreenchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_changeEvent(self: ptr cQSplashScreen, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_changeEvent ".} =
  var nimfunc = cast[ptr QSplashScreenchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QSplashScreenmetric*(self: gen_qsplashscreen_types.QSplashScreen, param1: cint): cint =
  fQSplashScreen_virtualbase_metric(self.h, cint(param1))

type QSplashScreenmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreenmetricProc) =
  # TODO check subclass
  var tmp = new QSplashScreenmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_metric(self: ptr cQSplashScreen, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QSplashScreen_metric ".} =
  var nimfunc = cast[ptr QSplashScreenmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSplashScreeninitPainter*(self: gen_qsplashscreen_types.QSplashScreen, painter: gen_qpainter_types.QPainter): void =
  fQSplashScreen_virtualbase_initPainter(self.h, painter.h)

type QSplashScreeninitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreeninitPainterProc) =
  # TODO check subclass
  var tmp = new QSplashScreeninitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_initPainter(self: ptr cQSplashScreen, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_initPainter ".} =
  var nimfunc = cast[ptr QSplashScreeninitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QSplashScreenredirected*(self: gen_qsplashscreen_types.QSplashScreen, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQSplashScreen_virtualbase_redirected(self.h, offset.h))

type QSplashScreenredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreenredirectedProc) =
  # TODO check subclass
  var tmp = new QSplashScreenredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_redirected(self: ptr cQSplashScreen, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QSplashScreen_redirected ".} =
  var nimfunc = cast[ptr QSplashScreenredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QSplashScreensharedPainter*(self: gen_qsplashscreen_types.QSplashScreen, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQSplashScreen_virtualbase_sharedPainter(self.h))

type QSplashScreensharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreensharedPainterProc) =
  # TODO check subclass
  var tmp = new QSplashScreensharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_sharedPainter(self: ptr cQSplashScreen, slot: int): pointer {.exportc: "miqt_exec_callback_QSplashScreen_sharedPainter ".} =
  var nimfunc = cast[ptr QSplashScreensharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSplashScreeninputMethodEvent*(self: gen_qsplashscreen_types.QSplashScreen, param1: gen_qevent_types.QInputMethodEvent): void =
  fQSplashScreen_virtualbase_inputMethodEvent(self.h, param1.h)

type QSplashScreeninputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreeninputMethodEventProc) =
  # TODO check subclass
  var tmp = new QSplashScreeninputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_inputMethodEvent(self: ptr cQSplashScreen, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_inputMethodEvent ".} =
  var nimfunc = cast[ptr QSplashScreeninputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QSplashScreeninputMethodQuery*(self: gen_qsplashscreen_types.QSplashScreen, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQSplashScreen_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QSplashScreeninputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreeninputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QSplashScreeninputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_inputMethodQuery(self: ptr cQSplashScreen, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QSplashScreen_inputMethodQuery ".} =
  var nimfunc = cast[ptr QSplashScreeninputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QSplashScreenfocusNextPrevChild*(self: gen_qsplashscreen_types.QSplashScreen, next: bool): bool =
  fQSplashScreen_virtualbase_focusNextPrevChild(self.h, next)

type QSplashScreenfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreenfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QSplashScreenfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_focusNextPrevChild(self: ptr cQSplashScreen, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QSplashScreen_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QSplashScreenfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSplashScreeneventFilter*(self: gen_qsplashscreen_types.QSplashScreen, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQSplashScreen_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSplashScreeneventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreeneventFilterProc) =
  # TODO check subclass
  var tmp = new QSplashScreeneventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_eventFilter(self: ptr cQSplashScreen, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSplashScreen_eventFilter ".} =
  var nimfunc = cast[ptr QSplashScreeneventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QSplashScreentimerEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qcoreevent_types.QTimerEvent): void =
  fQSplashScreen_virtualbase_timerEvent(self.h, event.h)

type QSplashScreentimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreentimerEventProc) =
  # TODO check subclass
  var tmp = new QSplashScreentimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_timerEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_timerEvent ".} =
  var nimfunc = cast[ptr QSplashScreentimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QSplashScreenchildEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qcoreevent_types.QChildEvent): void =
  fQSplashScreen_virtualbase_childEvent(self.h, event.h)

type QSplashScreenchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreenchildEventProc) =
  # TODO check subclass
  var tmp = new QSplashScreenchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_childEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_childEvent ".} =
  var nimfunc = cast[ptr QSplashScreenchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QSplashScreencustomEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qcoreevent_types.QEvent): void =
  fQSplashScreen_virtualbase_customEvent(self.h, event.h)

type QSplashScreencustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreencustomEventProc) =
  # TODO check subclass
  var tmp = new QSplashScreencustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_customEvent(self: ptr cQSplashScreen, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_customEvent ".} =
  var nimfunc = cast[ptr QSplashScreencustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QSplashScreenconnectNotify*(self: gen_qsplashscreen_types.QSplashScreen, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQSplashScreen_virtualbase_connectNotify(self.h, signal.h)

type QSplashScreenconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreenconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSplashScreenconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_connectNotify(self: ptr cQSplashScreen, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_connectNotify ".} =
  var nimfunc = cast[ptr QSplashScreenconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QSplashScreendisconnectNotify*(self: gen_qsplashscreen_types.QSplashScreen, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQSplashScreen_virtualbase_disconnectNotify(self.h, signal.h)

type QSplashScreendisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreendisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSplashScreendisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplashScreen_disconnectNotify(self: ptr cQSplashScreen, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSplashScreen_disconnectNotify ".} =
  var nimfunc = cast[ptr QSplashScreendisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qsplashscreen_types.QSplashScreen): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSplashScreen_staticMetaObject())
proc delete*(self: gen_qsplashscreen_types.QSplashScreen) =
  fcQSplashScreen_delete(self.h)
