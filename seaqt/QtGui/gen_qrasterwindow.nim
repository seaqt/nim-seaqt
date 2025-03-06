import ./Qt6Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt6Gui")  & " -fPIC"
{.compile("gen_qrasterwindow.cpp", cflags).}


import ./gen_qrasterwindow_types
export gen_qrasterwindow_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qsize_types,
  ./gen_qaccessible_types,
  ./gen_qevent_types,
  ./gen_qpaintdevice_types,
  ./gen_qpaintdevicewindow,
  ./gen_qpainter_types,
  ./gen_qsurfaceformat_types,
  ./gen_qwindow_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qsize_types,
  gen_qaccessible_types,
  gen_qevent_types,
  gen_qpaintdevice_types,
  gen_qpaintdevicewindow,
  gen_qpainter_types,
  gen_qsurfaceformat_types,
  gen_qwindow_types

type cQRasterWindow*{.exportc: "QRasterWindow", incompleteStruct.} = object

proc fcQRasterWindow_metaObject(self: pointer, ): pointer {.importc: "QRasterWindow_metaObject".}
proc fcQRasterWindow_metacast(self: pointer, param1: cstring): pointer {.importc: "QRasterWindow_metacast".}
proc fcQRasterWindow_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRasterWindow_metacall".}
proc fcQRasterWindow_tr(s: cstring): struct_miqt_string {.importc: "QRasterWindow_tr".}
proc fcQRasterWindow_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QRasterWindow_tr2".}
proc fcQRasterWindow_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QRasterWindow_tr3".}
type cQRasterWindowVTable = object
  destructor*: proc(vtbl: ptr cQRasterWindowVTable, self: ptr cQRasterWindow) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, metric: cint): cint {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, param1: pointer): pointer {.cdecl, raises: [], gcsafe.}
  exposeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  surfaceType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  format*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  size*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  accessibleRoot*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  focusObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  touchEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
