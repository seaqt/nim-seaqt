import ./qtgui_pkg

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


{.compile("gen_qrasterwindow.cpp", QtGuiCFlags).}


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

proc fcQRasterWindow_metaObject(self: pointer): pointer {.importc: "QRasterWindow_metaObject".}
proc fcQRasterWindow_metacast(self: pointer, param1: cstring): pointer {.importc: "QRasterWindow_metacast".}
proc fcQRasterWindow_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRasterWindow_metacall".}
proc fcQRasterWindow_tr(s: cstring): struct_miqt_string {.importc: "QRasterWindow_tr".}
proc fcQRasterWindow_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QRasterWindow_tr2".}
proc fcQRasterWindow_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QRasterWindow_tr3".}
proc fcQRasterWindow_vtbl(self: pointer): pointer {.importc: "QRasterWindow_vtbl".}
proc fcQRasterWindow_vdata(self: pointer): pointer {.importc: "QRasterWindow_vdata".}

type cQRasterWindowVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  metric*: proc(self: pointer, metric: cint): cint {.cdecl, raises: [], gcsafe.}
  redirected*: proc(self: pointer, param1: pointer): pointer {.cdecl, raises: [], gcsafe.}
  exposeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  surfaceType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  format*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  size*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  accessibleRoot*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  focusObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  touchEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
proc fcQRasterWindow_virtualbase_metaObject(self: pointer): pointer {.importc: "QRasterWindow_virtualbase_metaObject".}
proc fcQRasterWindow_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QRasterWindow_virtualbase_metacast".}
proc fcQRasterWindow_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRasterWindow_virtualbase_metacall".}
proc fcQRasterWindow_virtualbase_metric(self: pointer, metric: cint): cint {.importc: "QRasterWindow_virtualbase_metric".}
proc fcQRasterWindow_virtualbase_redirected(self: pointer, param1: pointer): pointer {.importc: "QRasterWindow_virtualbase_redirected".}
proc fcQRasterWindow_virtualbase_exposeEvent(self: pointer, param1: pointer): void {.importc: "QRasterWindow_virtualbase_exposeEvent".}
proc fcQRasterWindow_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QRasterWindow_virtualbase_paintEvent".}
proc fcQRasterWindow_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QRasterWindow_virtualbase_event".}
proc fcQRasterWindow_virtualbase_surfaceType(self: pointer): cint {.importc: "QRasterWindow_virtualbase_surfaceType".}
proc fcQRasterWindow_virtualbase_format(self: pointer): pointer {.importc: "QRasterWindow_virtualbase_format".}
proc fcQRasterWindow_virtualbase_size(self: pointer): pointer {.importc: "QRasterWindow_virtualbase_size".}
proc fcQRasterWindow_virtualbase_accessibleRoot(self: pointer): pointer {.importc: "QRasterWindow_virtualbase_accessibleRoot".}
proc fcQRasterWindow_virtualbase_focusObject(self: pointer): pointer {.importc: "QRasterWindow_virtualbase_focusObject".}
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
proc fcQRasterWindow_virtualbase_devType(self: pointer): cint {.importc: "QRasterWindow_virtualbase_devType".}
proc fcQRasterWindow_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QRasterWindow_virtualbase_initPainter".}
proc fcQRasterWindow_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QRasterWindow_virtualbase_sharedPainter".}
proc fcQRasterWindow_protectedbase_resolveInterface(self: pointer, name: cstring, revision: cint): pointer {.importc: "QRasterWindow_protectedbase_resolveInterface".}
proc fcQRasterWindow_protectedbase_sender(self: pointer): pointer {.importc: "QRasterWindow_protectedbase_sender".}
proc fcQRasterWindow_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QRasterWindow_protectedbase_senderSignalIndex".}
proc fcQRasterWindow_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QRasterWindow_protectedbase_receivers".}
proc fcQRasterWindow_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QRasterWindow_protectedbase_isSignalConnected".}
proc fcQRasterWindow_new(vtbl, vdata: pointer): ptr cQRasterWindow {.importc: "QRasterWindow_new".}
proc fcQRasterWindow_new2(vtbl, vdata: pointer, parent: pointer): ptr cQRasterWindow {.importc: "QRasterWindow_new2".}
proc fcQRasterWindow_staticMetaObject(): pointer {.importc: "QRasterWindow_staticMetaObject".}

proc metaObject*(self: gen_qrasterwindow_types.QRasterWindow): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRasterWindow_metaObject(self.h), owned: false)

proc metacast*(self: gen_qrasterwindow_types.QRasterWindow, param1: cstring): pointer =
  fcQRasterWindow_metacast(self.h, param1)

