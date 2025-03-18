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


{.compile("gen_qsplashscreen.cpp", QtWidgetsCFlags).}


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

proc fcQSplashScreen_metaObject(self: pointer): pointer {.importc: "QSplashScreen_metaObject".}
proc fcQSplashScreen_metacast(self: pointer, param1: cstring): pointer {.importc: "QSplashScreen_metacast".}
proc fcQSplashScreen_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSplashScreen_metacall".}
proc fcQSplashScreen_tr(s: cstring): struct_miqt_string {.importc: "QSplashScreen_tr".}
proc fcQSplashScreen_setPixmap(self: pointer, pixmap: pointer): void {.importc: "QSplashScreen_setPixmap".}
proc fcQSplashScreen_pixmap(self: pointer): pointer {.importc: "QSplashScreen_pixmap".}
proc fcQSplashScreen_finish(self: pointer, w: pointer): void {.importc: "QSplashScreen_finish".}
proc fcQSplashScreen_repaint(self: pointer): void {.importc: "QSplashScreen_repaint".}
proc fcQSplashScreen_message(self: pointer): struct_miqt_string {.importc: "QSplashScreen_message".}
proc fcQSplashScreen_showMessage(self: pointer, message: struct_miqt_string): void {.importc: "QSplashScreen_showMessage".}
proc fcQSplashScreen_clearMessage(self: pointer): void {.importc: "QSplashScreen_clearMessage".}
proc fcQSplashScreen_messageChanged(self: pointer, message: struct_miqt_string): void {.importc: "QSplashScreen_messageChanged".}
proc fcQSplashScreen_connect_messageChanged(self: pointer, slot: int, callback: proc (slot: int, message: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSplashScreen_connect_messageChanged".}
proc fcQSplashScreen_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSplashScreen_tr2".}
proc fcQSplashScreen_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSplashScreen_tr3".}
proc fcQSplashScreen_showMessage2(self: pointer, message: struct_miqt_string, alignment: cint): void {.importc: "QSplashScreen_showMessage2".}
proc fcQSplashScreen_showMessage3(self: pointer, message: struct_miqt_string, alignment: cint, color: pointer): void {.importc: "QSplashScreen_showMessage3".}
proc fcQSplashScreen_vtbl(self: pointer): pointer {.importc: "QSplashScreen_vtbl".}
proc fcQSplashScreen_vdata(self: pointer): pointer {.importc: "QSplashScreen_vdata".}

type cQSplashScreenVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  drawContents*: proc(self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
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
  resizeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
proc fcQSplashScreen_virtualbase_metaObject(self: pointer): pointer {.importc: "QSplashScreen_virtualbase_metaObject".}
proc fcQSplashScreen_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSplashScreen_virtualbase_metacast".}
proc fcQSplashScreen_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSplashScreen_virtualbase_metacall".}
proc fcQSplashScreen_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QSplashScreen_virtualbase_event".}
proc fcQSplashScreen_virtualbase_drawContents(self: pointer, painter: pointer): void {.importc: "QSplashScreen_virtualbase_drawContents".}
proc fcQSplashScreen_virtualbase_mousePressEvent(self: pointer, param1: pointer): void {.importc: "QSplashScreen_virtualbase_mousePressEvent".}
proc fcQSplashScreen_virtualbase_devType(self: pointer): cint {.importc: "QSplashScreen_virtualbase_devType".}
proc fcQSplashScreen_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QSplashScreen_virtualbase_setVisible".}
proc fcQSplashScreen_virtualbase_sizeHint(self: pointer): pointer {.importc: "QSplashScreen_virtualbase_sizeHint".}
proc fcQSplashScreen_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QSplashScreen_virtualbase_minimumSizeHint".}
proc fcQSplashScreen_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QSplashScreen_virtualbase_heightForWidth".}
proc fcQSplashScreen_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QSplashScreen_virtualbase_hasHeightForWidth".}
proc fcQSplashScreen_virtualbase_paintEngine(self: pointer): pointer {.importc: "QSplashScreen_virtualbase_paintEngine".}
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
proc fcQSplashScreen_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QSplashScreen_virtualbase_nativeEvent".}
proc fcQSplashScreen_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QSplashScreen_virtualbase_changeEvent".}
proc fcQSplashScreen_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QSplashScreen_virtualbase_metric".}
proc fcQSplashScreen_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QSplashScreen_virtualbase_initPainter".}
proc fcQSplashScreen_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QSplashScreen_virtualbase_redirected".}
proc fcQSplashScreen_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QSplashScreen_virtualbase_sharedPainter".}
proc fcQSplashScreen_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QSplashScreen_virtualbase_inputMethodEvent".}
proc fcQSplashScreen_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QSplashScreen_virtualbase_inputMethodQuery".}
proc fcQSplashScreen_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QSplashScreen_virtualbase_focusNextPrevChild".}
proc fcQSplashScreen_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSplashScreen_virtualbase_eventFilter".}
proc fcQSplashScreen_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QSplashScreen_virtualbase_timerEvent".}
proc fcQSplashScreen_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSplashScreen_virtualbase_childEvent".}
proc fcQSplashScreen_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSplashScreen_virtualbase_customEvent".}
proc fcQSplashScreen_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSplashScreen_virtualbase_connectNotify".}
proc fcQSplashScreen_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSplashScreen_virtualbase_disconnectNotify".}
proc fcQSplashScreen_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QSplashScreen_protectedbase_updateMicroFocus".}
proc fcQSplashScreen_protectedbase_create(self: pointer): void {.importc: "QSplashScreen_protectedbase_create".}
proc fcQSplashScreen_protectedbase_destroy(self: pointer): void {.importc: "QSplashScreen_protectedbase_destroy".}
proc fcQSplashScreen_protectedbase_focusNextChild(self: pointer): bool {.importc: "QSplashScreen_protectedbase_focusNextChild".}
proc fcQSplashScreen_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QSplashScreen_protectedbase_focusPreviousChild".}
proc fcQSplashScreen_protectedbase_sender(self: pointer): pointer {.importc: "QSplashScreen_protectedbase_sender".}
proc fcQSplashScreen_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QSplashScreen_protectedbase_senderSignalIndex".}
proc fcQSplashScreen_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QSplashScreen_protectedbase_receivers".}
proc fcQSplashScreen_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QSplashScreen_protectedbase_isSignalConnected".}
proc fcQSplashScreen_new(vtbl, vdata: pointer): ptr cQSplashScreen {.importc: "QSplashScreen_new".}
proc fcQSplashScreen_new2(vtbl, vdata: pointer, screen: pointer): ptr cQSplashScreen {.importc: "QSplashScreen_new2".}
proc fcQSplashScreen_new3(vtbl, vdata: pointer, pixmap: pointer): ptr cQSplashScreen {.importc: "QSplashScreen_new3".}
proc fcQSplashScreen_new4(vtbl, vdata: pointer, pixmap: pointer, f: cint): ptr cQSplashScreen {.importc: "QSplashScreen_new4".}
proc fcQSplashScreen_new5(vtbl, vdata: pointer, screen: pointer, pixmap: pointer): ptr cQSplashScreen {.importc: "QSplashScreen_new5".}
proc fcQSplashScreen_new6(vtbl, vdata: pointer, screen: pointer, pixmap: pointer, f: cint): ptr cQSplashScreen {.importc: "QSplashScreen_new6".}
proc fcQSplashScreen_staticMetaObject(): pointer {.importc: "QSplashScreen_staticMetaObject".}

proc metaObject*(self: gen_qsplashscreen_types.QSplashScreen): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSplashScreen_metaObject(self.h), owned: false)

proc metacast*(self: gen_qsplashscreen_types.QSplashScreen, param1: cstring): pointer =
  fcQSplashScreen_metacast(self.h, param1)

proc metacall*(self: gen_qsplashscreen_types.QSplashScreen, param1: cint, param2: cint, param3: pointer): cint =
  fcQSplashScreen_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsplashscreen_types.QSplashScreen, s: cstring): string =
  let v_ms = fcQSplashScreen_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setPixmap*(self: gen_qsplashscreen_types.QSplashScreen, pixmap: gen_qpixmap_types.QPixmap): void =
  fcQSplashScreen_setPixmap(self.h, pixmap.h)

proc pixmap*(self: gen_qsplashscreen_types.QSplashScreen): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQSplashScreen_pixmap(self.h), owned: true)