proc fcQRasterWindow_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QRasterWindow_virtualbase_metaObject".}
proc fcQRasterWindow_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QRasterWindow_virtualbase_metacast".}
proc fcQRasterWindow_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRasterWindow_virtualbase_metacall".}
proc fcQRasterWindow_virtualbase_metric(self: pointer, metric: cint): cint {.importc: "QRasterWindow_virtualbase_metric".}
proc fcQRasterWindow_virtualbase_redirected(self: pointer, param1: pointer): pointer {.importc: "QRasterWindow_virtualbase_redirected".}
proc fcQRasterWindow_virtualbase_exposeEvent(self: pointer, param1: pointer): void {.importc: "QRasterWindow_virtualbase_exposeEvent".}
proc fcQRasterWindow_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QRasterWindow_virtualbase_paintEvent".}
proc fcQRasterWindow_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QRasterWindow_virtualbase_event".}
proc fcQRasterWindow_virtualbase_surfaceType(self: pointer, ): cint {.importc: "QRasterWindow_virtualbase_surfaceType".}
proc fcQRasterWindow_virtualbase_format(self: pointer, ): pointer {.importc: "QRasterWindow_virtualbase_format".}
proc fcQRasterWindow_virtualbase_size(self: pointer, ): pointer {.importc: "QRasterWindow_virtualbase_size".}
proc fcQRasterWindow_virtualbase_accessibleRoot(self: pointer, ): pointer {.importc: "QRasterWindow_virtualbase_accessibleRoot".}
proc fcQRasterWindow_virtualbase_focusObject(self: pointer, ): pointer {.importc: "QRasterWindow_virtualbase_focusObject".}
proc fcQRasterWindow_virtualbase_resizeEvent(self: pointer, param1: pointer): void {.importc: "QRasterWindow_virtualbase_resizeEvent".}
proc fcQRasterWindow_virtualbase_moveEvent(self: pointer, param1: pointer): void {.importc: "QRasterWindow_virtualbase_moveEvent".}
proc fcQRasterWindow_virtualbase_focusInEvent(self: pointer, param1: pointer): void {.importc: "QRasterWindow_virtualbase_focusInEvent".}
proc fcQRasterWindow_virtualbase_focusOutEvent(self: pointer, param1: pointer): void {.importc: "QRasterWindow_virtualbase_focusOutEvent".}
proc fcQRasterWindow_virtualbase_showEvent(self: pointer, param1: pointer): void {.importc: "QRasterWindow_virtualbase_showEvent".}
proc fcQRasterWindow_virtualbase_hideEvent(self: pointer, param1: pointer): void {.importc: "QRasterWindow_virtualbase_hideEvent".}
proc fcQRasterWindow_virtualbase_closeEvent(self: pointer, param1: pointer): void {.importc: "QRasterWindow_virtualbase_closeEvent".}
proc fcQRasterWindow_virtualbase_keyPressEvent(self: pointer, param1: pointer): void {.importc: "QRasterWindow_virtualbase_keyPressEvent".}
proc fcQRasterWindow_virtualbase_keyReleaseEvent(self: pointer, param1: pointer): void {.importc: "QRasterWindow_virtualbase_keyReleaseEvent".}
proc fcQRasterWindow_virtualbase_mousePressEvent(self: pointer, param1: pointer): void {.importc: "QRasterWindow_virtualbase_mousePressEvent".}
proc fcQRasterWindow_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void {.importc: "QRasterWindow_virtualbase_mouseReleaseEvent".}
proc fcQRasterWindow_virtualbase_mouseDoubleClickEvent(self: pointer, param1: pointer): void {.importc: "QRasterWindow_virtualbase_mouseDoubleClickEvent".}
proc fcQRasterWindow_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void {.importc: "QRasterWindow_virtualbase_mouseMoveEvent".}
proc fcQRasterWindow_virtualbase_wheelEvent(self: pointer, param1: pointer): void {.importc: "QRasterWindow_virtualbase_wheelEvent".}
proc fcQRasterWindow_virtualbase_touchEvent(self: pointer, param1: pointer): void {.importc: "QRasterWindow_virtualbase_touchEvent".}
proc fcQRasterWindow_virtualbase_tabletEvent(self: pointer, param1: pointer): void {.importc: "QRasterWindow_virtualbase_tabletEvent".}
proc fcQRasterWindow_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QRasterWindow_virtualbase_nativeEvent".}
proc fcQRasterWindow_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QRasterWindow_virtualbase_eventFilter".}
proc fcQRasterWindow_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QRasterWindow_virtualbase_timerEvent".}
proc fcQRasterWindow_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QRasterWindow_virtualbase_childEvent".}
proc fcQRasterWindow_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QRasterWindow_virtualbase_customEvent".}
proc fcQRasterWindow_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QRasterWindow_virtualbase_connectNotify".}
proc fcQRasterWindow_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QRasterWindow_virtualbase_disconnectNotify".}
proc fcQRasterWindow_virtualbase_devType(self: pointer, ): cint {.importc: "QRasterWindow_virtualbase_devType".}
proc fcQRasterWindow_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QRasterWindow_virtualbase_initPainter".}
proc fcQRasterWindow_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QRasterWindow_virtualbase_sharedPainter".}
proc fcQRasterWindow_protectedbase_resolveInterface(self: pointer, name: cstring, revision: cint): pointer {.importc: "QRasterWindow_protectedbase_resolveInterface".}
proc fcQRasterWindow_protectedbase_sender(self: pointer, ): pointer {.importc: "QRasterWindow_protectedbase_sender".}
proc fcQRasterWindow_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QRasterWindow_protectedbase_senderSignalIndex".}
proc fcQRasterWindow_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QRasterWindow_protectedbase_receivers".}
proc fcQRasterWindow_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QRasterWindow_protectedbase_isSignalConnected".}
proc fcQRasterWindow_new(vtbl: pointer, ): ptr cQRasterWindow {.importc: "QRasterWindow_new".}
proc fcQRasterWindow_new2(vtbl: pointer, parent: pointer): ptr cQRasterWindow {.importc: "QRasterWindow_new2".}
proc fcQRasterWindow_staticMetaObject(): pointer {.importc: "QRasterWindow_staticMetaObject".}
proc fcQRasterWindow_delete(self: pointer) {.importc: "QRasterWindow_delete".}

