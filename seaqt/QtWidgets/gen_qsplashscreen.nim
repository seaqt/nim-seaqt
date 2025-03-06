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
proc fcQSplashScreen_connect_messageChanged(self: pointer, slot: int, callback: proc (slot: int, message: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSplashScreen_connect_messageChanged".}
proc fcQSplashScreen_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSplashScreen_tr2".}
proc fcQSplashScreen_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSplashScreen_tr3".}
proc fcQSplashScreen_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSplashScreen_trUtf82".}
proc fcQSplashScreen_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSplashScreen_trUtf83".}
proc fcQSplashScreen_showMessage2(self: pointer, message: struct_miqt_string, alignment: cint): void {.importc: "QSplashScreen_showMessage2".}
proc fcQSplashScreen_showMessage3(self: pointer, message: struct_miqt_string, alignment: cint, color: pointer): void {.importc: "QSplashScreen_showMessage3".}
type cQSplashScreenVTable = object
  destructor*: proc(vtbl: ptr cQSplashScreenVTable, self: ptr cQSplashScreen) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  drawContents*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
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
  resizeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
proc fcQSplashScreen_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QSplashScreen_virtualbase_metaObject".}
proc fcQSplashScreen_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSplashScreen_virtualbase_metacast".}
proc fcQSplashScreen_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSplashScreen_virtualbase_metacall".}
proc fcQSplashScreen_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QSplashScreen_virtualbase_event".}
proc fcQSplashScreen_virtualbase_drawContents(self: pointer, painter: pointer): void {.importc: "QSplashScreen_virtualbase_drawContents".}
proc fcQSplashScreen_virtualbase_mousePressEvent(self: pointer, param1: pointer): void {.importc: "QSplashScreen_virtualbase_mousePressEvent".}
proc fcQSplashScreen_virtualbase_devType(self: pointer, ): cint {.importc: "QSplashScreen_virtualbase_devType".}
proc fcQSplashScreen_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QSplashScreen_virtualbase_setVisible".}
proc fcQSplashScreen_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QSplashScreen_virtualbase_sizeHint".}
proc fcQSplashScreen_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QSplashScreen_virtualbase_minimumSizeHint".}
proc fcQSplashScreen_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QSplashScreen_virtualbase_heightForWidth".}
proc fcQSplashScreen_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QSplashScreen_virtualbase_hasHeightForWidth".}
proc fcQSplashScreen_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QSplashScreen_virtualbase_paintEngine".}
proc fcQSplashScreen_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QSplashScreen_virtualbase_mouseReleaseEvent".}
proc fcQSplashScreen_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QSplashScreen_virtualbase_mouseDoubleClickEvent".}
proc fcQSplashScreen_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QSplashScreen_virtualbase_mouseMoveEvent".}
proc fcQSplashScreen_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QSplashScreen_virtualbase_wheelEvent".}
proc fcQSplashScreen_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QSplashScreen_virtualbase_keyPressEvent".}
proc fcQSplashScreen_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QSplashScreen_virtualbase_keyReleaseEvent".}
proc fcQSplashScreen_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QSplashScreen_virtualbase_focusInEvent".}
proc fcQSplashScreen_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QSplashScreen_virtualbase_focusOutEvent".}
proc fcQSplashScreen_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QSplashScreen_virtualbase_enterEvent".}
proc fcQSplashScreen_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QSplashScreen_virtualbase_leaveEvent".}
proc fcQSplashScreen_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QSplashScreen_virtualbase_paintEvent".}
proc fcQSplashScreen_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QSplashScreen_virtualbase_moveEvent".}
proc fcQSplashScreen_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QSplashScreen_virtualbase_resizeEvent".}
proc fcQSplashScreen_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QSplashScreen_virtualbase_closeEvent".}
proc fcQSplashScreen_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QSplashScreen_virtualbase_contextMenuEvent".}
proc fcQSplashScreen_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QSplashScreen_virtualbase_tabletEvent".}
proc fcQSplashScreen_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QSplashScreen_virtualbase_actionEvent".}
proc fcQSplashScreen_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QSplashScreen_virtualbase_dragEnterEvent".}
proc fcQSplashScreen_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QSplashScreen_virtualbase_dragMoveEvent".}
proc fcQSplashScreen_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QSplashScreen_virtualbase_dragLeaveEvent".}
proc fcQSplashScreen_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QSplashScreen_virtualbase_dropEvent".}
proc fcQSplashScreen_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QSplashScreen_virtualbase_showEvent".}
proc fcQSplashScreen_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QSplashScreen_virtualbase_hideEvent".}
proc fcQSplashScreen_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QSplashScreen_virtualbase_nativeEvent".}
proc fcQSplashScreen_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QSplashScreen_virtualbase_changeEvent".}
proc fcQSplashScreen_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QSplashScreen_virtualbase_metric".}
proc fcQSplashScreen_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QSplashScreen_virtualbase_initPainter".}
proc fcQSplashScreen_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QSplashScreen_virtualbase_redirected".}
proc fcQSplashScreen_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QSplashScreen_virtualbase_sharedPainter".}
proc fcQSplashScreen_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QSplashScreen_virtualbase_inputMethodEvent".}
proc fcQSplashScreen_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QSplashScreen_virtualbase_inputMethodQuery".}
proc fcQSplashScreen_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QSplashScreen_virtualbase_focusNextPrevChild".}
proc fcQSplashScreen_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSplashScreen_virtualbase_eventFilter".}
proc fcQSplashScreen_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QSplashScreen_virtualbase_timerEvent".}
proc fcQSplashScreen_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSplashScreen_virtualbase_childEvent".}
proc fcQSplashScreen_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSplashScreen_virtualbase_customEvent".}
proc fcQSplashScreen_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSplashScreen_virtualbase_connectNotify".}
proc fcQSplashScreen_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSplashScreen_virtualbase_disconnectNotify".}
proc fcQSplashScreen_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QSplashScreen_protectedbase_updateMicroFocus".}
proc fcQSplashScreen_protectedbase_create(self: pointer, ): void {.importc: "QSplashScreen_protectedbase_create".}
proc fcQSplashScreen_protectedbase_destroy(self: pointer, ): void {.importc: "QSplashScreen_protectedbase_destroy".}
proc fcQSplashScreen_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QSplashScreen_protectedbase_focusNextChild".}
proc fcQSplashScreen_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QSplashScreen_protectedbase_focusPreviousChild".}
proc fcQSplashScreen_protectedbase_sender(self: pointer, ): pointer {.importc: "QSplashScreen_protectedbase_sender".}
proc fcQSplashScreen_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QSplashScreen_protectedbase_senderSignalIndex".}
proc fcQSplashScreen_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QSplashScreen_protectedbase_receivers".}
proc fcQSplashScreen_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QSplashScreen_protectedbase_isSignalConnected".}
proc fcQSplashScreen_new(vtbl: pointer, parent: pointer): ptr cQSplashScreen {.importc: "QSplashScreen_new".}
proc fcQSplashScreen_new2(vtbl: pointer, ): ptr cQSplashScreen {.importc: "QSplashScreen_new2".}
proc fcQSplashScreen_new3(vtbl: pointer, screen: pointer): ptr cQSplashScreen {.importc: "QSplashScreen_new3".}
proc fcQSplashScreen_new4(vtbl: pointer, pixmap: pointer): ptr cQSplashScreen {.importc: "QSplashScreen_new4".}
proc fcQSplashScreen_new5(vtbl: pointer, pixmap: pointer, f: cint): ptr cQSplashScreen {.importc: "QSplashScreen_new5".}
proc fcQSplashScreen_new6(vtbl: pointer, screen: pointer, pixmap: pointer): ptr cQSplashScreen {.importc: "QSplashScreen_new6".}
proc fcQSplashScreen_new7(vtbl: pointer, screen: pointer, pixmap: pointer, f: cint): ptr cQSplashScreen {.importc: "QSplashScreen_new7".}
proc fcQSplashScreen_new8(vtbl: pointer, parent: pointer, pixmap: pointer): ptr cQSplashScreen {.importc: "QSplashScreen_new8".}
proc fcQSplashScreen_new9(vtbl: pointer, parent: pointer, pixmap: pointer, f: cint): ptr cQSplashScreen {.importc: "QSplashScreen_new9".}
proc fcQSplashScreen_staticMetaObject(): pointer {.importc: "QSplashScreen_staticMetaObject".}
proc fcQSplashScreen_delete(self: pointer) {.importc: "QSplashScreen_delete".}

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
proc miqt_exec_callback_cQSplashScreen_messageChanged(slot: int, message: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QSplashScreenmessageChangedSlot](cast[pointer](slot))
  let vmessage_ms = message
  let vmessagex_ret = string.fromBytes(toOpenArrayByte(vmessage_ms.data, 0, int(vmessage_ms.len)-1))
  c_free(vmessage_ms.data)
  let slotval1 = vmessagex_ret

  nimfunc[](slotval1)

proc miqt_exec_callback_cQSplashScreen_messageChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSplashScreenmessageChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmessageChanged*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreenmessageChangedSlot) =
  var tmp = new QSplashScreenmessageChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_connect_messageChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQSplashScreen_messageChanged, miqt_exec_callback_cQSplashScreen_messageChanged_release)

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