proc metacall*(self: gen_qrasterwindow_types.QRasterWindow, param1: cint, param2: cint, param3: pointer): cint =
  fcQRasterWindow_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qrasterwindow_types.QRasterWindow, s: cstring): string =
  let v_ms = fcQRasterWindow_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qrasterwindow_types.QRasterWindow, s: cstring, c: cstring): string =
  let v_ms = fcQRasterWindow_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qrasterwindow_types.QRasterWindow, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQRasterWindow_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
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
type QRasterWindownativeEventProc* = proc(self: QRasterWindow, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QRasterWindoweventFilterProc* = proc(self: QRasterWindow, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QRasterWindowtimerEventProc* = proc(self: QRasterWindow, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QRasterWindowchildEventProc* = proc(self: QRasterWindow, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QRasterWindowcustomEventProc* = proc(self: QRasterWindow, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QRasterWindowconnectNotifyProc* = proc(self: QRasterWindow, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QRasterWindowdisconnectNotifyProc* = proc(self: QRasterWindow, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QRasterWindowdevTypeProc* = proc(self: QRasterWindow): cint {.raises: [], gcsafe.}
type QRasterWindowinitPainterProc* = proc(self: QRasterWindow, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QRasterWindowsharedPainterProc* = proc(self: QRasterWindow): gen_qpainter_types.QPainter {.raises: [], gcsafe.}

type QRasterWindowVTable* {.inheritable, pure.} = object
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

proc QRasterWindowmetaObject*(self: gen_qrasterwindow_types.QRasterWindow): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRasterWindow_virtualbase_metaObject(self.h), owned: false)

proc QRasterWindowmetacast*(self: gen_qrasterwindow_types.QRasterWindow, param1: cstring): pointer =
  fcQRasterWindow_virtualbase_metacast(self.h, param1)

proc QRasterWindowmetacall*(self: gen_qrasterwindow_types.QRasterWindow, param1: cint, param2: cint, param3: pointer): cint =
  fcQRasterWindow_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QRasterWindowmetric*(self: gen_qrasterwindow_types.QRasterWindow, metric: cint): cint =
  fcQRasterWindow_virtualbase_metric(self.h, cint(metric))

proc QRasterWindowredirected*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQRasterWindow_virtualbase_redirected(self.h, param1.h), owned: false)

proc QRasterWindowexposeEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QExposeEvent): void =
  fcQRasterWindow_virtualbase_exposeEvent(self.h, param1.h)

proc QRasterWindowpaintEvent*(self: gen_qrasterwindow_types.QRasterWindow, event: gen_qevent_types.QPaintEvent): void =
  fcQRasterWindow_virtualbase_paintEvent(self.h, event.h)

proc QRasterWindowevent*(self: gen_qrasterwindow_types.QRasterWindow, event: gen_qcoreevent_types.QEvent): bool =
  fcQRasterWindow_virtualbase_event(self.h, event.h)

proc QRasterWindowsurfaceType*(self: gen_qrasterwindow_types.QRasterWindow): cint =
  cint(fcQRasterWindow_virtualbase_surfaceType(self.h))

proc QRasterWindowformat*(self: gen_qrasterwindow_types.QRasterWindow): gen_qsurfaceformat_types.QSurfaceFormat =
  gen_qsurfaceformat_types.QSurfaceFormat(h: fcQRasterWindow_virtualbase_format(self.h), owned: true)

proc QRasterWindowsize*(self: gen_qrasterwindow_types.QRasterWindow): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQRasterWindow_virtualbase_size(self.h), owned: true)

proc QRasterWindowaccessibleRoot*(self: gen_qrasterwindow_types.QRasterWindow): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fcQRasterWindow_virtualbase_accessibleRoot(self.h), owned: false)

proc QRasterWindowfocusObject*(self: gen_qrasterwindow_types.QRasterWindow): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQRasterWindow_virtualbase_focusObject(self.h), owned: false)

proc QRasterWindowresizeEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QResizeEvent): void =
  fcQRasterWindow_virtualbase_resizeEvent(self.h, param1.h)

proc QRasterWindowmoveEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QMoveEvent): void =
  fcQRasterWindow_virtualbase_moveEvent(self.h, param1.h)

proc QRasterWindowfocusInEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QFocusEvent): void =
  fcQRasterWindow_virtualbase_focusInEvent(self.h, param1.h)

proc QRasterWindowfocusOutEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QFocusEvent): void =
  fcQRasterWindow_virtualbase_focusOutEvent(self.h, param1.h)

proc QRasterWindowshowEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QShowEvent): void =
  fcQRasterWindow_virtualbase_showEvent(self.h, param1.h)

proc QRasterWindowhideEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QHideEvent): void =
  fcQRasterWindow_virtualbase_hideEvent(self.h, param1.h)