proc metaObject*(self: gen_qrasterwindow_types.QRasterWindow, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRasterWindow_metaObject(self.h))

proc metacast*(self: gen_qrasterwindow_types.QRasterWindow, param1: cstring): pointer =
  fcQRasterWindow_metacast(self.h, param1)

proc metacall*(self: gen_qrasterwindow_types.QRasterWindow, param1: cint, param2: cint, param3: pointer): cint =
  fcQRasterWindow_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qrasterwindow_types.QRasterWindow, s: cstring): string =
  let v_ms = fcQRasterWindow_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qrasterwindow_types.QRasterWindow, s: cstring, c: cstring): string =
  let v_ms = fcQRasterWindow_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qrasterwindow_types.QRasterWindow, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQRasterWindow_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QRasterWindowmetaObjectProc* = proc(self: QRasterWindow): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QRasterWindowmetacastProc* = proc(self: QRasterWindow, param1: cstring): pointer {.raises: [], gcsafe.}
type QRasterWindowmetacallProc* = proc(self: QRasterWindow, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QRasterWindowmetricProc* = proc(self: QRasterWindow, metric: cint): cint {.raises: [], gcsafe.}
type QRasterWindowredirectedProc* = proc(self: QRasterWindow, param1: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QRasterWindowexposeEventProc* = proc(self: QRasterWindow, param1: gen_qevent_types.QExposeEvent): void {.raises: [], gcsafe.}
type QRasterWindowpaintEventProc* = proc(self: QRasterWindow, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QRasterWindoweventProc* = proc(self: QRasterWindow, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QRasterWindowsurfaceTypeProc* = proc(self: QRasterWindow): cint {.raises: [], gcsafe.}
type QRasterWindowformatProc* = proc(self: QRasterWindow): gen_qsurfaceformat_types.QSurfaceFormat {.raises: [], gcsafe.}
type QRasterWindowsizeProc* = proc(self: QRasterWindow): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QRasterWindowaccessibleRootProc* = proc(self: QRasterWindow): gen_qaccessible_types.QAccessibleInterface {.raises: [], gcsafe.}
type QRasterWindowfocusObjectProc* = proc(self: QRasterWindow): gen_qobject_types.QObject {.raises: [], gcsafe.}
type QRasterWindowresizeEventProc* = proc(self: QRasterWindow, param1: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QRasterWindowmoveEventProc* = proc(self: QRasterWindow, param1: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QRasterWindowfocusInEventProc* = proc(self: QRasterWindow, param1: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QRasterWindowfocusOutEventProc* = proc(self: QRasterWindow, param1: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QRasterWindowshowEventProc* = proc(self: QRasterWindow, param1: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QRasterWindowhideEventProc* = proc(self: QRasterWindow, param1: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QRasterWindowcloseEventProc* = proc(self: QRasterWindow, param1: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QRasterWindowkeyPressEventProc* = proc(self: QRasterWindow, param1: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QRasterWindowkeyReleaseEventProc* = proc(self: QRasterWindow, param1: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QRasterWindowmousePressEventProc* = proc(self: QRasterWindow, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QRasterWindowmouseReleaseEventProc* = proc(self: QRasterWindow, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QRasterWindowmouseDoubleClickEventProc* = proc(self: QRasterWindow, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QRasterWindowmouseMoveEventProc* = proc(self: QRasterWindow, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QRasterWindowwheelEventProc* = proc(self: QRasterWindow, param1: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QRasterWindowtouchEventProc* = proc(self: QRasterWindow, param1: gen_qevent_types.QTouchEvent): void {.raises: [], gcsafe.}
type QRasterWindowtabletEventProc* = proc(self: QRasterWindow, param1: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QRasterWindownativeEventProc* = proc(self: QRasterWindow, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QRasterWindoweventFilterProc* = proc(self: QRasterWindow, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QRasterWindowtimerEventProc* = proc(self: QRasterWindow, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QRasterWindowchildEventProc* = proc(self: QRasterWindow, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QRasterWindowcustomEventProc* = proc(self: QRasterWindow, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QRasterWindowconnectNotifyProc* = proc(self: QRasterWindow, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QRasterWindowdisconnectNotifyProc* = proc(self: QRasterWindow, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QRasterWindowdevTypeProc* = proc(self: QRasterWindow): cint {.raises: [], gcsafe.}
type QRasterWindowinitPainterProc* = proc(self: QRasterWindow, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QRasterWindowsharedPainterProc* = proc(self: QRasterWindow): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QRasterWindowVTable* = object
  vtbl: cQRasterWindowVTable
  metaObject*: QRasterWindowmetaObjectProc
  metacast*: QRasterWindowmetacastProc
  metacall*: QRasterWindowmetacallProc
  metric*: QRasterWindowmetricProc
  redirected*: QRasterWindowredirectedProc
  exposeEvent*: QRasterWindowexposeEventProc
  paintEvent*: QRasterWindowpaintEventProc
  event*: QRasterWindoweventProc
  surfaceType*: QRasterWindowsurfaceTypeProc
  format*: QRasterWindowformatProc
  size*: QRasterWindowsizeProc
  accessibleRoot*: QRasterWindowaccessibleRootProc
  focusObject*: QRasterWindowfocusObjectProc
  resizeEvent*: QRasterWindowresizeEventProc
  moveEvent*: QRasterWindowmoveEventProc
  focusInEvent*: QRasterWindowfocusInEventProc
  focusOutEvent*: QRasterWindowfocusOutEventProc
  showEvent*: QRasterWindowshowEventProc
  hideEvent*: QRasterWindowhideEventProc
  closeEvent*: QRasterWindowcloseEventProc
  keyPressEvent*: QRasterWindowkeyPressEventProc
  keyReleaseEvent*: QRasterWindowkeyReleaseEventProc
  mousePressEvent*: QRasterWindowmousePressEventProc
  mouseReleaseEvent*: QRasterWindowmouseReleaseEventProc
  mouseDoubleClickEvent*: QRasterWindowmouseDoubleClickEventProc
  mouseMoveEvent*: QRasterWindowmouseMoveEventProc
  wheelEvent*: QRasterWindowwheelEventProc
  touchEvent*: QRasterWindowtouchEventProc
  tabletEvent*: QRasterWindowtabletEventProc
  nativeEvent*: QRasterWindownativeEventProc
  eventFilter*: QRasterWindoweventFilterProc
  timerEvent*: QRasterWindowtimerEventProc
  childEvent*: QRasterWindowchildEventProc
  customEvent*: QRasterWindowcustomEventProc
  connectNotify*: QRasterWindowconnectNotifyProc
  disconnectNotify*: QRasterWindowdisconnectNotifyProc
  devType*: QRasterWindowdevTypeProc
  initPainter*: QRasterWindowinitPainterProc
  sharedPainter*: QRasterWindowsharedPainterProc
proc QRasterWindowmetaObject*(self: gen_qrasterwindow_types.QRasterWindow, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRasterWindow_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQRasterWindow_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](vtbl)
  let self = QRasterWindow(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QRasterWindowmetacast*(self: gen_qrasterwindow_types.QRasterWindow, param1: cstring): pointer =
  fcQRasterWindow_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQRasterWindow_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](vtbl)
  let self = QRasterWindow(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QRasterWindowmetacall*(self: gen_qrasterwindow_types.QRasterWindow, param1: cint, param2: cint, param3: pointer): cint =
  fcQRasterWindow_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQRasterWindow_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](vtbl)
  let self = QRasterWindow(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QRasterWindowmetric*(self: gen_qrasterwindow_types.QRasterWindow, metric: cint): cint =
  fcQRasterWindow_virtualbase_metric(self.h, cint(metric))

proc miqt_exec_callback_cQRasterWindow_metric(vtbl: pointer, self: pointer, metric: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](vtbl)
  let self = QRasterWindow(h: self)
  let slotval1 = cint(metric)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QRasterWindowredirected*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQRasterWindow_virtualbase_redirected(self.h, param1.h))

proc miqt_exec_callback_cQRasterWindow_redirected(vtbl: pointer, self: pointer, param1: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](vtbl)
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: param1)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QRasterWindowexposeEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QExposeEvent): void =
  fcQRasterWindow_virtualbase_exposeEvent(self.h, param1.h)

proc miqt_exec_callback_cQRasterWindow_exposeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](vtbl)
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qevent_types.QExposeEvent(h: param1)
  vtbl[].exposeEvent(self, slotval1)

proc QRasterWindowpaintEvent*(self: gen_qrasterwindow_types.QRasterWindow, event: gen_qevent_types.QPaintEvent): void =
  fcQRasterWindow_virtualbase_paintEvent(self.h, event.h)

proc miqt_exec_callback_cQRasterWindow_paintEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](vtbl)
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)
  vtbl[].paintEvent(self, slotval1)

proc QRasterWindowevent*(self: gen_qrasterwindow_types.QRasterWindow, event: gen_qcoreevent_types.QEvent): bool =
  fcQRasterWindow_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQRasterWindow_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](vtbl)
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QRasterWindowsurfaceType*(self: gen_qrasterwindow_types.QRasterWindow, ): cint =
  cint(fcQRasterWindow_virtualbase_surfaceType(self.h))

proc miqt_exec_callback_cQRasterWindow_surfaceType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](vtbl)
  let self = QRasterWindow(h: self)
  var virtualReturn = vtbl[].surfaceType(self)
  cint(virtualReturn)

proc QRasterWindowformat*(self: gen_qrasterwindow_types.QRasterWindow, ): gen_qsurfaceformat_types.QSurfaceFormat =
  gen_qsurfaceformat_types.QSurfaceFormat(h: fcQRasterWindow_virtualbase_format(self.h))

proc miqt_exec_callback_cQRasterWindow_format(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](vtbl)
  let self = QRasterWindow(h: self)
  var virtualReturn = vtbl[].format(self)
  virtualReturn.h

proc QRasterWindowsize*(self: gen_qrasterwindow_types.QRasterWindow, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQRasterWindow_virtualbase_size(self.h))

proc miqt_exec_callback_cQRasterWindow_size(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](vtbl)
  let self = QRasterWindow(h: self)
  var virtualReturn = vtbl[].size(self)
  virtualReturn.h

proc QRasterWindowaccessibleRoot*(self: gen_qrasterwindow_types.QRasterWindow, ): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQRasterWindow_virtualbase_accessibleRoot(self.h))

proc miqt_exec_callback_cQRasterWindow_accessibleRoot(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](vtbl)
  let self = QRasterWindow(h: self)
  var virtualReturn = vtbl[].accessibleRoot(self)
  virtualReturn.h

proc QRasterWindowfocusObject*(self: gen_qrasterwindow_types.QRasterWindow, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQRasterWindow_virtualbase_focusObject(self.h))

proc miqt_exec_callback_cQRasterWindow_focusObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](vtbl)
  let self = QRasterWindow(h: self)
  var virtualReturn = vtbl[].focusObject(self)
  virtualReturn.h

proc QRasterWindowresizeEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QResizeEvent): void =
  fcQRasterWindow_virtualbase_resizeEvent(self.h, param1.h)

proc miqt_exec_callback_cQRasterWindow_resizeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](vtbl)
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1)
  vtbl[].resizeEvent(self, slotval1)

proc QRasterWindowmoveEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QMoveEvent): void =
  fcQRasterWindow_virtualbase_moveEvent(self.h, param1.h)

proc miqt_exec_callback_cQRasterWindow_moveEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](vtbl)
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: param1)
  vtbl[].moveEvent(self, slotval1)

proc QRasterWindowfocusInEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QFocusEvent): void =
  fcQRasterWindow_virtualbase_focusInEvent(self.h, param1.h)

proc miqt_exec_callback_cQRasterWindow_focusInEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](vtbl)
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1)
  vtbl[].focusInEvent(self, slotval1)

proc QRasterWindowfocusOutEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QFocusEvent): void =
  fcQRasterWindow_virtualbase_focusOutEvent(self.h, param1.h)

proc miqt_exec_callback_cQRasterWindow_focusOutEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](vtbl)
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1)
  vtbl[].focusOutEvent(self, slotval1)

proc QRasterWindowshowEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QShowEvent): void =
  fcQRasterWindow_virtualbase_showEvent(self.h, param1.h)

proc miqt_exec_callback_cQRasterWindow_showEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](vtbl)
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: param1)
  vtbl[].showEvent(self, slotval1)

proc QRasterWindowhideEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QHideEvent): void =
  fcQRasterWindow_virtualbase_hideEvent(self.h, param1.h)

proc miqt_exec_callback_cQRasterWindow_hideEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](vtbl)
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: param1)
  vtbl[].hideEvent(self, slotval1)