proc finish*(self: gen_qsplashscreen_types.QSplashScreen, w: gen_qwidget_types.QWidget): void =
  fcQSplashScreen_finish(self.h, w.h)

proc repaint*(self: gen_qsplashscreen_types.QSplashScreen): void =
  fcQSplashScreen_repaint(self.h)

proc message*(self: gen_qsplashscreen_types.QSplashScreen): string =
  let v_ms = fcQSplashScreen_message(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc showMessage*(self: gen_qsplashscreen_types.QSplashScreen, message: openArray[char]): void =
  fcQSplashScreen_showMessage(self.h, struct_miqt_string(data: if len(message) > 0: addr message[0] else: nil, len: csize_t(len(message))))

proc clearMessage*(self: gen_qsplashscreen_types.QSplashScreen): void =
  fcQSplashScreen_clearMessage(self.h)

proc messageChanged*(self: gen_qsplashscreen_types.QSplashScreen, message: openArray[char]): void =
  fcQSplashScreen_messageChanged(self.h, struct_miqt_string(data: if len(message) > 0: addr message[0] else: nil, len: csize_t(len(message))))

type QSplashScreenmessageChangedSlot* = proc(message: openArray[char])
proc fcQSplashScreen_slot_callback_messageChanged(slot: int, message: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QSplashScreenmessageChangedSlot](cast[pointer](slot))
  let vmessage_ms = message
  let vmessagex_ret = string.fromBytes(vmessage_ms)
  c_free(vmessage_ms.data)
  let slotval1 = vmessagex_ret

  nimfunc[](slotval1)

proc fcQSplashScreen_slot_callback_messageChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSplashScreenmessageChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onMessageChanged*(self: gen_qsplashscreen_types.QSplashScreen, slot: QSplashScreenmessageChangedSlot) =
  var tmp = new QSplashScreenmessageChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSplashScreen_connect_messageChanged(self.h, cast[int](addr tmp[]), fcQSplashScreen_slot_callback_messageChanged, fcQSplashScreen_slot_callback_messageChanged_release)

proc tr*(_: type gen_qsplashscreen_types.QSplashScreen, s: cstring, c: cstring): string =
  let v_ms = fcQSplashScreen_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsplashscreen_types.QSplashScreen, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSplashScreen_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc showMessage*(self: gen_qsplashscreen_types.QSplashScreen, message: openArray[char], alignment: cint): void =
  fcQSplashScreen_showMessage2(self.h, struct_miqt_string(data: if len(message) > 0: addr message[0] else: nil, len: csize_t(len(message))), alignment)

proc showMessage*(self: gen_qsplashscreen_types.QSplashScreen, message: openArray[char], alignment: cint, color: gen_qcolor_types.QColor): void =
  fcQSplashScreen_showMessage3(self.h, struct_miqt_string(data: if len(message) > 0: addr message[0] else: nil, len: csize_t(len(message))), alignment, color.h)

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
type QSplashScreenenterEventProc* = proc(self: QSplashScreen, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
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
type QSplashScreennativeEventProc* = proc(self: QSplashScreen, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
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

type QSplashScreenVTable* {.inheritable, pure.} = object
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

proc QSplashScreenmetaObject*(self: gen_qsplashscreen_types.QSplashScreen): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSplashScreen_virtualbase_metaObject(self.h), owned: false)

proc QSplashScreenmetacast*(self: gen_qsplashscreen_types.QSplashScreen, param1: cstring): pointer =
  fcQSplashScreen_virtualbase_metacast(self.h, param1)

proc QSplashScreenmetacall*(self: gen_qsplashscreen_types.QSplashScreen, param1: cint, param2: cint, param3: pointer): cint =
  fcQSplashScreen_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QSplashScreenevent*(self: gen_qsplashscreen_types.QSplashScreen, e: gen_qcoreevent_types.QEvent): bool =
  fcQSplashScreen_virtualbase_event(self.h, e.h)

proc QSplashScreendrawContents*(self: gen_qsplashscreen_types.QSplashScreen, painter: gen_qpainter_types.QPainter): void =
  fcQSplashScreen_virtualbase_drawContents(self.h, painter.h)

proc QSplashScreenmousePressEvent*(self: gen_qsplashscreen_types.QSplashScreen, param1: gen_qevent_types.QMouseEvent): void =
  fcQSplashScreen_virtualbase_mousePressEvent(self.h, param1.h)

proc QSplashScreendevType*(self: gen_qsplashscreen_types.QSplashScreen): cint =
  fcQSplashScreen_virtualbase_devType(self.h)

proc QSplashScreensetVisible*(self: gen_qsplashscreen_types.QSplashScreen, visible: bool): void =
  fcQSplashScreen_virtualbase_setVisible(self.h, visible)

proc QSplashScreensizeHint*(self: gen_qsplashscreen_types.QSplashScreen): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSplashScreen_virtualbase_sizeHint(self.h), owned: true)

proc QSplashScreenminimumSizeHint*(self: gen_qsplashscreen_types.QSplashScreen): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSplashScreen_virtualbase_minimumSizeHint(self.h), owned: true)