type QSplashScreenmetaObjectProc* = proc(self: QSplashScreen): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QSplashScreenmetacastProc* = proc(self: QSplashScreen, param1: cstring): pointer {.raises: [], gcsafe.}
type QSplashScreenmetacallProc* = proc(self: QSplashScreen, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QSplashScreeneventProc* = proc(self: QSplashScreen, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSplashScreendrawContentsProc* = proc(self: QSplashScreen, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QSplashScreenmousePressEventProc* = proc(self: QSplashScreen, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QSplashScreendevTypeProc* = proc(self: QSplashScreen): cint {.raises: [], gcsafe.}
type QSplashScreensetVisibleProc* = proc(self: QSplashScreen, visible: bool): void {.raises: [], gcsafe.}
type QSplashScreensizeHintProc* = proc(self: QSplashScreen): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QSplashScreenminimumSizeHintProc* = proc(self: QSplashScreen): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QSplashScreenheightForWidthProc* = proc(self: QSplashScreen, param1: cint): cint {.raises: [], gcsafe.}
type QSplashScreenhasHeightForWidthProc* = proc(self: QSplashScreen): bool {.raises: [], gcsafe.}
type QSplashScreenpaintEngineProc* = proc(self: QSplashScreen): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QSplashScreenmouseReleaseEventProc* = proc(self: QSplashScreen, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QSplashScreenmouseDoubleClickEventProc* = proc(self: QSplashScreen, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QSplashScreenmouseMoveEventProc* = proc(self: QSplashScreen, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QSplashScreenwheelEventProc* = proc(self: QSplashScreen, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QSplashScreenkeyPressEventProc* = proc(self: QSplashScreen, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QSplashScreenkeyReleaseEventProc* = proc(self: QSplashScreen, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QSplashScreenfocusInEventProc* = proc(self: QSplashScreen, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QSplashScreenfocusOutEventProc* = proc(self: QSplashScreen, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QSplashScreenenterEventProc* = proc(self: QSplashScreen, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSplashScreenleaveEventProc* = proc(self: QSplashScreen, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSplashScreenpaintEventProc* = proc(self: QSplashScreen, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QSplashScreenmoveEventProc* = proc(self: QSplashScreen, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QSplashScreenresizeEventProc* = proc(self: QSplashScreen, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QSplashScreencloseEventProc* = proc(self: QSplashScreen, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QSplashScreencontextMenuEventProc* = proc(self: QSplashScreen, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QSplashScreentabletEventProc* = proc(self: QSplashScreen, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QSplashScreenactionEventProc* = proc(self: QSplashScreen, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QSplashScreendragEnterEventProc* = proc(self: QSplashScreen, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QSplashScreendragMoveEventProc* = proc(self: QSplashScreen, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QSplashScreendragLeaveEventProc* = proc(self: QSplashScreen, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QSplashScreendropEventProc* = proc(self: QSplashScreen, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QSplashScreenshowEventProc* = proc(self: QSplashScreen, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QSplashScreenhideEventProc* = proc(self: QSplashScreen, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QSplashScreennativeEventProc* = proc(self: QSplashScreen, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QSplashScreenchangeEventProc* = proc(self: QSplashScreen, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSplashScreenmetricProc* = proc(self: QSplashScreen, param1: cint): cint {.raises: [], gcsafe.}
type QSplashScreeninitPainterProc* = proc(self: QSplashScreen, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QSplashScreenredirectedProc* = proc(self: QSplashScreen, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QSplashScreensharedPainterProc* = proc(self: QSplashScreen): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QSplashScreeninputMethodEventProc* = proc(self: QSplashScreen, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QSplashScreeninputMethodQueryProc* = proc(self: QSplashScreen, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QSplashScreenfocusNextPrevChildProc* = proc(self: QSplashScreen, next: bool): bool {.raises: [], gcsafe.}
type QSplashScreeneventFilterProc* = proc(self: QSplashScreen, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSplashScreentimerEventProc* = proc(self: QSplashScreen, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QSplashScreenchildEventProc* = proc(self: QSplashScreen, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QSplashScreencustomEventProc* = proc(self: QSplashScreen, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSplashScreenconnectNotifyProc* = proc(self: QSplashScreen, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSplashScreendisconnectNotifyProc* = proc(self: QSplashScreen, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSplashScreenVTable* = object
  vtbl: cQSplashScreenVTable
  metaObject*: QSplashScreenmetaObjectProc
  metacast*: QSplashScreenmetacastProc
  metacall*: QSplashScreenmetacallProc
  event*: QSplashScreeneventProc
  drawContents*: QSplashScreendrawContentsProc
  mousePressEvent*: QSplashScreenmousePressEventProc
  devType*: QSplashScreendevTypeProc
  setVisible*: QSplashScreensetVisibleProc
  sizeHint*: QSplashScreensizeHintProc
  minimumSizeHint*: QSplashScreenminimumSizeHintProc
  heightForWidth*: QSplashScreenheightForWidthProc
  hasHeightForWidth*: QSplashScreenhasHeightForWidthProc
  paintEngine*: QSplashScreenpaintEngineProc
  mouseReleaseEvent*: QSplashScreenmouseReleaseEventProc
  mouseDoubleClickEvent*: QSplashScreenmouseDoubleClickEventProc
  mouseMoveEvent*: QSplashScreenmouseMoveEventProc
  wheelEvent*: QSplashScreenwheelEventProc
  keyPressEvent*: QSplashScreenkeyPressEventProc
  keyReleaseEvent*: QSplashScreenkeyReleaseEventProc
  focusInEvent*: QSplashScreenfocusInEventProc
  focusOutEvent*: QSplashScreenfocusOutEventProc
  enterEvent*: QSplashScreenenterEventProc
  leaveEvent*: QSplashScreenleaveEventProc
  paintEvent*: QSplashScreenpaintEventProc
  moveEvent*: QSplashScreenmoveEventProc
  resizeEvent*: QSplashScreenresizeEventProc
  closeEvent*: QSplashScreencloseEventProc
  contextMenuEvent*: QSplashScreencontextMenuEventProc
  tabletEvent*: QSplashScreentabletEventProc
  actionEvent*: QSplashScreenactionEventProc
  dragEnterEvent*: QSplashScreendragEnterEventProc
  dragMoveEvent*: QSplashScreendragMoveEventProc
  dragLeaveEvent*: QSplashScreendragLeaveEventProc
  dropEvent*: QSplashScreendropEventProc
  showEvent*: QSplashScreenshowEventProc
  hideEvent*: QSplashScreenhideEventProc
  nativeEvent*: QSplashScreennativeEventProc
  changeEvent*: QSplashScreenchangeEventProc
  metric*: QSplashScreenmetricProc
  initPainter*: QSplashScreeninitPainterProc
  redirected*: QSplashScreenredirectedProc
  sharedPainter*: QSplashScreensharedPainterProc
  inputMethodEvent*: QSplashScreeninputMethodEventProc
  inputMethodQuery*: QSplashScreeninputMethodQueryProc
  focusNextPrevChild*: QSplashScreenfocusNextPrevChildProc
  eventFilter*: QSplashScreeneventFilterProc
  timerEvent*: QSplashScreentimerEventProc
  childEvent*: QSplashScreenchildEventProc
  customEvent*: QSplashScreencustomEventProc
  connectNotify*: QSplashScreenconnectNotifyProc
  disconnectNotify*: QSplashScreendisconnectNotifyProc
proc QSplashScreenmetaObject*(self: gen_qsplashscreen_types.QSplashScreen, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSplashScreen_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQSplashScreen_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QSplashScreenmetacast*(self: gen_qsplashscreen_types.QSplashScreen, param1: cstring): pointer =
  fcQSplashScreen_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQSplashScreen_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QSplashScreenmetacall*(self: gen_qsplashscreen_types.QSplashScreen, param1: cint, param2: cint, param3: pointer): cint =
  fcQSplashScreen_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQSplashScreen_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSplashScreenevent*(self: gen_qsplashscreen_types.QSplashScreen, e: gen_qcoreevent_types.QEvent): bool =
  fcQSplashScreen_virtualbase_event(self.h, e.h)

proc miqt_exec_callback_cQSplashScreen_event(vtbl: pointer, self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QSplashScreendrawContents*(self: gen_qsplashscreen_types.QSplashScreen, painter: gen_qpainter_types.QPainter): void =
  fcQSplashScreen_virtualbase_drawContents(self.h, painter.h)

proc miqt_exec_callback_cQSplashScreen_drawContents(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].drawContents(self, slotval1)

proc QSplashScreenmousePressEvent*(self: gen_qsplashscreen_types.QSplashScreen, param1: gen_qevent_types.QMouseEvent): void =
  fcQSplashScreen_virtualbase_mousePressEvent(self.h, param1.h)

proc miqt_exec_callback_cQSplashScreen_mousePressEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)
  vtbl[].mousePressEvent(self, slotval1)

proc QSplashScreendevType*(self: gen_qsplashscreen_types.QSplashScreen, ): cint =
  fcQSplashScreen_virtualbase_devType(self.h)

proc miqt_exec_callback_cQSplashScreen_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QSplashScreensetVisible*(self: gen_qsplashscreen_types.QSplashScreen, visible: bool): void =
  fcQSplashScreen_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQSplashScreen_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QSplashScreensizeHint*(self: gen_qsplashscreen_types.QSplashScreen, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSplashScreen_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQSplashScreen_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QSplashScreenminimumSizeHint*(self: gen_qsplashscreen_types.QSplashScreen, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSplashScreen_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQSplashScreen_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QSplashScreenheightForWidth*(self: gen_qsplashscreen_types.QSplashScreen, param1: cint): cint =
  fcQSplashScreen_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQSplashScreen_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QSplashScreenhasHeightForWidth*(self: gen_qsplashscreen_types.QSplashScreen, ): bool =
  fcQSplashScreen_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQSplashScreen_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QSplashScreenpaintEngine*(self: gen_qsplashscreen_types.QSplashScreen, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQSplashScreen_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQSplashScreen_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QSplashScreenmouseReleaseEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QMouseEvent): void =
  fcQSplashScreen_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQSplashScreen_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QSplashScreenmouseDoubleClickEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QMouseEvent): void =
  fcQSplashScreen_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQSplashScreen_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QSplashScreenmouseMoveEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QMouseEvent): void =
  fcQSplashScreen_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQSplashScreen_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QSplashScreenwheelEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QWheelEvent): void =
  fcQSplashScreen_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQSplashScreen_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QSplashScreenkeyPressEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QKeyEvent): void =
  fcQSplashScreen_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQSplashScreen_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyPressEvent(self, slotval1)

proc QSplashScreenkeyReleaseEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QKeyEvent): void =
  fcQSplashScreen_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQSplashScreen_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QSplashScreenfocusInEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QFocusEvent): void =
  fcQSplashScreen_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQSplashScreen_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QSplashScreenfocusOutEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QFocusEvent): void =
  fcQSplashScreen_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQSplashScreen_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QSplashScreenenterEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qcoreevent_types.QEvent): void =
  fcQSplashScreen_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQSplashScreen_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QSplashScreenleaveEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qcoreevent_types.QEvent): void =
  fcQSplashScreen_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQSplashScreen_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QSplashScreenpaintEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QPaintEvent): void =
  fcQSplashScreen_virtualbase_paintEvent(self.h, event.h)

proc miqt_exec_callback_cQSplashScreen_paintEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)
  vtbl[].paintEvent(self, slotval1)

proc QSplashScreenmoveEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QMoveEvent): void =
  fcQSplashScreen_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQSplashScreen_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QSplashScreenresizeEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QResizeEvent): void =
  fcQSplashScreen_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQSplashScreen_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)
  vtbl[].resizeEvent(self, slotval1)

proc QSplashScreencloseEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QCloseEvent): void =
  fcQSplashScreen_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQSplashScreen_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QSplashScreencontextMenuEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QContextMenuEvent): void =
  fcQSplashScreen_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQSplashScreen_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)
  vtbl[].contextMenuEvent(self, slotval1)

proc QSplashScreentabletEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QTabletEvent): void =
  fcQSplashScreen_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQSplashScreen_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QSplashScreenactionEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QActionEvent): void =
  fcQSplashScreen_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQSplashScreen_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QSplashScreendragEnterEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QDragEnterEvent): void =
  fcQSplashScreen_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQSplashScreen_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QSplashScreendragMoveEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QDragMoveEvent): void =
  fcQSplashScreen_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQSplashScreen_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QSplashScreendragLeaveEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQSplashScreen_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQSplashScreen_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QSplashScreendropEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QDropEvent): void =
  fcQSplashScreen_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQSplashScreen_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QSplashScreenshowEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QShowEvent): void =
  fcQSplashScreen_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQSplashScreen_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  vtbl[].showEvent(self, slotval1)

proc QSplashScreenhideEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QHideEvent): void =
  fcQSplashScreen_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQSplashScreen_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QSplashScreennativeEvent*(self: gen_qsplashscreen_types.QSplashScreen, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fcQSplashScreen_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQSplashScreen_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSplashScreenchangeEvent*(self: gen_qsplashscreen_types.QSplashScreen, param1: gen_qcoreevent_types.QEvent): void =
  fcQSplashScreen_virtualbase_changeEvent(self.h, param1.h)

proc miqt_exec_callback_cQSplashScreen_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  vtbl[].changeEvent(self, slotval1)

proc QSplashScreenmetric*(self: gen_qsplashscreen_types.QSplashScreen, param1: cint): cint =
  fcQSplashScreen_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQSplashScreen_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QSplashScreeninitPainter*(self: gen_qsplashscreen_types.QSplashScreen, painter: gen_qpainter_types.QPainter): void =
  fcQSplashScreen_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQSplashScreen_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QSplashScreenredirected*(self: gen_qsplashscreen_types.QSplashScreen, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQSplashScreen_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQSplashScreen_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QSplashScreensharedPainter*(self: gen_qsplashscreen_types.QSplashScreen, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQSplashScreen_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQSplashScreen_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QSplashScreeninputMethodEvent*(self: gen_qsplashscreen_types.QSplashScreen, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQSplashScreen_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQSplashScreen_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QSplashScreeninputMethodQuery*(self: gen_qsplashscreen_types.QSplashScreen, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSplashScreen_virtualbase_inputMethodQuery(self.h, cint(param1)))

proc miqt_exec_callback_cQSplashScreen_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QSplashScreenfocusNextPrevChild*(self: gen_qsplashscreen_types.QSplashScreen, next: bool): bool =
  fcQSplashScreen_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQSplashScreen_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QSplashScreeneventFilter*(self: gen_qsplashscreen_types.QSplashScreen, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSplashScreen_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQSplashScreen_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QSplashScreentimerEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSplashScreen_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQSplashScreen_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QSplashScreenchildEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSplashScreen_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQSplashScreen_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QSplashScreencustomEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qcoreevent_types.QEvent): void =
  fcQSplashScreen_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQSplashScreen_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QSplashScreenconnectNotify*(self: gen_qsplashscreen_types.QSplashScreen, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSplashScreen_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSplashScreen_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QSplashScreendisconnectNotify*(self: gen_qsplashscreen_types.QSplashScreen, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSplashScreen_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSplashScreen_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](vtbl)
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc updateMicroFocus*(self: gen_qsplashscreen_types.QSplashScreen, ): void =
  fcQSplashScreen_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qsplashscreen_types.QSplashScreen, ): void =
  fcQSplashScreen_protectedbase_create(self.h)

proc destroy*(self: gen_qsplashscreen_types.QSplashScreen, ): void =
  fcQSplashScreen_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qsplashscreen_types.QSplashScreen, ): bool =
  fcQSplashScreen_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qsplashscreen_types.QSplashScreen, ): bool =
  fcQSplashScreen_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qsplashscreen_types.QSplashScreen, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSplashScreen_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qsplashscreen_types.QSplashScreen, ): cint =
  fcQSplashScreen_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qsplashscreen_types.QSplashScreen, signal: cstring): cint =
  fcQSplashScreen_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qsplashscreen_types.QSplashScreen, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQSplashScreen_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qsplashscreen_types.QSplashScreen,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QSplashScreenVTable = nil): gen_qsplashscreen_types.QSplashScreen =
  let vtbl = if vtbl == nil: new QSplashScreenVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSplashScreenVTable, _: ptr cQSplashScreen) {.cdecl.} =
    let vtbl = cast[ref QSplashScreenVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSplashScreen_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSplashScreen_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSplashScreen_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSplashScreen_event
  if not isNil(vtbl.drawContents):
    vtbl[].vtbl.drawContents = miqt_exec_callback_cQSplashScreen_drawContents
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQSplashScreen_mousePressEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQSplashScreen_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQSplashScreen_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQSplashScreen_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQSplashScreen_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQSplashScreen_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQSplashScreen_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQSplashScreen_paintEngine
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQSplashScreen_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQSplashScreen_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQSplashScreen_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQSplashScreen_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQSplashScreen_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQSplashScreen_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQSplashScreen_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQSplashScreen_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQSplashScreen_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQSplashScreen_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQSplashScreen_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQSplashScreen_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQSplashScreen_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQSplashScreen_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQSplashScreen_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQSplashScreen_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQSplashScreen_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQSplashScreen_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQSplashScreen_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQSplashScreen_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQSplashScreen_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQSplashScreen_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQSplashScreen_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQSplashScreen_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQSplashScreen_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQSplashScreen_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQSplashScreen_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQSplashScreen_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQSplashScreen_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQSplashScreen_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQSplashScreen_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQSplashScreen_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSplashScreen_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSplashScreen_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSplashScreen_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSplashScreen_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSplashScreen_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSplashScreen_disconnectNotify
  gen_qsplashscreen_types.QSplashScreen(h: fcQSplashScreen_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qsplashscreen_types.QSplashScreen,
    vtbl: ref QSplashScreenVTable = nil): gen_qsplashscreen_types.QSplashScreen =
  let vtbl = if vtbl == nil: new QSplashScreenVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSplashScreenVTable, _: ptr cQSplashScreen) {.cdecl.} =
    let vtbl = cast[ref QSplashScreenVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSplashScreen_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSplashScreen_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSplashScreen_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSplashScreen_event
  if not isNil(vtbl.drawContents):
    vtbl[].vtbl.drawContents = miqt_exec_callback_cQSplashScreen_drawContents
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQSplashScreen_mousePressEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQSplashScreen_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQSplashScreen_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQSplashScreen_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQSplashScreen_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQSplashScreen_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQSplashScreen_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQSplashScreen_paintEngine
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQSplashScreen_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQSplashScreen_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQSplashScreen_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQSplashScreen_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQSplashScreen_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQSplashScreen_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQSplashScreen_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQSplashScreen_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQSplashScreen_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQSplashScreen_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQSplashScreen_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQSplashScreen_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQSplashScreen_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQSplashScreen_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQSplashScreen_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQSplashScreen_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQSplashScreen_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQSplashScreen_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQSplashScreen_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQSplashScreen_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQSplashScreen_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQSplashScreen_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQSplashScreen_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQSplashScreen_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQSplashScreen_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQSplashScreen_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQSplashScreen_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQSplashScreen_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQSplashScreen_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQSplashScreen_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQSplashScreen_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQSplashScreen_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSplashScreen_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSplashScreen_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSplashScreen_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSplashScreen_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSplashScreen_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSplashScreen_disconnectNotify
  gen_qsplashscreen_types.QSplashScreen(h: fcQSplashScreen_new2(addr(vtbl[]), ))

proc create*(T: type gen_qsplashscreen_types.QSplashScreen,
    screen: gen_qscreen_types.QScreen,
    vtbl: ref QSplashScreenVTable = nil): gen_qsplashscreen_types.QSplashScreen =
  let vtbl = if vtbl == nil: new QSplashScreenVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSplashScreenVTable, _: ptr cQSplashScreen) {.cdecl.} =
    let vtbl = cast[ref QSplashScreenVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSplashScreen_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSplashScreen_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSplashScreen_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSplashScreen_event
  if not isNil(vtbl.drawContents):
    vtbl[].vtbl.drawContents = miqt_exec_callback_cQSplashScreen_drawContents
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQSplashScreen_mousePressEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQSplashScreen_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQSplashScreen_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQSplashScreen_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQSplashScreen_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQSplashScreen_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQSplashScreen_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQSplashScreen_paintEngine
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQSplashScreen_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQSplashScreen_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQSplashScreen_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQSplashScreen_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQSplashScreen_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQSplashScreen_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQSplashScreen_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQSplashScreen_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQSplashScreen_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQSplashScreen_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQSplashScreen_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQSplashScreen_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQSplashScreen_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQSplashScreen_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQSplashScreen_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQSplashScreen_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQSplashScreen_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQSplashScreen_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQSplashScreen_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQSplashScreen_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQSplashScreen_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQSplashScreen_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQSplashScreen_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQSplashScreen_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQSplashScreen_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQSplashScreen_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQSplashScreen_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQSplashScreen_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQSplashScreen_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQSplashScreen_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQSplashScreen_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQSplashScreen_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSplashScreen_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSplashScreen_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSplashScreen_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSplashScreen_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSplashScreen_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSplashScreen_disconnectNotify
  gen_qsplashscreen_types.QSplashScreen(h: fcQSplashScreen_new3(addr(vtbl[]), screen.h))

proc create*(T: type gen_qsplashscreen_types.QSplashScreen,
    pixmap: gen_qpixmap_types.QPixmap,
    vtbl: ref QSplashScreenVTable = nil): gen_qsplashscreen_types.QSplashScreen =
  let vtbl = if vtbl == nil: new QSplashScreenVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSplashScreenVTable, _: ptr cQSplashScreen) {.cdecl.} =
    let vtbl = cast[ref QSplashScreenVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSplashScreen_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSplashScreen_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSplashScreen_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSplashScreen_event
  if not isNil(vtbl.drawContents):
    vtbl[].vtbl.drawContents = miqt_exec_callback_cQSplashScreen_drawContents
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQSplashScreen_mousePressEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQSplashScreen_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQSplashScreen_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQSplashScreen_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQSplashScreen_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQSplashScreen_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQSplashScreen_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQSplashScreen_paintEngine
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQSplashScreen_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQSplashScreen_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQSplashScreen_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQSplashScreen_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQSplashScreen_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQSplashScreen_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQSplashScreen_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQSplashScreen_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQSplashScreen_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQSplashScreen_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQSplashScreen_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQSplashScreen_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQSplashScreen_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQSplashScreen_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQSplashScreen_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQSplashScreen_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQSplashScreen_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQSplashScreen_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQSplashScreen_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQSplashScreen_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQSplashScreen_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQSplashScreen_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQSplashScreen_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQSplashScreen_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQSplashScreen_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQSplashScreen_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQSplashScreen_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQSplashScreen_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQSplashScreen_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQSplashScreen_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQSplashScreen_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQSplashScreen_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSplashScreen_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSplashScreen_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSplashScreen_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSplashScreen_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSplashScreen_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSplashScreen_disconnectNotify
  gen_qsplashscreen_types.QSplashScreen(h: fcQSplashScreen_new4(addr(vtbl[]), pixmap.h))

proc create*(T: type gen_qsplashscreen_types.QSplashScreen,
    pixmap: gen_qpixmap_types.QPixmap, f: cint,
    vtbl: ref QSplashScreenVTable = nil): gen_qsplashscreen_types.QSplashScreen =
  let vtbl = if vtbl == nil: new QSplashScreenVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSplashScreenVTable, _: ptr cQSplashScreen) {.cdecl.} =
    let vtbl = cast[ref QSplashScreenVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSplashScreen_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSplashScreen_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSplashScreen_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSplashScreen_event
  if not isNil(vtbl.drawContents):
    vtbl[].vtbl.drawContents = miqt_exec_callback_cQSplashScreen_drawContents
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQSplashScreen_mousePressEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQSplashScreen_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQSplashScreen_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQSplashScreen_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQSplashScreen_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQSplashScreen_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQSplashScreen_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQSplashScreen_paintEngine
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQSplashScreen_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQSplashScreen_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQSplashScreen_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQSplashScreen_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQSplashScreen_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQSplashScreen_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQSplashScreen_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQSplashScreen_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQSplashScreen_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQSplashScreen_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQSplashScreen_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQSplashScreen_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQSplashScreen_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQSplashScreen_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQSplashScreen_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQSplashScreen_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQSplashScreen_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQSplashScreen_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQSplashScreen_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQSplashScreen_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQSplashScreen_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQSplashScreen_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQSplashScreen_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQSplashScreen_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQSplashScreen_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQSplashScreen_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQSplashScreen_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQSplashScreen_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQSplashScreen_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQSplashScreen_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQSplashScreen_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQSplashScreen_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSplashScreen_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSplashScreen_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSplashScreen_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSplashScreen_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSplashScreen_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSplashScreen_disconnectNotify
  gen_qsplashscreen_types.QSplashScreen(h: fcQSplashScreen_new5(addr(vtbl[]), pixmap.h, cint(f)))

proc create*(T: type gen_qsplashscreen_types.QSplashScreen,
    screen: gen_qscreen_types.QScreen, pixmap: gen_qpixmap_types.QPixmap,
    vtbl: ref QSplashScreenVTable = nil): gen_qsplashscreen_types.QSplashScreen =
  let vtbl = if vtbl == nil: new QSplashScreenVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSplashScreenVTable, _: ptr cQSplashScreen) {.cdecl.} =
    let vtbl = cast[ref QSplashScreenVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSplashScreen_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSplashScreen_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSplashScreen_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSplashScreen_event
  if not isNil(vtbl.drawContents):
    vtbl[].vtbl.drawContents = miqt_exec_callback_cQSplashScreen_drawContents
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQSplashScreen_mousePressEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQSplashScreen_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQSplashScreen_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQSplashScreen_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQSplashScreen_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQSplashScreen_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQSplashScreen_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQSplashScreen_paintEngine
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQSplashScreen_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQSplashScreen_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQSplashScreen_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQSplashScreen_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQSplashScreen_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQSplashScreen_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQSplashScreen_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQSplashScreen_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQSplashScreen_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQSplashScreen_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQSplashScreen_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQSplashScreen_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQSplashScreen_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQSplashScreen_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQSplashScreen_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQSplashScreen_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQSplashScreen_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQSplashScreen_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQSplashScreen_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQSplashScreen_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQSplashScreen_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQSplashScreen_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQSplashScreen_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQSplashScreen_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQSplashScreen_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQSplashScreen_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQSplashScreen_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQSplashScreen_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQSplashScreen_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQSplashScreen_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQSplashScreen_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQSplashScreen_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSplashScreen_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSplashScreen_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSplashScreen_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSplashScreen_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSplashScreen_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSplashScreen_disconnectNotify
  gen_qsplashscreen_types.QSplashScreen(h: fcQSplashScreen_new6(addr(vtbl[]), screen.h, pixmap.h))

proc create*(T: type gen_qsplashscreen_types.QSplashScreen,
    screen: gen_qscreen_types.QScreen, pixmap: gen_qpixmap_types.QPixmap, f: cint,
    vtbl: ref QSplashScreenVTable = nil): gen_qsplashscreen_types.QSplashScreen =
  let vtbl = if vtbl == nil: new QSplashScreenVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSplashScreenVTable, _: ptr cQSplashScreen) {.cdecl.} =
    let vtbl = cast[ref QSplashScreenVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSplashScreen_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSplashScreen_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSplashScreen_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSplashScreen_event
  if not isNil(vtbl.drawContents):
    vtbl[].vtbl.drawContents = miqt_exec_callback_cQSplashScreen_drawContents
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQSplashScreen_mousePressEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQSplashScreen_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQSplashScreen_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQSplashScreen_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQSplashScreen_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQSplashScreen_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQSplashScreen_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQSplashScreen_paintEngine
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQSplashScreen_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQSplashScreen_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQSplashScreen_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQSplashScreen_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQSplashScreen_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQSplashScreen_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQSplashScreen_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQSplashScreen_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQSplashScreen_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQSplashScreen_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQSplashScreen_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQSplashScreen_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQSplashScreen_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQSplashScreen_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQSplashScreen_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQSplashScreen_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQSplashScreen_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQSplashScreen_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQSplashScreen_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQSplashScreen_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQSplashScreen_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQSplashScreen_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQSplashScreen_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQSplashScreen_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQSplashScreen_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQSplashScreen_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQSplashScreen_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQSplashScreen_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQSplashScreen_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQSplashScreen_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQSplashScreen_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQSplashScreen_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSplashScreen_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSplashScreen_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSplashScreen_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSplashScreen_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSplashScreen_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSplashScreen_disconnectNotify
  gen_qsplashscreen_types.QSplashScreen(h: fcQSplashScreen_new7(addr(vtbl[]), screen.h, pixmap.h, cint(f)))

proc create*(T: type gen_qsplashscreen_types.QSplashScreen,
    parent: gen_qwidget_types.QWidget, pixmap: gen_qpixmap_types.QPixmap,
    vtbl: ref QSplashScreenVTable = nil): gen_qsplashscreen_types.QSplashScreen =
  let vtbl = if vtbl == nil: new QSplashScreenVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSplashScreenVTable, _: ptr cQSplashScreen) {.cdecl.} =
    let vtbl = cast[ref QSplashScreenVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSplashScreen_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSplashScreen_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSplashScreen_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSplashScreen_event
  if not isNil(vtbl.drawContents):
    vtbl[].vtbl.drawContents = miqt_exec_callback_cQSplashScreen_drawContents
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQSplashScreen_mousePressEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQSplashScreen_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQSplashScreen_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQSplashScreen_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQSplashScreen_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQSplashScreen_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQSplashScreen_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQSplashScreen_paintEngine
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQSplashScreen_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQSplashScreen_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQSplashScreen_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQSplashScreen_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQSplashScreen_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQSplashScreen_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQSplashScreen_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQSplashScreen_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQSplashScreen_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQSplashScreen_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQSplashScreen_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQSplashScreen_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQSplashScreen_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQSplashScreen_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQSplashScreen_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQSplashScreen_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQSplashScreen_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQSplashScreen_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQSplashScreen_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQSplashScreen_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQSplashScreen_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQSplashScreen_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQSplashScreen_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQSplashScreen_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQSplashScreen_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQSplashScreen_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQSplashScreen_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQSplashScreen_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQSplashScreen_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQSplashScreen_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQSplashScreen_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQSplashScreen_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSplashScreen_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSplashScreen_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSplashScreen_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSplashScreen_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSplashScreen_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSplashScreen_disconnectNotify
  gen_qsplashscreen_types.QSplashScreen(h: fcQSplashScreen_new8(addr(vtbl[]), parent.h, pixmap.h))

proc create*(T: type gen_qsplashscreen_types.QSplashScreen,
    parent: gen_qwidget_types.QWidget, pixmap: gen_qpixmap_types.QPixmap, f: cint,
    vtbl: ref QSplashScreenVTable = nil): gen_qsplashscreen_types.QSplashScreen =
  let vtbl = if vtbl == nil: new QSplashScreenVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSplashScreenVTable, _: ptr cQSplashScreen) {.cdecl.} =
    let vtbl = cast[ref QSplashScreenVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSplashScreen_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSplashScreen_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSplashScreen_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSplashScreen_event
  if not isNil(vtbl.drawContents):
    vtbl[].vtbl.drawContents = miqt_exec_callback_cQSplashScreen_drawContents
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQSplashScreen_mousePressEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQSplashScreen_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQSplashScreen_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQSplashScreen_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQSplashScreen_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQSplashScreen_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQSplashScreen_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQSplashScreen_paintEngine
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQSplashScreen_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQSplashScreen_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQSplashScreen_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQSplashScreen_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQSplashScreen_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQSplashScreen_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQSplashScreen_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQSplashScreen_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQSplashScreen_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQSplashScreen_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQSplashScreen_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQSplashScreen_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQSplashScreen_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQSplashScreen_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQSplashScreen_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQSplashScreen_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQSplashScreen_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQSplashScreen_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQSplashScreen_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQSplashScreen_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQSplashScreen_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQSplashScreen_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQSplashScreen_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQSplashScreen_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQSplashScreen_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQSplashScreen_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQSplashScreen_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQSplashScreen_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQSplashScreen_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQSplashScreen_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQSplashScreen_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQSplashScreen_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSplashScreen_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSplashScreen_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSplashScreen_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSplashScreen_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSplashScreen_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSplashScreen_disconnectNotify
  gen_qsplashscreen_types.QSplashScreen(h: fcQSplashScreen_new9(addr(vtbl[]), parent.h, pixmap.h, cint(f)))

proc staticMetaObject*(_: type gen_qsplashscreen_types.QSplashScreen): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSplashScreen_staticMetaObject())
proc delete*(self: gen_qsplashscreen_types.QSplashScreen) =
  fcQSplashScreen_delete(self.h)