proc QRasterWindowcloseEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QCloseEvent): void =
  fcQRasterWindow_virtualbase_closeEvent(self.h, param1.h)

proc miqt_exec_callback_cQRasterWindow_closeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](vtbl)
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1)
  vtbl[].closeEvent(self, slotval1)

proc QRasterWindowkeyPressEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QKeyEvent): void =
  fcQRasterWindow_virtualbase_keyPressEvent(self.h, param1.h)

proc miqt_exec_callback_cQRasterWindow_keyPressEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](vtbl)
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)
  vtbl[].keyPressEvent(self, slotval1)

proc QRasterWindowkeyReleaseEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QKeyEvent): void =
  fcQRasterWindow_virtualbase_keyReleaseEvent(self.h, param1.h)

proc miqt_exec_callback_cQRasterWindow_keyReleaseEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](vtbl)
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QRasterWindowmousePressEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QMouseEvent): void =
  fcQRasterWindow_virtualbase_mousePressEvent(self.h, param1.h)

proc miqt_exec_callback_cQRasterWindow_mousePressEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](vtbl)
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)
  vtbl[].mousePressEvent(self, slotval1)

proc QRasterWindowmouseReleaseEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QMouseEvent): void =
  fcQRasterWindow_virtualbase_mouseReleaseEvent(self.h, param1.h)