proc QRasterWindowcloseEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QCloseEvent): void =
  fcQRasterWindow_virtualbase_closeEvent(self.h, param1.h)

proc QRasterWindowkeyPressEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QKeyEvent): void =
  fcQRasterWindow_virtualbase_keyPressEvent(self.h, param1.h)

proc QRasterWindowkeyReleaseEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QKeyEvent): void =
  fcQRasterWindow_virtualbase_keyReleaseEvent(self.h, param1.h)

proc QRasterWindowmousePressEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QMouseEvent): void =
  fcQRasterWindow_virtualbase_mousePressEvent(self.h, param1.h)

proc QRasterWindowmouseReleaseEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QMouseEvent): void =
  fcQRasterWindow_virtualbase_mouseReleaseEvent(self.h, param1.h)

proc QRasterWindowmouseDoubleClickEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QMouseEvent): void =
  fcQRasterWindow_virtualbase_mouseDoubleClickEvent(self.h, param1.h)

proc QRasterWindowmouseMoveEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QMouseEvent): void =
  fcQRasterWindow_virtualbase_mouseMoveEvent(self.h, param1.h)

proc QRasterWindowwheelEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QWheelEvent): void =
  fcQRasterWindow_virtualbase_wheelEvent(self.h, param1.h)

proc QRasterWindowtouchEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QTouchEvent): void =
  fcQRasterWindow_virtualbase_touchEvent(self.h, param1.h)

proc QRasterWindowtabletEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QTabletEvent): void =
  fcQRasterWindow_virtualbase_tabletEvent(self.h, param1.h)

proc QRasterWindownativeEvent*(self: gen_qrasterwindow_types.QRasterWindow, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool =
  fcQRasterWindow_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc QRasterWindoweventFilter*(self: gen_qrasterwindow_types.QRasterWindow, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQRasterWindow_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QRasterWindowtimerEvent*(self: gen_qrasterwindow_types.QRasterWindow, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQRasterWindow_virtualbase_timerEvent(self.h, event.h)

proc QRasterWindowchildEvent*(self: gen_qrasterwindow_types.QRasterWindow, event: gen_qcoreevent_types.QChildEvent): void =
  fcQRasterWindow_virtualbase_childEvent(self.h, event.h)

proc QRasterWindowcustomEvent*(self: gen_qrasterwindow_types.QRasterWindow, event: gen_qcoreevent_types.QEvent): void =
  fcQRasterWindow_virtualbase_customEvent(self.h, event.h)

proc QRasterWindowconnectNotify*(self: gen_qrasterwindow_types.QRasterWindow, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQRasterWindow_virtualbase_connectNotify(self.h, signal.h)

proc QRasterWindowdisconnectNotify*(self: gen_qrasterwindow_types.QRasterWindow, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQRasterWindow_virtualbase_disconnectNotify(self.h, signal.h)

proc QRasterWindowdevType*(self: gen_qrasterwindow_types.QRasterWindow): cint =
  fcQRasterWindow_virtualbase_devType(self.h)

proc QRasterWindowinitPainter*(self: gen_qrasterwindow_types.QRasterWindow, painter: gen_qpainter_types.QPainter): void =
  fcQRasterWindow_virtualbase_initPainter(self.h, painter.h)

proc QRasterWindowsharedPainter*(self: gen_qrasterwindow_types.QRasterWindow): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQRasterWindow_virtualbase_sharedPainter(self.h), owned: false)


proc fcQRasterWindow_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](fcQRasterWindow_vdata(self))
  let self = QRasterWindow(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRasterWindow_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](fcQRasterWindow_vdata(self))
  let self = QRasterWindow(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQRasterWindow_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](fcQRasterWindow_vdata(self))
  let self = QRasterWindow(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQRasterWindow_vtable_callback_metric(self: pointer, metric: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](fcQRasterWindow_vdata(self))
  let self = QRasterWindow(h: self)
  let slotval1 = cint(metric)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc fcQRasterWindow_vtable_callback_redirected(self: pointer, param1: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](fcQRasterWindow_vdata(self))
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: param1, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRasterWindow_vtable_callback_exposeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](fcQRasterWindow_vdata(self))
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qevent_types.QExposeEvent(h: param1, owned: false)
  vtbl[].exposeEvent(self, slotval1)

proc fcQRasterWindow_vtable_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](fcQRasterWindow_vdata(self))
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc fcQRasterWindow_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](fcQRasterWindow_vdata(self))
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQRasterWindow_vtable_callback_surfaceType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](fcQRasterWindow_vdata(self))
  let self = QRasterWindow(h: self)
  var virtualReturn = vtbl[].surfaceType(self)
  cint(virtualReturn)