proc QSplashScreenheightForWidth*(self: gen_qsplashscreen_types.QSplashScreen, param1: cint): cint =
  fcQSplashScreen_virtualbase_heightForWidth(self.h, param1)

proc QSplashScreenhasHeightForWidth*(self: gen_qsplashscreen_types.QSplashScreen): bool =
  fcQSplashScreen_virtualbase_hasHeightForWidth(self.h)

proc QSplashScreenpaintEngine*(self: gen_qsplashscreen_types.QSplashScreen): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQSplashScreen_virtualbase_paintEngine(self.h), owned: false)

proc QSplashScreenmouseReleaseEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QMouseEvent): void =
  fcQSplashScreen_virtualbase_mouseReleaseEvent(self.h, event.h)

proc QSplashScreenmouseDoubleClickEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QMouseEvent): void =
  fcQSplashScreen_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc QSplashScreenmouseMoveEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QMouseEvent): void =
  fcQSplashScreen_virtualbase_mouseMoveEvent(self.h, event.h)

proc QSplashScreenwheelEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QWheelEvent): void =
  fcQSplashScreen_virtualbase_wheelEvent(self.h, event.h)

proc QSplashScreenkeyPressEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QKeyEvent): void =
  fcQSplashScreen_virtualbase_keyPressEvent(self.h, event.h)

proc QSplashScreenkeyReleaseEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QKeyEvent): void =
  fcQSplashScreen_virtualbase_keyReleaseEvent(self.h, event.h)

proc QSplashScreenfocusInEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QFocusEvent): void =
  fcQSplashScreen_virtualbase_focusInEvent(self.h, event.h)

proc QSplashScreenfocusOutEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QFocusEvent): void =
  fcQSplashScreen_virtualbase_focusOutEvent(self.h, event.h)

proc QSplashScreenenterEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QEnterEvent): void =
  fcQSplashScreen_virtualbase_enterEvent(self.h, event.h)

proc QSplashScreenleaveEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qcoreevent_types.QEvent): void =
  fcQSplashScreen_virtualbase_leaveEvent(self.h, event.h)

proc QSplashScreenpaintEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QPaintEvent): void =
  fcQSplashScreen_virtualbase_paintEvent(self.h, event.h)

proc QSplashScreenmoveEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QMoveEvent): void =
  fcQSplashScreen_virtualbase_moveEvent(self.h, event.h)

proc QSplashScreenresizeEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QResizeEvent): void =
  fcQSplashScreen_virtualbase_resizeEvent(self.h, event.h)

proc QSplashScreencloseEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QCloseEvent): void =
  fcQSplashScreen_virtualbase_closeEvent(self.h, event.h)

proc QSplashScreencontextMenuEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QContextMenuEvent): void =
  fcQSplashScreen_virtualbase_contextMenuEvent(self.h, event.h)

proc QSplashScreentabletEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QTabletEvent): void =
  fcQSplashScreen_virtualbase_tabletEvent(self.h, event.h)

proc QSplashScreenactionEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QActionEvent): void =
  fcQSplashScreen_virtualbase_actionEvent(self.h, event.h)

proc QSplashScreendragEnterEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QDragEnterEvent): void =
  fcQSplashScreen_virtualbase_dragEnterEvent(self.h, event.h)

proc QSplashScreendragMoveEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QDragMoveEvent): void =
  fcQSplashScreen_virtualbase_dragMoveEvent(self.h, event.h)

proc QSplashScreendragLeaveEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQSplashScreen_virtualbase_dragLeaveEvent(self.h, event.h)

proc QSplashScreendropEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QDropEvent): void =
  fcQSplashScreen_virtualbase_dropEvent(self.h, event.h)

proc QSplashScreenshowEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QShowEvent): void =
  fcQSplashScreen_virtualbase_showEvent(self.h, event.h)

proc QSplashScreenhideEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qevent_types.QHideEvent): void =
  fcQSplashScreen_virtualbase_hideEvent(self.h, event.h)

proc QSplashScreennativeEvent*(self: gen_qsplashscreen_types.QSplashScreen, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool =
  fcQSplashScreen_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc QSplashScreenchangeEvent*(self: gen_qsplashscreen_types.QSplashScreen, param1: gen_qcoreevent_types.QEvent): void =
  fcQSplashScreen_virtualbase_changeEvent(self.h, param1.h)

proc QSplashScreenmetric*(self: gen_qsplashscreen_types.QSplashScreen, param1: cint): cint =
  fcQSplashScreen_virtualbase_metric(self.h, cint(param1))

proc QSplashScreeninitPainter*(self: gen_qsplashscreen_types.QSplashScreen, painter: gen_qpainter_types.QPainter): void =
  fcQSplashScreen_virtualbase_initPainter(self.h, painter.h)

proc QSplashScreenredirected*(self: gen_qsplashscreen_types.QSplashScreen, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQSplashScreen_virtualbase_redirected(self.h, offset.h), owned: false)

proc QSplashScreensharedPainter*(self: gen_qsplashscreen_types.QSplashScreen): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQSplashScreen_virtualbase_sharedPainter(self.h), owned: false)