proc miqt_exec_callback_cQRasterWindow_mouseReleaseEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](vtbl)
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QRasterWindowmouseDoubleClickEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QMouseEvent): void =
  fcQRasterWindow_virtualbase_mouseDoubleClickEvent(self.h, param1.h)

proc miqt_exec_callback_cQRasterWindow_mouseDoubleClickEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](vtbl)
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QRasterWindowmouseMoveEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QMouseEvent): void =
  fcQRasterWindow_virtualbase_mouseMoveEvent(self.h, param1.h)

proc miqt_exec_callback_cQRasterWindow_mouseMoveEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](vtbl)
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QRasterWindowwheelEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QWheelEvent): void =
  fcQRasterWindow_virtualbase_wheelEvent(self.h, param1.h)

proc miqt_exec_callback_cQRasterWindow_wheelEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](vtbl)
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1)
  vtbl[].wheelEvent(self, slotval1)

proc QRasterWindowtouchEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QTouchEvent): void =
  fcQRasterWindow_virtualbase_touchEvent(self.h, param1.h)

proc miqt_exec_callback_cQRasterWindow_touchEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](vtbl)
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qevent_types.QTouchEvent(h: param1)
  vtbl[].touchEvent(self, slotval1)

proc QRasterWindowtabletEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QTabletEvent): void =
  fcQRasterWindow_virtualbase_tabletEvent(self.h, param1.h)