proc fcQRasterWindow_vtable_callback_format(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](fcQRasterWindow_vdata(self))
  let self = QRasterWindow(h: self)
  var virtualReturn = vtbl[].format(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRasterWindow_vtable_callback_size(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](fcQRasterWindow_vdata(self))
  let self = QRasterWindow(h: self)
  var virtualReturn = vtbl[].size(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRasterWindow_vtable_callback_accessibleRoot(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](fcQRasterWindow_vdata(self))
  let self = QRasterWindow(h: self)
  var virtualReturn = vtbl[].accessibleRoot(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRasterWindow_vtable_callback_focusObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](fcQRasterWindow_vdata(self))
  let self = QRasterWindow(h: self)
  var virtualReturn = vtbl[].focusObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRasterWindow_vtable_callback_resizeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](fcQRasterWindow_vdata(self))
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc fcQRasterWindow_vtable_callback_moveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](fcQRasterWindow_vdata(self))
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: param1, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc fcQRasterWindow_vtable_callback_focusInEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](fcQRasterWindow_vdata(self))
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc fcQRasterWindow_vtable_callback_focusOutEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](fcQRasterWindow_vdata(self))
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc fcQRasterWindow_vtable_callback_showEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](fcQRasterWindow_vdata(self))
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: param1, owned: false)
  vtbl[].showEvent(self, slotval1)

proc fcQRasterWindow_vtable_callback_hideEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](fcQRasterWindow_vdata(self))
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: param1, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc fcQRasterWindow_vtable_callback_closeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](fcQRasterWindow_vdata(self))
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc fcQRasterWindow_vtable_callback_keyPressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](fcQRasterWindow_vdata(self))
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc fcQRasterWindow_vtable_callback_keyReleaseEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](fcQRasterWindow_vdata(self))
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc fcQRasterWindow_vtable_callback_mousePressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](fcQRasterWindow_vdata(self))
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc fcQRasterWindow_vtable_callback_mouseReleaseEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](fcQRasterWindow_vdata(self))
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc fcQRasterWindow_vtable_callback_mouseDoubleClickEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](fcQRasterWindow_vdata(self))
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc fcQRasterWindow_vtable_callback_mouseMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](fcQRasterWindow_vdata(self))
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc fcQRasterWindow_vtable_callback_wheelEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](fcQRasterWindow_vdata(self))
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc fcQRasterWindow_vtable_callback_touchEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](fcQRasterWindow_vdata(self))
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qevent_types.QTouchEvent(h: param1, owned: false)
  vtbl[].touchEvent(self, slotval1)

proc fcQRasterWindow_vtable_callback_tabletEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](fcQRasterWindow_vdata(self))
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: param1, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc fcQRasterWindow_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](fcQRasterWindow_vdata(self))
  let self = QRasterWindow(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQRasterWindow_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](fcQRasterWindow_vdata(self))
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQRasterWindow_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](fcQRasterWindow_vdata(self))
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQRasterWindow_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](fcQRasterWindow_vdata(self))
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQRasterWindow_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](fcQRasterWindow_vdata(self))
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQRasterWindow_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](fcQRasterWindow_vdata(self))
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQRasterWindow_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](fcQRasterWindow_vdata(self))
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