proc QSplashScreeninputMethodEvent*(self: gen_qsplashscreen_types.QSplashScreen, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQSplashScreen_virtualbase_inputMethodEvent(self.h, param1.h)

proc QSplashScreeninputMethodQuery*(self: gen_qsplashscreen_types.QSplashScreen, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSplashScreen_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc QSplashScreenfocusNextPrevChild*(self: gen_qsplashscreen_types.QSplashScreen, next: bool): bool =
  fcQSplashScreen_virtualbase_focusNextPrevChild(self.h, next)

proc QSplashScreeneventFilter*(self: gen_qsplashscreen_types.QSplashScreen, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSplashScreen_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QSplashScreentimerEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSplashScreen_virtualbase_timerEvent(self.h, event.h)

proc QSplashScreenchildEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSplashScreen_virtualbase_childEvent(self.h, event.h)

proc QSplashScreencustomEvent*(self: gen_qsplashscreen_types.QSplashScreen, event: gen_qcoreevent_types.QEvent): void =
  fcQSplashScreen_virtualbase_customEvent(self.h, event.h)

proc QSplashScreenconnectNotify*(self: gen_qsplashscreen_types.QSplashScreen, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSplashScreen_virtualbase_connectNotify(self.h, signal.h)

proc QSplashScreendisconnectNotify*(self: gen_qsplashscreen_types.QSplashScreen, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSplashScreen_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQSplashScreen_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSplashScreen_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQSplashScreen_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSplashScreen_vtable_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQSplashScreen_vtable_callback_drawContents(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].drawContents(self, slotval1)

proc fcQSplashScreen_vtable_callback_mousePressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc fcQSplashScreen_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc fcQSplashScreen_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc fcQSplashScreen_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSplashScreen_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSplashScreen_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc fcQSplashScreen_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc fcQSplashScreen_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSplashScreen_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc fcQSplashScreen_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc fcQSplashScreen_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc fcQSplashScreen_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc fcQSplashScreen_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc fcQSplashScreen_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc fcQSplashScreen_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc fcQSplashScreen_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc fcQSplashScreen_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc fcQSplashScreen_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc fcQSplashScreen_vtable_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc fcQSplashScreen_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc fcQSplashScreen_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc fcQSplashScreen_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc fcQSplashScreen_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc fcQSplashScreen_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc fcQSplashScreen_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc fcQSplashScreen_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc fcQSplashScreen_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc fcQSplashScreen_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc fcQSplashScreen_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc fcQSplashScreen_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc fcQSplashScreen_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc fcQSplashScreen_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSplashScreen_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc fcQSplashScreen_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc fcQSplashScreen_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc fcQSplashScreen_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSplashScreen_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSplashScreen_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc fcQSplashScreen_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSplashScreen_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc fcQSplashScreen_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQSplashScreen_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQSplashScreen_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQSplashScreen_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQSplashScreen_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQSplashScreen_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSplashScreenVTable](fcQSplashScreen_vdata(self))
  let self = QSplashScreen(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQSplashScreen* {.inheritable.} = ref object of QSplashScreen
  vtbl*: cQSplashScreenVTable

method metaObject*(self: VirtualQSplashScreen): gen_qobjectdefs_types.QMetaObject {.base.} =
  QSplashScreenmetaObject(self[])
method metacast*(self: VirtualQSplashScreen, param1: cstring): pointer {.base.} =
  QSplashScreenmetacast(self[], param1)
method metacall*(self: VirtualQSplashScreen, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QSplashScreenmetacall(self[], param1, param2, param3)
method event*(self: VirtualQSplashScreen, e: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSplashScreenevent(self[], e)
method drawContents*(self: VirtualQSplashScreen, painter: gen_qpainter_types.QPainter): void {.base.} =
  QSplashScreendrawContents(self[], painter)
method mousePressEvent*(self: VirtualQSplashScreen, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QSplashScreenmousePressEvent(self[], param1)
method devType*(self: VirtualQSplashScreen): cint {.base.} =
  QSplashScreendevType(self[])
method setVisible*(self: VirtualQSplashScreen, visible: bool): void {.base.} =
  QSplashScreensetVisible(self[], visible)
method sizeHint*(self: VirtualQSplashScreen): gen_qsize_types.QSize {.base.} =
  QSplashScreensizeHint(self[])
method minimumSizeHint*(self: VirtualQSplashScreen): gen_qsize_types.QSize {.base.} =
  QSplashScreenminimumSizeHint(self[])
method heightForWidth*(self: VirtualQSplashScreen, param1: cint): cint {.base.} =
  QSplashScreenheightForWidth(self[], param1)
method hasHeightForWidth*(self: VirtualQSplashScreen): bool {.base.} =
  QSplashScreenhasHeightForWidth(self[])
method paintEngine*(self: VirtualQSplashScreen): gen_qpaintengine_types.QPaintEngine {.base.} =
  QSplashScreenpaintEngine(self[])
method mouseReleaseEvent*(self: VirtualQSplashScreen, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QSplashScreenmouseReleaseEvent(self[], event)
method mouseDoubleClickEvent*(self: VirtualQSplashScreen, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QSplashScreenmouseDoubleClickEvent(self[], event)
method mouseMoveEvent*(self: VirtualQSplashScreen, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QSplashScreenmouseMoveEvent(self[], event)
method wheelEvent*(self: VirtualQSplashScreen, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QSplashScreenwheelEvent(self[], event)
method keyPressEvent*(self: VirtualQSplashScreen, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QSplashScreenkeyPressEvent(self[], event)
method keyReleaseEvent*(self: VirtualQSplashScreen, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QSplashScreenkeyReleaseEvent(self[], event)
method focusInEvent*(self: VirtualQSplashScreen, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QSplashScreenfocusInEvent(self[], event)
method focusOutEvent*(self: VirtualQSplashScreen, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QSplashScreenfocusOutEvent(self[], event)
method enterEvent*(self: VirtualQSplashScreen, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QSplashScreenenterEvent(self[], event)
method leaveEvent*(self: VirtualQSplashScreen, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QSplashScreenleaveEvent(self[], event)
method paintEvent*(self: VirtualQSplashScreen, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QSplashScreenpaintEvent(self[], event)
method moveEvent*(self: VirtualQSplashScreen, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QSplashScreenmoveEvent(self[], event)
method resizeEvent*(self: VirtualQSplashScreen, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QSplashScreenresizeEvent(self[], event)
method closeEvent*(self: VirtualQSplashScreen, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QSplashScreencloseEvent(self[], event)
method contextMenuEvent*(self: VirtualQSplashScreen, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QSplashScreencontextMenuEvent(self[], event)
method tabletEvent*(self: VirtualQSplashScreen, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QSplashScreentabletEvent(self[], event)
method actionEvent*(self: VirtualQSplashScreen, event: gen_qevent_types.QActionEvent): void {.base.} =
  QSplashScreenactionEvent(self[], event)
method dragEnterEvent*(self: VirtualQSplashScreen, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QSplashScreendragEnterEvent(self[], event)
method dragMoveEvent*(self: VirtualQSplashScreen, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QSplashScreendragMoveEvent(self[], event)
method dragLeaveEvent*(self: VirtualQSplashScreen, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QSplashScreendragLeaveEvent(self[], event)
method dropEvent*(self: VirtualQSplashScreen, event: gen_qevent_types.QDropEvent): void {.base.} =
  QSplashScreendropEvent(self[], event)
method showEvent*(self: VirtualQSplashScreen, event: gen_qevent_types.QShowEvent): void {.base.} =
  QSplashScreenshowEvent(self[], event)
method hideEvent*(self: VirtualQSplashScreen, event: gen_qevent_types.QHideEvent): void {.base.} =
  QSplashScreenhideEvent(self[], event)
method nativeEvent*(self: VirtualQSplashScreen, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QSplashScreennativeEvent(self[], eventType, message, resultVal)
method changeEvent*(self: VirtualQSplashScreen, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QSplashScreenchangeEvent(self[], param1)
method metric*(self: VirtualQSplashScreen, param1: cint): cint {.base.} =
  QSplashScreenmetric(self[], param1)
method initPainter*(self: VirtualQSplashScreen, painter: gen_qpainter_types.QPainter): void {.base.} =
  QSplashScreeninitPainter(self[], painter)
method redirected*(self: VirtualQSplashScreen, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QSplashScreenredirected(self[], offset)
method sharedPainter*(self: VirtualQSplashScreen): gen_qpainter_types.QPainter {.base.} =
  QSplashScreensharedPainter(self[])
method inputMethodEvent*(self: VirtualQSplashScreen, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QSplashScreeninputMethodEvent(self[], param1)
method inputMethodQuery*(self: VirtualQSplashScreen, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QSplashScreeninputMethodQuery(self[], param1)
method focusNextPrevChild*(self: VirtualQSplashScreen, next: bool): bool {.base.} =
  QSplashScreenfocusNextPrevChild(self[], next)
method eventFilter*(self: VirtualQSplashScreen, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSplashScreeneventFilter(self[], watched, event)
method timerEvent*(self: VirtualQSplashScreen, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QSplashScreentimerEvent(self[], event)
method childEvent*(self: VirtualQSplashScreen, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QSplashScreenchildEvent(self[], event)
method customEvent*(self: VirtualQSplashScreen, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QSplashScreencustomEvent(self[], event)
method connectNotify*(self: VirtualQSplashScreen, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSplashScreenconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQSplashScreen, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSplashScreendisconnectNotify(self[], signal)

proc fcQSplashScreen_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSplashScreen_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQSplashScreen_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSplashScreen_method_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQSplashScreen_method_callback_drawContents(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.drawContents(slotval1)

proc fcQSplashScreen_method_callback_mousePressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  inst.mousePressEvent(slotval1)

proc fcQSplashScreen_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

proc fcQSplashScreen_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

proc fcQSplashScreen_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSplashScreen_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSplashScreen_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

proc fcQSplashScreen_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

proc fcQSplashScreen_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSplashScreen_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

proc fcQSplashScreen_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

proc fcQSplashScreen_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

proc fcQSplashScreen_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

proc fcQSplashScreen_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyPressEvent(slotval1)

proc fcQSplashScreen_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

proc fcQSplashScreen_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

proc fcQSplashScreen_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

proc fcQSplashScreen_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

proc fcQSplashScreen_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

proc fcQSplashScreen_method_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  inst.paintEvent(slotval1)

proc fcQSplashScreen_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

proc fcQSplashScreen_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

proc fcQSplashScreen_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

proc fcQSplashScreen_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

proc fcQSplashScreen_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

proc fcQSplashScreen_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

proc fcQSplashScreen_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

proc fcQSplashScreen_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

proc fcQSplashScreen_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

proc fcQSplashScreen_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

proc fcQSplashScreen_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

proc fcQSplashScreen_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

proc fcQSplashScreen_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSplashScreen_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.changeEvent(slotval1)

proc fcQSplashScreen_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

proc fcQSplashScreen_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

proc fcQSplashScreen_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSplashScreen_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSplashScreen_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

proc fcQSplashScreen_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSplashScreen_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

proc fcQSplashScreen_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQSplashScreen_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQSplashScreen_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQSplashScreen_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQSplashScreen_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQSplashScreen_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSplashScreen](fcQSplashScreen_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc updateMicroFocus*(self: gen_qsplashscreen_types.QSplashScreen): void =
  fcQSplashScreen_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qsplashscreen_types.QSplashScreen): void =
  fcQSplashScreen_protectedbase_create(self.h)

proc destroy*(self: gen_qsplashscreen_types.QSplashScreen): void =
  fcQSplashScreen_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qsplashscreen_types.QSplashScreen): bool =
  fcQSplashScreen_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qsplashscreen_types.QSplashScreen): bool =
  fcQSplashScreen_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qsplashscreen_types.QSplashScreen): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSplashScreen_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qsplashscreen_types.QSplashScreen): cint =
  fcQSplashScreen_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qsplashscreen_types.QSplashScreen, signal: cstring): cint =
  fcQSplashScreen_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qsplashscreen_types.QSplashScreen, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQSplashScreen_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qsplashscreen_types.QSplashScreen,
    vtbl: ref QSplashScreenVTable = nil): gen_qsplashscreen_types.QSplashScreen =
  let vtbl = if vtbl == nil: new QSplashScreenVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSplashScreenVTable](fcQSplashScreen_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQSplashScreen_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQSplashScreen_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQSplashScreen_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQSplashScreen_vtable_callback_event
  if not isNil(vtbl[].drawContents):
    vtbl[].vtbl.drawContents = fcQSplashScreen_vtable_callback_drawContents
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQSplashScreen_vtable_callback_mousePressEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQSplashScreen_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQSplashScreen_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQSplashScreen_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQSplashScreen_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQSplashScreen_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQSplashScreen_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQSplashScreen_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQSplashScreen_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQSplashScreen_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQSplashScreen_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQSplashScreen_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQSplashScreen_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQSplashScreen_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQSplashScreen_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQSplashScreen_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQSplashScreen_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQSplashScreen_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQSplashScreen_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQSplashScreen_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQSplashScreen_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQSplashScreen_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQSplashScreen_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQSplashScreen_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQSplashScreen_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQSplashScreen_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQSplashScreen_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQSplashScreen_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQSplashScreen_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQSplashScreen_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQSplashScreen_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQSplashScreen_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQSplashScreen_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQSplashScreen_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQSplashScreen_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQSplashScreen_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQSplashScreen_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQSplashScreen_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQSplashScreen_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQSplashScreen_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQSplashScreen_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQSplashScreen_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQSplashScreen_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQSplashScreen_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQSplashScreen_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQSplashScreen_vtable_callback_disconnectNotify
  gen_qsplashscreen_types.QSplashScreen(h: fcQSplashScreen_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qsplashscreen_types.QSplashScreen,
    screen: gen_qscreen_types.QScreen,
    vtbl: ref QSplashScreenVTable = nil): gen_qsplashscreen_types.QSplashScreen =
  let vtbl = if vtbl == nil: new QSplashScreenVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSplashScreenVTable](fcQSplashScreen_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQSplashScreen_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQSplashScreen_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQSplashScreen_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQSplashScreen_vtable_callback_event
  if not isNil(vtbl[].drawContents):
    vtbl[].vtbl.drawContents = fcQSplashScreen_vtable_callback_drawContents
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQSplashScreen_vtable_callback_mousePressEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQSplashScreen_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQSplashScreen_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQSplashScreen_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQSplashScreen_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQSplashScreen_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQSplashScreen_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQSplashScreen_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQSplashScreen_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQSplashScreen_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQSplashScreen_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQSplashScreen_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQSplashScreen_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQSplashScreen_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQSplashScreen_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQSplashScreen_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQSplashScreen_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQSplashScreen_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQSplashScreen_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQSplashScreen_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQSplashScreen_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQSplashScreen_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQSplashScreen_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQSplashScreen_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQSplashScreen_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQSplashScreen_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQSplashScreen_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQSplashScreen_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQSplashScreen_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQSplashScreen_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQSplashScreen_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQSplashScreen_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQSplashScreen_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQSplashScreen_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQSplashScreen_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQSplashScreen_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQSplashScreen_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQSplashScreen_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQSplashScreen_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQSplashScreen_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQSplashScreen_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQSplashScreen_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQSplashScreen_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQSplashScreen_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQSplashScreen_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQSplashScreen_vtable_callback_disconnectNotify
  gen_qsplashscreen_types.QSplashScreen(h: fcQSplashScreen_new2(addr(vtbl[].vtbl), addr(vtbl[]), screen.h), owned: true)

proc create*(T: type gen_qsplashscreen_types.QSplashScreen,
    pixmap: gen_qpixmap_types.QPixmap,
    vtbl: ref QSplashScreenVTable = nil): gen_qsplashscreen_types.QSplashScreen =
  let vtbl = if vtbl == nil: new QSplashScreenVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSplashScreenVTable](fcQSplashScreen_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQSplashScreen_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQSplashScreen_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQSplashScreen_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQSplashScreen_vtable_callback_event
  if not isNil(vtbl[].drawContents):
    vtbl[].vtbl.drawContents = fcQSplashScreen_vtable_callback_drawContents
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQSplashScreen_vtable_callback_mousePressEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQSplashScreen_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQSplashScreen_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQSplashScreen_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQSplashScreen_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQSplashScreen_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQSplashScreen_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQSplashScreen_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQSplashScreen_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQSplashScreen_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQSplashScreen_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQSplashScreen_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQSplashScreen_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQSplashScreen_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQSplashScreen_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQSplashScreen_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQSplashScreen_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQSplashScreen_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQSplashScreen_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQSplashScreen_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQSplashScreen_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQSplashScreen_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQSplashScreen_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQSplashScreen_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQSplashScreen_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQSplashScreen_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQSplashScreen_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQSplashScreen_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQSplashScreen_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQSplashScreen_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQSplashScreen_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQSplashScreen_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQSplashScreen_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQSplashScreen_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQSplashScreen_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQSplashScreen_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQSplashScreen_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQSplashScreen_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQSplashScreen_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQSplashScreen_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQSplashScreen_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQSplashScreen_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQSplashScreen_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQSplashScreen_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQSplashScreen_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQSplashScreen_vtable_callback_disconnectNotify
  gen_qsplashscreen_types.QSplashScreen(h: fcQSplashScreen_new3(addr(vtbl[].vtbl), addr(vtbl[]), pixmap.h), owned: true)

proc create*(T: type gen_qsplashscreen_types.QSplashScreen,
    pixmap: gen_qpixmap_types.QPixmap, f: cint,
    vtbl: ref QSplashScreenVTable = nil): gen_qsplashscreen_types.QSplashScreen =
  let vtbl = if vtbl == nil: new QSplashScreenVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSplashScreenVTable](fcQSplashScreen_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQSplashScreen_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQSplashScreen_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQSplashScreen_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQSplashScreen_vtable_callback_event
  if not isNil(vtbl[].drawContents):
    vtbl[].vtbl.drawContents = fcQSplashScreen_vtable_callback_drawContents
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQSplashScreen_vtable_callback_mousePressEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQSplashScreen_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQSplashScreen_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQSplashScreen_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQSplashScreen_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQSplashScreen_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQSplashScreen_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQSplashScreen_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQSplashScreen_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQSplashScreen_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQSplashScreen_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQSplashScreen_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQSplashScreen_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQSplashScreen_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQSplashScreen_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQSplashScreen_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQSplashScreen_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQSplashScreen_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQSplashScreen_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQSplashScreen_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQSplashScreen_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQSplashScreen_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQSplashScreen_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQSplashScreen_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQSplashScreen_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQSplashScreen_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQSplashScreen_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQSplashScreen_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQSplashScreen_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQSplashScreen_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQSplashScreen_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQSplashScreen_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQSplashScreen_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQSplashScreen_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQSplashScreen_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQSplashScreen_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQSplashScreen_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQSplashScreen_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQSplashScreen_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQSplashScreen_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQSplashScreen_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQSplashScreen_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQSplashScreen_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQSplashScreen_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQSplashScreen_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQSplashScreen_vtable_callback_disconnectNotify
  gen_qsplashscreen_types.QSplashScreen(h: fcQSplashScreen_new4(addr(vtbl[].vtbl), addr(vtbl[]), pixmap.h, cint(f)), owned: true)

proc create*(T: type gen_qsplashscreen_types.QSplashScreen,
    screen: gen_qscreen_types.QScreen, pixmap: gen_qpixmap_types.QPixmap,
    vtbl: ref QSplashScreenVTable = nil): gen_qsplashscreen_types.QSplashScreen =
  let vtbl = if vtbl == nil: new QSplashScreenVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSplashScreenVTable](fcQSplashScreen_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQSplashScreen_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQSplashScreen_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQSplashScreen_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQSplashScreen_vtable_callback_event
  if not isNil(vtbl[].drawContents):
    vtbl[].vtbl.drawContents = fcQSplashScreen_vtable_callback_drawContents
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQSplashScreen_vtable_callback_mousePressEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQSplashScreen_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQSplashScreen_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQSplashScreen_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQSplashScreen_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQSplashScreen_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQSplashScreen_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQSplashScreen_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQSplashScreen_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQSplashScreen_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQSplashScreen_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQSplashScreen_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQSplashScreen_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQSplashScreen_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQSplashScreen_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQSplashScreen_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQSplashScreen_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQSplashScreen_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQSplashScreen_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQSplashScreen_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQSplashScreen_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQSplashScreen_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQSplashScreen_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQSplashScreen_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQSplashScreen_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQSplashScreen_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQSplashScreen_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQSplashScreen_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQSplashScreen_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQSplashScreen_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQSplashScreen_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQSplashScreen_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQSplashScreen_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQSplashScreen_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQSplashScreen_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQSplashScreen_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQSplashScreen_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQSplashScreen_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQSplashScreen_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQSplashScreen_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQSplashScreen_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQSplashScreen_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQSplashScreen_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQSplashScreen_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQSplashScreen_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQSplashScreen_vtable_callback_disconnectNotify
  gen_qsplashscreen_types.QSplashScreen(h: fcQSplashScreen_new5(addr(vtbl[].vtbl), addr(vtbl[]), screen.h, pixmap.h), owned: true)

proc create*(T: type gen_qsplashscreen_types.QSplashScreen,
    screen: gen_qscreen_types.QScreen, pixmap: gen_qpixmap_types.QPixmap, f: cint,
    vtbl: ref QSplashScreenVTable = nil): gen_qsplashscreen_types.QSplashScreen =
  let vtbl = if vtbl == nil: new QSplashScreenVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSplashScreenVTable](fcQSplashScreen_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQSplashScreen_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQSplashScreen_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQSplashScreen_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQSplashScreen_vtable_callback_event
  if not isNil(vtbl[].drawContents):
    vtbl[].vtbl.drawContents = fcQSplashScreen_vtable_callback_drawContents
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQSplashScreen_vtable_callback_mousePressEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQSplashScreen_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQSplashScreen_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQSplashScreen_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQSplashScreen_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQSplashScreen_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQSplashScreen_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQSplashScreen_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQSplashScreen_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQSplashScreen_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQSplashScreen_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQSplashScreen_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQSplashScreen_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQSplashScreen_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQSplashScreen_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQSplashScreen_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQSplashScreen_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQSplashScreen_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQSplashScreen_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQSplashScreen_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQSplashScreen_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQSplashScreen_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQSplashScreen_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQSplashScreen_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQSplashScreen_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQSplashScreen_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQSplashScreen_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQSplashScreen_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQSplashScreen_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQSplashScreen_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQSplashScreen_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQSplashScreen_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQSplashScreen_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQSplashScreen_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQSplashScreen_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQSplashScreen_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQSplashScreen_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQSplashScreen_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQSplashScreen_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQSplashScreen_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQSplashScreen_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQSplashScreen_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQSplashScreen_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQSplashScreen_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQSplashScreen_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQSplashScreen_vtable_callback_disconnectNotify
  gen_qsplashscreen_types.QSplashScreen(h: fcQSplashScreen_new6(addr(vtbl[].vtbl), addr(vtbl[]), screen.h, pixmap.h, cint(f)), owned: true)

const cQSplashScreen_mvtbl = cQSplashScreenVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQSplashScreen()[])](self.fcQSplashScreen_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQSplashScreen_method_callback_metaObject,
  metacast: fcQSplashScreen_method_callback_metacast,
  metacall: fcQSplashScreen_method_callback_metacall,
  event: fcQSplashScreen_method_callback_event,
  drawContents: fcQSplashScreen_method_callback_drawContents,
  mousePressEvent: fcQSplashScreen_method_callback_mousePressEvent,
  devType: fcQSplashScreen_method_callback_devType,
  setVisible: fcQSplashScreen_method_callback_setVisible,
  sizeHint: fcQSplashScreen_method_callback_sizeHint,
  minimumSizeHint: fcQSplashScreen_method_callback_minimumSizeHint,
  heightForWidth: fcQSplashScreen_method_callback_heightForWidth,
  hasHeightForWidth: fcQSplashScreen_method_callback_hasHeightForWidth,
  paintEngine: fcQSplashScreen_method_callback_paintEngine,
  mouseReleaseEvent: fcQSplashScreen_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: fcQSplashScreen_method_callback_mouseDoubleClickEvent,
  mouseMoveEvent: fcQSplashScreen_method_callback_mouseMoveEvent,
  wheelEvent: fcQSplashScreen_method_callback_wheelEvent,
  keyPressEvent: fcQSplashScreen_method_callback_keyPressEvent,
  keyReleaseEvent: fcQSplashScreen_method_callback_keyReleaseEvent,
  focusInEvent: fcQSplashScreen_method_callback_focusInEvent,
  focusOutEvent: fcQSplashScreen_method_callback_focusOutEvent,
  enterEvent: fcQSplashScreen_method_callback_enterEvent,
  leaveEvent: fcQSplashScreen_method_callback_leaveEvent,
  paintEvent: fcQSplashScreen_method_callback_paintEvent,
  moveEvent: fcQSplashScreen_method_callback_moveEvent,
  resizeEvent: fcQSplashScreen_method_callback_resizeEvent,
  closeEvent: fcQSplashScreen_method_callback_closeEvent,
  contextMenuEvent: fcQSplashScreen_method_callback_contextMenuEvent,
  tabletEvent: fcQSplashScreen_method_callback_tabletEvent,
  actionEvent: fcQSplashScreen_method_callback_actionEvent,
  dragEnterEvent: fcQSplashScreen_method_callback_dragEnterEvent,
  dragMoveEvent: fcQSplashScreen_method_callback_dragMoveEvent,
  dragLeaveEvent: fcQSplashScreen_method_callback_dragLeaveEvent,
  dropEvent: fcQSplashScreen_method_callback_dropEvent,
  showEvent: fcQSplashScreen_method_callback_showEvent,
  hideEvent: fcQSplashScreen_method_callback_hideEvent,
  nativeEvent: fcQSplashScreen_method_callback_nativeEvent,
  changeEvent: fcQSplashScreen_method_callback_changeEvent,
  metric: fcQSplashScreen_method_callback_metric,
  initPainter: fcQSplashScreen_method_callback_initPainter,
  redirected: fcQSplashScreen_method_callback_redirected,
  sharedPainter: fcQSplashScreen_method_callback_sharedPainter,
  inputMethodEvent: fcQSplashScreen_method_callback_inputMethodEvent,
  inputMethodQuery: fcQSplashScreen_method_callback_inputMethodQuery,
  focusNextPrevChild: fcQSplashScreen_method_callback_focusNextPrevChild,
  eventFilter: fcQSplashScreen_method_callback_eventFilter,
  timerEvent: fcQSplashScreen_method_callback_timerEvent,
  childEvent: fcQSplashScreen_method_callback_childEvent,
  customEvent: fcQSplashScreen_method_callback_customEvent,
  connectNotify: fcQSplashScreen_method_callback_connectNotify,
  disconnectNotify: fcQSplashScreen_method_callback_disconnectNotify,
)
proc create*(T: type gen_qsplashscreen_types.QSplashScreen,
    inst: VirtualQSplashScreen) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSplashScreen_new(addr(cQSplashScreen_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qsplashscreen_types.QSplashScreen,
    screen: gen_qscreen_types.QScreen,
    inst: VirtualQSplashScreen) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSplashScreen_new2(addr(cQSplashScreen_mvtbl), addr(inst[]), screen.h)
  inst[].owned = true

proc create*(T: type gen_qsplashscreen_types.QSplashScreen,
    pixmap: gen_qpixmap_types.QPixmap,
    inst: VirtualQSplashScreen) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSplashScreen_new3(addr(cQSplashScreen_mvtbl), addr(inst[]), pixmap.h)
  inst[].owned = true

proc create*(T: type gen_qsplashscreen_types.QSplashScreen,
    pixmap: gen_qpixmap_types.QPixmap, f: cint,
    inst: VirtualQSplashScreen) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSplashScreen_new4(addr(cQSplashScreen_mvtbl), addr(inst[]), pixmap.h, cint(f))
  inst[].owned = true

proc create*(T: type gen_qsplashscreen_types.QSplashScreen,
    screen: gen_qscreen_types.QScreen, pixmap: gen_qpixmap_types.QPixmap,
    inst: VirtualQSplashScreen) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSplashScreen_new5(addr(cQSplashScreen_mvtbl), addr(inst[]), screen.h, pixmap.h)
  inst[].owned = true

proc create*(T: type gen_qsplashscreen_types.QSplashScreen,
    screen: gen_qscreen_types.QScreen, pixmap: gen_qpixmap_types.QPixmap, f: cint,
    inst: VirtualQSplashScreen) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSplashScreen_new6(addr(cQSplashScreen_mvtbl), addr(inst[]), screen.h, pixmap.h, cint(f))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qsplashscreen_types.QSplashScreen): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSplashScreen_staticMetaObject())