proc miqt_exec_callback_cQRasterWindow_tabletEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](vtbl)
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: param1)
  vtbl[].tabletEvent(self, slotval1)

proc QRasterWindownativeEvent*(self: gen_qrasterwindow_types.QRasterWindow, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fcQRasterWindow_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQRasterWindow_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](vtbl)
  let self = QRasterWindow(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QRasterWindoweventFilter*(self: gen_qrasterwindow_types.QRasterWindow, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQRasterWindow_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQRasterWindow_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](vtbl)
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QRasterWindowtimerEvent*(self: gen_qrasterwindow_types.QRasterWindow, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQRasterWindow_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQRasterWindow_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](vtbl)
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QRasterWindowchildEvent*(self: gen_qrasterwindow_types.QRasterWindow, event: gen_qcoreevent_types.QChildEvent): void =
  fcQRasterWindow_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQRasterWindow_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](vtbl)
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QRasterWindowcustomEvent*(self: gen_qrasterwindow_types.QRasterWindow, event: gen_qcoreevent_types.QEvent): void =
  fcQRasterWindow_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQRasterWindow_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](vtbl)
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QRasterWindowconnectNotify*(self: gen_qrasterwindow_types.QRasterWindow, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQRasterWindow_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQRasterWindow_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](vtbl)
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QRasterWindowdisconnectNotify*(self: gen_qrasterwindow_types.QRasterWindow, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQRasterWindow_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQRasterWindow_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](vtbl)
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc QRasterWindowdevType*(self: gen_qrasterwindow_types.QRasterWindow, ): cint =
  fcQRasterWindow_virtualbase_devType(self.h)