proc fcQRasterWindow_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](fcQRasterWindow_vdata(self))
  let self = QRasterWindow(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc fcQRasterWindow_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](fcQRasterWindow_vdata(self))
  let self = QRasterWindow(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc fcQRasterWindow_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRasterWindowVTable](fcQRasterWindow_vdata(self))
  let self = QRasterWindow(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

type VirtualQRasterWindow* {.inheritable.} = ref object of QRasterWindow
  vtbl*: cQRasterWindowVTable

method metaObject*(self: VirtualQRasterWindow): gen_qobjectdefs_types.QMetaObject {.base.} =
  QRasterWindowmetaObject(self[])
method metacast*(self: VirtualQRasterWindow, param1: cstring): pointer {.base.} =
  QRasterWindowmetacast(self[], param1)
method metacall*(self: VirtualQRasterWindow, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QRasterWindowmetacall(self[], param1, param2, param3)
method metric*(self: VirtualQRasterWindow, metric: cint): cint {.base.} =
  QRasterWindowmetric(self[], metric)
method redirected*(self: VirtualQRasterWindow, param1: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QRasterWindowredirected(self[], param1)
method exposeEvent*(self: VirtualQRasterWindow, param1: gen_qevent_types.QExposeEvent): void {.base.} =
  QRasterWindowexposeEvent(self[], param1)
method paintEvent*(self: VirtualQRasterWindow, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QRasterWindowpaintEvent(self[], event)
method event*(self: VirtualQRasterWindow, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QRasterWindowevent(self[], event)
method surfaceType*(self: VirtualQRasterWindow): cint {.base.} =
  QRasterWindowsurfaceType(self[])
method format*(self: VirtualQRasterWindow): gen_qsurfaceformat_types.QSurfaceFormat {.base.} =
  QRasterWindowformat(self[])
method size*(self: VirtualQRasterWindow): gen_qsize_types.QSize {.base.} =
  QRasterWindowsize(self[])
method accessibleRoot*(self: VirtualQRasterWindow): gen_qaccessible_types.QAccessibleInterface {.base.} =
  QRasterWindowaccessibleRoot(self[])
method focusObject*(self: VirtualQRasterWindow): gen_qobject_types.QObject {.base.} =
  QRasterWindowfocusObject(self[])
method resizeEvent*(self: VirtualQRasterWindow, param1: gen_qevent_types.QResizeEvent): void {.base.} =
  QRasterWindowresizeEvent(self[], param1)
method moveEvent*(self: VirtualQRasterWindow, param1: gen_qevent_types.QMoveEvent): void {.base.} =
  QRasterWindowmoveEvent(self[], param1)
method focusInEvent*(self: VirtualQRasterWindow, param1: gen_qevent_types.QFocusEvent): void {.base.} =
  QRasterWindowfocusInEvent(self[], param1)
method focusOutEvent*(self: VirtualQRasterWindow, param1: gen_qevent_types.QFocusEvent): void {.base.} =
  QRasterWindowfocusOutEvent(self[], param1)
method showEvent*(self: VirtualQRasterWindow, param1: gen_qevent_types.QShowEvent): void {.base.} =
  QRasterWindowshowEvent(self[], param1)
method hideEvent*(self: VirtualQRasterWindow, param1: gen_qevent_types.QHideEvent): void {.base.} =
  QRasterWindowhideEvent(self[], param1)
method closeEvent*(self: VirtualQRasterWindow, param1: gen_qevent_types.QCloseEvent): void {.base.} =
  QRasterWindowcloseEvent(self[], param1)
method keyPressEvent*(self: VirtualQRasterWindow, param1: gen_qevent_types.QKeyEvent): void {.base.} =
  QRasterWindowkeyPressEvent(self[], param1)
method keyReleaseEvent*(self: VirtualQRasterWindow, param1: gen_qevent_types.QKeyEvent): void {.base.} =
  QRasterWindowkeyReleaseEvent(self[], param1)
method mousePressEvent*(self: VirtualQRasterWindow, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QRasterWindowmousePressEvent(self[], param1)
method mouseReleaseEvent*(self: VirtualQRasterWindow, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QRasterWindowmouseReleaseEvent(self[], param1)
method mouseDoubleClickEvent*(self: VirtualQRasterWindow, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QRasterWindowmouseDoubleClickEvent(self[], param1)
method mouseMoveEvent*(self: VirtualQRasterWindow, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QRasterWindowmouseMoveEvent(self[], param1)
method wheelEvent*(self: VirtualQRasterWindow, param1: gen_qevent_types.QWheelEvent): void {.base.} =
  QRasterWindowwheelEvent(self[], param1)
method touchEvent*(self: VirtualQRasterWindow, param1: gen_qevent_types.QTouchEvent): void {.base.} =
  QRasterWindowtouchEvent(self[], param1)
method tabletEvent*(self: VirtualQRasterWindow, param1: gen_qevent_types.QTabletEvent): void {.base.} =
  QRasterWindowtabletEvent(self[], param1)
method nativeEvent*(self: VirtualQRasterWindow, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QRasterWindownativeEvent(self[], eventType, message, resultVal)
method eventFilter*(self: VirtualQRasterWindow, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QRasterWindoweventFilter(self[], watched, event)
method timerEvent*(self: VirtualQRasterWindow, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QRasterWindowtimerEvent(self[], event)
method childEvent*(self: VirtualQRasterWindow, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QRasterWindowchildEvent(self[], event)
method customEvent*(self: VirtualQRasterWindow, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QRasterWindowcustomEvent(self[], event)
method connectNotify*(self: VirtualQRasterWindow, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QRasterWindowconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQRasterWindow, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QRasterWindowdisconnectNotify(self[], signal)
method devType*(self: VirtualQRasterWindow): cint {.base.} =
  QRasterWindowdevType(self[])
method initPainter*(self: VirtualQRasterWindow, painter: gen_qpainter_types.QPainter): void {.base.} =
  QRasterWindowinitPainter(self[], painter)
method sharedPainter*(self: VirtualQRasterWindow): gen_qpainter_types.QPainter {.base.} =
  QRasterWindowsharedPainter(self[])

proc fcQRasterWindow_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQRasterWindow](fcQRasterWindow_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRasterWindow_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQRasterWindow](fcQRasterWindow_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQRasterWindow_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQRasterWindow](fcQRasterWindow_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQRasterWindow_method_callback_metric(self: pointer, metric: cint): cint {.cdecl.} =
  let inst = cast[VirtualQRasterWindow](fcQRasterWindow_vdata(self))
  let slotval1 = cint(metric)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

proc fcQRasterWindow_method_callback_redirected(self: pointer, param1: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQRasterWindow](fcQRasterWindow_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: param1, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRasterWindow_method_callback_exposeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRasterWindow](fcQRasterWindow_vdata(self))
  let slotval1 = gen_qevent_types.QExposeEvent(h: param1, owned: false)
  inst.exposeEvent(slotval1)

proc fcQRasterWindow_method_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRasterWindow](fcQRasterWindow_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  inst.paintEvent(slotval1)

proc fcQRasterWindow_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQRasterWindow](fcQRasterWindow_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQRasterWindow_method_callback_surfaceType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQRasterWindow](fcQRasterWindow_vdata(self))
  var virtualReturn = inst.surfaceType()
  cint(virtualReturn)

proc fcQRasterWindow_method_callback_format(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQRasterWindow](fcQRasterWindow_vdata(self))
  var virtualReturn = inst.format()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRasterWindow_method_callback_size(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQRasterWindow](fcQRasterWindow_vdata(self))
  var virtualReturn = inst.size()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRasterWindow_method_callback_accessibleRoot(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQRasterWindow](fcQRasterWindow_vdata(self))
  var virtualReturn = inst.accessibleRoot()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRasterWindow_method_callback_focusObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQRasterWindow](fcQRasterWindow_vdata(self))
  var virtualReturn = inst.focusObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQRasterWindow_method_callback_resizeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRasterWindow](fcQRasterWindow_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  inst.resizeEvent(slotval1)

proc fcQRasterWindow_method_callback_moveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRasterWindow](fcQRasterWindow_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: param1, owned: false)
  inst.moveEvent(slotval1)

proc fcQRasterWindow_method_callback_focusInEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRasterWindow](fcQRasterWindow_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  inst.focusInEvent(slotval1)

proc fcQRasterWindow_method_callback_focusOutEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRasterWindow](fcQRasterWindow_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  inst.focusOutEvent(slotval1)

proc fcQRasterWindow_method_callback_showEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRasterWindow](fcQRasterWindow_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: param1, owned: false)
  inst.showEvent(slotval1)

proc fcQRasterWindow_method_callback_hideEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRasterWindow](fcQRasterWindow_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: param1, owned: false)
  inst.hideEvent(slotval1)

proc fcQRasterWindow_method_callback_closeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRasterWindow](fcQRasterWindow_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1, owned: false)
  inst.closeEvent(slotval1)

proc fcQRasterWindow_method_callback_keyPressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRasterWindow](fcQRasterWindow_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  inst.keyPressEvent(slotval1)

proc fcQRasterWindow_method_callback_keyReleaseEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRasterWindow](fcQRasterWindow_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  inst.keyReleaseEvent(slotval1)

proc fcQRasterWindow_method_callback_mousePressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRasterWindow](fcQRasterWindow_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  inst.mousePressEvent(slotval1)

proc fcQRasterWindow_method_callback_mouseReleaseEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRasterWindow](fcQRasterWindow_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  inst.mouseReleaseEvent(slotval1)

proc fcQRasterWindow_method_callback_mouseDoubleClickEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRasterWindow](fcQRasterWindow_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

proc fcQRasterWindow_method_callback_mouseMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRasterWindow](fcQRasterWindow_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  inst.mouseMoveEvent(slotval1)

proc fcQRasterWindow_method_callback_wheelEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRasterWindow](fcQRasterWindow_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1, owned: false)
  inst.wheelEvent(slotval1)

proc fcQRasterWindow_method_callback_touchEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRasterWindow](fcQRasterWindow_vdata(self))
  let slotval1 = gen_qevent_types.QTouchEvent(h: param1, owned: false)
  inst.touchEvent(slotval1)

proc fcQRasterWindow_method_callback_tabletEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRasterWindow](fcQRasterWindow_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: param1, owned: false)
  inst.tabletEvent(slotval1)

proc fcQRasterWindow_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let inst = cast[VirtualQRasterWindow](fcQRasterWindow_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQRasterWindow_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQRasterWindow](fcQRasterWindow_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQRasterWindow_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRasterWindow](fcQRasterWindow_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQRasterWindow_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRasterWindow](fcQRasterWindow_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQRasterWindow_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRasterWindow](fcQRasterWindow_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQRasterWindow_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRasterWindow](fcQRasterWindow_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQRasterWindow_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRasterWindow](fcQRasterWindow_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc fcQRasterWindow_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQRasterWindow](fcQRasterWindow_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

proc fcQRasterWindow_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRasterWindow](fcQRasterWindow_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

proc fcQRasterWindow_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQRasterWindow](fcQRasterWindow_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h


proc resolveInterface*(self: gen_qrasterwindow_types.QRasterWindow, name: cstring, revision: cint): pointer =
  fcQRasterWindow_protectedbase_resolveInterface(self.h, name, revision)

proc sender*(self: gen_qrasterwindow_types.QRasterWindow): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQRasterWindow_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qrasterwindow_types.QRasterWindow): cint =
  fcQRasterWindow_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qrasterwindow_types.QRasterWindow, signal: cstring): cint =
  fcQRasterWindow_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qrasterwindow_types.QRasterWindow, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQRasterWindow_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qrasterwindow_types.QRasterWindow,
    vtbl: ref QRasterWindowVTable = nil): gen_qrasterwindow_types.QRasterWindow =
  let vtbl = if vtbl == nil: new QRasterWindowVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QRasterWindowVTable](fcQRasterWindow_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQRasterWindow_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQRasterWindow_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQRasterWindow_vtable_callback_metacall
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQRasterWindow_vtable_callback_metric
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQRasterWindow_vtable_callback_redirected
  if not isNil(vtbl[].exposeEvent):
    vtbl[].vtbl.exposeEvent = fcQRasterWindow_vtable_callback_exposeEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQRasterWindow_vtable_callback_paintEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQRasterWindow_vtable_callback_event
  if not isNil(vtbl[].surfaceType):
    vtbl[].vtbl.surfaceType = fcQRasterWindow_vtable_callback_surfaceType
  if not isNil(vtbl[].format):
    vtbl[].vtbl.format = fcQRasterWindow_vtable_callback_format
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = fcQRasterWindow_vtable_callback_size
  if not isNil(vtbl[].accessibleRoot):
    vtbl[].vtbl.accessibleRoot = fcQRasterWindow_vtable_callback_accessibleRoot
  if not isNil(vtbl[].focusObject):
    vtbl[].vtbl.focusObject = fcQRasterWindow_vtable_callback_focusObject
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQRasterWindow_vtable_callback_resizeEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQRasterWindow_vtable_callback_moveEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQRasterWindow_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQRasterWindow_vtable_callback_focusOutEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQRasterWindow_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQRasterWindow_vtable_callback_hideEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQRasterWindow_vtable_callback_closeEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQRasterWindow_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQRasterWindow_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQRasterWindow_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQRasterWindow_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQRasterWindow_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQRasterWindow_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQRasterWindow_vtable_callback_wheelEvent
  if not isNil(vtbl[].touchEvent):
    vtbl[].vtbl.touchEvent = fcQRasterWindow_vtable_callback_touchEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQRasterWindow_vtable_callback_tabletEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQRasterWindow_vtable_callback_nativeEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQRasterWindow_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQRasterWindow_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQRasterWindow_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQRasterWindow_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQRasterWindow_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQRasterWindow_vtable_callback_disconnectNotify
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQRasterWindow_vtable_callback_devType
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQRasterWindow_vtable_callback_initPainter
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQRasterWindow_vtable_callback_sharedPainter
  gen_qrasterwindow_types.QRasterWindow(h: fcQRasterWindow_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qrasterwindow_types.QRasterWindow,
    parent: gen_qwindow_types.QWindow,
    vtbl: ref QRasterWindowVTable = nil): gen_qrasterwindow_types.QRasterWindow =
  let vtbl = if vtbl == nil: new QRasterWindowVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QRasterWindowVTable](fcQRasterWindow_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQRasterWindow_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQRasterWindow_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQRasterWindow_vtable_callback_metacall
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQRasterWindow_vtable_callback_metric
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQRasterWindow_vtable_callback_redirected
  if not isNil(vtbl[].exposeEvent):
    vtbl[].vtbl.exposeEvent = fcQRasterWindow_vtable_callback_exposeEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQRasterWindow_vtable_callback_paintEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQRasterWindow_vtable_callback_event
  if not isNil(vtbl[].surfaceType):
    vtbl[].vtbl.surfaceType = fcQRasterWindow_vtable_callback_surfaceType
  if not isNil(vtbl[].format):
    vtbl[].vtbl.format = fcQRasterWindow_vtable_callback_format
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = fcQRasterWindow_vtable_callback_size
  if not isNil(vtbl[].accessibleRoot):
    vtbl[].vtbl.accessibleRoot = fcQRasterWindow_vtable_callback_accessibleRoot
  if not isNil(vtbl[].focusObject):
    vtbl[].vtbl.focusObject = fcQRasterWindow_vtable_callback_focusObject
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQRasterWindow_vtable_callback_resizeEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQRasterWindow_vtable_callback_moveEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQRasterWindow_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQRasterWindow_vtable_callback_focusOutEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQRasterWindow_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQRasterWindow_vtable_callback_hideEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQRasterWindow_vtable_callback_closeEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQRasterWindow_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQRasterWindow_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQRasterWindow_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQRasterWindow_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQRasterWindow_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQRasterWindow_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQRasterWindow_vtable_callback_wheelEvent
  if not isNil(vtbl[].touchEvent):
    vtbl[].vtbl.touchEvent = fcQRasterWindow_vtable_callback_touchEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQRasterWindow_vtable_callback_tabletEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQRasterWindow_vtable_callback_nativeEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQRasterWindow_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQRasterWindow_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQRasterWindow_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQRasterWindow_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQRasterWindow_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQRasterWindow_vtable_callback_disconnectNotify
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQRasterWindow_vtable_callback_devType
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQRasterWindow_vtable_callback_initPainter
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQRasterWindow_vtable_callback_sharedPainter
  gen_qrasterwindow_types.QRasterWindow(h: fcQRasterWindow_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQRasterWindow_mvtbl = cQRasterWindowVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQRasterWindow()[])](self.fcQRasterWindow_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQRasterWindow_method_callback_metaObject,
  metacast: fcQRasterWindow_method_callback_metacast,
  metacall: fcQRasterWindow_method_callback_metacall,
  metric: fcQRasterWindow_method_callback_metric,
  redirected: fcQRasterWindow_method_callback_redirected,
  exposeEvent: fcQRasterWindow_method_callback_exposeEvent,
  paintEvent: fcQRasterWindow_method_callback_paintEvent,
  event: fcQRasterWindow_method_callback_event,
  surfaceType: fcQRasterWindow_method_callback_surfaceType,
  format: fcQRasterWindow_method_callback_format,
  size: fcQRasterWindow_method_callback_size,
  accessibleRoot: fcQRasterWindow_method_callback_accessibleRoot,
  focusObject: fcQRasterWindow_method_callback_focusObject,
  resizeEvent: fcQRasterWindow_method_callback_resizeEvent,
  moveEvent: fcQRasterWindow_method_callback_moveEvent,
  focusInEvent: fcQRasterWindow_method_callback_focusInEvent,
  focusOutEvent: fcQRasterWindow_method_callback_focusOutEvent,
  showEvent: fcQRasterWindow_method_callback_showEvent,
  hideEvent: fcQRasterWindow_method_callback_hideEvent,
  closeEvent: fcQRasterWindow_method_callback_closeEvent,
  keyPressEvent: fcQRasterWindow_method_callback_keyPressEvent,
  keyReleaseEvent: fcQRasterWindow_method_callback_keyReleaseEvent,
  mousePressEvent: fcQRasterWindow_method_callback_mousePressEvent,
  mouseReleaseEvent: fcQRasterWindow_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: fcQRasterWindow_method_callback_mouseDoubleClickEvent,
  mouseMoveEvent: fcQRasterWindow_method_callback_mouseMoveEvent,
  wheelEvent: fcQRasterWindow_method_callback_wheelEvent,
  touchEvent: fcQRasterWindow_method_callback_touchEvent,
  tabletEvent: fcQRasterWindow_method_callback_tabletEvent,
  nativeEvent: fcQRasterWindow_method_callback_nativeEvent,
  eventFilter: fcQRasterWindow_method_callback_eventFilter,
  timerEvent: fcQRasterWindow_method_callback_timerEvent,
  childEvent: fcQRasterWindow_method_callback_childEvent,
  customEvent: fcQRasterWindow_method_callback_customEvent,
  connectNotify: fcQRasterWindow_method_callback_connectNotify,
  disconnectNotify: fcQRasterWindow_method_callback_disconnectNotify,
  devType: fcQRasterWindow_method_callback_devType,
  initPainter: fcQRasterWindow_method_callback_initPainter,
  sharedPainter: fcQRasterWindow_method_callback_sharedPainter,
)
proc create*(T: type gen_qrasterwindow_types.QRasterWindow,
    inst: VirtualQRasterWindow) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQRasterWindow_new(addr(cQRasterWindow_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qrasterwindow_types.QRasterWindow,
    parent: gen_qwindow_types.QWindow,
    inst: VirtualQRasterWindow) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQRasterWindow_new2(addr(cQRasterWindow_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qrasterwindow_types.QRasterWindow): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRasterWindow_staticMetaObject())