proc miqt_exec_callback_cQRasterWindow_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](vtbl)
  let self = QRasterWindow(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QRasterWindowinitPainter*(self: gen_qrasterwindow_types.QRasterWindow, painter: gen_qpainter_types.QPainter): void =
  fcQRasterWindow_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQRasterWindow_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](vtbl)
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QRasterWindowsharedPainter*(self: gen_qrasterwindow_types.QRasterWindow, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQRasterWindow_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQRasterWindow_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](vtbl)
  let self = QRasterWindow(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc resolveInterface*(self: gen_qrasterwindow_types.QRasterWindow, name: cstring, revision: cint): pointer =
  fcQRasterWindow_protectedbase_resolveInterface(self.h, name, revision)

proc sender*(self: gen_qrasterwindow_types.QRasterWindow, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQRasterWindow_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qrasterwindow_types.QRasterWindow, ): cint =
  fcQRasterWindow_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qrasterwindow_types.QRasterWindow, signal: cstring): cint =
  fcQRasterWindow_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qrasterwindow_types.QRasterWindow, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQRasterWindow_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qrasterwindow_types.QRasterWindow,
    vtbl: ref QRasterWindowVTable = nil): gen_qrasterwindow_types.QRasterWindow =
  let vtbl = if vtbl == nil: new QRasterWindowVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQRasterWindowVTable, _: ptr cQRasterWindow) {.cdecl.} =
    let vtbl = cast[ref QRasterWindowVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQRasterWindow_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQRasterWindow_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQRasterWindow_metacall
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQRasterWindow_metric
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQRasterWindow_redirected
  if not isNil(vtbl.exposeEvent):
    vtbl[].vtbl.exposeEvent = miqt_exec_callback_cQRasterWindow_exposeEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQRasterWindow_paintEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQRasterWindow_event
  if not isNil(vtbl.surfaceType):
    vtbl[].vtbl.surfaceType = miqt_exec_callback_cQRasterWindow_surfaceType
  if not isNil(vtbl.format):
    vtbl[].vtbl.format = miqt_exec_callback_cQRasterWindow_format
  if not isNil(vtbl.size):
    vtbl[].vtbl.size = miqt_exec_callback_cQRasterWindow_size
  if not isNil(vtbl.accessibleRoot):
    vtbl[].vtbl.accessibleRoot = miqt_exec_callback_cQRasterWindow_accessibleRoot
  if not isNil(vtbl.focusObject):
    vtbl[].vtbl.focusObject = miqt_exec_callback_cQRasterWindow_focusObject
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQRasterWindow_resizeEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQRasterWindow_moveEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQRasterWindow_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQRasterWindow_focusOutEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQRasterWindow_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQRasterWindow_hideEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQRasterWindow_closeEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQRasterWindow_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQRasterWindow_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQRasterWindow_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQRasterWindow_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQRasterWindow_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQRasterWindow_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQRasterWindow_wheelEvent
  if not isNil(vtbl.touchEvent):
    vtbl[].vtbl.touchEvent = miqt_exec_callback_cQRasterWindow_touchEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQRasterWindow_tabletEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQRasterWindow_nativeEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQRasterWindow_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQRasterWindow_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQRasterWindow_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQRasterWindow_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQRasterWindow_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQRasterWindow_disconnectNotify
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQRasterWindow_devType
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQRasterWindow_initPainter
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQRasterWindow_sharedPainter
  gen_qrasterwindow_types.QRasterWindow(h: fcQRasterWindow_new(addr(vtbl[]), ))

proc create*(T: type gen_qrasterwindow_types.QRasterWindow,
    parent: gen_qwindow_types.QWindow,
    vtbl: ref QRasterWindowVTable = nil): gen_qrasterwindow_types.QRasterWindow =
  let vtbl = if vtbl == nil: new QRasterWindowVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQRasterWindowVTable, _: ptr cQRasterWindow) {.cdecl.} =
    let vtbl = cast[ref QRasterWindowVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQRasterWindow_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQRasterWindow_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQRasterWindow_metacall
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQRasterWindow_metric
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQRasterWindow_redirected
  if not isNil(vtbl.exposeEvent):
    vtbl[].vtbl.exposeEvent = miqt_exec_callback_cQRasterWindow_exposeEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQRasterWindow_paintEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQRasterWindow_event
  if not isNil(vtbl.surfaceType):
    vtbl[].vtbl.surfaceType = miqt_exec_callback_cQRasterWindow_surfaceType
  if not isNil(vtbl.format):
    vtbl[].vtbl.format = miqt_exec_callback_cQRasterWindow_format
  if not isNil(vtbl.size):
    vtbl[].vtbl.size = miqt_exec_callback_cQRasterWindow_size
  if not isNil(vtbl.accessibleRoot):
    vtbl[].vtbl.accessibleRoot = miqt_exec_callback_cQRasterWindow_accessibleRoot
  if not isNil(vtbl.focusObject):
    vtbl[].vtbl.focusObject = miqt_exec_callback_cQRasterWindow_focusObject
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQRasterWindow_resizeEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQRasterWindow_moveEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQRasterWindow_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQRasterWindow_focusOutEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQRasterWindow_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQRasterWindow_hideEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQRasterWindow_closeEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQRasterWindow_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQRasterWindow_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQRasterWindow_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQRasterWindow_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQRasterWindow_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQRasterWindow_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQRasterWindow_wheelEvent
  if not isNil(vtbl.touchEvent):
    vtbl[].vtbl.touchEvent = miqt_exec_callback_cQRasterWindow_touchEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQRasterWindow_tabletEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQRasterWindow_nativeEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQRasterWindow_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQRasterWindow_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQRasterWindow_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQRasterWindow_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQRasterWindow_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQRasterWindow_disconnectNotify
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQRasterWindow_devType
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQRasterWindow_initPainter
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQRasterWindow_sharedPainter
  gen_qrasterwindow_types.QRasterWindow(h: fcQRasterWindow_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qrasterwindow_types.QRasterWindow): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRasterWindow_staticMetaObject())
proc delete*(self: gen_qrasterwindow_types.QRasterWindow) =
  fcQRasterWindow_delete(self.h)
